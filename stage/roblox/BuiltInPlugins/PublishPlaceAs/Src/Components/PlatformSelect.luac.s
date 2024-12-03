PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Id"]
  GETTABLEKS R4 R0 K1 ["Selected"]
  NOT R3 R4
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  ORK R4 R5 K3 [0]
  GETUPVAL R6 0
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+2]
  GETTABLEKS R5 R1 K5 ["DevicesError"]
  GETTABLEKS R6 R1 K6 ["DeviceSelected"]
  GETTABLEKS R7 R1 K7 ["Devices"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K15 [{"Title", "LayoutOrder", "Boxes", "ErrorMessage", "EntryClicked", "AbsoluteMaxHeight", "UseGridLayout"}]
  LOADK R13 K16 ["PageTitle"]
  LOADK R14 K7 ["Devices"]
  NAMECALL R11 R2 K17 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K9 ["Title"]
  SETTABLEKS R4 R10 K4 ["LayoutOrder"]
  NEWTABLE R11 0 5
  DUPTABLE R12 K20 [{"Id", "Title", "Selected"}]
  LOADK R13 K21 ["Computer"]
  SETTABLEKS R13 R12 K18 ["Id"]
  LOADK R15 K7 ["Devices"]
  LOADK R16 K21 ["Computer"]
  NAMECALL R13 R2 K17 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K9 ["Title"]
  GETTABLEKS R13 R7 K21 ["Computer"]
  SETTABLEKS R13 R12 K19 ["Selected"]
  DUPTABLE R13 K20 [{"Id", "Title", "Selected"}]
  LOADK R14 K22 ["Phone"]
  SETTABLEKS R14 R13 K18 ["Id"]
  LOADK R16 K7 ["Devices"]
  LOADK R17 K22 ["Phone"]
  NAMECALL R14 R2 K17 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K9 ["Title"]
  GETTABLEKS R14 R7 K22 ["Phone"]
  SETTABLEKS R14 R13 K19 ["Selected"]
  DUPTABLE R14 K20 [{"Id", "Title", "Selected"}]
  LOADK R15 K23 ["Tablet"]
  SETTABLEKS R15 R14 K18 ["Id"]
  LOADK R17 K7 ["Devices"]
  LOADK R18 K23 ["Tablet"]
  NAMECALL R15 R2 K17 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K9 ["Title"]
  GETTABLEKS R15 R7 K23 ["Tablet"]
  SETTABLEKS R15 R14 K19 ["Selected"]
  DUPTABLE R15 K20 [{"Id", "Title", "Selected"}]
  LOADK R16 K24 ["Console"]
  SETTABLEKS R16 R15 K18 ["Id"]
  LOADK R18 K7 ["Devices"]
  LOADK R19 K24 ["Console"]
  NAMECALL R16 R2 K17 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K9 ["Title"]
  GETTABLEKS R16 R7 K24 ["Console"]
  SETTABLEKS R16 R15 K19 ["Selected"]
  DUPTABLE R16 K20 [{"Id", "Title", "Selected"}]
  LOADK R17 K25 ["VR"]
  SETTABLEKS R17 R16 K18 ["Id"]
  LOADK R19 K7 ["Devices"]
  LOADK R20 K25 ["VR"]
  NAMECALL R17 R2 K17 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K9 ["Title"]
  GETTABLEKS R17 R7 K25 ["VR"]
  SETTABLEKS R17 R16 K19 ["Selected"]
  SETLIST R11 R12 5 [1]
  SETTABLEKS R11 R10 K10 ["Boxes"]
  GETUPVAL R12 0
  JUMPIFNOT R12 [+2]
  LOADNIL R11
  JUMP [+8]
  JUMPIFNOT R5 [+6]
  LOADK R13 K26 ["Error"]
  LOADK R14 K27 ["NoDevices"]
  NAMECALL R11 R2 K17 ["getText"]
  CALL R11 3 1
  JUMPIF R11 [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K11 ["ErrorMessage"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K12 ["EntryClicked"]
  GETTABLEKS R12 R3 K28 ["checkboxset"]
  GETTABLEKS R11 R12 K29 ["maxHeight"]
  SETTABLEKS R11 R10 K13 ["AbsoluteMaxHeight"]
  LOADB R11 1
  SETTABLEKS R11 R10 K14 ["UseGridLayout"]
  CALL R8 2 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["CheckBoxSet"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Components"]
  GETTABLEKS R7 R8 K13 ["ListDialog"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K14 ["PureComponent"]
  LOADK R9 K15 ["PlatformSelect"]
  NAMECALL R7 R7 K16 ["extend"]
  CALL R7 2 1
  GETTABLEKS R8 R2 K17 ["SharedFlags"]
  GETIMPORT R9 K19 [game]
  LOADK R11 K20 ["RemoveNoDevicesError"]
  NAMECALL R9 R9 K21 ["GetFastFlag"]
  CALL R9 2 1
  DUPCLOSURE R10 K22 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R10 R7 K23 ["render"]
  MOVE R10 R4
  DUPTABLE R11 K26 [{"Localization", "Stylizer"}]
  GETTABLEKS R12 R3 K24 ["Localization"]
  SETTABLEKS R12 R11 K24 ["Localization"]
  GETTABLEKS R12 R3 K25 ["Stylizer"]
  SETTABLEKS R12 R11 K25 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R7
  CALL R10 1 1
  MOVE R7 R10
  RETURN R7 1