PROTO_0:
  GETTABLEKS R2 R1 K0 ["collectibleItemId"]
  NEWTABLE R3 0 0
  GETTABLEKS R4 R1 K1 ["collectibleItemInstances"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["fromGetCollectibleItemInstances"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K3 ["collectibleInstanceId"]
  SETTABLE R9 R3 R10
  FORGLOOP R4 2 [-9]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["Dictionary"]
  GETTABLEKS R4 R5 K5 ["join"]
  MOVE R5 R0
  NEWTABLE R6 1 0
  SETTABLE R3 R6 R2
  CALL R4 2 -1
  RETURN R4 -1

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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R5 K10 [script]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Parent"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R3 K12 ["Actions"]
  GETTABLEKS R5 R6 K13 ["SetCollectibleResellableInstances"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R3 K14 ["Models"]
  GETTABLEKS R6 R7 K15 ["CollectibleInstance"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K16 ["createReducer"]
  NEWTABLE R7 0 0
  NEWTABLE R8 1 0
  GETTABLEKS R9 R4 K17 ["name"]
  DUPCLOSURE R10 K18 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLE R10 R8 R9
  CALL R6 2 -1
  RETURN R6 -1