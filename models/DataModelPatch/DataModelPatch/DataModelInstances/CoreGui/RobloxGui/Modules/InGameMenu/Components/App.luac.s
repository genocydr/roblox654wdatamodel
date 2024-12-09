PROTO_0:
  LOADNIL R1
  GETTABLEKS R2 R0 K0 ["enableFullscreenTitleBar"]
  JUMPIFNOT R2 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"displayOrder"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["DisplayOrder"]
  GETTABLEKS R5 R6 K5 ["FullscreenTitleBar"]
  SETTABLEKS R5 R4 K2 ["displayOrder"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R2 3
  JUMPIFNOT R2 [+107]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["createFragment"]
  DUPTABLE R3 K11 [{"Content", "Connection", "EducationalPopup", "MenuIconTooltip", "FullscreenTitleBar"}]
  GETTABLEKS R5 R0 K12 ["isMenuOpen"]
  JUMPIFNOT R5 [+62]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["createFragment"]
  DUPTABLE R5 K21 [{"Overlay", "SideNavigation", "LeaveGameDialog", "PageContainer", "RespawnDialog", "ReportDialog", "ReportSentDialog", "ControlLayoutSetter"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 4
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["Overlay"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 5
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["SideNavigation"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 6
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["LeaveGameDialog"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 7
  CALL R6 1 1
  SETTABLEKS R6 R5 K16 ["PageContainer"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 8
  CALL R6 1 1
  SETTABLEKS R6 R5 K17 ["RespawnDialog"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 9
  CALL R6 1 1
  SETTABLEKS R6 R5 K18 ["ReportDialog"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 10
  CALL R6 1 1
  SETTABLEKS R6 R5 K19 ["ReportSentDialog"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 11
  CALL R6 1 1
  SETTABLEKS R6 R5 K20 ["ControlLayoutSetter"]
  CALL R4 1 1
  JUMPIF R4 [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K7 ["Content"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 12
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["Connection"]
  GETTABLEKS R5 R0 K22 ["isEducationalPopupEnabled"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 13
  CALL R4 1 1
  JUMPIF R4 [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["EducationalPopup"]
  GETTABLEKS R5 R0 K22 ["isEducationalPopupEnabled"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 14
  CALL R4 1 1
  JUMPIF R4 [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K10 ["MenuIconTooltip"]
  SETTABLEKS R1 R3 K5 ["FullscreenTitleBar"]
  CALL R2 1 -1
  RETURN R2 -1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["createFragment"]
  DUPTABLE R3 K23 [{"Overlay", "SideNavigation", "LeaveGameDialog", "PageContainer", "RespawnDialog", "ReportDialog", "ReportSentDialog", "ControlLayoutSetter", "Connection", "EducationalPopup", "MenuIconTooltip", "FullscreenTitleBar"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 4
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["Overlay"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 5
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["SideNavigation"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 6
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["LeaveGameDialog"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 7
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["PageContainer"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 8
  CALL R4 1 1
  SETTABLEKS R4 R3 K17 ["RespawnDialog"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 9
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["ReportDialog"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 10
  CALL R4 1 1
  SETTABLEKS R4 R3 K19 ["ReportSentDialog"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 11
  CALL R4 1 1
  SETTABLEKS R4 R3 K20 ["ControlLayoutSetter"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 12
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["Connection"]
  GETTABLEKS R5 R0 K22 ["isEducationalPopupEnabled"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 13
  CALL R4 1 1
  JUMPIF R4 [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["EducationalPopup"]
  GETTABLEKS R5 R0 K22 ["isEducationalPopupEnabled"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 14
  CALL R4 1 1
  JUMPIF R4 [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K10 ["MenuIconTooltip"]
  SETTABLEKS R1 R3 K5 ["FullscreenTitleBar"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_1:
  DUPTABLE R2 K2 [{"enableFullscreenTitleBar", "isEducationalPopupEnabled"}]
  GETTABLEKS R3 R0 K0 ["enableFullscreenTitleBar"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K0 ["enableFullscreenTitleBar"]
  GETTABLEKS R3 R0 K3 ["enableEducationalPopup"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K1 ["isEducationalPopupEnabled"]
  RETURN R2 1

PROTO_2:
  DUPTABLE R2 K1 [{"isMenuOpen"}]
  GETTABLEKS R3 R0 K0 ["isMenuOpen"]
  SETTABLEKS R3 R2 K0 ["isMenuOpen"]
  RETURN R2 1

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
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Parent"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K13 ["InGameMenuPolicy"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R9 K11 [script]
  GETTABLEKS R8 R9 K12 ["Parent"]
  GETTABLEKS R7 R8 K14 ["ViewportOverlay"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R10 K11 [script]
  GETTABLEKS R9 R10 K12 ["Parent"]
  GETTABLEKS R8 R9 K15 ["SideNavigation"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R11 K11 [script]
  GETTABLEKS R10 R11 K12 ["Parent"]
  GETTABLEKS R9 R10 K16 ["LeaveGameDialog"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K11 [script]
  GETTABLEKS R11 R12 K12 ["Parent"]
  GETTABLEKS R10 R11 K17 ["PageContainer"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETIMPORT R13 K11 [script]
  GETTABLEKS R12 R13 K12 ["Parent"]
  GETTABLEKS R11 R12 K18 ["RespawnDialog"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETIMPORT R15 K11 [script]
  GETTABLEKS R14 R15 K12 ["Parent"]
  GETTABLEKS R13 R14 K19 ["ReportPage"]
  GETTABLEKS R12 R13 K20 ["ReportDialog"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETIMPORT R16 K11 [script]
  GETTABLEKS R15 R16 K12 ["Parent"]
  GETTABLEKS R14 R15 K19 ["ReportPage"]
  GETTABLEKS R13 R14 K21 ["ReportSentDialog"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETIMPORT R17 K11 [script]
  GETTABLEKS R16 R17 K12 ["Parent"]
  GETTABLEKS R15 R16 K22 ["ControlsPage"]
  GETTABLEKS R14 R15 K23 ["ControlLayoutSetter"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETIMPORT R17 K11 [script]
  GETTABLEKS R16 R17 K12 ["Parent"]
  GETTABLEKS R15 R16 K24 ["Connection"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETIMPORT R18 K11 [script]
  GETTABLEKS R17 R18 K12 ["Parent"]
  GETTABLEKS R16 R17 K25 ["EducationalPopup"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETIMPORT R19 K11 [script]
  GETTABLEKS R18 R19 K12 ["Parent"]
  GETTABLEKS R17 R18 K26 ["MenuIconTooltip"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETIMPORT R20 K11 [script]
  GETTABLEKS R19 R20 K12 ["Parent"]
  GETTABLEKS R18 R19 K27 ["FullscreenTitleBar"]
  CALL R17 1 1
  GETTABLEKS R18 R4 K28 ["Flags"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R18 K29 ["FFlagLuaMenuPerfImprovements"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R4 K30 ["Resources"]
  GETTABLEKS R21 R22 K31 ["Constants"]
  CALL R20 1 1
  DUPCLOSURE R21 K32 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R20
  CAPTURE VAL R19
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  GETTABLEKS R22 R5 K33 ["connect"]
  DUPCLOSURE R23 K34 [PROTO_1]
  CALL R22 1 1
  MOVE R23 R21
  CALL R22 1 1
  MOVE R21 R22
  DUPCLOSURE R22 K35 [PROTO_2]
  GETTABLEKS R23 R3 K33 ["connect"]
  MOVE R24 R22
  LOADNIL R25
  CALL R23 2 1
  MOVE R24 R21
  CALL R23 1 -1
  RETURN R23 -1
