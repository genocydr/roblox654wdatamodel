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
  DUPTABLE R2 K15 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  GETIMPORT R3 K17 [settings]
  CALL R3 0 1
  LOADK R5 K18 ["LuaErrorsInfluxSeries"]
  NAMECALL R3 R3 K19 ["GetFVariable"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K9 ["eventName"]
  NEWTABLE R3 0 1
  GETTABLEKS R5 R1 K20 ["TelemetryBackends"]
  GETTABLEKS R4 R5 K21 ["Points"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K10 ["backends"]
  GETIMPORT R4 K17 [settings]
  CALL R4 0 1
  LOADK R6 K22 ["LuaErrorsInfluxThrottling"]
  NAMECALL R4 R4 K19 ["GetFVariable"]
  CALL R4 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R3 K24 [tonumber]
  CALL R3 -1 1
  SETTABLEKS R3 R2 K11 ["throttlingPercentage"]
  NEWTABLE R3 0 3
  LOADN R4 22
  LOADN R5 7
  LOADN R6 29
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K12 ["lastUpdated"]
  LOADK R3 K25 ["Report Lua errors to Points with document name \"luashellerrors\""]
  SETTABLEKS R3 R2 K13 ["description"]
  LOADK R3 K26 ["https://grafana.simulprod.com/d/grdIrDiVz/lua-apps-error-metrics?orgId=1"]
  SETTABLEKS R3 R2 K14 ["links"]
  RETURN R2 1
