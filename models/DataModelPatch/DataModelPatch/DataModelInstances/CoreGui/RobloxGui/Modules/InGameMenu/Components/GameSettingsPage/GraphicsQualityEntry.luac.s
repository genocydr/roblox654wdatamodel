PROTO_0:
  SUB R10 R0 R1
  SUB R11 R4 R3
  MUL R9 R10 R11
  SUB R10 R2 R1
  DIV R8 R9 R10
  ADD R7 R3 R8
  FASTCALL1 MATH_FLOOR R7 [+2]
  GETIMPORT R6 K2 [math.floor]
  CALL R6 1 1
  FASTCALL3 MATH_CLAMP R6 R3 R4
  MOVE R7 R3
  MOVE R8 R4
  GETIMPORT R5 K4 [math.clamp]
  CALL R5 3 1
  RETURN R5 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["SavedQualityLevel"]
  GETIMPORT R2 K4 [Enum.SavedQualitySetting.Automatic]
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R2 1
  DUPTABLE R4 K7 [{"quality", "automatic"}]
  JUMPIF R1 [+3]
  GETTABLEKS R5 R0 K8 ["Value"]
  JUMPIF R5 [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K5 ["quality"]
  GETIMPORT R6 K4 [Enum.SavedQualitySetting.Automatic]
  JUMPIFEQ R0 R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["automatic"]
  NAMECALL R2 R2 K9 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["SavedQualityLevel"]
  GETIMPORT R3 K4 [Enum.SavedQualitySetting.Automatic]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  DUPTABLE R4 K7 [{"quality", "automatic"}]
  JUMPIFNOT R1 [+2]
  LOADN R5 5
  JUMP [+5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["SavedQualityLevel"]
  GETTABLEKS R5 R6 K8 ["Value"]
  SETTABLEKS R5 R4 K5 ["quality"]
  SETTABLEKS R1 R4 K6 ["automatic"]
  NAMECALL R2 R0 K9 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K10 ["onQualityChanged"]
  JUMPIFNOT R1 [+4]
  NAMECALL R2 R0 K11 ["setAutomaticQualityLevel"]
  CALL R2 1 0
  RETURN R0 0
  GETTABLEKS R5 R0 K12 ["state"]
  GETTABLEKS R4 R5 K5 ["quality"]
  NAMECALL R2 R0 K13 ["setManualQualityLevel"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETIMPORT R2 K3 [Enum.SavedQualitySetting.Automatic]
  SETTABLEKS R2 R1 K4 ["SavedQualityLevel"]
  GETUPVAL R1 1
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["QualityLevel"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETUPVAL R5 1
  NAMECALL R5 R5 K1 ["GetMaxQualityLevel"]
  CALL R5 1 1
  SUBK R4 R5 K0 [1]
  LOADN R8 1
  SUBK R11 R1 K0 [1]
  SUBK R12 R4 K0 [1]
  MUL R10 R11 R12
  SUBK R11 R3 K0 [1]
  DIV R9 R10 R11
  ADD R7 R8 R9
  FASTCALL1 MATH_FLOOR R7 [+2]
  GETIMPORT R6 K4 [math.floor]
  CALL R6 1 1
  LOADN R7 1
  FASTCALL3 MATH_CLAMP R6 R7 R4
  MOVE R8 R4
  GETIMPORT R5 K6 [math.clamp]
  CALL R5 3 1
  MOVE R2 R5
  GETUPVAL R3 2
  SETTABLEKS R1 R3 K7 ["SavedQualityLevel"]
  GETUPVAL R3 1
  SETTABLEKS R2 R3 K8 ["QualityLevel"]
  LOADNIL R3
  RETURN R3 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["automatic"]
  JUMPIFNOT R0 [+10]
  GETUPVAL R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K2 ["quality"]
  NAMECALL R0 R0 K3 ["setManualQualityLevel"]
  CALL R0 2 0
  JUMP [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K4 ["setAutomaticQualityLevel"]
  CALL R0 1 0
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["AnalyticsSettingsChangeName"]
  LOADNIL R2
  NEWTABLE R3 0 0
  LOADB R4 1
  CALL R0 4 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["setManualQualityLevel"]
  CALL R1 2 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["AnalyticsSettingsChangeName"]
  LOADNIL R3
  NEWTABLE R4 0 0
  LOADB R5 1
  CALL R1 4 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K5 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K2 ["BackgroundTransparency"]
  GETIMPORT R4 K8 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 156
  CALL R4 4 1
  SETTABLEKS R4 R3 K3 ["Size"]
  GETTABLEKS R5 R0 K9 ["props"]
  GETTABLEKS R4 R5 K4 ["LayoutOrder"]
  SETTABLEKS R4 R3 K4 ["LayoutOrder"]
  DUPTABLE R4 K14 [{"Layout", "AutoToggle", "Slider", "QualityListener"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K15 ["UIListLayout"]
  DUPTABLE R7 K17 [{"SortOrder"}]
  GETIMPORT R8 K19 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R8 R7 K16 ["SortOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["Layout"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K23 [{"LayoutOrder", "labelKey", "checked", "onToggled"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  LOADK R8 K24 ["CoreScripts.InGameMenu.GameSettings.AutoGraphicsQuality"]
  SETTABLEKS R8 R7 K20 ["labelKey"]
  GETTABLEKS R9 R0 K25 ["state"]
  GETTABLEKS R8 R9 K26 ["automatic"]
  SETTABLEKS R8 R7 K21 ["checked"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R8 R7 K22 ["onToggled"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["AutoToggle"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K35 [{"LayoutOrder", "labelKey", "min", "max", "stepInterval", "value", "disabled", "valueChanged", "canCaptureFocus", "isMenuOpen"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  LOADK R8 K36 ["CoreScripts.InGameMenu.GameSettings.ManualGraphicsQuality"]
  SETTABLEKS R8 R7 K20 ["labelKey"]
  LOADN R8 1
  SETTABLEKS R8 R7 K27 ["min"]
  LOADN R8 10
  SETTABLEKS R8 R7 K28 ["max"]
  LOADN R8 1
  SETTABLEKS R8 R7 K29 ["stepInterval"]
  GETTABLEKS R9 R0 K25 ["state"]
  GETTABLEKS R8 R9 K37 ["quality"]
  SETTABLEKS R8 R7 K30 ["value"]
  GETTABLEKS R9 R0 K25 ["state"]
  GETTABLEKS R8 R9 K26 ["automatic"]
  SETTABLEKS R8 R7 K31 ["disabled"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R8 R7 K32 ["valueChanged"]
  GETTABLEKS R9 R0 K9 ["props"]
  GETTABLEKS R8 R9 K33 ["canCaptureFocus"]
  SETTABLEKS R8 R7 K33 ["canCaptureFocus"]
  GETTABLEKS R9 R0 K9 ["props"]
  GETTABLEKS R8 R9 K34 ["isMenuOpen"]
  SETTABLEKS R8 R7 K34 ["isMenuOpen"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["Slider"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K40 [{"event", "callback"}]
  GETUPVAL R8 6
  SETTABLEKS R8 R7 K38 ["event"]
  GETTABLEKS R8 R0 K41 ["onQualityChanged"]
  SETTABLEKS R8 R7 K39 ["callback"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K13 ["QualityListener"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETTABLEKS R3 R1 K9 ["t"]
  GETIMPORT R4 K11 [UserSettings]
  CALL R4 0 1
  LOADK R6 K12 ["UserGameSettings"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R6 K14 [settings]
  CALL R6 0 1
  GETTABLEKS R5 R6 K15 ["Rendering"]
  LOADK R8 K16 ["SavedQualityLevel"]
  NAMECALL R6 R4 K17 ["GetPropertyChangedSignal"]
  CALL R6 2 1
  GETIMPORT R10 K19 [script]
  GETTABLEKS R9 R10 K20 ["Parent"]
  GETTABLEKS R8 R9 K20 ["Parent"]
  GETTABLEKS R7 R8 K20 ["Parent"]
  GETIMPORT R8 K5 [require]
  GETIMPORT R11 K19 [script]
  GETTABLEKS R10 R11 K20 ["Parent"]
  GETTABLEKS R9 R10 K21 ["ToggleEntry"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R7 K22 ["Utility"]
  GETTABLEKS R10 R11 K23 ["ExternalEventConnection"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETIMPORT R13 K19 [script]
  GETTABLEKS R12 R13 K20 ["Parent"]
  GETTABLEKS R11 R12 K24 ["SliderEntry"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R7 K22 ["Utility"]
  GETTABLEKS R12 R13 K25 ["SendAnalytics"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R7 K26 ["Resources"]
  GETTABLEKS R13 R14 K27 ["Constants"]
  CALL R12 1 1
  GETIMPORT R15 K31 [Enum.SavedQualitySetting]
  NAMECALL R15 R15 K32 ["GetEnumItems"]
  CALL R15 1 1
  LENGTH R14 R15
  SUBK R13 R14 K28 [1]
  DUPCLOSURE R14 K33 [PROTO_0]
  GETTABLEKS R15 R2 K34 ["PureComponent"]
  LOADK R17 K35 ["GraphicsQualityEntry"]
  NAMECALL R15 R15 K36 ["extend"]
  CALL R15 2 1
  GETTABLEKS R16 R3 K37 ["strictInterface"]
  DUPTABLE R17 K41 [{"LayoutOrder", "canCaptureFocus", "isMenuOpen"}]
  GETTABLEKS R18 R3 K42 ["integer"]
  SETTABLEKS R18 R17 K38 ["LayoutOrder"]
  GETTABLEKS R18 R3 K43 ["optional"]
  GETTABLEKS R19 R3 K44 ["boolean"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K39 ["canCaptureFocus"]
  GETTABLEKS R18 R3 K43 ["optional"]
  GETTABLEKS R19 R3 K44 ["boolean"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K40 ["isMenuOpen"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K45 ["validateProps"]
  DUPCLOSURE R16 K46 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R16 R15 K47 ["init"]
  DUPCLOSURE R16 K48 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K49 ["setAutomaticQualityLevel"]
  DUPCLOSURE R16 K50 [PROTO_4]
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R16 R15 K51 ["setManualQualityLevel"]
  DUPCLOSURE R16 K52 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R6
  SETTABLEKS R16 R15 K53 ["render"]
  RETURN R15 1
