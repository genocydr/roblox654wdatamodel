PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["RenameOutfit"]
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
  NAMECALL R1 R1 K0 ["SignalRenameOutfitFailed"]
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
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Actions"]
  GETTABLEKS R3 R4 K10 ["OpenPrompt"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K11 ["Network"]
  GETTABLEKS R4 R5 K12 ["GetOutfitName"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R5 R1 K13 ["PromptType"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R0
  RETURN R5 1
