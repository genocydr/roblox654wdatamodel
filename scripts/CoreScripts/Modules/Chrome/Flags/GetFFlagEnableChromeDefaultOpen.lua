--!nonstrict
local Chrome = script:FindFirstAncestor("Chrome")

local Players = game:GetService("Players")

local IsExperienceMenuABTestEnabled = require(Chrome.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(Chrome.Parent.ExperienceMenuABTestManager)

game:DefineFastFlag("EnableChromeDefaultOpen", false)
game:DefineFastString("EnableChromeDefaultOpenForcedUserIds", "")

return function()
	local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	local forcedUserIds = game:GetFastString("EnableChromeDefaultOpenForcedUserIds")
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldDefaultOpen() then
		return true
	end

	return game:GetFastFlag("EnableChromeDefaultOpen")
end
