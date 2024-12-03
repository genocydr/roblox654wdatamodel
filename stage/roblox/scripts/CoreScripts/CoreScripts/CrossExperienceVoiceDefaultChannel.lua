--!nonstrict

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local NotificationService = game:GetService("NotificationService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local Promise = require(CorePackages.Packages.Promise)

local PlayerAudioFocusChanged = ReplicatedStorage:WaitForChild("PlayerAudioFocusChanged")

local RobloxGui = CoreGui.RobloxGui
local VoiceChatCore = require(CorePackages.Workspace.Packages.VoiceChatCore)
local Rodux = require(CorePackages.Packages.Rodux)
local CrossExperience = require(CorePackages.Workspace.Packages.CrossExperience)
local CoreVoiceManager = VoiceChatCore.CoreVoiceManager.default
local createPersistenceMiddleware = CrossExperience.Middlewares.createPersistenceMiddleware

local CoreGuiModules = RobloxGui.Modules
local BlockingUtility = require(CoreGuiModules.BlockingUtility)

local FFlagUseNotificationServiceIsConnected = game:DefineFastFlag("UseNotificationServiceIsConnected", false)
local FFlagDefaultChannelEnableDefaultVoice = game:DefineFastFlag("DefaultChannelEnableDefaultVoice", true)
local FFlagAlwaysJoinWhenUsingAudioAPI = game:DefineFastFlag("AlwaysJoinWhenUsingAudioAPI", false)
local FFlagDefaultChannelDontWaitOnCharacterWithAudioApi =
	game:DefineFastFlag("DefaultChannelDontWaitOnCharacterWithAudioApi", false)
local FFlagEnableCrossExpVoiceDebug = game:DefineFastFlag("EnableCrossExpVoiceDebug", false)
local GetFFlagEnableLuaVoiceChatAnalytics = require(VoiceChatCore.Flags.GetFFlagEnableLuaVoiceChatAnalytics)

local EnableDefaultVoiceAvailable = game:GetEngineFeature("VoiceServiceEnableDefaultVoiceAvailable")
local NotificationServiceIsConnectedAvailable = game:GetEngineFeature("NotificationServiceIsConnectedAvailable")
local AudioFocusManagementEnabled = game:GetEngineFeature("AudioFocusManagement")

local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local Analytics = VoiceChatCore.Analytics.new()
local observeCurrentContextId = CrossExperience.Utils.observeCurrentContextId

local VoiceChatService = game:GetService("VoiceChatService")

type VoiceStatus = CrossExperience.VoiceStatus
local Constants = CrossExperience.Constants
local VOICE_STATUS = Constants.VOICE_STATUS

local PersistenceMiddleware = createPersistenceMiddleware({
	storeKey = CrossExperience.Constants.STORAGE_CEV_STORE_KEY,
})

local PartyAudioPlayer = CrossExperience.PartyAudioPlayer.default

local createReducers = function()
	-- In order to simplify the data sync between this background state and foreground state I am using the expected foreground store shape
	return Rodux.combineReducers({
		Squad = Rodux.combineReducers({
			CrossExperienceVoice = CrossExperience.installReducer(),
		}),
	})
end

local coreVoiceManagerState = {
	previousGroupId = nil,
	previousMutedState = false,
}
local cevEventManager = CrossExperience.EventManager.new(CrossExperience.Constants.EXPERIENCE_TYPE_VOICE, true)

local function notifyVoiceStatusChange(status: VoiceStatus, detail: string?)
	cevEventManager:notify(CrossExperience.Constants.EVENTS.PARTY_VOICE_STATUS_CHANGED, {
		status = status,
		detail = detail,
	})
end

local store = Rodux.Store.new(createReducers(), nil, {
	Rodux.thunkMiddleware,
	PersistenceMiddleware.getMiddleware(),
})

-- For debugging purposes can pass "log" as a second parameter
cevEventManager:subscribe(store)

-- Await completely the DM readiness for CrossExperience communication and RCC replication
if not game:IsLoaded() then
	game.Loaded:Wait()
end

notifyVoiceStatusChange(Constants.VOICE_STATUS.RCC_CONNECTED)

cevEventManager:notify(CrossExperience.Constants.EVENTS.PARTY_VOICE_EXPERIENCE_JOINED, {
	jobId = game.JobId,
	placeId = game.PlaceId,
	gameId = game.GameId,
})

local localUserId = (Players.LocalPlayer and Players.LocalPlayer.UserId) or -1

observeCurrentContextId(function(currentContextId)
	PlayerAudioFocusChanged:FireServer(currentContextId)
end)

PlayerAudioFocusChanged.OnClientEvent:Connect(function(userId, currentContextId, currentContextIds)
	cevEventManager:notify(CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_AUDIO_FOCUS_CHANGED, {
		userId = userId,
		contextId = currentContextId,
    contextIds = currentContextIds,
	})
end)

local onPlayerAdded = function(player)
	cevEventManager:notify(CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_ADDED, {
		userId = player.UserId,
		isLocalUser = player.UserId == localUserId,
		username = player.Name,
		displayname = player.DisplayName,
	})
end

local onPlayerRemoved = function(player)
	cevEventManager:notify(CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_REMOVED, {
		userId = player.UserId,
		isLocalUser = player.UserId == localUserId,
	})
	PartyAudioPlayer:playSound("leave")
end

local onLocalPlayerActiveChanged = function(result)
	local eventName = if result.isActive
		then CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_IS_ACTIVE
		else CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_IS_INACTIVE
	cevEventManager:notify(eventName, {
		userId = localUserId,
		isLocalUser = true,
	})
end

local onLocalPlayerMuteChanged = function(isMuted)
	coreVoiceManagerState.previousMutedState = isMuted
	local eventName = if isMuted
		then CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_WAS_MUTED
		else CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_WAS_UNMUTED
	cevEventManager:notify(eventName, {
		userId = localUserId,
		isLocalUser = true,
	})
end

local onParticipantsUpdated = function(participants)
	for userId, participantState in pairs(participants) do
		local isActive = participantState.isSignalActive
		local isMuted = participantState.isMuted

		local activeEventName = if isActive
			then CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_IS_ACTIVE
			else CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_IS_INACTIVE
		local mutedEventName = if isMuted
			then CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_WAS_MUTED
			else CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_WAS_UNMUTED

		local eventPayload = {
			userId = userId,
			isLocalUser = userId == localUserId,
		}

		cevEventManager:notify(mutedEventName, eventPayload)
		cevEventManager:notify(activeEventName, eventPayload)
	end
end

local toggleMutePlayer = function(params)
	local userId = tonumber(params.userId)
	local isLocalPlayer = localUserId == userId
	if isLocalPlayer then
		CoreVoiceManager:ToggleMic("Squads")
	else
		CoreVoiceManager:ToggleMutePlayer(userId)
	end
end

function handleParticipants()
	Players.PlayerAdded:Connect(function(player)
		onPlayerAdded(player)
		PartyAudioPlayer:playSound("join")
	end)
	Players.PlayerRemoving:Connect(onPlayerRemoved)

	for _, player in pairs(Players:GetPlayers()) do
		if player:IsA("Player") then
			onPlayerAdded(player)
			if player.UserId == localUserId then
				PartyAudioPlayer:playSound("join")
			end
		end
	end
end

function handleMicrophone()
	CoreVoiceManager.muteChanged.Event:Connect(onLocalPlayerMuteChanged)
	cevEventManager:addObserver(CrossExperience.Constants.EVENTS.MUTE_PARTY_VOICE_PARTICIPANT, toggleMutePlayer)
	cevEventManager:addObserver(CrossExperience.Constants.EVENTS.UNMUTE_PARTY_VOICE_PARTICIPANT, toggleMutePlayer)
end

function onCoreVoiceManagerInitialized()
	CoreVoiceManager:getService().PlayerMicActivitySignalChange:Connect(onLocalPlayerActiveChanged)
	CoreVoiceManager.participantsUpdate.Event:Connect(onParticipantsUpdated)
end

-- This function is used to unmute the microphone once when the player joins the default channel
-- and has set the default mute state which is captured in localMuted of CoreVoiceManager after
-- SetupParticipantListeners() is called in CoreVoiceManager:asyncInit()
-- TODO: JoinByGroupIdToken should respect defaultMuted boolean.
-- This is a temporary solution to unmute the microphone once when the player joins the default channel
local function unmuteMicrophoneOnce()
	CoreVoiceManager.muteChanged.Event:Once(function(muted)
		if muted ~= nil then
			CoreVoiceManager:ToggleMic("BackgroundDM")
		end
	end)
end

local function initializeDefaultChannel(defaultMuted)
	local VoiceChatInternal = CoreVoiceManager:getService()

	if not VoiceChatInternal then
		return nil
	end

	BlockingUtility:InitBlockListAsync()

	log:info("Joining default channel")

	local success = VoiceChatInternal:JoinByGroupIdToken("default", defaultMuted)

	if GetFFlagEnableLuaVoiceChatAnalytics() then
		if success then
			Analytics:reportVoiceChatJoinResult(true, "defaultJoinSuccess")
		else
			Analytics:reportVoiceChatJoinResult(false, "defaultJoinFailed", "error")
		end
	end

	return success
end

local function validateSetup()
	if NotificationServiceIsConnectedAvailable and FFlagUseNotificationServiceIsConnected then
		if not NotificationService.IsConnected then
			log:debug("NotificationService is not yet connected")
			NotificationService:GetPropertyChangedSignal("IsConnected"):Wait()
		end
		log:debug("NotificationService connected")
	end

	if not FFlagDefaultChannelDontWaitOnCharacterWithAudioApi or not VoiceChatService.UseNewAudioApi then
		if not Players.LocalPlayer.Character then
			Players.LocalPlayer.CharacterAdded:Wait()
			log:debug("Player character loaded")
		else
			log:debug("Player character already loaded")
		end
	end

	if EnableDefaultVoiceAvailable and FFlagDefaultChannelEnableDefaultVoice then
		local VoiceChatService = game:FindService("VoiceChatService")
		if FFlagAlwaysJoinWhenUsingAudioAPI then
			if not VoiceChatService then
				log:info("VoiceChatService not found. Assuming default values.")
				-- We only don't want to early out when the new audio API is enabled
			elseif not VoiceChatService.EnableDefaultVoice and not VoiceChatService.UseNewAudioApi then
				log:debug("Default channel is disabled.")
				if GetFFlagEnableLuaVoiceChatAnalytics() then
					Analytics:reportVoiceChatJoinResult(false, "defaultDisabled")
					notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_VOICE_SETUP, "Default channel disabled")
				end
				return false
			end
		else
			if not VoiceChatService then
				log:info("VoiceChatService not found. Assuming default values.")
			elseif not VoiceChatService.EnableDefaultVoice then
				log:debug("Default channel is disabled.")
				if GetFFlagEnableLuaVoiceChatAnalytics() then
					Analytics:reportVoiceChatJoinResult(false, "defaultDisabled")
					notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_VOICE_SETUP, "Default channel disabled")
				end
				return false
			end
		end
	end
	return true
