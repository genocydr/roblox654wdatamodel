MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K7 [{"CallerIsInAnotherCall", "CalleeIsInAnotherCall", "PlaceIsNotVoiceEnabled", "UniverseIsNotVoiceEnabled", "CallerIsNotVoiceEnabled", "UniverseAgeIsNotValid", "ReservedServerAccessCodeIsNotProvided"}]
  LOADK R1 K0 ["CallerIsInAnotherCall"]
  SETTABLEKS R1 R0 K0 ["CallerIsInAnotherCall"]
  LOADK R1 K1 ["CalleeIsInAnotherCall"]
  SETTABLEKS R1 R0 K1 ["CalleeIsInAnotherCall"]
  LOADK R1 K2 ["PlaceIsNotVoiceEnabled"]
  SETTABLEKS R1 R0 K2 ["PlaceIsNotVoiceEnabled"]
  LOADK R1 K3 ["UniverseIsNotVoiceEnabled"]
  SETTABLEKS R1 R0 K3 ["UniverseIsNotVoiceEnabled"]
  LOADK R1 K4 ["CallerIsNotVoiceEnabled"]
  SETTABLEKS R1 R0 K4 ["CallerIsNotVoiceEnabled"]
  LOADK R1 K5 ["UniverseAgeIsNotValid"]
  SETTABLEKS R1 R0 K5 ["UniverseAgeIsNotValid"]
  LOADK R1 K6 ["ReservedServerAccessCodeIsNotProvided"]
  SETTABLEKS R1 R0 K6 ["ReservedServerAccessCodeIsNotProvided"]
  RETURN R0 1
