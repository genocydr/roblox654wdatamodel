PROTO_0:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["analytics"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K2 [+4]
  LOADK R3 K2 ["Expected a Analytics object"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["Children"]
  GETTABLE R3 R4 R5
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K6 [+4]
  LOADK R3 K6 ["Expected child elements to wrap"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K7 ["localization"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K8 [+4]
  LOADK R3 K8 ["Expected a Localization object"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K9 ["plugin"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K10 [+4]
  LOADK R3 K10 ["Expected a plugin object"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K11 ["store"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K12 [+4]
  LOADK R3 K12 ["Expected a Rodux Store object"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K13 ["theme"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K14 [+4]
  LOADK R3 K14 ["Expected a PluginTheme object"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K15 ["mouse"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K16 [+4]
  LOADK R3 K16 ["Expected a PluginMouse object"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K17 ["pluginActions"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K18 [+4]
  LOADK R3 K18 ["Expect a PluginActions object"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K19 ["signals"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K20 [+4]
  LOADK R3 K20 ["Expect a Signals object"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K21 ["editingItemContext"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K22 [+4]
  LOADK R3 K22 ["Expect a EditingItemContext"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K23 ["meshEditingContext"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K24 [+4]
  LOADK R3 K24 ["Expect a LuaMeshEditingModuleContext"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["plugin"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["analytics"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Children"]
  GETTABLE R3 R4 R5
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["localization"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["mouse"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["store"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["theme"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K8 ["pluginActions"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K9 ["signals"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K10 ["editingItemContext"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K11 ["meshEditingContext"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K12 ["provide"]
  NEWTABLE R13 0 14
  MOVE R14 R1
  MOVE R15 R2
  MOVE R16 R4
  MOVE R17 R7
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K13 ["Store"]
  GETTABLEKS R18 R19 K14 ["new"]
  MOVE R19 R6
  CALL R18 1 1
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K15 ["API"]
  GETTABLEKS R19 R20 K14 ["new"]
  CALL R19 0 1
  MOVE R20 R8
  MOVE R21 R9
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K16 ["Mouse"]
  GETTABLEKS R22 R23 K14 ["new"]
  MOVE R23 R5
  CALL R22 1 1
  MOVE R23 R10
  MOVE R24 R11
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K14 ["new"]
  CALL R25 0 1
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K14 ["new"]
  CALL R26 0 1
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K14 ["new"]
  CALL R27 0 -1
  SETLIST R13 R14 -1 [1]
  MOVE R14 R3
  CALL R12 2 -1
  RETURN R12 -1

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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["AvatarToolsShared"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K9 ["ContextServices"]
  GETTABLEKS R6 R3 K10 ["Contexts"]
  GETTABLEKS R5 R6 K11 ["AssetServiceWrapper"]
  GETTABLEKS R7 R3 K10 ["Contexts"]
  GETTABLEKS R6 R7 K12 ["StudioServiceWrapper"]
  GETTABLEKS R8 R3 K10 ["Contexts"]
  GETTABLEKS R7 R8 K13 ["MannequinContext"]
  GETTABLEKS R8 R1 K14 ["PureComponent"]
  LOADK R10 K15 ["ServiceWrapper"]
  NAMECALL R8 R8 K16 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K17 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K18 ["init"]
  DUPCLOSURE R9 K19 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K20 ["render"]
  RETURN R8 1