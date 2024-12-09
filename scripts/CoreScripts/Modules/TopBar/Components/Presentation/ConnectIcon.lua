local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Packages.Roact)

local UIBlox = require(CorePackages.Packages.UIBlox)

local Foundation = require(CorePackages.Packages.Foundation)
local Badge = Foundation.Badge
local BadgeVariant = Foundation.Enums.BadgeVariant

local Images = UIBlox.App.ImageSet.Images

local IconButton = require(script.Parent.IconButton)

local TopBar = script.Parent.Parent.Parent
local Chrome = TopBar.Parent.Chrome
-- local TopBarAnalytics = require(TopBar.Analytics)
local FFlagEnableChromeBackwardsSignalAPI = require(TopBar.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
-- local FFlagEnableTopBarAnalytics = require(TopBar.Flags.GetFFlagEnableTopBarAnalytics)()
local Constants = require(TopBar.Constants)
local usePartyIcon = require(Chrome.Integrations.Party.usePartyIcon)

local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal

local FFlagAppChatRebrandInNonChrome =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagAppChatRebrandInNonChrome

local ICON_AREA_WIDTH = 30
local AVATAR_SIZE = 26

local ICON_OFF = if FFlagAppChatRebrandInNonChrome
	then Images["icons/menu/2-person-with-bubble"]
	else Images["icons/menu/platformChatOff"]
local ICON_ON = if FFlagAppChatRebrandInNonChrome
	then Images["icons/menu/2-person-with-bubble-on"]
	else Images["icons/menu/platformChatOn"]

local ICON_SIZE = 30
local BADGE_OFFSET_X = 19
local BADGE_OFFSET_Y = 8

type Props = {
	layoutOrder: number,
	setKeepOutArea: (areaId: string, position: Vector2, size: Vector2) -> (),
	removeKeepOutArea: (areaId: string) -> (),
}

local getCurrentSquadId = function(isIndependentAppChatContainer)
	if isIndependentAppChatContainer then
		return InExperienceAppChatModal.default.currentSquadId
	else
		return SettingsHub.Instance.AppChatPage.CurrentSquadId
	end
end

local getAppChatIsOpen = function(isIndependentAppChatContainer)
	if isIndependentAppChatContainer then
		return InExperienceAppChatModal.default:getVisible()
	else
		return SettingsHub.Instance.Pages.CurrentPage ~= nil and SettingsHub.Instance.Pages.CurrentPage.Page.Name == SettingsHub.Instance.AppChatPage.Page.Name
	end
end

function ConnectIcon(props: Props)
	local isIndependentAppChatContainer = InExperienceAppChatExperimentation.default:shouldUseIndependentAppChatContainer()
	local buttonRef = React.useRef(nil) :: { current: GuiObject? }
	local currentSquadId, setCurrentSquadId = React.useState(getCurrentSquadId(isIndependentAppChatContainer))
	local isAppChatOpened, setIsAppChatOpened = React.useState(getAppChatIsOpen(isIndependentAppChatContainer))
	local isVisible = React.useMemo(function()
		return currentSquadId ~= ""
	end, { currentSquadId })

	local partyIcon = usePartyIcon(ICON_SIZE, AVATAR_SIZE, if isAppChatOpened then ICON_ON else ICON_OFF)
	React.useEffect(function()
		setCurrentSquadId(getCurrentSquadId(isIndependentAppChatContainer))
		if isIndependentAppChatContainer then
			setCurrentSquadId(InExperienceAppChatModal.default.currentSquadId)
			local connection = InExperienceAppChatModal.default.currentSquadIdSignal.Event:Connect(function(nextSquadId)
				setCurrentSquadId(nextSquadId)
			end)
			return function()
				connection:Disconnect()
			end
		else
			setCurrentSquadId(SettingsHub.Instance.AppChatPage.CurrentSquadId)
			local connection = SettingsHub.Instance.AppChatPage.CurrentSquadIdSignal.Event:Connect(function(nextSquadId)
				setCurrentSquadId(nextSquadId)
			end)
			return function()
				connection:Disconnect()
			end
		end
	end, { isIndependentAppChatContainer })

	React.useEffect(function()
		setIsAppChatOpened(getAppChatIsOpen(isIndependentAppChatContainer))
		if isIndependentAppChatContainer then
			local appChatVisibilityConnection = InExperienceAppChatModal.default.visibilitySignal.Event:Connect(
				function(isVisible)
					setIsAppChatOpened(isVisible)
				end
			)
			return function()
				appChatVisibilityConnection:Disconnect()
			end
		else
			local appChatVisibilityConnection = SettingsHub.Instance.CurrentPageSignal:connect(function(pageName)
				setIsAppChatOpened(SettingsHub.Instance.AppChatPage.Page.Name == pageName)
			end)
			return function()
				appChatVisibilityConnection:disconnect()
			end
		end
	end, { isIndependentAppChatContainer })

	local onAreaChanged = React.useCallback(function(rbx: GuiObject)
		if isVisible and rbx then
			props.setKeepOutArea(Constants.ConnectIconKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
		else
			props.removeKeepOutArea(Constants.ConnectIconKeepOutAreaId)
		end
	end, { isVisible, props.setKeepOutArea, props.removeKeepOutArea } :: { unknown })

	local setButtonRef = function(rbx: GuiObject?)
		if rbx then
			buttonRef.current = rbx
			onAreaChanged(rbx)
		end
	end

	React.useEffect(function()
		if FFlagEnableChromeBackwardsSignalAPI then
			if buttonRef.current then
				onAreaChanged(buttonRef.current)
			end
		end
	end, { onAreaChanged })

	local toggleIndependentAppChat = React.useCallback(function()
		InExperienceAppChatModal:toggleVisibility()
	end, {})

	local toggleSettingsHubAppChat = React.useCallback(function()
		local isSettingsHubVisible = SettingsHub:GetVisibility()
		if isSettingsHubVisible and isAppChatOpened then
			SettingsHub.Instance:PopMenu(false, true)
		else
			if not isSettingsHubVisible then
				SettingsHub.Instance:SetVisibility(true, false)
			end
			SettingsHub:SwitchToPage(SettingsHub.Instance.AppChatPage)
		end
	end, { isAppChatOpened })

	return Roact.createElement("TextButton", {
		Text = "",
		Visible = isVisible,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, ICON_AREA_WIDTH, 1, 0),
		LayoutOrder = props.layoutOrder,
		Selectable = false,
		[Roact.Change.AbsoluteSize] = if FFlagEnableChromeBackwardsSignalAPI then onAreaChanged else nil,
		[Roact.Change.AbsolutePosition] = if FFlagEnableChromeBackwardsSignalAPI then onAreaChanged else nil,
	}, {
		Background = Roact.createElement(IconButton, {
			backgroundTransparency = if partyIcon.image.backgroundColor == nil then 1 else 0,
			backgroundColor3 = partyIcon.image.backgroundColor,
			icon = partyIcon.image.thumbnail,
			backgroundCornerRadius = UDim.new(0, 6),
			iconSize = partyIcon.size:map(function(value)
				return UDim2.fromOffset(value, value)
			end),
			onActivated = if isIndependentAppChatContainer then toggleIndependentAppChat else toggleSettingsHubAppChat,
			[Roact.Ref] = setButtonRef,
		}),

		BadgeContainer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0, 0),
			Position = UDim2.fromOffset(BADGE_OFFSET_X, BADGE_OFFSET_Y),
			ZIndex = 2,
		}, {
			Badge = Roact.createElement(Badge, {
				variant = BadgeVariant.Primary,
			}),
		}),
	})
end

return ConnectIcon
