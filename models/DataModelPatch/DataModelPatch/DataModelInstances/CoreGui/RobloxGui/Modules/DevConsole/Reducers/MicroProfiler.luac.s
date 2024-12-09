PROTO_0:
  MOVE R2 R0
  JUMPIF R2 [+7]
  DUPTABLE R2 K2 [{"waitingForRecording", "lastFileOutputLocation"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["waitingForRecording"]
  LOADK R3 K3 [""]
  SETTABLEKS R3 R2 K1 ["lastFileOutputLocation"]
  GETTABLEKS R3 R1 K4 ["type"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["name"]
  JUMPIFNOTEQ R3 R4 [+17]
  DUPTABLE R3 K2 [{"waitingForRecording", "lastFileOutputLocation"}]
  GETTABLEKS R4 R1 K0 ["waitingForRecording"]
  SETTABLEKS R4 R3 K0 ["waitingForRecording"]
  GETTABLEKS R4 R1 K1 ["lastFileOutputLocation"]
  SETTABLEKS R4 R3 K1 ["lastFileOutputLocation"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["JoinDictionaries"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  RETURN R4 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Immutable"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["SetRCCProfilerState"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R2 1
