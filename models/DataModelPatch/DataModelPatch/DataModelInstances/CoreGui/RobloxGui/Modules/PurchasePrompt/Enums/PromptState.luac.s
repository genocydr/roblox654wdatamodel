MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["createEnum"]
  CALL R0 1 1
  MOVE R1 R0
  LOADK R2 K6 ["PromptState"]
  NEWTABLE R3 0 18
  LOADK R4 K7 ["None"]
  LOADK R5 K8 ["PremiumUpsell"]
  LOADK R6 K9 ["RobuxUpsell"]
  LOADK R7 K10 ["LargeRobuxUpsell"]
  LOADK R8 K11 ["PromptPurchase"]
  LOADK R9 K12 ["PromptSubscriptionPurchase"]
  LOADK R10 K13 ["PurchaseInProgress"]
  LOADK R11 K14 ["PollingBalance"]
  LOADK R12 K15 ["UpsellInProgress"]
  LOADK R13 K16 ["U13PaymentModal"]
  LOADK R14 K17 ["U13MonthlyThreshold1Modal"]
  LOADK R15 K18 ["U13MonthlyThreshold2Modal"]
  LOADK R16 K19 ["RequireEmailVerification"]
  LOADK R17 K20 ["ParentalConsentWarningPaymentModal13To17"]
  LOADK R18 K21 ["PurchaseComplete"]
  LOADK R19 K22 ["LeaveRobloxWarning"]
  SETLIST R3 R4 16 [1]
  LOADK R4 K23 ["EnablePurchaseVPCModal"]
  LOADK R5 K24 ["Error"]
  SETLIST R3 R4 2 [17]
  CALL R1 2 1
  RETURN R1 1
