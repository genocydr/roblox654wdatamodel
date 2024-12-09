local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeEnabled = require(Chrome.Enabled)
if not ChromeEnabled() then
	return
end

local ChromeAnalytics = require(Chrome.ChromeShared.Analytics.ChromeAnalytics)
local ChromeService = require(Chrome.Service)
local PartyConstants = require(Chrome.Integrations.Party.Constants)
local isConnectUnibarEnabled = require(Chrome.Integrations.Connect.isConnectUnibarEnabled)
local isConnectDropdownEnabled = require(Chrome.Integrations.Connect.isConnectDropdownEnabled)
local GetFFlagEnableSongbirdPeek = require(Chrome.Flags.GetFFlagEnableSongbirdPeek)

local GetFFlagDebugEnableUnibarDummyIntegrations =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagDebugEnableUnibarDummyIntegrations
local GetFFlagEnableSaveUserPins = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableSaveUserPins
local GetFFlagEnableChromePinAnalytics =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromePinAnalytics
local GetFFlagEnableChromePinIntegrations =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromePinIntegrations
local GetFFlagEnablePartyMicIconInChrome =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnablePartyMicIconInChrome
local GetFFlagEnableSongbirdInChrome = require(Chrome.Flags.GetFFlagEnableSongbirdInChrome)
local GetFFlagEnableJoinVoiceOnUnibar =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableJoinVoiceOnUnibar

local function initializeIntegrations()
	require(Chrome.Integrations)
end

local function configureUnibar()
	-- Configure the menu.  Top level ordering, integration availability.
	-- Integration availability signals will ultimately filter items out so no need for granular filtering here.
	-- ie. Voice Mute integration will only be shown is voice is enabled/active
	local nineDot = { "leaderboard", "emotes", "backpack" }
	local partyMenu = if GetFFlagEnablePartyMicIconInChrome() then { PartyConstants.TOGGLE_MIC_INTEGRATION_ID } else {}

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
		local experienceChatIndex = table.find(v4Ordering, "chat")
		if experienceChatIndex then
			-- insert Connect(a.k.a AppChat) after ExperienceChat, so it appears in front of ExpChat
			table.insert(v4Ordering, experienceChatIndex + 1, "connect_unibar")
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

local function configurePeek()
	if GetFFlagEnableSongbirdPeek() then
		ChromeService:configurePeek("music_peek", {
			integrations = {
				"music_icon",
				"peek_track_details",
				"peek_close",
			},
		})
		ChromeService:configurePeek("music_peek_portrait", {
			integrations = {
				"music_icon",
				"peek_track_details",
				"peek_close",
			},
		})
	end
end

initializeIntegrations()
configureUnibar()
configurePeek()

return nil
