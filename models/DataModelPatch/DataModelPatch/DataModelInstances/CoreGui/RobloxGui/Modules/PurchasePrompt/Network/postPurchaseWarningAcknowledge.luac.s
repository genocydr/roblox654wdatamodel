PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["UserActionType"]
  GETTABLEKS R2 R3 K1 ["toRawValue"]
  MOVE R3 R1
  CALL R2 1 1
  GETTABLEKS R3 R0 K2 ["postPurchaseWarningAcknowledge"]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1

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
  GETTABLEKS R3 R2 K12 ["enumerate"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K13 ["Utils"]
  GETTABLEKS R5 R6 K14 ["addRawValueMethodToEnum"]
  CALL R4 1 1
  NEWTABLE R5 2 0
  DUPTABLE R6 K20 [{"None", "ConfirmedU13PaymentModal", "ConfirmedU13MonthlyThreshold1Modal", "ConfirmedU13MonthlyThreshold2Modal", "ConfirmedParentalConsentWarningPaymentModal13To17"}]
  LOADK R7 K15 ["None"]
  SETTABLEKS R7 R6 K15 ["None"]
  LOADK R7 K16 ["ConfirmedU13PaymentModal"]
  SETTABLEKS R7 R6 K16 ["ConfirmedU13PaymentModal"]
  LOADK R7 K17 ["ConfirmedU13MonthlyThreshold1Modal"]
  SETTABLEKS R7 R6 K17 ["ConfirmedU13MonthlyThreshold1Modal"]
  LOADK R7 K18 ["ConfirmedU13MonthlyThreshold2Modal"]
  SETTABLEKS R7 R6 K18 ["ConfirmedU13MonthlyThreshold2Modal"]
  LOADK R7 K19 ["ConfirmedParentalConsentWarningPaymentModal13To17"]
  SETTABLEKS R7 R6 K19 ["ConfirmedParentalConsentWarningPaymentModal13To17"]
  MOVE R7 R3
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K21 ["Name"]
  MOVE R9 R6
  CALL R7 2 1
  SETTABLEKS R7 R5 K22 ["UserActionType"]
  MOVE R7 R4
  GETTABLEKS R8 R5 K22 ["UserActionType"]
  MOVE R9 R6
  CALL R7 2 0
  DUPCLOSURE R7 K23 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R7 R5 K24 ["Post"]
  RETURN R5 1
