local VRService = game:GetService("VRService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local UIManagerRoot = script.Parent
local Constants = require(UIManagerRoot.Constants)
local PanelType = Constants.PanelType
local SpatialUIType = Constants.SpatialUIType
local createCompatPanel = require(script.Parent.createCompatPanel)

export type UIGroupPositionProps = {
	-- The rotation of the UI group relative to the head, used to update the CFrame of the UI group
	-- when we need to adjust for the new head CFrame
	-- This is updated when we change the CFrame of the UI group relative to the head
	uiGroupHeadRotation: CFrame,
	-- The offset of the UI group relative to the camera. Used to update position when camera moves
	-- This is updated when we need to update the UI group position based on the current head CFrame
	uiGroupCameraOffSet: CFrame,
	-- The default rotation of the UI group relative to the head
	-- Use to reposition the UI group to default location
	defaultGroupHeadRotation: CFrame,
}

export type DragBarStruct = {
	part: Part,
}

export type UIGroupStruct = {
	positionProps: UIGroupPositionProps,
	uiContainerSize: Vector2,
}

local REPOSITION_DEVIATION_ANGLE = 100

local ROBLOX_UI_GROUP_ANGLE = CFrame.Angles(math.rad(-18), math.rad(10), math.rad(0))

local METER_TO_STUD_FACTOR = (workspace.CurrentCamera :: Camera).HeadScale / 0.3

local ROBLOX_UI_GROUP_POSITION =
	CFrame.new(-0.14 * METER_TO_STUD_FACTOR, -0.24 * METER_TO_STUD_FACTOR, -0.64 * METER_TO_STUD_FACTOR)

local MAIN_UI_GROUP_SIZE = Vector2.new(0.8 * METER_TO_STUD_FACTOR, 0.56 * METER_TO_STUD_FACTOR)

local ROBLOX_UI_GROUP_HEAD_ROTATION = ROBLOX_UI_GROUP_POSITION * ROBLOX_UI_GROUP_ANGLE

local function getYAxisStablizedCFrame(cframe: CFrame)
	local _, x, z = cframe:ToOrientation()
	return CFrame.new(cframe.Position) * CFrame.fromOrientation(0, x, z)
end

local function getCameraOffsetFromHeadRotationWithZAxisStabl(rotation)
	--- Stablize the camera CF from Y axis rotation
	local stablizedCameraCF = getYAxisStablizedCFrame((workspace.CurrentCamera :: Camera).CFrame)
	local localHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
	local headCFrame = stablizedCameraCF * localHeadCF
	--- Stablize the head CF from Y axis rotation
	local stablizedHeadCFrame = getYAxisStablizedCFrame(headCFrame)
	local finalCFrame = stablizedHeadCFrame:ToWorldSpace(rotation)

	-- Remove horizontal head rotation
	local oY, oX = finalCFrame:ToOrientation()
	return stablizedCameraCF:ToObjectSpace(CFrame.new(finalCFrame.Position) * CFrame.fromOrientation(oY, oX, 0))
end

local function getPanelPart(panelStruct: Constants.PanelStruct): Part?
	if panelStruct.uiType == SpatialUIType.SpatialUI or panelStruct.uiType == SpatialUIType.SpatialUIRoact then
		local panelObject = panelStruct.panelObject :: SurfaceGui
		return panelObject.Adornee :: Part
	elseif panelStruct.uiType == SpatialUIType.SpatialUIPartOnly then
		return panelStruct.panelObject :: Part
	else
		return nil
	end
end

local function panelExistsInSpace(panelStruct: Constants.PanelStruct)
	return panelStruct ~= nil and panelStruct.panelObject ~= nil and panelStruct.uiType ~= SpatialUIType.ScreenUI
end

local UIManager = {}

export type UIManagerClassType = typeof(setmetatable(
	{} :: {
		uiElements: { [Constants.PanelTypeValue]: Constants.PanelStruct },
		uiGroups: { [Constants.SpatialUIGroupTypeValue]: UIGroupStruct },
	},
	UIManager
))

UIManager.__index = UIManager

function UIManager.removeRoactPanel(self: UIManagerClassType, panelType: Constants.PanelTypeValue)
	self.uiElements[panelType] = nil
end

function UIManager.registerRoactPanel(
	self: UIManagerClassType,
	panelType: Constants.PanelTypeValue,
	panelStruct: Constants.PanelStruct
)
	self.uiElements[panelType] = panelStruct
	self:updateUIGroupsForCurHeadCFrame()
end

function UIManager.createUI(self: UIManagerClassType, props: Constants.PanelCreationProps): Constants.CompatPanel?
	local panelStruct = createCompatPanel(props)
	if panelStruct == nil then
		return nil
	end
	self.uiElements[props.panelType] = panelStruct
	self:updatePanelForCurHeadCFrame(props.panelType)
	return {
		type = panelStruct.uiType,
		panelObject = panelStruct.panelObject,
	}
end

function UIManager.resetUIGroupsHeadRotationToDefault(self: UIManagerClassType)
	for _, uiGroupStruct: UIGroupStruct in pairs(self.uiGroups) do
		uiGroupStruct.positionProps.uiGroupHeadRotation = uiGroupStruct.positionProps.defaultGroupHeadRotation
	end
end

function UIManager.updateUIGroupForCurHeadCFrame(
	self: UIManagerClassType,
	uiGroupType: Constants.SpatialUIGroupTypeValue
)
	local uiGroupStruct: UIGroupStruct = self.uiGroups[uiGroupType]
	local newCameraOffSet =
		getCameraOffsetFromHeadRotationWithZAxisStabl(uiGroupStruct.positionProps.uiGroupHeadRotation)
	uiGroupStruct.positionProps.uiGroupCameraOffSet = newCameraOffSet
	self:updatePanelsInUIGroupForCurHeadCFrame(uiGroupType)
end

function UIManager.updateUIGroupsForCurHeadCFrame(self: UIManagerClassType)
	for uiGroupType, _ in pairs(self.uiGroups) do
		self:updateUIGroupForCurHeadCFrame(uiGroupType :: Constants.SpatialUIGroupTypeValue)
	end
end

function UIManager.updatePanelForCurHeadCFrame(self: UIManagerClassType, panelType: Constants.PanelTypeValue)
	local panelStruct: Constants.PanelStruct = self.uiElements[panelType]
	if
		panelExistsInSpace(panelStruct)
		and panelStruct.panelPositionProps
		and panelStruct.panelPositionProps.cameraFixedPanelProp
	then
		local panelPositionProps = panelStruct.panelPositionProps :: Constants.PanelPositionProps
		local cameraFixedPanelProp = panelPositionProps.cameraFixedPanelProp :: Constants.CameraFixedUIObjectProps
		local newCameraOffSet = getCameraOffsetFromHeadRotationWithZAxisStabl(
			self.uiGroups[panelPositionProps.uiGroup].positionProps.uiGroupHeadRotation
		)
		local panelPart = getPanelPart(panelStruct)
		if panelPart == nil then
			return
		end
		panelPart = panelPart :: Part
		panelPart.CFrame = getYAxisStablizedCFrame((workspace.CurrentCamera :: Camera).CFrame) * newCameraOffSet
		panelPart.CFrame = panelPart.CFrame:ToWorldSpace(cameraFixedPanelProp.uiGroupElementOffset)
	end
end

function UIManager.updatePanelsInUIGroupForCurHeadCFrame(
	self: UIManagerClassType,
	uiGroupType: Constants.SpatialUIGroupTypeValue
)
	for panelType, panelStruct: Constants.PanelStruct in pairs(self.uiElements) do
		if panelStruct.panelPositionProps then
			local panelPositionProps = panelStruct.panelPositionProps :: Constants.PanelPositionProps
			if panelPositionProps.uiGroup == uiGroupType then
				self:updatePanelForCurHeadCFrame(panelType :: Constants.PanelTypeValue)
			end
		end
	end
end

function UIManager.updatePanelsForCurHeadCFrame(self: UIManagerClassType)
	for panelType, _ in pairs(self.uiElements) do
		self:updatePanelForCurHeadCFrame(panelType :: Constants.PanelTypeValue)
	end
end

function UIManager.setUpUiGroups(self: UIManagerClassType)
	-- Set up the ui groups
	local mainUiGroupStruct: UIGroupStruct = {
		positionProps = {
			uiGroupHeadRotation = ROBLOX_UI_GROUP_HEAD_ROTATION,
			uiGroupCameraOffSet = getCameraOffsetFromHeadRotationWithZAxisStabl(ROBLOX_UI_GROUP_HEAD_ROTATION),
			defaultGroupHeadRotation = ROBLOX_UI_GROUP_HEAD_ROTATION,
		},
		uiContainerSize = MAIN_UI_GROUP_SIZE,
	}
	self.uiGroups[Constants.SpatialUIGroupType.MainUIGroup] = mainUiGroupStruct
end

function UIManager.step(self: UIManagerClassType)
	if not VRService.VREnabled then
		return
	end

	for panelType, panelStruct: Constants.PanelStruct in pairs(self.uiElements) do
		-- Use Main Roblox GUI for angle detection
		if panelExistsInSpace(panelStruct) and panelType :: Constants.PanelTypeValue == PanelType.RobloxGui then
			local robloxGuiPart: Part
			if panelStruct.uiType == SpatialUIType.SpatialUI then
				local panelObject = panelStruct.panelObject :: SurfaceGui
				robloxGuiPart = panelObject.Adornee :: Part
			else
				robloxGuiPart = panelStruct.panelObject :: Part
			end
			local pX, pY, _ = robloxGuiPart.CFrame:ToOrientation()
			local camera = workspace.CurrentCamera :: Camera
			local cameraCF = camera.CFrame
			-- Remove head rotation
			local hX, hY, _ = (cameraCF * VRService:GetUserCFrame(Enum.UserCFrame.Head)):ToOrientation()
			if
				math.abs(pY - hY) > math.rad(REPOSITION_DEVIATION_ANGLE)
				or math.abs(pX - hX) > math.rad(REPOSITION_DEVIATION_ANGLE)
			then
				self:updateUIGroupsForCurHeadCFrame()
			end
		end
	end
end

function UIManager.onShowTopBarChanged(self: UIManagerClassType)
	if not VRService.VREnabled then
		return
	end
	if VRHub.ShowTopBar then
		self:resetUIGroupsHeadRotationToDefault()
		self:updateUIGroupsForCurHeadCFrame()
		for _, panelStruct: Constants.PanelStruct in pairs(self.uiElements) do
			if panelStruct.uiType == SpatialUIType.SpatialUI or panelStruct.uiType == SpatialUIType.SpatialUIRoact then
				local panelObject = panelStruct.panelObject :: SurfaceGui
				panelObject.Enabled = true
				local panelPart = panelObject.Adornee :: Part
				panelPart.Parent = workspace
			elseif panelStruct.uiType == SpatialUIType.SpatialUIPartOnly then
				local panelObject = panelStruct.panelObject :: Part
				panelObject.Parent = workspace
			end
		end
	else
		for _, panelStruct: Constants.PanelStruct in pairs(self.uiElements) do
			if panelStruct.uiType == SpatialUIType.SpatialUI or panelStruct.uiType == SpatialUIType.SpatialUIRoact then
				local panelObject = panelStruct.panelObject :: SurfaceGui
				panelObject.Enabled = false
				local panelPart = panelObject.Adornee :: Part
				panelPart.Parent = nil
			elseif panelStruct.uiType == SpatialUIType.SpatialUIPartOnly then
				local panelObject = panelStruct.panelObject :: Part
				panelObject.Parent = nil
			end
		end
	end
end

function UIManager.cameraMoved(self: UIManagerClassType)
	if not VRService.VREnabled then
		return
	end
	for _, panelStruct: Constants.PanelStruct in pairs(self.uiElements) do
		if
			panelExistsInSpace(panelStruct)
			and panelStruct.panelPositionProps
			and panelStruct.panelPositionProps.cameraFixedPanelProp
		then
			local panelPositionProps = panelStruct.panelPositionProps :: Constants.PanelPositionProps
			local cameraFixedPanelProp = panelPositionProps.cameraFixedPanelProp :: Constants.CameraFixedUIObjectProps
			local panelPart = getPanelPart(panelStruct)
			if panelPart == nil then
				return
			end
			panelPart = panelPart :: Part
			panelPart.CFrame = getYAxisStablizedCFrame((workspace.CurrentCamera :: Camera).CFrame)
				* self.uiGroups[panelPositionProps.uiGroup].positionProps.uiGroupCameraOffSet:ToWorldSpace(
					cameraFixedPanelProp.uiGroupElementOffset
				)
		end
	end
end

function UIManager.new()
	local self = {
		uiElements = {} :: { [Constants.PanelTypeValue]: Constants.PanelStruct },
		uiGroups = {} :: { [Constants.SpatialUIGroupTypeValue]: UIGroupStruct },
	}

	setmetatable(self, UIManager)

	--- Immediately initialize the UI groups after creation
	self:setUpUiGroups()
	self:updateUIGroupsForCurHeadCFrame()

	RunService:BindToRenderStep("UIManagerRenderStep", Enum.RenderPriority.Last.Value, function()
		self:step()
	end)

	VRHub.ShowTopBarChanged.Event:connect(function()
		self:onShowTopBarChanged()
	end)

	local camera = workspace.CurrentCamera :: Camera
	camera:GetPropertyChangedSignal("CFrame"):Connect(function()
		self:cameraMoved()
	end)

	return self
end

return UIManager.new()
