PROTO_0:
  DUPTABLE R3 K3 [{"selectedComputerMode", "computerOptions", "developerComputerMode"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["ComputerCameraMovementMode"]
  SETTABLEKS R4 R3 K0 ["selectedComputerMode"]
  GETUPVAL R5 1
  JUMPIFNOT R5 [+5]
  GETUPVAL R4 1
  NAMECALL R4 R4 K5 ["GetRegisteredComputerCameraMovementModes"]
  CALL R4 1 1
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K1 ["computerOptions"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["DevComputerCameraMode"]
  SETTABLEKS R4 R3 K2 ["developerComputerMode"]
  NAMECALL R1 R0 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"selectedComputerMode"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["ComputerCameraMovementMode"]
  SETTABLEKS R3 R2 K0 ["selectedComputerMode"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"computerOptions"}]
  GETUPVAL R3 1
  NAMECALL R3 R3 K2 ["GetRegisteredComputerCameraMovementModes"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["computerOptions"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"developerComputerMode"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["DevComputerCameraMode"]
  SETTABLEKS R3 R2 K0 ["developerComputerMode"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["computerOptions"]
  GETTABLE R2 R3 R0
  SETTABLEKS R2 R1 K2 ["ComputerCameraMovementMode"]
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K3 ["AnalyticsSettingsChangeName"]
  LOADNIL R3
  NEWTABLE R4 0 0
  LOADB R5 1
  CALL R1 4 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K13 [{"Size", "Position", "selections", "selectedIndex", "placeHolderText", "enabled", "localize", "selectionChanged", "selectionParentName", "canOpen", "canCaptureFocus", "ButtonRef"}]
  GETIMPORT R4 K16 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 44
  CALL R4 4 1
  SETTABLEKS R4 R3 K1 ["Size"]
  GETIMPORT R4 K16 [UDim2.new]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  LOADN R8 56
  CALL R4 4 1
  SETTABLEKS R4 R3 K2 ["Position"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K3 ["selections"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K4 ["selectedIndex"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K17 ["state"]
  GETTABLEKS R5 R6 K18 ["developerComputerMode"]
  GETTABLEKS R4 R5 K19 ["Name"]
  SETTABLEKS R4 R3 K5 ["placeHolderText"]
  GETUPVAL R5 5
  NOT R4 R5
  SETTABLEKS R4 R3 K6 ["enabled"]
  LOADB R4 1
  SETTABLEKS R4 R3 K7 ["localize"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U4
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  SETTABLEKS R4 R3 K8 ["selectionChanged"]
  LOADK R4 K20 ["cameraModeDropdown"]
  SETTABLEKS R4 R3 K9 ["selectionParentName"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K21 ["props"]
  GETTABLEKS R4 R5 K10 ["canOpen"]
  SETTABLEKS R4 R3 K10 ["canOpen"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K21 ["props"]
  GETTABLEKS R4 R5 K11 ["canCaptureFocus"]
  SETTABLEKS R4 R3 K11 ["canCaptureFocus"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K21 ["props"]
  GETTABLEKS R4 R5 K12 ["ButtonRef"]
  SETTABLEKS R4 R3 K12 ["ButtonRef"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_6:
  DUPTABLE R1 K3 [{"ComputerCameraMovementModeListener", "ComputerCameraMovementModeRegisteredListener", "LocalPlayerComputerMovementMode"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"event", "callback"}]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K5 ["event"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R5 R4 K6 ["callback"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["ComputerCameraMovementModeListener"]
  GETUPVAL R2 4
  JUMPIFNOT R2 [+16]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"event", "callback"}]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K8 ["ComputerCameraMovementModeRegistered"]
  SETTABLEKS R5 R4 K5 ["event"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R5 R4 K6 ["callback"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K1 ["ComputerCameraMovementModeRegisteredListener"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"event", "callback"}]
  GETUPVAL R5 5
  SETTABLEKS R5 R4 K5 ["event"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R5 R4 K6 ["callback"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["LocalPlayerComputerMovementMode"]
  GETTABLEKS R4 R0 K9 ["state"]
  GETTABLEKS R3 R4 K10 ["computerOptions"]
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K11 [0] [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["createFragment"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
  GETTABLEKS R4 R0 K9 ["state"]
  GETTABLEKS R3 R4 K13 ["developerComputerMode"]
  GETIMPORT R4 K17 [Enum.DevComputerCameraMovementMode.UserChoice]
  JUMPIFNOTEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  NEWTABLE R3 0 0
  LOADN R4 0
  JUMPIF R2 [+39]
  GETIMPORT R5 K19 [ipairs]
  GETTABLEKS R8 R0 K9 ["state"]
  GETTABLEKS R6 R8 K10 ["computerOptions"]
  CALL R5 1 3
  FORGPREP_INEXT R5
  GETUPVAL R11 7
  GETTABLE R10 R11 R9
  SETTABLE R10 R3 R8
  GETTABLE R12 R3 R8
  JUMPIFNOTEQKNIL R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  LOADK R13 K20 ["Camera movement mode "]
  GETTABLEKS R14 R9 K21 ["Name"]
  LOADK R15 K22 [" has no localization key"]
  CONCAT R12 R13 R15
  FASTCALL2 ASSERT R11 R12 [+3]
  GETIMPORT R10 K24 [assert]
  CALL R10 2 0
  GETTABLEKS R12 R0 K9 ["state"]
  GETTABLEKS R11 R12 K25 ["selectedComputerMode"]
  GETTABLEKS R10 R11 K26 ["Value"]
  GETTABLEKS R11 R9 K26 ["Value"]
  JUMPIFNOTEQ R10 R11 [+2]
  MOVE R4 R8
  FORGLOOP R5 2 [inext] [-30]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  LOADK R6 K27 ["Frame"]
  DUPTABLE R7 K32 [{"Size", "BackgroundTransparency", "LayoutOrder", "ZIndex"}]
  GETIMPORT R8 K35 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 120
  CALL R8 4 1
  SETTABLEKS R8 R7 K28 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K29 ["BackgroundTransparency"]
  GETTABLEKS R9 R0 K36 ["props"]
  GETTABLEKS R8 R9 K30 ["LayoutOrder"]
  SETTABLEKS R8 R7 K30 ["LayoutOrder"]
  LOADN R8 2
  SETTABLEKS R8 R7 K31 ["ZIndex"]
  DUPTABLE R8 K41 [{"Padding", "InputLabel", "Dropdown", "LockedLabel"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  LOADK R10 K42 ["UIPadding"]
  DUPTABLE R11 K45 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R12 K47 [UDim.new]
  LOADN R13 0
  LOADN R14 24
  CALL R12 2 1
  SETTABLEKS R12 R11 K43 ["PaddingLeft"]
  GETIMPORT R12 K47 [UDim.new]
  LOADN R13 0
  LOADN R14 24
  CALL R12 2 1
  SETTABLEKS R12 R11 K44 ["PaddingRight"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K37 ["Padding"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 8
  DUPTABLE R11 K51 [{"localizationKey", "Size", "Position", "AnchorPoint"}]
  LOADK R12 K52 ["CoreScripts.InGameMenu.GameSettings.CameraMode"]
  SETTABLEKS R12 R11 K48 ["localizationKey"]
  GETIMPORT R12 K35 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 56
  CALL R12 4 1
  SETTABLEKS R12 R11 K28 ["Size"]
  GETIMPORT R12 K35 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K49 ["Position"]
  GETIMPORT R12 K54 [Vector2.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K50 ["AnchorPoint"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K38 ["InputLabel"]
  GETUPVAL R9 9
  DUPTABLE R10 K56 [{"placeholder"}]
  JUMPIFNOT R2 [+7]
  GETUPVAL R12 7
  GETTABLEKS R14 R0 K9 ["state"]
  GETTABLEKS R13 R14 K13 ["developerComputerMode"]
  GETTABLE R11 R12 R13
  JUMPIF R11 [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K55 ["placeholder"]
  CALL R9 1 1
  NEWCLOSURE R10 P3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U10
  CAPTURE VAL R3
  CAPTURE REF R4
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CALL R9 1 1
  SETTABLEKS R9 R8 K39 ["Dropdown"]
  MOVE R9 R2
  JUMPIFNOT R9 [+31]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 13
  DUPTABLE R11 K57 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R12 K54 [Vector2.new]
  LOADN R13 0
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K50 ["AnchorPoint"]
  GETIMPORT R12 K35 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K49 ["Position"]
  GETIMPORT R12 K35 [UDim2.new]
  LOADN R13 1
  LOADN R14 184
  LOADK R15 K58 [0.25]
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K28 ["Size"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K40 ["LockedLabel"]
  CALL R5 3 1
  SETTABLEKS R5 R1 K59 ["CameraModeEntrySelector"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["createFragment"]
  MOVE R6 R1
  CALL R5 1 -1
  CLOSEUPVALS R4
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [UserSettings]
  CALL R2 0 1
  LOADK R4 K7 ["UserGameSettings"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R5 K8 ["ComputerCameraMovementMode"]
  NAMECALL R3 R2 K9 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K10 ["CoreGui"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  LOADK R7 K11 ["RobloxGui"]
  NAMECALL R5 R4 K12 ["WaitForChild"]
  CALL R5 2 1
  GETIMPORT R6 K14 [require]
  GETTABLEKS R8 R5 K15 ["Modules"]
  GETTABLEKS R7 R8 K16 ["CoreUtility"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K17 ["LocalPlayer"]
  GETTABLEKS R8 R6 K18 ["waitForChildOfClass"]
  MOVE R9 R7
  LOADK R10 K19 ["PlayerScripts"]
  CALL R8 2 1
  LOADK R11 K20 ["DevComputerMovementMode"]
  NAMECALL R9 R7 K9 ["GetPropertyChangedSignal"]
  CALL R9 2 1
  GETIMPORT R10 K14 [require]
  GETTABLEKS R12 R0 K21 ["Packages"]
  GETTABLEKS R11 R12 K22 ["InGameMenuDependencies"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K23 ["Roact"]
  GETTABLEKS R12 R10 K24 ["t"]
  GETIMPORT R16 K26 [script]
  GETTABLEKS R15 R16 K27 ["Parent"]
  GETTABLEKS R14 R15 K27 ["Parent"]
  GETTABLEKS R13 R14 K27 ["Parent"]
  GETIMPORT R14 K14 [require]
  GETTABLEKS R16 R13 K28 ["Components"]
  GETTABLEKS R15 R16 K29 ["DropDownSelection"]
  CALL R14 1 1
  GETIMPORT R15 K14 [require]
  GETTABLEKS R17 R13 K30 ["Utility"]
  GETTABLEKS R16 R17 K31 ["ExternalEventConnection"]
  CALL R15 1 1
  GETIMPORT R16 K14 [require]
  GETIMPORT R19 K26 [script]
  GETTABLEKS R18 R19 K27 ["Parent"]
  GETTABLEKS R17 R18 K32 ["InputLabel"]
  CALL R16 1 1
  GETIMPORT R17 K14 [require]
  GETIMPORT R20 K26 [script]
  GETTABLEKS R19 R20 K27 ["Parent"]
  GETTABLEKS R18 R19 K33 ["DeveloperLockLabel"]
  CALL R17 1 1
  GETIMPORT R18 K14 [require]
  GETTABLEKS R20 R13 K34 ["Localization"]
  GETTABLEKS R19 R20 K35 ["withLocalization"]
  CALL R18 1 1
  GETIMPORT R19 K14 [require]
  GETTABLEKS R21 R13 K30 ["Utility"]
  GETTABLEKS R20 R21 K36 ["SendAnalytics"]
  CALL R19 1 1
  GETIMPORT R20 K14 [require]
  GETTABLEKS R22 R13 K37 ["Resources"]
  GETTABLEKS R21 R22 K38 ["Constants"]
  CALL R20 1 1
  NEWTABLE R21 4 0
  GETIMPORT R22 K41 [Enum.ComputerCameraMovementMode.Classic]
  LOADK R23 K42 ["CoreScripts.InGameMenu.GameSettings.CameraModeClassic"]
  SETTABLE R23 R21 R22
  GETIMPORT R22 K44 [Enum.ComputerCameraMovementMode.Follow]
  LOADK R23 K45 ["CoreScripts.InGameMenu.GameSettings.CameraModeFollow"]
  SETTABLE R23 R21 R22
  GETIMPORT R22 K47 [Enum.ComputerCameraMovementMode.Default]
  LOADK R23 K48 ["CoreScripts.InGameMenu.GameSettings.Default"]
  SETTABLE R23 R21 R22
  GETIMPORT R22 K50 [Enum.ComputerCameraMovementMode.CameraToggle]
  LOADK R23 K51 ["CoreScripts.InGameMenu.GameSettings.CameraModeCameraToggle"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R11 K52 ["PureComponent"]
  LOADK R24 K53 ["CameraModeEntry"]
  NAMECALL R22 R22 K54 ["extend"]
  CALL R22 2 1
  GETTABLEKS R23 R12 K55 ["strictInterface"]
  DUPTABLE R24 K60 [{"LayoutOrder", "canOpen", "canCaptureFocus", "ButtonRef"}]
  GETTABLEKS R25 R12 K61 ["integer"]
  SETTABLEKS R25 R24 K56 ["LayoutOrder"]
  GETTABLEKS R25 R12 K62 ["optional"]
  GETTABLEKS R26 R12 K63 ["boolean"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K57 ["canOpen"]
  GETTABLEKS R25 R12 K62 ["optional"]
  GETTABLEKS R26 R12 K63 ["boolean"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K58 ["canCaptureFocus"]
  GETTABLEKS R25 R12 K62 ["optional"]
  GETTABLEKS R26 R12 K64 ["union"]
  GETTABLEKS R27 R12 K65 ["callback"]
  GETTABLEKS R28 R12 K66 ["table"]
  CALL R26 2 -1
  CALL R25 -1 1
  SETTABLEKS R25 R24 K59 ["ButtonRef"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K67 ["validateProps"]
  DUPTABLE R23 K68 [{"canOpen"}]
  LOADB R24 1
  SETTABLEKS R24 R23 K57 ["canOpen"]
  SETTABLEKS R23 R22 K69 ["defaultProps"]
  DUPCLOSURE R23 K70 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R23 R22 K71 ["init"]
  DUPCLOSURE R23 K72 [PROTO_6]
  CAPTURE VAL R11
  CAPTURE VAL R15
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R17
  SETTABLEKS R23 R22 K73 ["render"]
  RETURN R22 1
