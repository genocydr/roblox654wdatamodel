PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K1 ["props"]
  CALL R1 2 1
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+29]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K4 [{"selectionGroupName", "focusNavigableSurfaceIdentifier"}]
  LOADK R6 K5 ["BlockingModalScreen"]
  GETTABLEKS R10 R0 K1 ["props"]
  GETTABLEKS R9 R10 K6 ["player"]
  GETTABLEKS R8 R9 K7 ["UserId"]
  FASTCALL1 TOSTRING R8 [+2]
  GETIMPORT R7 K9 [tostring]
  CALL R7 1 1
  CONCAT R5 R6 R7
  SETTABLEKS R5 R4 K2 ["selectionGroupName"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K10 ["CentralOverlay"]
  SETTABLEKS R5 R4 K3 ["focusNavigableSurfaceIdentifier"]
  DUPTABLE R5 K12 [{"BlockingModalContainerWrapper"}]
  SETTABLEKS R1 R5 K11 ["BlockingModalContainerWrapper"]
  CALL R2 3 1
  MOVE R1 R2
  NEWTABLE R2 0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["Portal"]
  DUPTABLE R5 K15 [{"target"}]
  GETUPVAL R6 5
  SETTABLEKS R6 R5 K14 ["target"]
  DUPTABLE R6 K16 [{"BlockingModalScreen"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  LOADK R8 K17 ["ScreenGui"]
  DUPTABLE R9 K21 [{"IgnoreGuiInset", "AutoLocalize", "DisplayOrder"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K18 ["IgnoreGuiInset"]
  LOADB R10 0
  SETTABLEKS R10 R9 K19 ["AutoLocalize"]
  LOADN R10 6
  SETTABLEKS R10 R9 K20 ["DisplayOrder"]
  DUPTABLE R10 K23 [{"BlockingModalContainer"}]
  SETTABLEKS R1 R10 K22 ["BlockingModalContainer"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["BlockingModalScreen"]
  CALL R3 3 -1
  SETLIST R2 R3 -1 [1]
  GETUPVAL R3 6
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["RobloxGui"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["CorePackages"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R2 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R2 K9 ["Packages"]
  GETTABLEKS R5 R6 K11 ["t"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R1 K12 ["Modules"]
  GETTABLEKS R7 R8 K13 ["Common"]
  GETTABLEKS R6 R7 K14 ["FocusNavigationEffectsWrapper"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETIMPORT R9 K16 [script]
  GETTABLEKS R8 R9 K17 ["Parent"]
  GETTABLEKS R7 R8 K18 ["BlockingModalContainer"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R1 K12 ["Modules"]
  GETTABLEKS R9 R10 K13 ["Common"]
  GETTABLEKS R8 R9 K19 ["renderWithCoreScriptsStyleProvider"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R2 K20 ["Workspace"]
  GETTABLEKS R10 R11 K9 ["Packages"]
  GETTABLEKS R9 R10 K21 ["FocusNavigationUtils"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K22 ["FocusNavigableSurfaceIdentifierEnum"]
  GETIMPORT R10 K8 [require]
  GETTABLEKS R13 R1 K12 ["Modules"]
  GETTABLEKS R12 R13 K23 ["Flags"]
  GETTABLEKS R11 R12 K24 ["GetFFlagWrapBlockModalScreenInProvider"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K25 ["PureComponent"]
  LOADK R13 K26 ["BlockingModalScreen"]
  NAMECALL R11 R11 K27 ["extend"]
  CALL R11 2 1
  GETTABLEKS R12 R4 K28 ["interface"]
  DUPTABLE R13 K33 [{"closeModal", "player", "translator", "source"}]
  GETTABLEKS R14 R4 K34 ["callback"]
  SETTABLEKS R14 R13 K29 ["closeModal"]
  GETTABLEKS R14 R4 K28 ["interface"]
  DUPTABLE R15 K38 [{"DisplayName", "Name", "UserId"}]
  GETTABLEKS R16 R4 K39 ["string"]
  SETTABLEKS R16 R15 K35 ["DisplayName"]
  GETTABLEKS R16 R4 K39 ["string"]
  SETTABLEKS R16 R15 K36 ["Name"]
  GETTABLEKS R16 R4 K40 ["number"]
  SETTABLEKS R16 R15 K37 ["UserId"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K30 ["player"]
  GETTABLEKS R14 R4 K41 ["optional"]
  GETTABLEKS R15 R4 K42 ["table"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K31 ["translator"]
  GETTABLEKS R14 R4 K41 ["optional"]
  GETTABLEKS R15 R4 K39 ["string"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K32 ["source"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K43 ["validateProps"]
  DUPCLOSURE R12 K44 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R7
  SETTABLEKS R12 R11 K45 ["render"]
  RETURN R11 1
