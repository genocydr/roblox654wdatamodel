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
  JUMPIFNOT R1 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["analyticsImpl"]
  LOADK R4 K5 ["tools"]
  LOADK R5 K6 ["closed"]
  NAMECALL R2 R2 K7 ["reportButtonPress"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["analyticsImpl"]
  LOADN R4 1
  NAMECALL R2 R2 K8 ["reportToolOpened"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["analyticsImpl"]
  LOADK R4 K5 ["tools"]
  LOADK R5 K9 ["open"]
  NAMECALL R2 R2 K7 ["reportButtonPress"]
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["pluginLoaderContext"]
  GETTABLEKS R0 R1 K2 ["mainButtonClickedSignal"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["toggleState"]
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"enabled"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["enabled"]
  SETTABLEKS R1 R0 K2 ["state"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["Store"]
  GETTABLEKS R1 R2 K4 ["new"]
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  NEWTABLE R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["thunkMiddleware"]
  SETLIST R4 R5 1 [1]
  CALL R1 3 1
  SETTABLEKS R1 R0 K6 ["store"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["Localization"]
  GETTABLEKS R1 R2 K4 ["new"]
  DUPTABLE R2 K11 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K8 ["stringResourceTable"]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K9 ["translationResourceTable"]
  LOADK R3 K12 ["LocalizationTools"]
  SETTABLEKS R3 R2 K10 ["pluginName"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K13 ["localization"]
  GETUPVAL R1 5
  CALL R1 0 1
  SETTABLEKS R1 R0 K14 ["theme"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K15 ["API"]
  GETTABLEKS R1 R2 K4 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K16 ["api"]
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K4 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K17 ["analyticsImpl"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K18 ["toggleState"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K19 ["onRestore"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K20 ["onDockWidgetCreated"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K21 ["onDockWidgetEnabledChanged"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K22 ["onClose"]
  GETTABLEKS R3 R0 K23 ["props"]
  GETTABLEKS R2 R3 K24 ["pluginLoaderContext"]
  GETTABLEKS R1 R2 K25 ["mainButton"]
  SETTABLEKS R1 R0 K26 ["button"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["OnGameIdChanged"]
  GETUPVAL R3 2
  GETUPVAL R4 3
  CALL R2 2 -1
  NAMECALL R0 R0 K1 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["IsEdit"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["api"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K3 ["localization"]
  GETTABLEKS R3 R0 K4 ["store"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["GetAll"]
  MOVE R7 R1
  MOVE R8 R2
  CALL R6 2 -1
  NAMECALL R4 R3 K6 ["dispatch"]
  CALL R4 -1 0
  GETIMPORT R4 K8 [game]
  LOADK R6 K9 ["GameId"]
  NAMECALL R4 R4 K10 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R2
  NAMECALL R4 R4 K11 ["Connect"]
  CALL R4 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["button"]
  GETTABLEKS R4 R0 K1 ["state"]
  GETTABLEKS R3 R4 K2 ["enabled"]
  NAMECALL R1 R1 K3 ["SetActive"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R5 0
  NAMECALL R5 R5 K4 ["IsEdit"]
  CALL R5 1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["provide"]
  NEWTABLE R7 0 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["new"]
  MOVE R9 R3
  CALL R8 1 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K8 [{"MainWidget"}]
  MOVE R9 R5
  JUMPIFNOT R9 [+110]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K9 ["createElement"]
  GETUPVAL R10 4
  NEWTABLE R11 16 0
  LOADK R12 K10 ["LocalizationTools"]
  SETTABLEKS R12 R11 K11 ["Id"]
  SETTABLEKS R4 R11 K12 ["Enabled"]
  GETTABLEKS R13 R1 K13 ["pluginLoaderContext"]
  GETTABLEKS R12 R13 K14 ["mainDockWidget"]
  SETTABLEKS R12 R11 K15 ["Widget"]
  GETTABLEKS R12 R0 K16 ["localization"]
  LOADK R14 K2 ["Plugin"]
  LOADK R15 K17 ["WindowTitle"]
  NAMECALL R12 R12 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K19 ["Title"]
  GETIMPORT R12 K23 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K21 ["ZIndexBehavior"]
  GETIMPORT R12 K26 [Enum.InitialDockState.Left]
  SETTABLEKS R12 R11 K24 ["InitialDockState"]
  GETUPVAL R12 5
  SETTABLEKS R12 R11 K27 ["MinSize"]
  GETUPVAL R12 5
  SETTABLEKS R12 R11 K28 ["Size"]
  GETTABLEKS R12 R0 K29 ["onClose"]
  SETTABLEKS R12 R11 K30 ["OnClose"]
  LOADB R12 1
  SETTABLEKS R12 R11 K31 ["ShouldRestore"]
  GETTABLEKS R12 R0 K32 ["onRestore"]
  SETTABLEKS R12 R11 K33 ["OnWidgetRestored"]
  GETTABLEKS R12 R0 K34 ["onDockWidgetCreated"]
  SETTABLEKS R12 R11 K35 ["OnWidgetCreated"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K36 ["Change"]
  GETTABLEKS R12 R13 K12 ["Enabled"]
  GETTABLEKS R13 R0 K37 ["onDockWidgetEnabledChanged"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K39 [{"MainProvider"}]
  MOVE R13 R4
  JUMPIFNOT R13 [+41]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["provide"]
  NEWTABLE R14 0 6
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K6 ["new"]
  NAMECALL R16 R3 K40 ["getMouse"]
  CALL R16 1 -1
  CALL R15 -1 1
  GETUPVAL R17 7
  GETTABLEKS R16 R17 K6 ["new"]
  GETTABLEKS R17 R0 K41 ["store"]
  CALL R16 1 1
  GETTABLEKS R17 R0 K42 ["api"]
  GETTABLEKS R18 R0 K16 ["localization"]
  GETTABLEKS R19 R0 K43 ["theme"]
  GETUPVAL R21 8
  GETTABLEKS R20 R21 K6 ["new"]
  GETTABLEKS R21 R0 K44 ["analyticsImpl"]
  CALL R20 1 -1
  SETLIST R14 R15 -1 [1]
  DUPTABLE R15 K46 [{"MainView"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K9 ["createElement"]
  GETUPVAL R17 9
  CALL R16 1 1
  SETTABLEKS R16 R15 K45 ["MainView"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K38 ["MainProvider"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["MainWidget"]
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["ContextServices"]
  GETTABLEKS R6 R5 K14 ["Plugin"]
  GETTABLEKS R7 R5 K15 ["Mouse"]
  GETTABLEKS R8 R5 K16 ["Store"]
  GETTABLEKS R9 R4 K17 ["UI"]
  GETTABLEKS R10 R9 K18 ["DockWidget"]
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R1 K19 ["Src"]
  GETTABLEKS R13 R14 K13 ["ContextServices"]
  GETTABLEKS R12 R13 K20 ["AnalyticsContext"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K19 ["Src"]
  GETTABLEKS R14 R15 K21 ["Resources"]
  GETTABLEKS R13 R14 K22 ["PluginTheme"]
  CALL R12 1 1
  GETTABLEKS R16 R1 K19 ["Src"]
  GETTABLEKS R15 R16 K21 ["Resources"]
  GETTABLEKS R14 R15 K23 ["Localization"]
  GETTABLEKS R13 R14 K24 ["SourceStrings"]
  GETTABLEKS R17 R1 K19 ["Src"]
  GETTABLEKS R16 R17 K21 ["Resources"]
  GETTABLEKS R15 R16 K23 ["Localization"]
  GETTABLEKS R14 R15 K25 ["LocalizedStrings"]
  GETIMPORT R15 K8 [require]
  GETTABLEKS R18 R1 K19 ["Src"]
  GETTABLEKS R17 R18 K26 ["Components"]
  GETTABLEKS R16 R17 K27 ["MainView"]
  CALL R15 1 1
  GETIMPORT R16 K8 [require]
  GETTABLEKS R19 R1 K19 ["Src"]
  GETTABLEKS R18 R19 K28 ["Reducers"]
  GETTABLEKS R17 R18 K29 ["MainReducer"]
  CALL R16 1 1
  GETIMPORT R17 K8 [require]
  GETTABLEKS R20 R1 K19 ["Src"]
  GETTABLEKS R19 R20 K30 ["Thunks"]
  GETTABLEKS R18 R19 K31 ["LoadPluginMetadata"]
  CALL R17 1 1
  GETIMPORT R18 K8 [require]
  GETTABLEKS R21 R1 K19 ["Src"]
  GETTABLEKS R20 R21 K32 ["Util"]
  GETTABLEKS R19 R20 K33 ["Analytics"]
  CALL R18 1 1
  GETIMPORT R19 K36 [Vector2.new]
  LOADN R20 124
  LOADN R21 250
  CALL R19 2 1
  GETTABLEKS R20 R2 K37 ["PureComponent"]
  LOADK R22 K38 ["MainPlugin"]
  NAMECALL R20 R20 K39 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K40 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R16
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R18
  SETTABLEKS R21 R20 K41 ["init"]
  DUPCLOSURE R21 K42 [PROTO_7]
  CAPTURE VAL R0
  CAPTURE VAL R17
  SETTABLEKS R21 R20 K43 ["didMount"]
  DUPCLOSURE R21 K44 [PROTO_8]
  SETTABLEKS R21 R20 K45 ["didUpdate"]
  DUPCLOSURE R21 K46 [PROTO_9]
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R15
  SETTABLEKS R21 R20 K47 ["render"]
  RETURN R20 1