MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Workspace"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["LoggingProtocol"]
  CALL R1 1 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K9 ["LuaErrorV2ThrottleHundredthPercentage"]
  LOADN R5 0
  NAMECALL R2 R2 K10 ["DefineFastInt"]
  CALL R2 3 1
  DUPTABLE R3 K16 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
  LOADK R4 K17 ["LuaAppsError"]
  SETTABLEKS R4 R3 K11 ["eventName"]
  NEWTABLE R4 0 1
  GETTABLEKS R6 R1 K18 ["TelemetryBackends"]
  GETTABLEKS R5 R6 K19 ["Counter"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K12 ["backends"]
  SETTABLEKS R2 R3 K13 ["throttlingPercentage"]
  NEWTABLE R4 0 3
  LOADN R5 24
  LOADN R6 11
  LOADN R7 2
  SETLIST R4 R5 3 [1]
  SETTABLEKS R4 R3 K14 ["lastUpdated"]
  LOADK R4 K20 ["V2 Counter to for Lua App Error."]
  SETTABLEKS R4 R3 K15 ["description"]
  RETURN R3 1
