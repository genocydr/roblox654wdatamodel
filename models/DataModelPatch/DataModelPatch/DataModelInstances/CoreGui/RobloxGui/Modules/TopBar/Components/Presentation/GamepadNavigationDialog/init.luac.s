PROTO_0:
  GETUPVAL R3 0
  GETTABLE R2 R0 R3
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  DUPTABLE R3 K4 [{"isGamepadNavigationDialogEnabled", "selectButtonDismissesGamepadNavigationDialog", "appStorageKey", "maxShownCount"}]
  GETUPVAL R4 1
  JUMPIF R4 [+2]
  GETTABLEKS R4 R2 K0 ["isGamepadNavigationDialogEnabled"]
  SETTABLEKS R4 R3 K0 ["isGamepadNavigationDialogEnabled"]
  GETUPVAL R4 2
  JUMPIF R4 [+2]
  GETTABLEKS R4 R2 K1 ["selectButtonDismissesGamepadNavigationDialog"]
  SETTABLEKS R4 R3 K1 ["selectButtonDismissesGamepadNavigationDialog"]
  LOADK R4 K5 ["GamepadMenuVirtualCursorPromptShown"]
  SETTABLEKS R4 R3 K2 ["appStorageKey"]
  GETUPVAL R4 3
  CALL R4 0 1
  SETTABLEKS R4 R3 K3 ["maxShownCount"]
  RETURN R3 1

PROTO_1:
  DUPTABLE R1 K1 [{"isGamepadNavigationDialogOpen"}]
  GETTABLEKS R3 R0 K2 ["displayOptions"]
  GETTABLEKS R2 R3 K0 ["isGamepadNavigationDialogOpen"]
  SETTABLEKS R2 R1 K0 ["isGamepadNavigationDialogOpen"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_3:
  DUPTABLE R1 K1 [{"SetGamepadNavigationDialogOpen"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetGamepadNavigationDialogOpen"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["AppStorageService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["HttpService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R0 K8 ["Packages"]
  GETTABLEKS R6 R7 K11 ["t"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R8 R0 K8 ["Packages"]
  GETTABLEKS R7 R8 K12 ["UIBlox"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R9 R0 K8 ["Packages"]
  GETTABLEKS R8 R9 K13 ["RoactAppExperiment"]
  CALL R7 1 1
  GETTABLEKS R10 R6 K14 ["Core"]
  GETTABLEKS R9 R10 K15 ["Style"]
  GETTABLEKS R8 R9 K16 ["withStyle"]
  GETIMPORT R9 K7 [require]
  GETIMPORT R11 K18 [script]
  GETTABLEKS R10 R11 K19 ["GamepadNavigationDialogShowCounter"]
  CALL R9 1 1
  GETIMPORT R12 K18 [script]
  GETTABLEKS R11 R12 K20 ["Parent"]
  GETTABLEKS R10 R11 K20 ["Parent"]
  GETTABLEKS R12 R10 K20 ["Parent"]
  GETTABLEKS R11 R12 K21 ["Actions"]
  GETIMPORT R12 K7 [require]
  GETTABLEKS R13 R11 K22 ["SetGamepadNavigationDialogOpen"]
  CALL R12 1 1
  GETIMPORT R13 K7 [require]
  GETIMPORT R19 K18 [script]
  GETTABLEKS R18 R19 K20 ["Parent"]
  GETTABLEKS R17 R18 K20 ["Parent"]
  GETTABLEKS R16 R17 K20 ["Parent"]
  GETTABLEKS R15 R16 K23 ["Flags"]
  GETTABLEKS R14 R15 K24 ["GetFStringGamepadNavigationDialogABTestLayerName"]
  CALL R13 1 1
  GETIMPORT R14 K7 [require]
  GETIMPORT R20 K18 [script]
  GETTABLEKS R19 R20 K20 ["Parent"]
  GETTABLEKS R18 R19 K20 ["Parent"]
  GETTABLEKS R17 R18 K20 ["Parent"]
  GETTABLEKS R16 R17 K23 ["Flags"]
  GETTABLEKS R15 R16 K25 ["FFlagAlwaysShowGamepadNavigationDialog"]
  CALL R14 1 1
  GETIMPORT R15 K7 [require]
  GETIMPORT R21 K18 [script]
  GETTABLEKS R20 R21 K20 ["Parent"]
  GETTABLEKS R19 R20 K20 ["Parent"]
  GETTABLEKS R18 R19 K20 ["Parent"]
  GETTABLEKS R17 R18 K23 ["Flags"]
  GETTABLEKS R16 R17 K26 ["FFlagAlwaysSelectButtonDismissesGamepadNavigationDialog"]
  CALL R15 1 1
  GETIMPORT R16 K7 [require]
  GETTABLEKS R19 R10 K20 ["Parent"]
  GETTABLEKS R18 R19 K23 ["Flags"]
  GETTABLEKS R17 R18 K27 ["GetFIntGamepadNavigationDialogShowCount"]
  CALL R16 1 1
  MOVE R17 R13
  CALL R17 0 1
  GETTABLEKS R18 R7 K28 ["connectUserLayer"]
  NEWTABLE R19 0 1
  MOVE R20 R17
  SETLIST R19 R20 1 [1]
  DUPCLOSURE R20 K29 [PROTO_0]
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CALL R18 2 1
  MOVE R19 R9
  CALL R18 1 1
  GETTABLEKS R19 R4 K30 ["connect"]
  DUPCLOSURE R20 K31 [PROTO_1]
  DUPCLOSURE R21 K32 [PROTO_3]
  CAPTURE VAL R12
  CALL R19 2 1
  MOVE R20 R18
  CALL R19 1 -1
  RETURN R19 -1
