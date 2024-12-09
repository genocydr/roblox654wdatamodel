local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)

local GetFFlagChromePeekArchitecture =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagChromePeekArchitecture

local function onDismiss()
	ChromeService:dismissCurrentPeek()
end

return if GetFFlagChromePeekArchitecture()
	then ChromeService:register({
		id = "peek_close",
		label = "CoreScripts.TopBar.PeekClose",
		components = {
			Icon = function(props)
				return React.createElement(Songbird.DismissButton, {
					onDismiss = onDismiss,
				})
			end,
		},
		initialAvailability = ChromeService.AvailabilitySignal.Available,
	})
	else nil
