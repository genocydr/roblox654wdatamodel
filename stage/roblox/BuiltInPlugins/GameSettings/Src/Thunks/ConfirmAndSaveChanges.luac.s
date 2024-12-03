PROTO_0:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Settings"]
  GETTABLEKS R1 R3 K3 ["Warnings"]
  CALL R0 1 3
  FORGPREP_NEXT R0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["showDialog"]
  GETUPVAL R6 2
  GETUPVAL R8 3
  GETTABLE R7 R8 R4
  CALL R5 2 1
  NAMECALL R5 R5 K5 ["await"]
  CALL R5 1 1
  JUMPIF R5 [+2]
  GETUPVAL R5 4
  CALL R5 0 0
  FORGLOOP R0 2 [-14]
  GETUPVAL R0 5
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R2 K1 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["showDialog"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 1
  DUPCLOSURE R3 K1 [PROTO_2]
  NAMECALL R1 R1 K2 ["catch"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  CALL R2 0 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R0 R0 K1 ["catch"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  RETURN R0 1

PROTO_6:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETUPVAL R2 0
  DUPTABLE R3 K3 [{"isActive", "universeAvatarType"}]
  DUPTABLE R4 K8 [{"Title", "Header", "Description", "Buttons"}]
  LOADK R7 K9 ["General"]
  LOADK R8 K10 ["PrivateDialogHeader"]
  NAMECALL R5 R2 K11 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["Title"]
  LOADK R7 K9 ["General"]
  LOADK R8 K12 ["PrivateDialogPrompt"]
  NAMECALL R5 R2 K11 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K5 ["Header"]
  LOADK R7 K9 ["General"]
  LOADK R8 K13 ["PrivateDialogBody"]
  NAMECALL R5 R2 K11 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K6 ["Description"]
  NEWTABLE R5 0 2
  LOADK R8 K9 ["General"]
  LOADK R9 K14 ["ButtonCancel"]
  NAMECALL R6 R2 K11 ["getText"]
  CALL R6 3 1
  LOADK R9 K9 ["General"]
  LOADK R10 K15 ["ButtonSave"]
  NAMECALL R7 R2 K11 ["getText"]
  CALL R7 3 -1
  SETLIST R5 R6 -1 [1]
  SETTABLEKS R5 R4 K7 ["Buttons"]
  SETTABLEKS R4 R3 K1 ["isActive"]
  DUPTABLE R4 K8 [{"Title", "Header", "Description", "Buttons"}]
  LOADK R7 K9 ["General"]
  LOADK R8 K16 ["AvatarDialogHeader"]
  NAMECALL R5 R2 K11 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["Title"]
  LOADK R7 K9 ["General"]
  LOADK R8 K17 ["AvatarDialogPrompt"]
  NAMECALL R5 R2 K11 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K5 ["Header"]
  LOADK R7 K9 ["General"]
  LOADK R8 K18 ["AvatarDialogBody"]
  NAMECALL R5 R2 K11 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K6 ["Description"]
  NEWTABLE R5 0 2
  LOADK R8 K9 ["General"]
  LOADK R9 K19 ["ReplyNo"]
  NAMECALL R6 R2 K11 ["getText"]
  CALL R6 3 1
  LOADK R9 K9 ["General"]
  LOADK R10 K20 ["ReplyYes"]
  NAMECALL R7 R2 K11 ["getText"]
  CALL R7 3 -1
  SETLIST R5 R6 -1 [1]
  SETTABLEKS R5 R4 K7 ["Buttons"]
  SETTABLEKS R4 R3 K2 ["universeAvatarType"]
  DUPTABLE R4 K22 [{"Size", "Title", "Header", "Buttons"}]
  GETIMPORT R5 K25 [Vector2.new]
  LOADN R6 87
  LOADN R7 145
  CALL R5 2 1
  SETTABLEKS R5 R4 K21 ["Size"]
  LOADK R7 K9 ["General"]
  LOADK R8 K26 ["ErrorsOnSaveHeader"]
  NAMECALL R5 R2 K11 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["Title"]
  LOADK R7 K9 ["General"]
  LOADK R8 K27 ["ErrorsOnSaveBody"]
  NAMECALL R5 R2 K11 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K5 ["Header"]
  NEWTABLE R5 0 1
  LOADK R8 K9 ["General"]
  LOADK R9 K28 ["ReplyOK"]
  NAMECALL R6 R2 K11 ["getText"]
  CALL R6 3 -1
  SETLIST R5 R6 -1 [1]
  SETTABLEKS R5 R4 K7 ["Buttons"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K24 ["new"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  CALL R5 1 1
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  CAPTURE VAL R4
  NAMECALL R5 R5 K29 ["andThen"]
  CALL R5 2 1
  DUPCLOSURE R7 K30 [PROTO_5]
  NAMECALL R5 R5 K29 ["andThen"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_7:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Thunks"]
  GETTABLEKS R2 R3 K7 ["SaveChanges"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Dialog"]
  GETTABLEKS R3 R4 K10 ["WarningDialog"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["Dialog"]
  GETTABLEKS R4 R5 K11 ["SimpleDialog"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["Util"]
  GETTABLEKS R6 R5 K15 ["Promise"]
  DUPCLOSURE R7 K16 [PROTO_7]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R7 1