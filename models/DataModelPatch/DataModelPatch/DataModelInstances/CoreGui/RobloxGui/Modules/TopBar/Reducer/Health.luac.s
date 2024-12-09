PROTO_0:
  DUPTABLE R2 K3 [{"isDead", "currentHealth", "maxHealth"}]
  GETTABLEKS R3 R0 K0 ["isDead"]
  SETTABLEKS R3 R2 K0 ["isDead"]
  GETTABLEKS R3 R1 K4 ["health"]
  SETTABLEKS R3 R2 K1 ["currentHealth"]
  GETTABLEKS R3 R1 K2 ["maxHealth"]
  SETTABLEKS R3 R2 K2 ["maxHealth"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R2 K3 [{"isDead", "currentHealth", "maxHealth"}]
  GETTABLEKS R3 R1 K0 ["isDead"]
  SETTABLEKS R3 R2 K0 ["isDead"]
  GETTABLEKS R3 R0 K1 ["currentHealth"]
  SETTABLEKS R3 R2 K1 ["currentHealth"]
  GETTABLEKS R3 R0 K2 ["maxHealth"]
  SETTABLEKS R3 R2 K2 ["maxHealth"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R5 K9 [script]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K10 ["Parent"]
  GETTABLEKS R2 R3 K11 ["Actions"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K12 ["UpdateHealth"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K13 ["SetIsDead"]
  CALL R4 1 1
  DUPTABLE R5 K17 [{"isDead", "currentHealth", "maxHealth"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K14 ["isDead"]
  LOADN R6 100
  SETTABLEKS R6 R5 K15 ["currentHealth"]
  LOADN R6 100
  SETTABLEKS R6 R5 K16 ["maxHealth"]
  GETTABLEKS R6 R1 K18 ["createReducer"]
  MOVE R7 R5
  NEWTABLE R8 2 0
  GETTABLEKS R9 R3 K19 ["name"]
  DUPCLOSURE R10 K20 [PROTO_0]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R4 K19 ["name"]
  DUPCLOSURE R10 K21 [PROTO_1]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  RETURN R6 1
