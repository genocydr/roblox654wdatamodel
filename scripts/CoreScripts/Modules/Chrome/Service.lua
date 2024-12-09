local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeEnabled = require(Chrome.Enabled)

local GetFFlagFixChromeReferences = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagFixChromeReferences
local GetFFlagRefactorChromeAssert = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagRefactorChromeAssert

if GetFFlagRefactorChromeAssert() and GetFFlagFixChromeReferences() then
	--[[ If you're hitting this assert, try the following:
        local Chrome = RobloxGui.Modules.Chrome
        local ChromeEnabled = require(Chrome.Enabled)
        local ChromeService = if ChromeEnabled() then require(Chrome.Service) else nil ]]
	assert(ChromeEnabled(), "Chrome.Service should not be initialized when Chrome is not enabled")

	local ChromeService = require(Chrome.ChromeShared.Service)
	return ChromeService
else
	local ChromeService = require(Chrome.ChromeShared.Service)
	return ChromeService
end