end

local function setupListeners()
	CoreVoiceManager:subscribe("GetPermissions", function(callback, permissions)
		-- At this point we assume that you were able to join Background DM and the required permissions were resolved prior to that
		callback({
			hasMicPermissions = true,
		})
	end)

	-- setup listeners
	handleParticipants()
	handleMicrophone()

	-- unmute mic at the start once muted state is initialized
	unmuteMicrophoneOnce()

	if FFlagEnableCrossExpVoiceDebug then
		cevEventManager:addObserver(CrossExperience.Constants.EVENTS.DEBUG_COMMAND, function(params)
			if params.name == "dump_session" then
				print("----------- CEV BACKGROUND -----------")
				print("Store State", HttpService:JSONEncode(store:getState()))
				print("--------------------------------------")
				print("CoreVoiceManager State:")
				print("Participants", HttpService:JSONEncode(CoreVoiceManager.participants))
				print("Local Muted", HttpService:JSONEncode({ value = CoreVoiceManager.localMuted }))
				print("Mute All", HttpService:JSONEncode({ value = CoreVoiceManager.muteAll }))
				print("Muted Anyone", HttpService:JSONEncode({ value = CoreVoiceManager._mutedAnyone }))
				print("Is Talking", HttpService:JSONEncode({ value = CoreVoiceManager.isTalking }))
				print("Muted Players", HttpService:JSONEncode(CoreVoiceManager.mutedPlayers))
				print("Audio Devices", HttpService:JSONEncode(CoreVoiceManager.audioDevices))
				print("Voice Enabled", HttpService:JSONEncode({ value = CoreVoiceManager.voiceEnabled }))
				print("Permissions Result", HttpService:JSONEncode(CoreVoiceManager.communicationPermissionsResult))
				print("Voice Join Progress", HttpService:JSONEncode({ value = CoreVoiceManager.VoiceJoinProgress }))
				print("-----------------------------")
			end
		end)
	end

	CoreVoiceManager:subscribe("OnRequestMicPermissionRejected", function()
		notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_VOICE_MIC_REJECTED)
	end)

	CoreVoiceManager:subscribe("OnPlayerModerated", function()
		notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_VOICE_MODERATED, "On Player Moderated")
	end)

	CoreVoiceManager:subscribe("OnInitialJoinFailed", function()
		notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_VOICE_JOIN, "Initial Join failed")
	end)

	CoreVoiceManager:subscribe("OnRetryRequested", function()
		notifyVoiceStatusChange(Constants.VOICE_STATUS.VOICE_CONNECTING, "Retry requested")
	end)

	CoreVoiceManager:subscribe("OnStateChanged", function(oldState, newState)
		if newState == Enum.VoiceChatState.Joined then
			local voiceChannelId = CoreVoiceManager:GetChannelId()
			local voiceSessionId = CoreVoiceManager:GetSessionId()
			cevEventManager:notify(CrossExperience.Constants.EVENTS.PARTY_VOICE_STATUS_CHANGED, {
				status = Constants.VOICE_STATUS.VOICE_CONNECTED,
				voiceChannelId = voiceChannelId,
				voiceSessionId = voiceSessionId,
			})
			coreVoiceManagerState.previousGroupId = CoreVoiceManager.service:GetGroupId()
		elseif newState == Enum.VoiceChatState.Failed then
			notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_VOICE_FAILED)
		elseif newState == Enum.VoiceChatState.Ended then
			-- Considering catching this state as an error state even though leaving voice only would trigger this as well.
			-- Reason being is that currently leaving voice by user interaction is done by leaving RCC/destroying DM, which shutdowns scripts.
			-- So if we actually capture the end state it means the DM/RCC is still active and voice is not. Most likely voice inactivity
			-- timeout but currently there is no value to check to ensure that's what happened.
			notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_VOICE_DISCONNECTED)
		end
	end)

	CoreVoiceManager:subscribe("OnReportJoinFailed", function(result)
		log:error("CEV OnReportJoinFailed " .. result)
	end)
