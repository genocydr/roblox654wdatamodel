PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["state"]
  GETTABLEKS R1 R0 K1 ["enabled"]
  GETUPVAL R2 0
  DUPTABLE R4 K2 [{"enabled"}]
  NOT R5 R1
  SETTABLEKS R5 R4 K1 ["enabled"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["pluginLoaderContext"]
  GETTABLEKS R0 R1 K2 ["mainButtonClickedSignal"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["toggleState"]
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  SETTABLEKS R2 R0 K2 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["toggleState"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["onRestore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onDockWidgetCreated"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onWidgetEnabledChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Store"]
  GETTABLEKS R2 R3 K9 ["new"]
  GETUPVAL R3 1
  NEWTABLE R4 0 0
  NEWTABLE R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  CALL R2 3 1
  SETTABLEKS R2 R0 K11 ["store"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K12 ["Localization"]
  GETTABLEKS R2 R3 K9 ["new"]
  DUPTABLE R3 K16 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K13 ["stringResourceTable"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K14 ["translationResourceTable"]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K17 ["Name"]
  SETTABLEKS R4 R3 K15 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K18 ["localization"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["pluginLoaderContext"]
  GETTABLEKS R1 R2 K2 ["mainButton"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["enabled"]
  NAMECALL R1 R1 K5 ["SetActive"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K7 [{"MainWidget"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 3
  NEWTABLE R10 16 0
  SETTABLEKS R4 R10 K9 ["Enabled"]
  GETTABLEKS R12 R1 K10 ["pluginLoaderContext"]
  GETTABLEKS R11 R12 K11 ["mainDockWidget"]
  SETTABLEKS R11 R10 K12 ["Widget"]
  GETTABLEKS R11 R0 K13 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K14 ["Toolbar"]
  NAMECALL R11 R11 K15 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K16 ["Title"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K17 ["Name"]
  SETTABLEKS R11 R10 K18 ["Id"]
  GETIMPORT R11 K22 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K20 ["ZIndexBehavior"]
  GETIMPORT R11 K25 [Enum.InitialDockState.Left]
  SETTABLEKS R11 R10 K23 ["InitialDockState"]
  GETIMPORT R11 K27 [Vector2.new]
  LOADN R12 54
  LOADN R13 225
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["Size"]
  GETIMPORT R11 K27 [Vector2.new]
  LOADN R12 54
  LOADN R13 225
  CALL R11 2 1
  SETTABLEKS R11 R10 K29 ["MinSize"]
  GETTABLEKS R11 R0 K30 ["onClose"]
  SETTABLEKS R11 R10 K31 ["OnClose"]
  LOADB R11 1
  SETTABLEKS R11 R10 K32 ["ShouldRestore"]
  GETTABLEKS R11 R0 K33 ["onRestore"]
  SETTABLEKS R11 R10 K34 ["OnWidgetRestored"]
  GETTABLEKS R11 R0 K35 ["onDockWidgetCreated"]
  SETTABLEKS R11 R10 K36 ["OnWidgetCreated"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K37 ["Change"]
  GETTABLEKS R11 R12 K9 ["Enabled"]
  GETTABLEKS R12 R0 K38 ["onWidgetEnabledChanged"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K40 [{"MainProvider"}]
  MOVE R12 R4
  JUMPIFNOT R12 [+31]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["provide"]
  NEWTABLE R13 0 3
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K5 ["new"]
  NAMECALL R15 R3 K41 ["getMouse"]
  CALL R15 1 -1
  CALL R14 -1 1
  GETUPVAL R15 6
  CALL R15 0 1
  GETUPVAL R17 7
  GETTABLEKS R16 R17 K5 ["new"]
  GETTABLEKS R17 R0 K42 ["store"]
  CALL R16 1 -1
  SETLIST R13 R14 -1 [1]
  DUPTABLE R14 K44 [{"EventEmulator"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 8
  CALL R15 1 1
  SETTABLEKS R15 R14 K43 ["EventEmulator"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K39 ["MainProvider"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K6 ["MainWidget"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Reducers"]
  GETTABLEKS R4 R5 K10 ["MainReducer"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K12 ["ContextServices"]
  GETTABLEKS R6 R4 K13 ["UI"]
  GETTABLEKS R7 R6 K14 ["DockWidget"]
  GETTABLEKS R8 R6 K15 ["PluginButton"]
  GETTABLEKS R9 R6 K16 ["PluginToolbar"]
  GETTABLEKS R10 R5 K17 ["Plugin"]
  GETTABLEKS R11 R5 K18 ["Mouse"]
  GETTABLEKS R12 R5 K19 ["Store"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K8 ["Src"]
  GETTABLEKS R15 R16 K20 ["Resources"]
  GETTABLEKS R14 R15 K21 ["MakeTheme"]
  CALL R13 1 1
  GETTABLEKS R17 R0 K8 ["Src"]
  GETTABLEKS R16 R17 K20 ["Resources"]
  GETTABLEKS R15 R16 K22 ["Localization"]
  GETTABLEKS R14 R15 K23 ["SourceStrings"]
  GETTABLEKS R18 R0 K8 ["Src"]
  GETTABLEKS R17 R18 K20 ["Resources"]
  GETTABLEKS R16 R17 K22 ["Localization"]
  GETTABLEKS R15 R16 K24 ["LocalizedStrings"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K25 ["Components"]
  GETTABLEKS R17 R18 K26 ["EventEmulator"]
  CALL R16 1 1
  GETTABLEKS R17 R1 K27 ["setGlobalConfig"]
  DUPTABLE R18 K31 [{"typeChecks", "propValidation", "elementTracing"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K28 ["typeChecks"]
  LOADB R19 1
  SETTABLEKS R19 R18 K29 ["propValidation"]
  LOADB R19 1
  SETTABLEKS R19 R18 K30 ["elementTracing"]
  CALL R17 1 0
  GETTABLEKS R17 R1 K32 ["PureComponent"]
  LOADK R19 K33 ["MainPlugin"]
  NAMECALL R17 R17 K34 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K35 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R0
  SETTABLEKS R18 R17 K36 ["init"]
  DUPCLOSURE R18 K37 [PROTO_6]
  SETTABLEKS R18 R17 K38 ["didUpdate"]
  DUPCLOSURE R18 K39 [PROTO_7]
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R16
  SETTABLEKS R18 R17 K40 ["render"]
  RETURN R17 1