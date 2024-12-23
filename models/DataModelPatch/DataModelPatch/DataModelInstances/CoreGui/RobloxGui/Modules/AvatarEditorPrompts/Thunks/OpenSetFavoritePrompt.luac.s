PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  NAMECALL R0 R0 K0 ["GetProductInfo"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_1:
  LOADNIL R2
  GETUPVAL R3 0
  GETIMPORT R4 K3 [Enum.AvatarItemType.Asset]
  JUMPIFNOTEQ R3 R4 [+4]
  GETIMPORT R2 K5 [Enum.InfoType.Asset]
  JUMP [+2]
  GETIMPORT R2 K7 [Enum.InfoType.Bundle]
  GETIMPORT R3 K9 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE REF R2
  CALL R3 1 2
  JUMPIFNOT R3 [+26]
  GETUPVAL R5 3
  GETUPVAL R7 4
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K10 ["SetFavorite"]
  DUPTABLE R9 K15 [{"itemId", "itemName", "itemType", "shouldFavorite"}]
  GETUPVAL R10 2
  SETTABLEKS R10 R9 K11 ["itemId"]
  GETTABLEKS R10 R4 K16 ["Name"]
  SETTABLEKS R10 R9 K12 ["itemName"]
  GETUPVAL R10 0
  SETTABLEKS R10 R9 K13 ["itemType"]
  GETUPVAL R10 6
  SETTABLEKS R10 R9 K14 ["shouldFavorite"]
  CALL R7 2 -1
  NAMECALL R5 R5 K17 ["dispatch"]
  CALL R5 -1 0
  MOVE R5 R0
  CALL R5 0 0
  JUMP [+6]
  GETUPVAL R5 7
  NAMECALL R5 R5 K18 ["SignalSetFavoriteFailed"]
  CALL R5 1 0
  MOVE R5 R1
  CALL R5 0 0
  CLOSEUPVALS R2
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CAPTURE UPVAL U4
  RETURN R3 1

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
  LOADK R4 K5 ["MarketplaceService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R1 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Promise"]
  CALL R3 1 1
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Parent"]
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R4 K13 ["Actions"]
  GETTABLEKS R6 R7 K14 ["OpenPrompt"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R7 R4 K15 ["PromptType"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R0
  RETURN R7 1
