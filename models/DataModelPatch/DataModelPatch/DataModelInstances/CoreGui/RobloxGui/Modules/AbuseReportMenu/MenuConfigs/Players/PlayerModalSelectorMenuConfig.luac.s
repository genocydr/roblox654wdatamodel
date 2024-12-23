PROTO_0:
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Utils"]
  GETTABLEKS R2 R3 K1 ["isPlayerVerified"]
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["emoji"]
  GETTABLEKS R1 R2 K3 ["verified"]
  JUMP [+1]
  LOADK R1 K4 [""]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+25]
  DUPTABLE R2 K8 [{"label", "subLabel", "identifier"}]
  GETTABLEKS R4 R0 K9 ["DisplayName"]
  MOVE R5 R1
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K5 ["label"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K10 ["canDisplayPeoplesUsernames"]
  JUMPIFNOT R4 [+6]
  LOADK R4 K11 ["[@"]
  GETTABLEKS R5 R0 K12 ["Name"]
  LOADK R6 K13 ["]"]
  CONCAT R3 R4 R6
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K6 ["subLabel"]
  GETTABLEKS R3 R0 K12 ["Name"]
  SETTABLEKS R3 R2 K7 ["identifier"]
  RETURN R2 1
  DUPTABLE R2 K8 [{"label", "subLabel", "identifier"}]
  GETTABLEKS R4 R0 K9 ["DisplayName"]
  MOVE R5 R1
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K5 ["label"]
  LOADK R4 K11 ["[@"]
  GETTABLEKS R5 R0 K12 ["Name"]
  LOADK R6 K13 ["]"]
  CONCAT R3 R4 R6
  SETTABLEKS R3 R2 K6 ["subLabel"]
  GETTABLEKS R3 R0 K12 ["Name"]
  SETTABLEKS R3 R2 K7 ["identifier"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["List"]
  GETTABLEKS R1 R2 K1 ["map"]
  GETTABLEKS R2 R0 K2 ["playerObjects"]
  DUPCLOSURE R3 K3 [PROTO_1]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 2 1
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["allegedAbuser"]
  JUMPIFNOT R1 [+25]
  GETTABLEKS R2 R1 K1 ["DisplayName"]
  GETTABLEKS R3 R1 K2 ["Name"]
  MOVE R5 R2
  LOADK R6 K3 ["[@"]
  MOVE R7 R3
  LOADK R8 K4 ["]"]
  CONCAT R4 R5 R8
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+12]
  MOVE R5 R2
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["canDisplayPeoplesUsernames"]
  JUMPIFNOT R7 [+5]
  LOADK R7 K3 ["[@"]
  MOVE R8 R3
  LOADK R9 K4 ["]"]
  CONCAT R6 R7 R9
  JUMP [+1]
  LOADK R6 K6 [""]
  CONCAT R4 R5 R6
  RETURN R4 1
  LOADNIL R2
  RETURN R2 1

PROTO_4:
  GETTABLEKS R4 R0 K0 ["identifier"]
  JUMPIFNOT R4 [+40]
  GETTABLEKS R4 R0 K0 ["identifier"]
  GETTABLEKS R5 R1 K1 ["playerObjects"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R9 K2 ["Name"]
  JUMPIFNOTEQ R4 R10 [+28]
  GETTABLEKS R10 R9 K3 ["UserId"]
  GETTABLEKS R11 R3 K4 ["analyticsDispatch"]
  DUPTABLE R12 K6 [{"type"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K7 ["AnalyticsActions"]
  GETTABLEKS R13 R14 K8 ["IncrementPersonChanged"]
  SETTABLEKS R13 R12 K5 ["type"]
  CALL R11 1 0
  MOVE R11 R2
  DUPTABLE R12 K11 [{"type", "abuseId", "abuser"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K12 ["PlayerMenuActions"]
  GETTABLEKS R13 R14 K13 ["UpdateAbuser"]
  SETTABLEKS R13 R12 K5 ["type"]
  SETTABLEKS R10 R12 K9 ["abuseId"]
  SETTABLEKS R9 R12 K10 ["abuser"]
  CALL R11 1 0
  FORGLOOP R5 2 [-32]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K12 ["Workspace"]
  GETTABLEKS R5 R6 K10 ["Packages"]
  GETTABLEKS R4 R5 K13 ["VerifiedBadges"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K12 ["Workspace"]
  GETTABLEKS R6 R7 K10 ["Packages"]
  GETTABLEKS R5 R6 K14 ["UserLib"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K15 ["Components"]
  GETTABLEKS R6 R7 K16 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K15 ["Components"]
  GETTABLEKS R7 R8 K17 ["Constants"]
  CALL R6 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K12 ["Workspace"]
  GETTABLEKS R10 R11 K10 ["Packages"]
  GETTABLEKS R9 R10 K18 ["InExperienceCapabilities"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K18 ["InExperienceCapabilities"]
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K19 ["Flags"]
  GETTABLEKS R9 R10 K20 ["GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy"]
  CALL R8 1 1
  DUPTABLE R9 K28 [{"componentType", "getIsVisible", "getMenuItems", "getSelectedValue", "onUpdateSelectedOption", "fieldLabel", "componentName"}]
  LOADK R10 K29 ["modalSelector"]
  SETTABLEKS R10 R9 K21 ["componentType"]
  DUPCLOSURE R10 K30 [PROTO_0]
  SETTABLEKS R10 R9 K22 ["getIsVisible"]
  DUPCLOSURE R10 K31 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K23 ["getMenuItems"]
  DUPCLOSURE R10 K32 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K24 ["getSelectedValue"]
  DUPCLOSURE R10 K33 [PROTO_4]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K25 ["onUpdateSelectedOption"]
  LOADK R10 K34 ["WhichPerson"]
  SETTABLEKS R10 R9 K26 ["fieldLabel"]
  LOADK R10 K35 ["PlayerSelector"]
  SETTABLEKS R10 R9 K27 ["componentName"]
  RETURN R9 1
