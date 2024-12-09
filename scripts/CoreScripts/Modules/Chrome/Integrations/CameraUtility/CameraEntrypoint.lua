local Chrome = script:FindFirstAncestor("Chrome")

local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local ScreenshotsApp = require(RobloxGui.Modules.Screenshots.ScreenshotsApp)
local MappedSignal = ChromeUtils.MappedSignal

local GetFFlagFixCapturesAvailability = require(Chrome.Flags.GetFFlagFixCapturesAvailability)
local GetFFlagAddChromeActivatedEvents = require(Chrome.Flags.GetFFlagAddChromeActivatedEvents)

local initialAvailability = ChromeService.AvailabilitySignal.Available
if StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.All) or StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Captures) then
	initialAvailability = ChromeService.AvailabilitySignal.Available
else
	initialAvailability = ChromeService.AvailabilitySignal.Unavailable
end

local isActive = MappedSignal.new(ScreenshotsApp.onIsActiveChanged, function()
	return ScreenshotsApp.getIsActive()
end)

local cameraEntrypointIntegration = ChromeService:register({
	initialAvailability = initialAvailability,
	id = "camera_entrypoint",
	label = "Feature.SettingsHub.Label.Captures",
	activated = function(self)
		ScreenshotsApp.onToggleActivationFromChrome()
	end,
	isActivated = if GetFFlagAddChromeActivatedEvents()
		then function()
			return isActive:get()
		end
		else nil,
	components = {
		Icon = function(props)
			return CommonIcon("icons/controls/cameraOff", "icons/controls/cameraOn", isActive)
		end,
	},
})

if GetFFlagFixCapturesAvailability() then
	ChromeUtils.setCoreGuiAvailability(cameraEntrypointIntegration, Enum.CoreGuiType.Captures)
else
	StarterGui.CoreGuiChangedSignal:Connect(function(coreGuiType, _enabled)
		if coreGuiType == Enum.CoreGuiType.All or coreGuiType == Enum.CoreGuiType.Captures then
			local integration: any = cameraEntrypointIntegration
			if integration == nil then
				return
			end
			ChromeUtils.setCoreGuiAvailability(integration, coreGuiType, function(enabled)
				local cameraEntryPointAvailabilitySignal: any = integration.availability
				if enabled then
					cameraEntryPointAvailabilitySignal:available()
				else
					cameraEntryPointAvailabilitySignal:unavailable()
				end
			end)
		end
	end)
end

-- function _toggleCaptures()
-- 	while true do
-- 		task.wait(3)
-- 		StarterGui:SetCoreGuiEnabled(
-- 			Enum.CoreGuiType.Captures,
-- 			not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Captures)
-- 		)
-- 	end
-- end

-- coroutine.resume(coroutine.create(_toggleCaptures))

return cameraEntrypointIntegration
