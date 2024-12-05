PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K1 ["Localization"]
  GETTABLEKS R6 R2 K2 ["Clipboard"]
  GETTABLEKS R5 R6 K3 ["Attribute"]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  NEWTABLE R5 0 1
  DUPTABLE R6 K9 [{"Id", "Text", "Enabled", "Icon", "OnItemClicked"}]
  LOADK R7 K10 ["Paste"]
  SETTABLEKS R7 R6 K4 ["Id"]
  LOADK R9 K11 ["ContextMenu"]
  LOADK R10 K10 ["Paste"]
  NAMECALL R7 R3 K12 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["Text"]
  SETTABLEKS R4 R6 K6 ["Enabled"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K13 ["paste"]
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["Icon"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R7 R6 K8 ["OnItemClicked"]
  SETLIST R5 R6 1 [1]
  DUPTABLE R6 K15 [{"Id", "Children"}]
  LOADK R7 K16 ["Token_Empty"]
  SETTABLEKS R7 R6 K4 ["Id"]
  SETTABLEKS R5 R6 K14 ["Children"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K17 ["trackClicks"]
  MOVE R8 R6
  GETTABLEKS R9 R1 K18 ["Telemetry"]
  CALL R7 2 0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K19 ["showContextMenu"]
  GETTABLEKS R8 R1 K20 ["Plugin"]
  MOVE R9 R6
  CALL R7 2 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Reducers"]
  GETTABLEKS R2 R3 K7 ["RootReducer"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["MenuHelpers"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["ModernIcons"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K12 ["Thunks"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R4 K13 ["Change"]
  GETTABLEKS R6 R7 K14 ["PasteStyleInstanceAttribute"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K15 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K5 ["Src"]
  GETTABLEKS R9 R10 K12 ["Thunks"]
  GETTABLEKS R8 R9 K15 ["Types"]
  CALL R7 1 1
  DUPCLOSURE R8 K16 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R8 1