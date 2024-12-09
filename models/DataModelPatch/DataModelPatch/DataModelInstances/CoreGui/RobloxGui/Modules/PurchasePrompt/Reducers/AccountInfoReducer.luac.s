PROTO_0:
  GETTABLEKS R2 R1 K0 ["accountInfo"]
  DUPTABLE R3 K3 [{"balance", "membershipType"}]
  GETTABLEKS R4 R0 K1 ["balance"]
  SETTABLEKS R4 R3 K1 ["balance"]
  GETTABLEKS R5 R2 K4 ["isPremium"]
  JUMPIFNOT R5 [+2]
  LOADN R4 4
  JUMP [+1]
  LOADN R4 0
  SETTABLEKS R4 R3 K2 ["membershipType"]
  RETURN R3 1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["balanceInfo"]
  DUPTABLE R3 K3 [{"balance", "membershipType"}]
  GETTABLEKS R4 R2 K4 ["robux"]
  SETTABLEKS R4 R3 K1 ["balance"]
  GETTABLEKS R4 R0 K2 ["membershipType"]
  SETTABLEKS R4 R3 K2 ["membershipType"]
  RETURN R3 1

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
  GETTABLEKS R5 R6 K14 ["AccountInfoReceived"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K13 ["Actions"]
  GETTABLEKS R6 R7 K15 ["BalanceInfoRecieved"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K16 ["createReducer"]
  NEWTABLE R7 0 0
  NEWTABLE R8 2 0
  GETTABLEKS R9 R4 K17 ["name"]
  DUPCLOSURE R10 K18 [PROTO_0]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R5 K17 ["name"]
  DUPCLOSURE R10 K19 [PROTO_1]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  RETURN R6 1