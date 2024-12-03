PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["CountryRegion"]
  GETTABLEKS R2 R3 K2 ["countryRegionTable"]
  GETUPVAL R3 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["COUNTRY_REGION_SETTING_KEY"]
  NAMECALL R3 R3 K4 ["GetSetting"]
  CALL R3 2 1
  JUMPIFNOT R3 [+6]
  GETTABLE R4 R2 R3
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 2
  SETTABLEKS R3 R4 K5 ["EmulatedCountryCode"]
  RETURN R0 0
  GETUPVAL R6 3
  GETUPVAL R7 4
  CALL R6 1 -1
  NAMECALL R4 R0 K6 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["PlayerEmulatorService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R7 R1 K9 ["Src"]
  GETTABLEKS R6 R7 K12 ["Networking"]
  GETTABLEKS R5 R6 K13 ["Requests"]
  GETTABLEKS R4 R5 K14 ["GetUserCountryRegionCode"]
  CALL R3 1 1
  DUPCLOSURE R4 K15 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R3
  RETURN R4 1