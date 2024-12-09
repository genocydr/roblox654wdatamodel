local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local ChromeService = require(Chrome.Service)
local ContainerSlotSignal = require(Chrome.ChromeShared.Service.ContainerSlotSignal)

local GetFFlagDebugEnableUnibarDummyIntegrations =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagDebugEnableUnibarDummyIntegrations

local containerSlots = ContainerSlotSignal.new(5)

local dummyContainerIntegration = ChromeService:register({
	initialAvailability = if GetFFlagDebugEnableUnibarDummyIntegrations()
		then ChromeService.AvailabilitySignal.Available
		else ChromeService.AvailabilitySignal.Unavailable,
	id = "dummy_container",
	label = "CoreScripts.TopBar.Menu",
	containerWidthSlots = containerSlots,
	components = {
		Container = function(props)
			return React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
			}, {
				Content = React.createElement("Frame", {
					Size = UDim2.fromScale(1, 1),
					BackgroundColor3 = Color3.new(0.5, 0.5, 0.5),
				}),
			})
		end,
	},
})

-- dev test code
function _simulateContainerSlotChange()
	while true do
		task.wait(2)
		local slotsToRequest = math.random(1, 8)
		print("Request slots: ", slotsToRequest)
		containerSlots:requestSlots(slotsToRequest)
	end
end

-- task.spawn(_simulateContainerSlotChange)

return dummyContainerIntegration
