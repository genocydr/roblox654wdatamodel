local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local React = require(CorePackages.Packages.React)

local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local ChromeService = require(Root.Service)
local ChromeAnalytics = require(Root.Analytics.ChromeAnalytics)

local GetFFlagChromeCentralizedConfiguration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagChromeCentralizedConfiguration

local _integrations = if GetFFlagChromeCentralizedConfiguration() then nil else require(Root.Parent.Integrations)
local SubMenu = require(Root.Unibar.SubMenu)
local WindowManager = require(Root.Unibar.WindowManager)
local Constants = require(Root.Unibar.Constants)

local useChromeMenuItems = require(Root.Hooks.useChromeMenuItems)
local useObservableValue = require(Root.Hooks.useObservableValue)
local useMappedObservableValue = require(Root.Hooks.useMappedObservableValue)

local IconHost = require(Root.Unibar.ComponentHosts.IconHost)
local ContainerHost = require(Root.Unibar.ComponentHosts.ContainerHost)

local ReactOtter = require(CorePackages.Packages.ReactOtter)

local GetFFlagDebugEnableUnibarDummyIntegrations =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagDebugEnableUnibarDummyIntegrations
local GetFFlagEnableSaveUserPins = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableSaveUserPins
local GetFFlagEnableChromePinAnalytics =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromePinAnalytics
local GetFFlagEnableChromePinIntegrations =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromePinIntegrations
local GetFFlagEnablePartyMicIconInChrome =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnablePartyMicIconInChrome
local GetFFlagUsePolishedAnimations = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUsePolishedAnimations
local GetFFlagAnimateSubMenu = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAnimateSubMenu
local GetFIntIconSelectionTimeout = require(CorePackages.Workspace.Packages.SharedFlags).GetFIntIconSelectionTimeout
-- APPEXP-2053 TODO: Remove all use of RobloxGui from ChromeShared
local GetFFlagEnableSongbirdInChrome = require(Root.Parent.Flags.GetFFlagEnableSongbirdInChrome)
local GetFFlagEnableJoinVoiceOnUnibar =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableJoinVoiceOnUnibar
local GetFFlagChromeUsePreferredTransparency =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagChromeUsePreferredTransparency
local GetFFlagPostLaunchUnibarDesignTweaks =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPostLaunchUnibarDesignTweaks

local FFlagReshufflePartyIconsInUnibar = game:DefineFastFlag("ReshufflePartyIconsInUnibar", false)

-- APPEXP-2053 TODO: Remove all use of RobloxGui from ChromeShared
local PartyConstants = require(Root.Parent.Integrations.Party.Constants)
local isConnectUnibarEnabled = require(Root.Parent.Integrations.Connect.isConnectUnibarEnabled)
local isConnectDropdownEnabled = require(Root.Parent.Integrations.Connect.isConnectDropdownEnabled)

type Array<T> = { [number]: T }
type Table = { [any]: any }

if not GetFFlagChromeCentralizedConfiguration() then
	function configureUnibar()
		-- Configure the menu.  Top level ordering, integration availability.
		-- Integration availability signals will ultimately filter items out so no need for granular filtering here.
		-- ie. Voice Mute integration will only be shown is voice is enabled/active
		local nineDot = { "leaderboard", "emotes", "backpack" }
		local partyMenu = if GetFFlagEnablePartyMicIconInChrome() and not FFlagReshufflePartyIconsInUnibar
			then { PartyConstants.TOGGLE_MIC_INTEGRATION_ID }
			else {}

		-- append to end of nine-dot
		table.insert(nineDot, "respawn")
		-- prepend trust_and_safety to nine-dot menu
		table.insert(nineDot, 1, "trust_and_safety")

		if isConnectDropdownEnabled() then
			table.insert(nineDot, 1, "connect_dropdown")
		end

		-- insert trust and safety into pin, prioritize over leaderboard
		if GetFFlagEnableChromePinIntegrations() and not ChromeService:isUserPinned("trust_and_safety") then
			if not GetFFlagEnableSaveUserPins() then
				ChromeService:setUserPin("trust_and_safety", true)

				if GetFFlagEnableChromePinAnalytics() then
					ChromeAnalytics.default:setPin("trust_and_safety", true, ChromeService:userPins())
				end
			end
		end

		local v4Ordering = { "toggle_mic_mute", "chat", "nine_dot" }

		if GetFFlagEnableJoinVoiceOnUnibar() then
			table.insert(v4Ordering, 2, "join_voice")
		end

		if GetFFlagDebugEnableUnibarDummyIntegrations() then
			table.insert(v4Ordering, 1, "dummy_window")
			table.insert(v4Ordering, 1, "dummy_window_2")
			table.insert(v4Ordering, 1, "dummy_container")
		end

		if isConnectUnibarEnabled() then
			-- TODO: this integration will replace logic related to `partyMenu`
			if FFlagReshufflePartyIconsInUnibar then
				table.insert(v4Ordering, 1, "connect_unibar")
			else
				local experienceChatIndex = table.find(v4Ordering, "chat")
				if experienceChatIndex then
					-- insert Connect(a.k.a AppChat) after ExperienceChat, so it appears in front of ExpChat
					table.insert(v4Ordering, experienceChatIndex + 1, "connect_unibar")
				end
			end
		end

		if FFlagReshufflePartyIconsInUnibar then
			local toggleMicIndex = table.find(v4Ordering, "toggle_mic_mute")
			if toggleMicIndex then
				table.insert(v4Ordering, toggleMicIndex + 1, PartyConstants.TOGGLE_MIC_INTEGRATION_ID)
			end
		end

		ChromeService:configureMenu({
			partyMenu,
			v4Ordering,
		})

		table.insert(nineDot, 2, "camera_entrypoint")
		table.insert(nineDot, 2, "selfie_view")

		if GetFFlagEnableSongbirdInChrome() then
			table.insert(nineDot, 4, "music_entrypoint")
		end

		ChromeService:configureSubMenu("nine_dot", nineDot)
	end

	configureUnibar()
