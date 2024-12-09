PROTO_0:
  GETUPVAL R2 0
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["createFragment"]
  DUPTABLE R2 K9 [{"FriendStatusConnector", "LastInputTypeConnector", "MouseOverrideManager", "FocusHighlightManager", "VideoRecordConnector", "NativeCloseEventConnector"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 2
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["FriendStatusConnector"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 3
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["LastInputTypeConnector"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 4
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["MouseOverrideManager"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 5
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["FocusHighlightManager"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 6
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["VideoRecordConnector"]
  GETTABLEKS R4 R0 K11 ["isEducationalPopupEnabled"]
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 7
  CALL R3 1 1
  JUMPIF R3 [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K8 ["NativeCloseEventConnector"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_1:
  DUPTABLE R2 K1 [{"isEducationalPopupEnabled"}]
  GETTABLEKS R3 R0 K2 ["enableEducationalPopup"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K0 ["isEducationalPopupEnabled"]
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
  GETTABLEKS R3 R1 K9 ["t"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["FriendStatusConnector"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R7 K11 [script]
  GETTABLEKS R6 R7 K13 ["LastInputTypeConnector"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R8 K11 [script]
  GETTABLEKS R7 R8 K14 ["MouseOverrideManager"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K11 [script]
  GETTABLEKS R8 R9 K15 ["FocusHighlightManager"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R10 K11 [script]
  GETTABLEKS R9 R10 K16 ["VideoRecordConnector"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R11 K11 [script]
  GETTABLEKS R10 R11 K17 ["NativeCloseEventConnector"]
  CALL R9 1 1
  GETIMPORT R12 K11 [script]
  GETTABLEKS R11 R12 K18 ["Parent"]
  GETTABLEKS R10 R11 K18 ["Parent"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R10 K19 ["InGameMenuPolicy"]
  CALL R11 1 1
  GETTABLEKS R12 R3 K20 ["strictInterface"]
  DUPTABLE R13 K22 [{"isEducationalPopupEnabled"}]
  GETTABLEKS R14 R3 K23 ["optional"]
  GETTABLEKS R15 R3 K24 ["boolean"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K21 ["isEducationalPopupEnabled"]
  CALL R12 1 1
  DUPCLOSURE R13 K25 [PROTO_0]
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  GETTABLEKS R14 R11 K26 ["connect"]
  DUPCLOSURE R15 K27 [PROTO_1]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 -1
  RETURN R14 -1
