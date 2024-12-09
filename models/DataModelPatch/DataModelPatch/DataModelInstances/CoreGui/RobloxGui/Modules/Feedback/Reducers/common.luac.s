PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"numFeedbackSubmissionAttempts"}]
  GETTABLEKS R5 R1 K2 ["numFeedbackSubmissionAttempts"]
  SETTABLEKS R5 R4 K2 ["numFeedbackSubmissionAttempts"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"showHelpModal"}]
  GETTABLEKS R5 R1 K4 ["helpModalVisible"]
  SETTABLEKS R5 R4 K2 ["showHelpModal"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"showOnboardingModal"}]
  GETTABLEKS R5 R1 K4 ["onboardingModalVisible"]
  SETTABLEKS R5 R4 K2 ["showOnboardingModal"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R5 K10 [script]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Parent"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R3 K12 ["Actions"]
  GETTABLEKS R5 R6 K13 ["IncrementFeedbackSubmissionAttempts"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R3 K12 ["Actions"]
  GETTABLEKS R6 R7 K14 ["ShowHelpModal"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R3 K12 ["Actions"]
  GETTABLEKS R7 R8 K15 ["ShowOnboardingModal"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K16 ["createReducer"]
  DUPTABLE R8 K20 [{"numFeedbackSubmissionAttempts", "showHelpModal", "showOnboardingModal"}]
  LOADNIL R9
  SETTABLEKS R9 R8 K17 ["numFeedbackSubmissionAttempts"]
  LOADB R9 0
  SETTABLEKS R9 R8 K18 ["showHelpModal"]
  LOADB R9 1
  SETTABLEKS R9 R8 K19 ["showOnboardingModal"]
  NEWTABLE R9 4 0
  GETTABLEKS R10 R4 K21 ["name"]
  DUPCLOSURE R11 K22 [PROTO_0]
  CAPTURE VAL R1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R5 K21 ["name"]
  DUPCLOSURE R11 K23 [PROTO_1]
  CAPTURE VAL R1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R6 K21 ["name"]
  DUPCLOSURE R11 K24 [PROTO_2]
  CAPTURE VAL R1
  SETTABLE R11 R9 R10
  CALL R7 2 -1
  RETURN R7 -1
