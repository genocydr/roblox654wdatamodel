PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CustomCostumeNames"]
  JUMPIFEQKNIL R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CustomCostumeNames"]
  RETURN R0 1
  LOADB R0 1
  RETURN R0 1

PROTO_1:
  DUPTABLE R1 K1 [{"getCustomOutfitNames"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K0 ["getCustomOutfitNames"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["PolicyProvider"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["GetPolicyImplementations"]
  GETTABLEKS R2 R3 K9 ["MemStorageService"]
  LOADK R3 K10 ["app-policy"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K11 ["withGetPolicyImplementation"]
  MOVE R4 R2
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_1]
  SETTABLEKS R4 R3 K13 ["Mapper"]
  RETURN R3 1
