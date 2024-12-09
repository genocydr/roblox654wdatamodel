local Chrome = script:FindFirstAncestor("Chrome")

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local TextChatService = game:GetService("TextChatService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Chat = game:GetService("Chat")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local ChromeIntegrationUtils = require(Chrome.Integrations.ChromeIntegrationUtils)
local ViewportUtil = require(Chrome.ChromeShared.Service.ViewportUtil)
local MappedSignal = ChromeUtils.MappedSignal
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local GameSettings = UserSettings().GameSettings
local GuiService = game:GetService("GuiService")

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal
local getFFlagAppChatCoreUIConflictFix = SharedFlags.getFFlagAppChatCoreUIConflictFix

local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local EnabledPinnedChat = require(Chrome.Flags.GetFFlagEnableChromePinnedChat)()
local GetFFlagEnableAppChatInExperience = SharedFlags.GetFFlagEnableAppChatInExperience
local GetFFlagAddChromeActivatedEvents = require(Chrome.Flags.GetFFlagAddChromeActivatedEvents)
local GetFFlagRemoveChromeRobloxGuiReferences = SharedFlags.GetFFlagRemoveChromeRobloxGuiReferences
local getFFlagExpChatGetLabelAndIconFromUtil = SharedFlags.getFFlagExpChatGetLabelAndIconFromUtil
local getExperienceChatVisualConfig = require(CorePackages.Workspace.Packages.ExpChat).getExperienceChatVisualConfig
local getFFlagExpChatAlwaysRunTCS = require(CorePackages.Workspace.Packages.SharedFlags).getFFlagExpChatAlwaysRunTCS

local unreadMessages = 0
-- note: do not rely on ChatSelector:GetVisibility after startup; it's state is incorrect if user opens via keyboard shortcut
local chatVisibility: boolean = ChatSelector:GetVisibility()
local chatChromeIntegration

local chatSelectorVisibilitySignal
if getFFlagExpChatAlwaysRunTCS() then
	chatSelectorVisibilitySignal = ChatSelector.ChromeVisibilityStateChanged
else
	chatSelectorVisibilitySignal = ChatSelector.VisibilityStateChanged
end

local chatVisibilitySignal = MappedSignal.new(chatSelectorVisibilitySignal, function()
	return chatVisibility
end, function(visibility)
	if not GuiService.MenuIsOpen then
		-- chat is inhibited (visibility = false) during menu open; not user intent; don't save
		GameSettings.ChatVisible = visibility :: boolean
	end

	chatVisibility = visibility :: boolean
	if visibility and unreadMessages and chatChromeIntegration.notification then
		unreadMessages = 0
		chatChromeIntegration.notification:clear()
	end
end)

local dismissCallback = function(menuWasOpen)
	if getFFlagAppChatCoreUIConflictFix() then
		if InExperienceAppChatModal:getVisible() then
			InExperienceAppChatModal.default:setVisible(false)
		end

		ChatSelector:SetVisible(true)
	else
		if menuWasOpen then
			if not chatVisibility then
				ChatSelector:ToggleVisibility()
			end
		else
			ChatSelector:ToggleVisibility()
		end
	end
end

chatChromeIntegration = ChromeService:register({
	id = "chat",
	label = "CoreScripts.TopBar.Chat",
	activated = function(self)
		if chatVisibility then
			if getFFlagAppChatCoreUIConflictFix() then
				ChatSelector:SetVisible(false)
			else
				ChatSelector:ToggleVisibility()
			end
		else
			if GetFFlagRemoveChromeRobloxGuiReferences() then
				ChromeIntegrationUtils.dismissRobloxMenuAndRun(function(menuWasOpen)
					dismissCallback(menuWasOpen)
				end)
			else
				ChromeUtils.dismissRobloxMenuAndRun(function(menuWasOpen)
					dismissCallback(menuWasOpen)
				end)
			end
		end
	end,
	isActivated = if GetFFlagAddChromeActivatedEvents()
		then function()
			return chatVisibilitySignal:get()
		end
		else nil,
	components = {
		Icon = function(props)
			if getFFlagExpChatGetLabelAndIconFromUtil() then
				local visualConfig = getExperienceChatVisualConfig()
				return CommonIcon(visualConfig.icon.off, visualConfig.icon.on, chatVisibilitySignal)
			else
				if
					GetFFlagEnableAppChatInExperience()
					and InExperienceAppChatExperimentation.default.variant.ShowInExperienceChatNewIcon
				then
					return CommonIcon("icons/menu/publicChatOff", "icons/menu/publicChatOn", chatVisibilitySignal)
				else
					return CommonIcon("icons/menu/chat_off", "icons/menu/chat_on", chatVisibilitySignal)
				end
			end
		end,
	},
})

chatChromeIntegration.notification:fireCount(unreadMessages)
TextChatService.MessageReceived:Connect(function()
	if not chatVisibility then
		unreadMessages += 1
		chatChromeIntegration.notification:fireCount(unreadMessages)
	end
end)

local lastMessagesChangedValue = 0
ChatSelector.MessagesChanged:connect(function(messages: number)
	if not chatVisibility then
		unreadMessages += messages - lastMessagesChangedValue
		chatChromeIntegration.notification:fireCount(unreadMessages)
	end
	lastMessagesChangedValue = messages
end)

coroutine.wrap(function()
	local LocalPlayer = Players.LocalPlayer
	while not LocalPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		LocalPlayer = Players.LocalPlayer
	end

	local canChat = true
	if not RunService:IsStudio() then
		local success, localUserCanChat = pcall(function()
			return Chat:CanUserChatAsync(LocalPlayer and LocalPlayer.UserId or 0)
		end)
		canChat = success and localUserCanChat
	end

	if canChat and chatChromeIntegration.availability then
		ChromeUtils.setCoreGuiAvailability(chatChromeIntegration, Enum.CoreGuiType.Chat, function(enabled)
			if enabled then
				if EnabledPinnedChat then
					chatChromeIntegration.availability:pinned()
				else
					chatChromeIntegration.availability:available()
				end
			else
				chatChromeIntegration.availability:unavailable()
			end
		end)
		-- clone of ChatConnector.lua didMount()
		local willEnableChat = GameSettings.ChatVisible
		if ViewportUtil.isSmallTouchScreen() then
			willEnableChat = false
		end
		chatVisibility = willEnableChat
		ChatSelector:SetVisible(willEnableChat)
	end
end)()

-- dev test code
function _simulateChat()
	while true do
		task.wait(math.random(1, 15))
		if not chatVisibility then
			unreadMessages += 1
			chatChromeIntegration.notification:fireCount(unreadMessages)
		end
	end
end

--coroutine.resume(coroutine.create(_simulateChat))

return chatChromeIntegration
