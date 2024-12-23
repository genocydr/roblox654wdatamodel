PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["DeleteOutfit"]
  DUPTABLE R5 K3 [{"outfitId", "outfitName"}]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K1 ["outfitId"]
  SETTABLEKS R0 R5 K2 ["outfitName"]
  CALL R3 2 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["SignalDeleteOutfitFailed"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  DUPCLOSURE R4 K0 [PROTO_1]
  CAPTURE UPVAL U4
  NAMECALL R1 R1 K1 ["andThen"]
  CALL R1 3 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarEditorService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["HttpRbxApiService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R3 K11 ["Actions"]
  GETTABLEKS R5 R6 K12 ["OpenPrompt"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R3 K13 ["Network"]
  GETTABLEKS R6 R7 K14 ["GetOutfitName"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R7 R3 K15 ["PromptType"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R0
  RETURN R7 1
