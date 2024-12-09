MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["createEnum"]
  CALL R0 1 1
  MOVE R1 R0
  LOADK R2 K6 ["PurchaseWarning"]
  NEWTABLE R3 0 6
  LOADK R4 K7 ["NoAction"]
  LOADK R5 K8 ["U13PaymentModal"]
  LOADK R6 K9 ["U13MonthlyThreshold1Modal"]
  LOADK R7 K10 ["RequireEmailVerification"]
  LOADK R8 K11 ["U13MonthlyThreshold2Modal"]
  LOADK R9 K12 ["ParentalConsentWarningPaymentModal13To17"]
  SETLIST R3 R4 6 [1]
  CALL R1 2 1
  RETURN R1 1
