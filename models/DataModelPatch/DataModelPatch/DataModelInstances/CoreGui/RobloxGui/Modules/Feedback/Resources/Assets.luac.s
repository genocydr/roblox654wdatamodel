MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["UIBlox"]
  CALL R1 1 1
  GETTABLEKS R4 R1 K8 ["App"]
  GETTABLEKS R3 R4 K9 ["ImageSet"]
  GETTABLEKS R2 R3 K10 ["Images"]
  GETTABLEKS R5 R1 K8 ["App"]
  GETTABLEKS R4 R5 K9 ["ImageSet"]
  GETTABLEKS R3 R4 K11 ["getIconSize"]
  GETTABLEKS R7 R1 K8 ["App"]
  GETTABLEKS R6 R7 K9 ["ImageSet"]
  GETTABLEKS R5 R6 K12 ["Enum"]
  GETTABLEKS R4 R5 K13 ["IconSize"]
  DUPTABLE R5 K14 [{"Images"}]
  DUPTABLE R6 K18 [{"RoundedRect", "BiometricIcon", "FeedbackBarHintIcon"}]
  DUPTABLE R7 K22 [{"ScaleType", "SliceCenter", "Image"}]
  GETIMPORT R8 K24 [Enum.ScaleType.Slice]
  SETTABLEKS R8 R7 K19 ["ScaleType"]
  GETIMPORT R8 K27 [Rect.new]
  LOADN R9 8
  LOADN R10 8
  LOADN R11 9
  LOADN R12 9
  CALL R8 4 1
  SETTABLEKS R8 R7 K20 ["SliceCenter"]
  GETTABLEKS R8 R2 K28 ["component_assets/circle_17"]
  SETTABLEKS R8 R7 K21 ["Image"]
  SETTABLEKS R7 R6 K15 ["RoundedRect"]
  DUPTABLE R7 K30 [{"Size", "Image"}]
  GETIMPORT R8 K33 [UDim2.fromOffset]
  MOVE R9 R3
  GETTABLEKS R10 R4 K34 ["Medium"]
  CALL R9 1 1
  MOVE R10 R3
  GETTABLEKS R11 R4 K34 ["Medium"]
  CALL R10 1 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K29 ["Size"]
  GETTABLEKS R8 R2 K35 ["icons/menu/biometric"]
  SETTABLEKS R8 R7 K21 ["Image"]
  SETTABLEKS R7 R6 K16 ["BiometricIcon"]
  DUPTABLE R7 K30 [{"Size", "Image"}]
  GETIMPORT R8 K33 [UDim2.fromOffset]
  MOVE R9 R3
  GETTABLEKS R10 R4 K34 ["Medium"]
  CALL R9 1 1
  MOVE R10 R3
  GETTABLEKS R11 R4 K34 ["Medium"]
  CALL R10 1 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K29 ["Size"]
  GETTABLEKS R8 R2 K36 ["icons/actions/edit/add"]
  SETTABLEKS R8 R7 K21 ["Image"]
  SETTABLEKS R7 R6 K17 ["FeedbackBarHintIcon"]
  SETTABLEKS R6 R5 K10 ["Images"]
  RETURN R5 1
