PROTO_0:
  JUMPIFNOTEQKS R0 K0 ["UserHasSpendLimitSet"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["SubscriptionExceededUserSpendLimit"]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K2 ["UnsupportedLocale"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["SubscriptionUnsupportedLocale"]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K4 ["RestrictedUser"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["RestrictedUser"]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K5 ["PurchasePlatformNotSupported"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["SubscriptionPurchasePlatformNotSupported"]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K7 ["InvalidSaleLocation"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["SubscriptionInvalidSaleLocation"]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K9 ["UserAlreadySubscribed"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["AlreadySubscribed"]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K11 ["ProductNotForSale"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K12 ["SubscriptionNotForSale"]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K13 ["VpcRequired"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K13 ["VpcRequired"]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K14 ["ExceedParentalSpendLimit"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K14 ["ExceedParentalSpendLimit"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K15 ["UnknownFailure"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Enums"]
  GETTABLEKS R2 R3 K6 ["PurchaseError"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
