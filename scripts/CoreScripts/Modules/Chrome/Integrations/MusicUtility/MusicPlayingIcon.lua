local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local ContainerSlotSignal = require(Chrome.ChromeShared.Service.ContainerSlotSignal)

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "music_playing_icon",
	label = "CoreScripts.TopBar.NowPlaying",
	containerWidthSlots = ContainerSlotSignal.new(1),
	components = {
		Container = function(props)
			return React.createElement(Songbird.MusicPlayingIcon)
		end,
	},
})
