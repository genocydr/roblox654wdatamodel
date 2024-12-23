PROTO_0:
  NAMECALL R3 R0 K0 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["promptInfo"]
  GETTABLEKS R1 R2 K2 ["promptType"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["AllowInventoryReadAccess"]
  JUMPIFNOTEQ R1 R2 [+7]
  GETUPVAL R2 1
  LOADB R4 0
  NAMECALL R2 R2 K4 ["SetAllowInventoryReadAccess"]
  CALL R2 2 0
  JUMP [+82]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["SaveAvatar"]
  JUMPIFNOTEQ R1 R2 [+6]
  GETUPVAL R2 1
  NAMECALL R2 R2 K6 ["SignalSaveAvatarPermissionDenied"]
  CALL R2 1 0
  JUMP [+72]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["CreateOutfit"]
  JUMPIFNOTEQ R1 R2 [+6]
  GETUPVAL R2 1
  NAMECALL R2 R2 K8 ["SignalCreateOutfitPermissionDenied"]
  CALL R2 1 0
  JUMP [+62]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["EnterOutfitName"]
  JUMPIFNOTEQ R1 R2 [+6]
  GETUPVAL R2 1
  NAMECALL R2 R2 K8 ["SignalCreateOutfitPermissionDenied"]
  CALL R2 1 0
  JUMP [+52]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["SetFavorite"]
  JUMPIFNOTEQ R1 R2 [+6]
  GETUPVAL R2 1
  NAMECALL R2 R2 K11 ["SignalSetFavoritePermissionDenied"]
  CALL R2 1 0
  JUMP [+42]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["DeleteOutfit"]
  JUMPIFNOTEQ R1 R2 [+6]
  GETUPVAL R2 1
  NAMECALL R2 R2 K13 ["SignalDeleteOutfitPermissionDenied"]
  CALL R2 1 0
  JUMP [+32]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K14 ["RenameOutfit"]
  JUMPIFNOTEQ R1 R2 [+6]
  GETUPVAL R2 1
  NAMECALL R2 R2 K15 ["SignalRenameOutfitPermissionDenied"]
  CALL R2 1 0
  JUMP [+22]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K16 ["UpdateOutfit"]
  JUMPIFNOTEQ R1 R2 [+6]
  GETUPVAL R2 1
  NAMECALL R2 R2 K17 ["SignalUpdateOutfitPermissionDenied"]
  CALL R2 1 0
  JUMP [+12]
  JUMPIFEQKNIL R1 [+11]
  GETIMPORT R2 K19 [error]
  LOADK R4 K20 ["CloseOpenPrompt for unhandled prompt type "]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K22 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  GETUPVAL R4 2
  CALL R4 0 -1
  NAMECALL R2 R0 K23 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

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
  GETTABLEKS R3 R4 K10 ["CloseOpenPrompt"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R4 R1 K11 ["PromptType"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R4 1
