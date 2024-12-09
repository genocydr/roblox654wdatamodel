MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K18 [{"UnplayableOtherReason", "Playable", "GuestProhibited", "GameUnapproved", "IncorrectConfiguration", "UniverseRootPlaceIsPrivate", "InsufficientPermissionFriendsOnly", "InsufficientPermissionGroupOnly", "DeviceRestricted", "UnderReview", "PurchaseRequired", "AccountRestricted", "TemporarilyUnavailable", "ComplianceBlocked", "ContextualPlayabilityAgeRecommendationParentalControls", "ContextualPlayabilityRegionalAvailability", "ContextualPlayabilityRegionalCompliance", "ContextualPlayabilityUnverifiedSeventeenPlusUser"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["UnplayableOtherReason"]
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["Playable"]
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["GuestProhibited"]
  LOADB R1 0
  SETTABLEKS R1 R0 K3 ["GameUnapproved"]
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["IncorrectConfiguration"]
  LOADB R1 0
  SETTABLEKS R1 R0 K5 ["UniverseRootPlaceIsPrivate"]
  LOADB R1 1
  SETTABLEKS R1 R0 K6 ["InsufficientPermissionFriendsOnly"]
  LOADB R1 1
  SETTABLEKS R1 R0 K7 ["InsufficientPermissionGroupOnly"]
  LOADB R1 1
  SETTABLEKS R1 R0 K8 ["DeviceRestricted"]
  LOADB R1 1
  SETTABLEKS R1 R0 K9 ["UnderReview"]
  LOADB R1 1
  SETTABLEKS R1 R0 K10 ["PurchaseRequired"]
  LOADB R1 1
  SETTABLEKS R1 R0 K11 ["AccountRestricted"]
  LOADB R1 1
  SETTABLEKS R1 R0 K12 ["TemporarilyUnavailable"]
  LOADB R1 1
  SETTABLEKS R1 R0 K13 ["ComplianceBlocked"]
  LOADB R1 1
  SETTABLEKS R1 R0 K14 ["ContextualPlayabilityAgeRecommendationParentalControls"]
  LOADB R1 1
  SETTABLEKS R1 R0 K15 ["ContextualPlayabilityRegionalAvailability"]
  LOADB R1 1
  SETTABLEKS R1 R0 K16 ["ContextualPlayabilityRegionalCompliance"]
  LOADB R1 1
  SETTABLEKS R1 R0 K17 ["ContextualPlayabilityUnverifiedSeventeenPlusUser"]
  DUPTABLE R1 K20 [{"ShowPlayableAttributionMapper"}]
  SETTABLEKS R0 R1 K19 ["ShowPlayableAttributionMapper"]
  RETURN R1 1
