PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CustomPoliciesEnabled"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["CustomPoliciesEnabled"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["onCustomPolicyEnabledChanged"]
  MOVE R2 R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["CustomPoliciesEnabled"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Plugin"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["CUSTOM_POLICIES_SWITCH_KEY"]
  MOVE R6 R1
  NAMECALL R3 R2 K4 ["SetSetting"]
  CALL R3 3 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["onCustomPolicySwitchEnabledChanged"]
  MOVE R4 R3
  MOVE R5 R1
  CALL R4 1 0
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["signalTokens"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["updateCustomPoliciesEnabled"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  LOADK R3 K0 ["CustomPoliciesEnabled"]
  NAMECALL R1 R1 K1 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  GETTABLEKS R3 R0 K3 ["signalTokens"]
  FASTCALL2 TABLE_INSERT R3 R1 [+4]
  MOVE R4 R1
  GETIMPORT R2 K6 [table.insert]
  CALL R2 2 0
  GETTABLEKS R3 R0 K7 ["props"]
  GETTABLEKS R2 R3 K8 ["Plugin"]
  NAMECALL R2 R2 K9 ["get"]
  CALL R2 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["CUSTOM_POLICIES_SWITCH_KEY"]
  NAMECALL R3 R2 K11 ["GetSetting"]
  CALL R3 2 1
  JUMPIFNOTEQKB R3 TRUE [+5]
  MOVE R6 R3
  NAMECALL R4 R0 K12 ["updateCustomPoliciesSwitchEnabled"]
  CALL R4 2 0
  NAMECALL R4 R0 K13 ["updateCustomPoliciesEnabled"]
  CALL R4 1 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K1 [pairs]
  GETTABLEKS R2 R0 K2 ["signalTokens"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  NAMECALL R6 R5 K3 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-4]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["signalTokens"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  MOVE R5 R1
  NAMECALL R3 R3 K0 ["updateCustomPoliciesSwitchEnabled"]
  CALL R3 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["customPolicySwitchEnabled"]
  GETTABLEKS R6 R1 K5 ["mainSwitchEnabled"]
  GETTABLEKS R7 R1 K6 ["customPolicySwitchActive"]
  JUMPIF R7 [+6]
  GETUPVAL R8 0
  LOADB R9 1
  SETTABLEKS R9 R8 K7 ["CustomPoliciesEnabled"]
  LOADNIL R8
  RETURN R8 1
  GETUPVAL R8 0
  SETTABLEKS R5 R8 K7 ["CustomPoliciesEnabled"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  LOADK R9 K9 ["Frame"]
  DUPTABLE R10 K13 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
  GETUPVAL R12 2
  JUMPIFNOT R12 [+3]
  GETIMPORT R11 K16 [Enum.AutomaticSize.Y]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K10 ["AutomaticSize"]
  GETUPVAL R12 2
  JUMPIFNOT R12 [+6]
  GETIMPORT R11 K19 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  JUMP [+2]
  GETTABLEKS R11 R2 K20 ["TOGGLE_ITEM_FRAME_SIZE"]
  SETTABLEKS R11 R10 K11 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K12 ["BackgroundTransparency"]
  SETTABLEKS R4 R10 K3 ["LayoutOrder"]
  DUPTABLE R11 K22 [{"Toggle"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K27 [{"Key", "IsOn", "Enabled", "ToggleCallback"}]
  LOADK R17 K28 ["CustomPolicySwitchSection"]
  LOADK R18 K29 ["LabelText"]
  NAMECALL R15 R3 K30 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K23 ["Key"]
  SETTABLEKS R5 R14 K24 ["IsOn"]
  SETTABLEKS R6 R14 K25 ["Enabled"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K26 ["ToggleCallback"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["Toggle"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_10:
  DUPTABLE R2 K3 [{"mainSwitchEnabled", "customPolicySwitchEnabled", "customPolicySwitchActive"}]
  GETTABLEKS R4 R0 K4 ["MainSwitch"]
  GETTABLEKS R3 R4 K0 ["mainSwitchEnabled"]
  SETTABLEKS R3 R2 K0 ["mainSwitchEnabled"]
  GETTABLEKS R4 R0 K5 ["CustomPolicySwitch"]
  GETTABLEKS R3 R4 K1 ["customPolicySwitchEnabled"]
  SETTABLEKS R3 R2 K1 ["customPolicySwitchEnabled"]
  GETTABLEKS R4 R0 K5 ["CustomPolicySwitch"]
  GETTABLEKS R3 R4 K2 ["customPolicySwitchActive"]
  SETTABLEKS R3 R2 K2 ["customPolicySwitchActive"]
  RETURN R2 1

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K2 [{"onCustomPolicyEnabledChanged", "onCustomPolicySwitchEnabledChanged"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["onCustomPolicyEnabledChanged"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["onCustomPolicySwitchEnabledChanged"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnablePseudolocalizationInPlayerEmulator2"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["PlayerEmulatorService"]
  NAMECALL R1 R1 K5 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K8 ["Parent"]
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R2 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R2 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R2 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K15 ["ContextServices"]
  GETTABLEKS R7 R6 K16 ["withContext"]
  GETIMPORT R8 K10 [require]
  GETTABLEKS R11 R2 K17 ["Src"]
  GETTABLEKS R10 R11 K18 ["Components"]
  GETTABLEKS R9 R10 K19 ["ToggleItemModule"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R12 R2 K17 ["Src"]
  GETTABLEKS R11 R12 K20 ["Util"]
  GETTABLEKS R10 R11 K21 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K10 [require]
  GETTABLEKS R13 R2 K17 ["Src"]
  GETTABLEKS R12 R13 K22 ["Actions"]
  GETTABLEKS R11 R12 K23 ["OnCustomPolicyEnabledChanged"]
  CALL R10 1 1
  GETIMPORT R11 K10 [require]
  GETTABLEKS R14 R2 K17 ["Src"]
  GETTABLEKS R13 R14 K22 ["Actions"]
  GETTABLEKS R12 R13 K24 ["OnCustomPolicySwitchEnabledChanged"]
  CALL R11 1 1
  DUPCLOSURE R12 K25 [PROTO_0]
  CAPTURE VAL R1
  DUPCLOSURE R13 K26 [PROTO_1]
  CAPTURE VAL R1
  GETTABLEKS R14 R3 K27 ["PureComponent"]
  LOADK R16 K28 ["CustomPolicySwitchSection"]
  NAMECALL R14 R14 K29 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K30 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R15 R14 K31 ["updateCustomPoliciesEnabled"]
  DUPCLOSURE R15 K32 [PROTO_3]
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K33 ["updateCustomPoliciesSwitchEnabled"]
  DUPCLOSURE R15 K34 [PROTO_4]
  SETTABLEKS R15 R14 K35 ["init"]
  DUPCLOSURE R15 K36 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K37 ["didMount"]
  DUPCLOSURE R15 K38 [PROTO_7]
  SETTABLEKS R15 R14 K39 ["willUnmount"]
  DUPCLOSURE R15 K40 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R8
  SETTABLEKS R15 R14 K41 ["render"]
  MOVE R15 R7
  DUPTABLE R16 K45 [{"Plugin", "Stylizer", "Localization"}]
  GETTABLEKS R17 R6 K42 ["Plugin"]
  SETTABLEKS R17 R16 K42 ["Plugin"]
  GETTABLEKS R17 R6 K43 ["Stylizer"]
  SETTABLEKS R17 R16 K43 ["Stylizer"]
  GETTABLEKS R17 R6 K44 ["Localization"]
  SETTABLEKS R17 R16 K44 ["Localization"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  DUPCLOSURE R15 K46 [PROTO_10]
  DUPCLOSURE R16 K47 [PROTO_13]
  CAPTURE VAL R10
  CAPTURE VAL R11
  GETTABLEKS R17 R4 K48 ["connect"]
  MOVE R18 R15
  MOVE R19 R16
  CALL R17 2 1
  MOVE R18 R14
  CALL R17 1 -1
  RETURN R17 -1
