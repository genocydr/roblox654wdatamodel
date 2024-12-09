local Chrome = script:FindFirstAncestor("Chrome")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local VOICE_JOIN_PROGRESS = VoiceConstants.VOICE_JOIN_PROGRESS
local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)
local observeCurrentContextId = require(CorePackages.Workspace.Packages.CrossExperience).Utils.observeCurrentContextId
local CEV_CONTEXT_ID =
	require(CorePackages.Workspace.Packages.CrossExperience).Constants.AUDIO_FOCUS_MANAGEMENT.CEV.CONTEXT_ID

local GetFFlagEnableJoinVoiceOnUnibar =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableJoinVoiceOnUnibar
local GetFFlagEnableConnectDisconnectInSettingsAndChrome =
	require(RobloxGui.Modules.Flags.GetFFlagEnableConnectDisconnectInSettingsAndChrome)
local GetFFlagIntegratePhoneUpsellJoinVoice =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIntegratePhoneUpsellJoinVoice

local FFlagJoinVoiceHideWhenPartyVoiceFocused = game:DefineFastFlag("JoinVoiceHideWhenPartyVoiceFocused", false)

local ChromeService = require(Chrome.Service)

local isPrivateVoiceFocused = false
local lastKnownIntegrationAvailability: number = ChromeService.AvailabilitySignal.Unavailable

local joinVoice
joinVoice = ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Unavailable,
	id = "join_voice",
	label = "CoreScripts.TopBar.JoinVoice",
	activated = function()
		local SettingsHub = if GetFFlagIntegratePhoneUpsellJoinVoice()
			then require(RobloxGui.Modules.Settings.SettingsHub)
			else nil
		VoiceChatServiceManager:JoinVoice(SettingsHub)
	end,
	components = {
		Icon = function()
			return CommonIcon("icons/controls/publicAudioJoin")
		end,
	},
})

local function setAvailability(availability: number)
	lastKnownIntegrationAvailability = availability
	if not isPrivateVoiceFocused then
		if availability == ChromeService.AvailabilitySignal.Available then
			joinVoice.availability:available()
		elseif availability == ChromeService.AvailabilitySignal.Unavailable then
			joinVoice.availability:unavailable()
		end
	end
end

local function HideOrShowJoinVoiceButton(state)
	if state == VOICE_JOIN_PROGRESS.Suspended then
		if FFlagJoinVoiceHideWhenPartyVoiceFocused then
			setAvailability(ChromeService.AvailabilitySignal.Available)
		else
			joinVoice.availability:available()
		end
	elseif state == VOICE_JOIN_PROGRESS.Joined then
		if FFlagJoinVoiceHideWhenPartyVoiceFocused then
			setAvailability(ChromeService.AvailabilitySignal.Unavailable)
		else
			joinVoice.availability:unavailable()
		end
		-- When we enable and join voice through this button, we unmute the user
		if VoiceChatServiceManager.inExpUpsellEntrypoint == VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE then
			VoiceChatServiceManager:ToggleMic()
			VoiceChatServiceManager:showPrompt(VoiceChatPromptType.VoiceConsentAcceptedToast)
		end
	end
end

if FFlagJoinVoiceHideWhenPartyVoiceFocused then
	observeCurrentContextId(function(contextId)
		local isVoiceFocused = contextId == CEV_CONTEXT_ID
		if isPrivateVoiceFocused ~= isVoiceFocused then
			isPrivateVoiceFocused = isVoiceFocused
			if isPrivateVoiceFocused then
				lastKnownIntegrationAvailability = joinVoice.availability:get()
				joinVoice.availability:unavailable()
			else
				setAvailability(lastKnownIntegrationAvailability)
			end
		end
	end)
end

if GetFFlagEnableJoinVoiceOnUnibar() and game:GetEngineFeature("VoiceChatSupported") then
	if GetFFlagIntegratePhoneUpsellJoinVoice() then
		task.spawn(function()
			-- Only show the join voice button if we're not in the phone upsell flow
			if VoiceChatServiceManager:ShouldShowJoinVoice() then
				-- Pin if we're already in suspended state
				if FFlagJoinVoiceHideWhenPartyVoiceFocused then
					setAvailability(ChromeService.AvailabilitySignal.Available)
				else
					joinVoice.availability:available()
				end
			end
			VoiceChatServiceManager.VoiceJoinProgressChanged.Event:Connect(HideOrShowJoinVoiceButton)
		end)
	else
		-- Only show the join voice button if we're not in the phone upsell flow
		if VoiceChatServiceManager:ShouldShowJoinVoice() then
			-- Pin if we're already in suspended state
			if FFlagJoinVoiceHideWhenPartyVoiceFocused then
				setAvailability(ChromeService.AvailabilitySignal.Available)
			else
				joinVoice.availability:available()
			end
		end
		VoiceChatServiceManager.VoiceJoinProgressChanged.Event:Connect(HideOrShowJoinVoiceButton)
	end
	if GetFFlagEnableConnectDisconnectInSettingsAndChrome() then
		VoiceChatServiceManager.showVoiceUI.Event:Connect(function()
			if FFlagJoinVoiceHideWhenPartyVoiceFocused then
				setAvailability(ChromeService.AvailabilitySignal.Unavailable)
			else
				joinVoice.availability:unavailable()
			end
		end)
		VoiceChatServiceManager.hideVoiceUI.Event:Connect(function()
			if FFlagJoinVoiceHideWhenPartyVoiceFocused then
				setAvailability(ChromeService.AvailabilitySignal.Available)
			else
				joinVoice.availability:available()
			end
		end)
	else
		VoiceChatServiceManager.VoiceJoinProgressChanged.Event:Connect(HideOrShowJoinVoiceButton)
	end
end

return joinVoice
