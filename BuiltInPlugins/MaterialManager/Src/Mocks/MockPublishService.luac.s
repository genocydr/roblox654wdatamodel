PROTO_0:
  NEWTABLE R0 0 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K1 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_1:
  PREPVARARGS 1
  DUPTABLE R1 K1 [{"AssetId"}]
  LOADK R2 K2 ["123"]
  SETTABLEKS R2 R1 K0 ["AssetId"]
  RETURN R1 1

PROTO_2:
  MOVE R2 R0
  GETUPVAL R3 0
  GETUPVAL R6 1
  FASTCALL1 TABLE_UNPACK R6 [+2]
  GETIMPORT R5 K1 [unpack]
  CALL R5 1 -1
  NAMECALL R3 R3 K2 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync_Impl"]
  CALL R3 -1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  PREPVARARGS 1
  NEWTABLE R1 0 0
  GETVARARGS R2 -1
  SETLIST R1 R2 -1 [1]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R1 R2 K8 ["Promise"]
  NEWTABLE R2 4 0
  SETTABLEKS R2 R2 K9 ["__index"]
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K11 ["new"]
  DUPCLOSURE R3 K12 [PROTO_1]
  SETTABLEKS R3 R2 K13 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync_Impl"]
  DUPCLOSURE R3 K14 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K15 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
  RETURN R2 1
