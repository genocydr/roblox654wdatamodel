PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["InGameLargerRobuxUpsellEnabled"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["InGameLargerRobuxUpsellEnabled"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+6]
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["InGameLargerRobuxUpsellIXPRolledOut"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  RETURN R0 1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["InGameLargerRobuxUpsellEnabled"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+6]
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["InGameLargerRobuxUpsellIXP"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  RETURN R0 1

PROTO_3:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["InGameLargerRobuxUpsellEnabled"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  RETURN R1 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["InGameLargerRobuxUpsellEnabled"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIF R1 [+6]
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["InGameLargerRobuxUpsellIXP"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  MOVE R0 R1
  GETIMPORT R1 K1 [game]
  LOADK R3 K5 ["InGameLargerRobuxUpsellIXPLayerParam"]
  NAMECALL R1 R1 K6 ["GetFastString"]
  CALL R1 2 1
  GETTABLE R2 R0 R1
  JUMPIFNOTEQKNIL R2 [+15]
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["InGameLargerRobuxUpsellEnabled"]
  NAMECALL R2 R2 K3 ["GetFastFlag"]
  CALL R2 2 1
  JUMPIF R2 [+6]
  GETIMPORT R2 K1 [game]
  LOADK R4 K7 ["InGameLargerRobuxUpsellIXPRolledOut"]
  NAMECALL R2 R2 K3 ["GetFastFlag"]
  CALL R2 2 1
  RETURN R2 1
  GETTABLE R2 R0 R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["InGameLargerRobuxUpsellIXP"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["InGameLargerRobuxUpsellIXPRolledOut"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["InGameLargerRobuxUpsellEnabled"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["InGameLargerRobuxUpsellIXPLayerParam"]
  LOADK R3 K7 ["isInExperiment"]
  NAMECALL R0 R0 K8 ["DefineFastString"]
  CALL R0 3 0
  DUPCLOSURE R0 K9 [PROTO_0]
  DUPCLOSURE R1 K10 [PROTO_1]
  DUPCLOSURE R2 K11 [PROTO_2]
  DUPCLOSURE R3 K12 [PROTO_3]
  DUPTABLE R4 K16 [{"isEnabled", "isEnabledForAll", "isUserEnrolled"}]
  SETTABLEKS R2 R4 K13 ["isEnabled"]
  SETTABLEKS R0 R4 K14 ["isEnabledForAll"]
  SETTABLEKS R3 R4 K15 ["isUserEnrolled"]
  RETURN R4 1
