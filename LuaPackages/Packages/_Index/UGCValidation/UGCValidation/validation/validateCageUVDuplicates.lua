--!strict

--[[
	Checks that cage UVs are within references UV set and how many uvs are duplicates
]]

local root = script.Parent.Parent

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)

local WRAP_TARGET_CAGE_REFERENCE_VALUES = require(root.WrapTargetCageUVReferenceValues)

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local getFIntUGCValidateCageDuplicateUVThreshold = require(root.flags.getFIntUGCValidateCageDuplicateUVThreshold)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local Analytics = require(root.Analytics)

local UGCValidationService = game:GetService("UGCValidationService")

local function validateCageUVDuplicates(
	innerCageMeshInfo: Types.MeshInfo,
	outerCageMeshInfo: Types.MeshInfo,
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local templateUVValues = {}
	for _, value in pairs(WRAP_TARGET_CAGE_REFERENCE_VALUES) do
		for _, uv in pairs(value) do
			table.insert(templateUVValues, uv)
		end
	end

	local function checkCageUV(
		referenceUVValues: { Vector2 },
		cageMeshInfo: Types.MeshInfo,
		isInner: boolean
	): (boolean, { string }?)
		local success, countUVNotInReference
		if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
			success, countUVNotInReference = pcallDeferred(function()
				return (UGCValidationService :: any):ValidateEditableMeshUVDuplicates(
					referenceUVValues,
					cageMeshInfo.editableMesh
				)
			end, validationContext)
		else
			success, countUVNotInReference = pcall(function()
				return (UGCValidationService :: any):validateUVDuplicates(referenceUVValues, cageMeshInfo.contentId)
			end)
		end

		if not success then
			Analytics.reportFailure(Analytics.ErrorType.validateCageUVDuplicate_FailedToExecute, nil, validationContext)
			local errorMsg = string.format(
				"Failed to load UVs for Inner cage of '%s'. Make sure the UV map exists and try again.",
				meshInfo.fullName
			)
			return false, { errorMsg }
		end

		if countUVNotInReference > getFIntUGCValidateCageDuplicateUVThreshold() then
			Analytics.reportFailure(
				Analytics.ErrorType.validateCageUVDuplicate_UnexpectedUVValue,
				nil,
				validationContext
			)
			return false,
				{
					string.format(
						"There are %d UV values in %s cage that do not belong to the template. Please correct the cage UV.",
						countUVNotInReference,
						if isInner then "inner" else "outer"
					),
				}
		end
		return true
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(checkCageUV(templateUVValues, innerCageMeshInfo, true))
	reasonsAccumulator:updateReasons(checkCageUV(templateUVValues, outerCageMeshInfo, false))
	return reasonsAccumulator:getFinalResults()
end

return validateCageUVDuplicates
