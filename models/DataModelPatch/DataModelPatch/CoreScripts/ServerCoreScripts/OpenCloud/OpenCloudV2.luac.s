MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ScriptContext"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["ServerCoreScripts/OpenCloud/OpenCloudV2InventoryApi"]
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  NAMECALL R1 R0 K8 ["AddCoreScriptLocal"]
  CALL R1 3 0
  LOADK R3 K9 ["ServerCoreScripts/OpenCloud/OpenCloudV2NotificationsApi"]
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  NAMECALL R1 R0 K8 ["AddCoreScriptLocal"]
  CALL R1 3 0
  RETURN R0 0
