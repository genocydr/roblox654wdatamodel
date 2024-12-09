PROTO_0:
  DUPTABLE R1 K1 [{"deviceType"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Console"]
  SETTABLEKS R2 R1 K0 ["deviceType"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K5 [{"styleOverride"}]
  SETTABLEKS R1 R4 K4 ["styleOverride"]
  DUPTABLE R5 K7 [{"FocusNavigationEffects"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K10 [{"selectionGroupName", "focusNavigableSurfaceIdentifier"}]
  LOADK R9 K11 ["OverscanScreen"]
  SETTABLEKS R9 R8 K8 ["selectionGroupName"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K12 ["CentralOverlay"]
  SETTABLEKS R9 R8 K9 ["focusNavigableSurfaceIdentifier"]
  DUPTABLE R9 K14 [{"Overscan"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 5
  MOVE R12 R0
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Overscan"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K6 ["FocusNavigationEffects"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R0 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R1 K9 ["Workspace"]
  GETTABLEKS R6 R7 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["CoreScriptsRoactCommon"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["CoreScriptsRootProvider"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R2 K13 ["Modules"]
  GETTABLEKS R6 R7 K14 ["Common"]
  GETTABLEKS R5 R6 K15 ["FocusNavigationEffectsWrapper"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K10 ["Packages"]
  GETTABLEKS R6 R7 K16 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R1 K9 ["Workspace"]
  GETTABLEKS R8 R9 K10 ["Packages"]
  GETTABLEKS R7 R8 K17 ["RobloxAppEnums"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R1 K9 ["Workspace"]
  GETTABLEKS R9 R10 K10 ["Packages"]
  GETTABLEKS R8 R9 K18 ["FocusNavigationUtils"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K19 ["FocusNavigableSurfaceIdentifierEnum"]
  GETTABLEKS R9 R6 K20 ["DeviceType"]
  DUPCLOSURE R10 K21 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R8
  SETGLOBAL R10 K22 ["OverscanWrapper"]
  GETGLOBAL R10 K22 ["OverscanWrapper"]
  RETURN R10 1
