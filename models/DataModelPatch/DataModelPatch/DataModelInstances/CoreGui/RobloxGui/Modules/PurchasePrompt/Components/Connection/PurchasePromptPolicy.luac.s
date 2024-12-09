PROTO_0:
  NEWTABLE R1 0 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Workspace"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["PurchasePromptDeps"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["PolicyProvider"]
  GETTABLEKS R4 R2 K10 ["GetPolicyImplementations"]
  GETTABLEKS R3 R4 K11 ["MemStorageService"]
  LOADK R4 K12 ["app-policy"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K13 ["withGetPolicyImplementation"]
  MOVE R5 R3
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_0]
  SETTABLEKS R5 R4 K15 ["Mapper"]
  RETURN R4 1
