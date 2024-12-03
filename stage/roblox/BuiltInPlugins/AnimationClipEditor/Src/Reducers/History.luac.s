PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"Past"}]
  GETTABLEKS R5 R1 K4 ["past"]
  SETTABLEKS R5 R4 K2 ["Past"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"Future"}]
  GETTABLEKS R5 R1 K4 ["future"]
  SETTABLEKS R5 R4 K2 ["Future"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"MaxWaypointSize"}]
  GETTABLEKS R5 R1 K4 ["maxSize"]
  SETTABLEKS R5 R4 K2 ["MaxWaypointSize"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K12 ["createReducer"]
  DUPTABLE R5 K16 [{"Past", "Future", "MaxWaypointSize"}]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K13 ["Past"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K14 ["Future"]
  GETTABLEKS R6 R3 K17 ["MAX_WAYPOINT_SIZE"]
  SETTABLEKS R6 R5 K15 ["MaxWaypointSize"]
  DUPTABLE R6 K21 [{"SetPast", "SetFuture", "SetMaxWaypointSize"}]
  DUPCLOSURE R7 K22 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K18 ["SetPast"]
  DUPCLOSURE R7 K23 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K19 ["SetFuture"]
  DUPCLOSURE R7 K24 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K20 ["SetMaxWaypointSize"]
  CALL R4 2 -1
  RETURN R4 -1