PROTO_0:
  GETTABLEKS R2 R1 K0 ["promptState"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["None"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Error"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["PurchaseInProgress"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["RobuxUpsell"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["CorePackages"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Workspace"]
  GETTABLEKS R4 R5 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["PurchasePromptDeps"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["Rodux"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K13 ["Actions"]
  GETTABLEKS R5 R6 K14 ["SetPromptState"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K13 ["Actions"]
  GETTABLEKS R6 R7 K15 ["CompleteRequest"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K13 ["Actions"]
  GETTABLEKS R7 R8 K16 ["ErrorOccurred"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R0 K13 ["Actions"]
  GETTABLEKS R8 R9 K17 ["StartPurchase"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R0 K13 ["Actions"]
  GETTABLEKS R9 R10 K18 ["PromptNativeUpsell"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R11 R0 K19 ["Enums"]
  GETTABLEKS R10 R11 K20 ["PromptState"]
  CALL R9 1 1
  GETTABLEKS R10 R3 K21 ["createReducer"]
  GETTABLEKS R11 R9 K22 ["None"]
  NEWTABLE R12 8 0
  GETTABLEKS R13 R4 K23 ["name"]
  DUPCLOSURE R14 K24 [PROTO_0]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R5 K23 ["name"]
  DUPCLOSURE R14 K25 [PROTO_1]
  CAPTURE VAL R9
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R6 K23 ["name"]
  DUPCLOSURE R14 K26 [PROTO_2]
  CAPTURE VAL R9
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R7 K23 ["name"]
  DUPCLOSURE R14 K27 [PROTO_3]
  CAPTURE VAL R9
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R8 K23 ["name"]
  DUPCLOSURE R14 K28 [PROTO_4]
  CAPTURE VAL R9
  SETTABLE R14 R12 R13
  CALL R10 2 1
  RETURN R10 1
