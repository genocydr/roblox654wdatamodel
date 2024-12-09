PROTO_0:
  GETUPVAL R0 0
  ADDK R0 R0 K0 [1]
  SETUPVAL R0 0
  GETUPVAL R0 0
  RETURN R0 1

PROTO_1:
  LOADN R0 0
  NEWCLOSURE R1 P0
  CAPTURE REF R0
  CLOSEUPVALS R0
  RETURN R1 1

PROTO_2:
  LOADN R2 0
  NEWCLOSURE R1 P0
  CAPTURE REF R2
  CLOSEUPVALS R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"pageTitle", "zIndex", "position"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["props"]
  GETTABLEKS R5 R6 K1 ["pageTitle"]
  SETTABLEKS R5 R4 K1 ["pageTitle"]
  LOADN R5 2
  SETTABLEKS R5 R4 K2 ["zIndex"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["props"]
  GETTABLEKS R5 R6 K3 ["position"]
  SETTABLEKS R5 R4 K3 ["position"]
  DUPTABLE R5 K11 [{"Layout", "VRComfortSettings", "VignetteEnabled", "VRSteppedRotationEnabled", "VRThirdPersonFixedCamEnabled"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  LOADK R7 K12 ["UIListLayout"]
  DUPTABLE R8 K16 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R9 K19 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R9 R8 K13 ["SortOrder"]
  GETIMPORT R9 K21 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R9 R8 K14 ["HorizontalAlignment"]
  GETIMPORT R9 K23 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K15 ["VerticalAlignment"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Layout"]
  GETIMPORT R7 K25 [game]
  LOADK R9 K26 ["VRMoreComfortSettings"]
  NAMECALL R7 R7 K27 ["GetEngineFeature"]
  CALL R7 2 1
  JUMPIFNOT R7 [+11]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K28 [{"LayoutOrder"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K18 ["LayoutOrder"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K7 ["VRComfortSettings"]
  GETIMPORT R7 K25 [game]
  LOADK R9 K26 ["VRMoreComfortSettings"]
  NAMECALL R7 R7 K27 ["GetEngineFeature"]
  CALL R7 2 1
  JUMPIFNOT R7 [+20]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K32 [{"LayoutOrder", "labelKey", "customValueKey", "derivedValueKey"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K18 ["LayoutOrder"]
  LOADK R9 K33 ["CoreScripts.InGameMenu.GameSettings.VignetteEnabled"]
  SETTABLEKS R9 R8 K29 ["labelKey"]
  LOADK R9 K34 ["VignetteEnabledCustomOption"]
  SETTABLEKS R9 R8 K30 ["customValueKey"]
  LOADK R9 K8 ["VignetteEnabled"]
  SETTABLEKS R9 R8 K31 ["derivedValueKey"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K8 ["VignetteEnabled"]
  GETIMPORT R7 K25 [game]
  LOADK R9 K26 ["VRMoreComfortSettings"]
  NAMECALL R7 R7 K27 ["GetEngineFeature"]
  CALL R7 2 1
  JUMPIFNOT R7 [+23]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K36 [{"LayoutOrder", "labelKey", "customValueKey", "derivedValueKey", "checkedValue"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K18 ["LayoutOrder"]
  LOADK R9 K37 ["CoreScripts.InGameMenu.GameSettings.VRSteppedRotationEnabled"]
  SETTABLEKS R9 R8 K29 ["labelKey"]
  LOADK R9 K38 ["VRSmoothRotationEnabledCustomOption"]
  SETTABLEKS R9 R8 K30 ["customValueKey"]
  LOADK R9 K39 ["VRSmoothRotationEnabled"]
  SETTABLEKS R9 R8 K31 ["derivedValueKey"]
  LOADB R9 0
  SETTABLEKS R9 R8 K35 ["checkedValue"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K9 ["VRSteppedRotationEnabled"]
  GETIMPORT R7 K25 [game]
  LOADK R9 K26 ["VRMoreComfortSettings"]
  NAMECALL R7 R7 K27 ["GetEngineFeature"]
  CALL R7 2 1
  JUMPIFNOT R7 [+23]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K36 [{"LayoutOrder", "labelKey", "customValueKey", "derivedValueKey", "checkedValue"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K18 ["LayoutOrder"]
  LOADK R9 K40 ["CoreScripts.InGameMenu.GameSettings.VRThirdPersonFixedCamEnabled"]
  SETTABLEKS R9 R8 K29 ["labelKey"]
  LOADK R9 K41 ["VRThirdPersonFollowCamEnabledCustomOption"]
  SETTABLEKS R9 R8 K30 ["customValueKey"]
  LOADK R9 K42 ["VRThirdPersonFollowCamEnabled"]
  SETTABLEKS R9 R8 K31 ["derivedValueKey"]
  LOADB R9 0
  SETTABLEKS R9 R8 K35 ["checkedValue"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K10 ["VRThirdPersonFixedCamEnabled"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"closeMenu"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["closeMenu"]
  RETURN R1 1

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
  GETTABLEKS R3 R1 K9 ["RoactRodux"]
  GETTABLEKS R4 R1 K10 ["t"]
  GETTABLEKS R5 R1 K11 ["UIBlox"]
  GETTABLEKS R8 R5 K12 ["Core"]
  GETTABLEKS R7 R8 K13 ["Style"]
  GETTABLEKS R6 R7 K14 ["withStyle"]
  GETIMPORT R10 K16 [script]
  GETTABLEKS R9 R10 K17 ["Parent"]
  GETTABLEKS R8 R9 K17 ["Parent"]
  GETTABLEKS R7 R8 K17 ["Parent"]
  GETIMPORT R8 K5 [require]
  GETIMPORT R12 K16 [script]
  GETTABLEKS R11 R12 K17 ["Parent"]
  GETTABLEKS R10 R11 K17 ["Parent"]
  GETTABLEKS R9 R10 K18 ["Page"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R7 K19 ["Thunks"]
  GETTABLEKS R10 R11 K20 ["CloseMenu"]
  CALL R9 1 1
  LOADNIL R10
  LOADNIL R11
  GETIMPORT R12 K1 [game]
  LOADK R14 K21 ["VRMoreComfortSettings"]
  NAMECALL R12 R12 K22 ["GetEngineFeature"]
  CALL R12 2 1
  JUMPIFNOT R12 [+20]
  GETIMPORT R12 K5 [require]
  GETIMPORT R15 K16 [script]
  GETTABLEKS R14 R15 K17 ["Parent"]
  GETTABLEKS R13 R14 K23 ["VRComfortAutoToggleEntry"]
  CALL R12 1 1
  MOVE R10 R12
  GETIMPORT R12 K5 [require]
  GETIMPORT R15 K16 [script]
  GETTABLEKS R14 R15 K17 ["Parent"]
  GETTABLEKS R13 R14 K24 ["ComfortSettingsEntry"]
  CALL R12 1 1
  MOVE R11 R12
  GETTABLEKS R12 R2 K25 ["PureComponent"]
  LOADK R14 K26 ["VRComfortSettingsPage"]
  NAMECALL R12 R12 K27 ["extend"]
  CALL R12 2 1
  GETTABLEKS R13 R4 K28 ["strictInterface"]
  DUPTABLE R14 K31 [{"closeMenu", "pageTitle"}]
  GETTABLEKS R15 R4 K32 ["callback"]
  SETTABLEKS R15 R14 K29 ["closeMenu"]
  GETTABLEKS R15 R4 K33 ["string"]
  SETTABLEKS R15 R14 K30 ["pageTitle"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K34 ["validateProps"]
  DUPCLOSURE R13 K35 [PROTO_1]
  NEWCLOSURE R14 P1
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE REF R11
  CAPTURE REF R10
  SETTABLEKS R14 R12 K36 ["render"]
  GETTABLEKS R14 R3 K37 ["UNSTABLE_connect2"]
  LOADNIL R15
  DUPCLOSURE R16 K38 [PROTO_5]
  CAPTURE VAL R9
  CALL R14 2 1
  MOVE R15 R12
  CALL R14 1 -1
  CLOSEUPVALS R10
  RETURN R14 -1