end

function initializeAFM()
	if AudioFocusManagementEnabled then
		local success, AudioFocusService = pcall(function()
			return game:GetService("AudioFocusService")
		end)
		if success and AudioFocusService then
			local contextId = CrossExperience.Constants.AUDIO_FOCUS_MANAGEMENT.CEV.CONTEXT_ID
			local focusPriority = CrossExperience.Constants.AUDIO_FOCUS_MANAGEMENT.CEV.FOCUS_PRIORITY
			AudioFocusService:RegisterContextIdFromLua(contextId)

			local deafenAll = function()
				CoreVoiceManager:MuteAll(true, "AudioFocusManagement CEV")
				if not CoreVoiceManager.localMuted then
					CoreVoiceManager:ToggleMic()
				end
			end

			local undeafenAll = function()
				CoreVoiceManager:MuteAll(false, "AudioFocusManagement CEV")
				if CoreVoiceManager.localMuted then
					CoreVoiceManager:ToggleMic()
				end
			end

			AudioFocusService.OnDeafenVoiceAudio:Connect(function(serviceContextId)
				if serviceContextId == contextId then
					log:info("CEV OnDeafenVoiceAudio fired" .. serviceContextId)
					deafenAll()
				end
			end)

			AudioFocusService.OnUndeafenVoiceAudio:Connect(function(serviceContextId)
				if serviceContextId == contextId then
					log:info("CEV OnUndeafenVoiceAudio fired" .. serviceContextId)
					undeafenAll()
				end
			end)

			local requestAudioFocusWithPromise = function(id, prio)
				return Promise.new(function(resolve, reject)
					local requestSuccess, focusGranted =
						pcall(AudioFocusService.RequestFocus, AudioFocusService, id, prio)
					if requestSuccess then
						resolve(focusGranted) -- Still resolve, but indicate failure to grant focus
					else
						reject("Failed to call RequestFocus due to an error") -- Reject the promise in case of an error
					end
				end)
			end

			requestAudioFocusWithPromise(contextId, focusPriority)
				:andThen(function(focusGranted)
					if focusGranted then
						log:info("CEV audio focus request granted, preparing to undeafen.")
						CoreVoiceManager.muteChanged.Event:Once(function(muted)
							if muted ~= nil then
								CoreVoiceManager:MuteAll(false, "AudioFocusManagement CEV")
							end
						end)
					else
						log:info("CEV audio focus request denied, preparing to deafen.")
						CoreVoiceManager.muteChanged.Event:Once(function(muted)
							if muted ~= nil then
								CoreVoiceManager:MuteAll(true, "AudioFocusManagement CEV")
							end
						end)
					end
				end)
				:catch(function()
					log:info("[CEV] Error requesting focus inside CEV")
				end)
		else
			log:info("AudioFocusService did not initialize")
		end
	end
