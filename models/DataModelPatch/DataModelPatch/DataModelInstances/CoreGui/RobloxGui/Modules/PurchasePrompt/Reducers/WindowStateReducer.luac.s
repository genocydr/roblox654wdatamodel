PROTO_0:
  GETTABLEKS R2 R1 K0 ["promptState"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["None"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Hidden"]
  RETURN R2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["Shown"]
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["state"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Shown"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Shown"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Shown"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Hidden"]
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
  GETTABLEKS R11 R0 K13 ["Actions"]
  GETTABLEKS R10 R11 K19 ["SetWindowState"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R0 K20 ["Enums"]
  GETTABLEKS R11 R12 K21 ["WindowState"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R13 R0 K20 ["Enums"]
  GETTABLEKS R12 R13 K22 ["PromptState"]
  CALL R11 1 1
  GETTABLEKS R12 R3 K23 ["createReducer"]
  GETTABLEKS R13 R10 K24 ["Hidden"]
  NEWTABLE R14 8 0
  GETTABLEKS R15 R4 K25 ["name"]
  DUPCLOSURE R16 K26 [PROTO_0]
  CAPTURE VAL R11
  CAPTURE VAL R10
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R9 K25 ["name"]
  DUPCLOSURE R16 K27 [PROTO_1]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R6 K25 ["name"]
  DUPCLOSURE R16 K28 [PROTO_2]
  CAPTURE VAL R10
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R7 K25 ["name"]
  DUPCLOSURE R16 K29 [PROTO_3]
  CAPTURE VAL R10
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R8 K25 ["name"]
  DUPCLOSURE R16 K30 [PROTO_4]
  CAPTURE VAL R10
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R5 K25 ["name"]
  DUPCLOSURE R16 K31 [PROTO_5]
  CAPTURE VAL R10
  SETTABLE R16 R14 R15
  CALL R12 2 -1
  RETURN R12 -1
