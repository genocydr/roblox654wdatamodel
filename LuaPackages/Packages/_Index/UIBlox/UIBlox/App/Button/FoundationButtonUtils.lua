local ButtonRoot = script.Parent
local App = ButtonRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local Foundation = require(Packages.Foundation)
local ButtonVariant = Foundation.Enums.ButtonVariant
local ButtonSize = Foundation.Enums.ButtonSize

local ButtonType = require(ButtonRoot.Enum.ButtonType)
local StandardButtonSize = require(Core.Button.Enum.StandardButtonSize)

local ImagesInverse = require(App.ImageSet.ImagesInverse)

local buttonMapping = {
	[ButtonType.Alert] = ButtonVariant.Alert,
	[ButtonType.PrimaryContextual] = ButtonVariant.Emphasis,
	[ButtonType.PrimarySystem] = ButtonVariant.SubEmphasis,
	[ButtonType.Secondary] = ButtonVariant.Subtle,
}

local sizeMapping = {
	[StandardButtonSize.Regular] = ButtonSize.Medium,
	[StandardButtonSize.Small] = ButtonSize.Small,
	[StandardButtonSize.XSmall] = ButtonSize.XSmall,
}

local function findIcon(searchData)
	if not searchData then
		return nil
	end
	local icon = ImagesInverse[searchData]
	if icon == nil then
		warn("Icon not found")
	end
	return icon
end

local function getSizeMapping(standardSize, size: UDim2?, tokens: typeof(Foundation.Hooks.useTokens()))
	if standardSize then
		return sizeMapping[standardSize]
	elseif size then
		if size.Y.Offset >= tokens.Size.Size_1000 then
			return ButtonSize.Medium
		elseif size.Y.Offset >= tokens.Size.Size_800 then
			return ButtonSize.Small
		else
			return ButtonSize.XSmall
		end
	end
	return nil
end

local function getWidth(size: UDim2?, fitContent): UDim?
	if size then
		return size.X
	elseif fitContent then
		return nil
	else
		return UDim.new(1, 0)
	end
end

local function getTestId(tag: string?): string?
	if not tag or #tag == 0 then
		return nil
	end

	return tag:match("data%-testid=([^%s]+)")
end

return {
	buttonMapping = buttonMapping,
	sizeMapping = sizeMapping,
	findIcon = findIcon,
	getSizeMapping = getSizeMapping,
	getWidth = getWidth,
	getTestId = getTestId,
}
