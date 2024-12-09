--!strict
local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local ContainerSlotSignal = require(Chrome.ChromeShared.Service.ContainerSlotSignal)

local Constants = require(Chrome.Integrations.MusicUtility.Constants)
local shouldUseSmallPeek = require(Chrome.Integrations.MusicUtility.shouldUseSmallPeek)

return ChromeService:register({
	id = "peek_track_details",
	label = "CoreScripts.TopBar.NowPlaying",
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	containerWidthSlots = ContainerSlotSignal.new(
		if shouldUseSmallPeek() then Constants.MIN_TRACK_DETAILS_WIDTH else Constants.MAX_TRACK_DETAILS_WIDTH
	),
	components = {
		Container = function()
			return React.createElement(Songbird.PeekTrackDetailsWrapper)
		end,
	},
})