end

export type IconDividerProps = {
	toggleTransition: any?,
	position: React.Binding<UDim2> | UDim2 | nil,
	visible: React.Binding<boolean> | boolean | nil,
	disableButtonBehaviors: boolean?,
}

-- Vertical divider bar that separates groups of icons within the Unibar
function IconDivider(props: IconDividerProps)
	local style = useStyle()

	return React.createElement("Frame", {
		Position = props.position,
		Size = UDim2.new(0, Constants.DIVIDER_CELL_WIDTH, 1, 0),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		DividerBar = React.createElement("Frame", {
			Position = UDim2.new(0, 2, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Size = UDim2.new(0, 1, 0, 28),
			BorderSizePixel = 0,
			BackgroundColor3 = style.Theme.Divider.Color,
			BackgroundTransparency = if GetFFlagUsePolishedAnimations() and props.toggleTransition
				then props.toggleTransition:map(function(value)
					return style.Theme.Divider.Transparency + ((1 - value) * (1 - style.Theme.Divider.Transparency))
				end)
				else style.Theme.Divider.Transparency,
			Visible = props.visible or true,
		}),
	})
end

-- Non-visible helper child component to avoid parent re-renders
-- Updates animation targets based Chrome status
function AnimationStateHelper(props)
	local currentSubmenu = useObservableValue(ChromeService:currentSubMenu())

	local selectedItem = useObservableValue(ChromeService:selectedItem())
	local inFocusNav = useObservableValue(ChromeService:inFocusNav())

	React.useEffect(function()
		if inFocusNav then
			ContextActionService:BindCoreAction("RBXEscapeUnibar", function()
				ChromeService:disableFocusNav()
			end, false, Enum.KeyCode.ButtonB)

			if props.menuFrameRef.current then
				GuiService:Select(props.menuFrameRef.current)
			end
		else
			ContextActionService:UnbindCoreAction("RBXEscapeUnibar")

			if GuiService.SelectedCoreObject then
				local selectedWithinUnibar = props.menuFrameRef.current:IsAncestorOf(GuiService.SelectedCoreObject)
				if selectedWithinUnibar then
					GuiService.SelectedCoreObject = nil
				end
			end
		end
	end, { inFocusNav })

	React.useEffect(function()
		if currentSubmenu == "nine_dot" then
			props.setToggleSubmenuTransition(ReactOtter.spring(1, Constants.MENU_ANIMATION_SPRING) :: any)
		else
			props.setToggleSubmenuTransition(ReactOtter.spring(0, Constants.MENU_ANIMATION_SPRING) :: any)
		end
	end, { currentSubmenu })

	React.useEffect(function()
		if GetFFlagUsePolishedAnimations() then
			local updateSelection = coroutine.create(function()
				local counter = 0
				-- React can sometimes take a few frames to update, so retry until successful
				while counter < GetFIntIconSelectionTimeout() do
					counter += 1
					task.wait()
					if props.menuFrameRef.current and selectedItem then
						local selectChild: any? =
							props.menuFrameRef.current:FindFirstChild("IconHitArea_" .. selectedItem, true)
						if selectChild then
							GuiService.SelectedCoreObject = selectChild
							return
						end
					end
				end
			end)
			coroutine.resume(updateSelection)
		else
			if props.menuFrameRef.current and selectedItem then
				local selectChild: any? =
					props.menuFrameRef.current:FindFirstChild("IconHitArea_" .. selectedItem, true)
				if selectChild then
					GuiService.SelectedCoreObject = selectChild
				end
			end
		end
	end, { selectedItem })

	return nil
end

function linearInterpolation(a: number, b: number, t: number)
	return a * (1 - t) + b * t
end

function IconPositionBinding(
	toggleTransition: any,
	priorPosition: number,
	openPosition: number,
	closedPosition: number,
	iconReflow: any,
	unibarWidth: any,
	pinned: boolean,
	leftAlign: boolean?,
	flipLerp: any
)
	return React.joinBindings({ toggleTransition, iconReflow, unibarWidth })
		:map(function(val: { [number]: number })
			local open = 0
			if flipLerp.current then
				open = linearInterpolation(openPosition, priorPosition, val[2])
			else
				open = linearInterpolation(priorPosition, openPosition, val[2])
			end

			local closedPos = closedPosition
			if leftAlign and not pinned then
				closedPos = closedPosition - val[3]
			end
			local openDelta = open - closedPos

			return UDim2.new(
				0,
				(if GetFFlagPostLaunchUnibarDesignTweaks() then Constants.UNIBAR_END_PADDING else 0)
					+ closedPos
					+ openDelta * val[1],
				0,
				0
			)
		end) :: any
end

type UnibarProp = {
	menuFrameRef: any,
	onAreaChanged: (id: string, position: Vector2, size: Vector2) -> nil,
	onMinWidthChanged: (width: number) -> (),
}

function isLeft(alignment)
	return alignment == Enum.HorizontalAlignment.Left
end

function Unibar(props: UnibarProp)
	local currentOpenPositions = {}
	local priorOpenPositions = React.useRef({})
	local priorAbsolutePosition = React.useRef(Vector2.zero)

	local updatePositions = false
	local priorPositions = priorOpenPositions.current or {}

	-- Tree of menu items to display
	local menuItems = useChromeMenuItems()

	-- Animation for menu open(toggleTransition = 1), closed(toggleTransition = 0) status
	local menuOpen = ChromeService:status():get() == ChromeService.MenuStatus.Open
	local toggleTransition, setToggleTransition = ReactOtter.useAnimatedBinding(if menuOpen then 1 else 0)
	local toggleIconTransition, setToggleIconTransition = ReactOtter.useAnimatedBinding(if menuOpen then 1 else 0)
	local toggleWidthTransition, setToggleWidthTransition = ReactOtter.useAnimatedBinding(if menuOpen then 1 else 0)
	local unibarWidth, setUnibarWidth = ReactOtter.useAnimatedBinding(0)
	local iconReflow, setIconReflow = ReactOtter.useAnimatedBinding(1)
	local flipLerp = React.useRef(false)
	local positionUpdateCount = React.useRef(0)

	local submenuOpen = ChromeService:currentSubMenu():get() == "nine_dot"
	local toggleSubmenuTransition, setToggleSubmenuTransition =
		ReactOtter.useAnimatedBinding(if submenuOpen then 1 else 0)

	local children: Table = {} -- Icons and Dividers to be rendered
	local pinnedCount = 0 -- number of icons to support when closed
	local xOffset = 0 -- x advance layout / overall width
	local xOffsetPinned = 0 -- x advance layout for pinned items (used when closed)
	local minSize: number = 0
	local expandSize: number = 0

	local onAreaChanged = React.useCallback(function(rbx)
		local absolutePosition = Vector2.zero
		if rbx then
			absolutePosition = rbx.AbsolutePosition
			if absolutePosition ~= priorAbsolutePosition.current then
				priorAbsolutePosition.current = absolutePosition
				ChromeService:setMenuAbsolutePosition(absolutePosition)
			end
		end

		if rbx and props.onAreaChanged then
			props.onAreaChanged(Constants.UNIBAR_KEEP_OUT_AREA_ID, absolutePosition, rbx.AbsoluteSize)
		end
	end, {})

	local unibarSizeBinding = React.joinBindings({
		if GetFFlagUsePolishedAnimations() then toggleWidthTransition else toggleTransition,
		unibarWidth,
	}):map(function(val: { [number]: number })
		return UDim2.new(0, linearInterpolation(minSize, val[2], val[1]), 0, Constants.ICON_CELL_WIDTH)
	end)

	local leftAlign = useMappedObservableValue(ChromeService:orderAlignment(), isLeft)

	for k, item in menuItems do
		if item.integration.availability:get() == ChromeService.AvailabilitySignal.Pinned then
			pinnedCount += 1
		end
	end

	local extraPinnedCount = 0
	if leftAlign then
		extraPinnedCount = 1
	else
		extraPinnedCount = math.max(pinnedCount - 1, 0)
	end

	for k, item in menuItems do
		if item.isDivider then
			local closedPos = xOffset + Constants.ICON_CELL_WIDTH * extraPinnedCount
			closedPos = closedPos

			local prior = priorPositions[item.id] or xOffset
			currentOpenPositions[item.id] = xOffset
			updatePositions = updatePositions or (prior ~= xOffset)
			local positionBinding = IconPositionBinding(
				if GetFFlagUsePolishedAnimations() then toggleIconTransition else toggleTransition,
				prior,
				xOffset,
				closedPos,
				iconReflow,
				unibarWidth,
				false,
				leftAlign,
				flipLerp
			)
			-- Clip the remaining few pixels on the right edge of the unibar during transition

			local visibleBinding
			if leftAlign then
				visibleBinding = React.joinBindings({ positionBinding, unibarSizeBinding }):map(function(values)
					local position: UDim2 = values[1]
					return position.X.Offset >= (Constants.ICON_CELL_WIDTH * 0.5)
				end)
			else
				visibleBinding = React.joinBindings({ positionBinding, unibarSizeBinding }):map(function(values)
					local position: UDim2 = values[1]
					local size: UDim2 = values[2]
					return position.X.Offset <= (size.X.Offset - Constants.ICON_CELL_WIDTH)
				end)
			end

			children[item.id or ("icon" .. k)] = React.createElement(IconDivider, {
				position = positionBinding,
				visible = visibleBinding,
				toggleTransition = if GetFFlagUsePolishedAnimations() then toggleWidthTransition else nil,
			})
			xOffset += Constants.DIVIDER_CELL_WIDTH
		elseif item.integration then
			local pinned = false
			local closedPos = xOffset + Constants.ICON_CELL_WIDTH * extraPinnedCount
			if item.integration.availability:get() == ChromeService.AvailabilitySignal.Pinned then
				pinned = true
				closedPos = xOffsetPinned
			end

			local prior = if priorPositions[item.id] == nil then xOffset else priorPositions[item.id]
			currentOpenPositions[item.id] = xOffset
			updatePositions = updatePositions or (prior ~= xOffset)
			local positionBinding = IconPositionBinding(
				if GetFFlagUsePolishedAnimations() then toggleIconTransition else toggleTransition,
				prior,
				xOffset,
				closedPos,
				iconReflow,
				unibarWidth,
				pinned,
				leftAlign,
				flipLerp
			)

			-- Clip the remaining few pixels on the right edge of the unibar during transition
			local visibleBinding
			if leftAlign then
				visibleBinding = React.joinBindings({ positionBinding, unibarSizeBinding }):map(function(values)
					local position: UDim2 = values[1]
					return position.X.Offset >= (Constants.ICON_CELL_WIDTH * 0.5)
				end)
			else
				visibleBinding = React.joinBindings({ positionBinding, unibarSizeBinding }):map(function(values)
					local position: UDim2 = values[1]
					local size: UDim2 = values[2]
					return position.X.Offset <= (size.X.Offset - Constants.ICON_CELL_WIDTH * 1.5)
				end)
			end

			if item.integration.components.Container then
				local containerWidthSlots = if item.integration.containerWidthSlots
					then item.integration.containerWidthSlots:get()
					else 0

				children[item.id or ("container" .. k)] = React.createElement(ContainerHost, {
					position = positionBinding :: any,
					visible = pinned or visibleBinding :: any,
					integration = item,
					containerWidthSlots = containerWidthSlots,
				}) :: any
				xOffset += containerWidthSlots * Constants.ICON_CELL_WIDTH
				if pinned then
					xOffsetPinned += containerWidthSlots * Constants.ICON_CELL_WIDTH
				end
			else
				children[item.id or ("icon" .. k)] = React.createElement(IconHost, {
					position = positionBinding :: any,
					visible = pinned or visibleBinding :: any,
					toggleTransition = toggleSubmenuTransition,
					integration = item,
				}) :: any
				xOffset += Constants.ICON_CELL_WIDTH
				if pinned then
					xOffsetPinned += Constants.ICON_CELL_WIDTH
				end
			end
		end
	end

	minSize = xOffset
	if props.onMinWidthChanged then
		props.onMinWidthChanged(minSize)
	end
	if GetFFlagPostLaunchUnibarDesignTweaks() then
		expandSize = Constants.UNIBAR_END_PADDING * 2 + xOffset
	else
		expandSize = xOffset
	end

	React.useEffect(function()
		local lastUnibarWidth = unibarWidth:getValue()
		if unibarWidth:getValue() == 0 then
			setUnibarWidth(ReactOtter.instant(expandSize) :: any)
		elseif lastUnibarWidth ~= expandSize then
			setUnibarWidth(ReactOtter.spring(expandSize, Constants.MENU_ANIMATION_SPRING))
		end
	end, { expandSize })

	React.useEffect(function()
		ChromeService:setMenuAbsoluteSize(
			Vector2.new(minSize, Constants.ICON_CELL_WIDTH),
			Vector2.new(expandSize, Constants.ICON_CELL_WIDTH)
		)
	end, { minSize, expandSize })

	if updatePositions then
		positionUpdateCount.current = (positionUpdateCount.current or 0) + 1
	end
	priorOpenPositions.current = currentOpenPositions

	React.useEffect(function()
		-- Currently forced to use this flipLerp logic as otter does not support a starting position
		---(even with a call of ReactOtter.instant ahead of time)
		if not flipLerp.current then
			setIconReflow(ReactOtter.spring(0, Constants.MENU_ANIMATION_SPRING))
			flipLerp.current = true
		else
			setIconReflow(ReactOtter.spring(1, Constants.MENU_ANIMATION_SPRING))
			flipLerp.current = false
		end
	end, { positionUpdateCount.current :: any, flipLerp })

	local style = useStyle()

	return React.createElement("Frame", {
		Size = unibarSizeBinding,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		SelectionGroup = true,
		ref = props.menuFrameRef,
		[React.Change.AbsoluteSize] = onAreaChanged,
		[React.Change.AbsolutePosition] = onAreaChanged,
	}, {
		React.createElement(AnimationStateHelper, {
			setToggleTransition = setToggleTransition,
			setToggleIconTransition = setToggleIconTransition,
			setToggleWidthTransition = setToggleWidthTransition,
			setToggleSubmenuTransition = setToggleSubmenuTransition,
			menuFrameRef = props.menuFrameRef,
		}),
		-- Background
		React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = if GetFFlagChromeUsePreferredTransparency()
				then style.Theme.BackgroundUIContrast.Transparency * style.Settings.PreferredTransparency
				else style.Theme.BackgroundUIContrast.Transparency,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),
		-- IconRow
		React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
		}, children),
	} :: Array<any>)
