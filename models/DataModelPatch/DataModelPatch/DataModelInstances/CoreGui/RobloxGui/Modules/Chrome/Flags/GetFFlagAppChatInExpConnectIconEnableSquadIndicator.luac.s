PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AppChatInExpConnectIconEnableSquadIndicator2"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 0
  CALL R0 0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["SharedFlags"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["GetFFlagLuaAppEnableSquadPage"]
  GETIMPORT R2 K1 [game]
  LOADK R4 K10 ["AppChatInExpConnectIconEnableSquadIndicator2"]
  LOADB R5 0
  NAMECALL R2 R2 K11 ["DefineFastFlag"]
  CALL R2 3 0
  DUPCLOSURE R2 K12 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
