local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local FFlagUpdateSquadInDefaultAppChatContainer =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagUpdateSquadInDefaultAppChatContainer

local PageInstance = nil

local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	this.TabHeader = nil

	this.ShouldShowBottomBar = false
	this.ShouldShowHubBar = false
	this.IsPageClipped = true

	this.Page.Name = "AppChatPage"
	this.Page.Size = UDim2.new(1, 0, 0, 0)
	this.Page.AutomaticSize = Enum.AutomaticSize.Y

	if FFlagUpdateSquadInDefaultAppChatContainer then
		this.CurrentSquadId = ""
		this.CurrentSquadIdSignal = Instance.new("BindableEvent")
		this.SetCurrentSquadId = function(squadId)
			this.CurrentSquadId = squadId
			this.CurrentSquadIdSignal:Fire(squadId)
		end
	end

	return this
end

PageInstance = Initialize()

return PageInstance