end

export type UnibarMenuProp = {
	layoutOrder: number,
	onAreaChanged: (id: string, position: Vector2, size: Vector2) -> nil,
	onMinWidthChanged: (width: number) -> (),
}

local UnibarMenu = function(props: UnibarMenuProp)
	local menuFrame = React.useRef(nil)
	local menuOutterFrame = React.useRef(nil)

	-- AutomaticSize isn't working for this use-case
	-- Update size manually
	local function updateSize()
		if menuOutterFrame.current and menuFrame.current then
			menuOutterFrame.current.Size = menuFrame.current.Size
		end
	end

	local leftAlign = useMappedObservableValue(ChromeService:orderAlignment(), isLeft)

	React.useEffect(function()
		local conn
		if menuFrame and menuFrame.current then
			conn = menuFrame.current:GetPropertyChangedSignal("Size"):Connect(updateSize)
		end

		updateSize()

		return function()
			if conn then
				conn:disconnect()
			end
		end
	end)

	return {
		React.createElement("Frame", {
			Name = "UnibarMenu",
			AutomaticSize = Enum.AutomaticSize.Y,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
			SelectionGroup = true,
			SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
			SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
			SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
			ref = menuOutterFrame,
		}, {
			React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = if leftAlign
					then Enum.HorizontalAlignment.Left
					else Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, 10),
			}) :: any,
			React.createElement(Unibar, {
				menuFrameRef = menuFrame,
				onAreaChanged = props.onAreaChanged,
				onMinWidthChanged = props.onMinWidthChanged,
			}) :: any,
			React.createElement(SubMenu) :: any,
			React.createElement(WindowManager) :: React.React_Element<any>,
		}),
	}
end

-- Unibar should never have to be rerendered
return React.memo(
	UnibarMenu :: any,
	if GetFFlagAnimateSubMenu()
		then function(_, _)
			return true
		end
		else nil
)
