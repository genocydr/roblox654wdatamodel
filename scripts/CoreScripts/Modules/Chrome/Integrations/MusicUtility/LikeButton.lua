local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "like_button",
	label = "CoreScripts.TopBar.PeekLike",
	components = {
		Icon = function(props)
			return React.createElement(Songbird.LikeButtonWrapper)
		end,
	},
})