end

function initializeVoice()
	notifyVoiceStatusChange(Constants.VOICE_STATUS.VOICE_CONNECTING)
	CoreVoiceManager:asyncInit()
		:andThen(function()
			local joinInProgress = initializeDefaultChannel(false)
			if joinInProgress == false then
				notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_VOICE_JOIN, "Initial Join failed")
			else
				onCoreVoiceManagerInitialized()
			end
			initializeAFM()
		end)
		:catch(function(err)
			-- If voice chat doesn't initialize, silently halt rather than throwing
			-- a unresolved promise error. Don't report an event since the manager
			-- will handle that.
			log:info("CoreVoiceManager did not initialize {}", err)
			notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_VOICE_INIT, err)
		end)
end

function rejoinVoice()
	notifyVoiceStatusChange(Constants.VOICE_STATUS.VOICE_CONNECTING)
	CoreVoiceManager:RejoinChannel(coreVoiceManagerState.previousGroupId, coreVoiceManagerState.previousMutedState)
	coreVoiceManagerState = {
		previousGroupId = nil,
		previousMutedState = nil,
	}
end

function startVoice()
	if validateSetup() then
		setupListeners()
		initializeVoice()
	end
end

cevEventManager:addObserver(CrossExperience.Constants.EVENTS.PARTY_VOICE_RECONNECT_REQUESTED, function()
	local voiceStatus = store:getState().Squad.CrossExperienceVoice.Experience.voiceStatus
	if voiceStatus == VOICE_STATUS.ERROR_VOICE_SETUP then
		-- Voice have not managed to confirm basic assumptions, restart the process completely
		startVoice()
	elseif voiceStatus == VOICE_STATUS.ERROR_VOICE_INIT then
		-- Voice has correctly set up but failed to succeed in asyncInit due to some generic issue so never connected. Attempt to reinitialize.
		initializeVoice()
	elseif
		voiceStatus == VOICE_STATUS.ERROR_VOICE_JOIN
		or voiceStatus == VOICE_STATUS.ERROR_VOICE_MIC_REJECTED
		or voiceStatus == VOICE_STATUS.ERROR_VOICE_MODERATED
		or voiceStatus == VOICE_STATUS.ERROR_VOICE_FAILED
		or voiceStatus == VOICE_STATUS.ERROR_VOICE_DISCONNECTED
	then
		-- Voice has failed after a successful initialization
		rejoinVoice()
	end
end)

startVoice()