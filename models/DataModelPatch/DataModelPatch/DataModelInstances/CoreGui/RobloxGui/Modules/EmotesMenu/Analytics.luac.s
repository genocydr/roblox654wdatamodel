PROTO_0:
  DUPTABLE R0 K1 [{"eventStreamImpl"}]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["eventStreamImpl"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K3 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_1:
  SETTABLEKS R1 R0 K0 ["eventStreamImpl"]
  RETURN R0 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["EventName"]
  GETTABLEKS R1 R2 K1 ["MenuOpened"]
  DUPTABLE R2 K5 [{"pid", "uid", "btid"}]
  GETIMPORT R5 K7 [game]
  GETTABLEKS R4 R5 K8 ["PlaceId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K10 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["pid"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["LocalPlayer"]
  GETTABLEKS R4 R5 K12 ["UserId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K10 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["uid"]
  GETUPVAL R3 1
  NAMECALL R3 R3 K13 ["GetBrowserTrackerId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["btid"]
  NAMECALL R3 R0 K14 ["_getEventStream"]
  CALL R3 1 1
  LOADK R5 K15 ["emoteMenu"]
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K16 ["setRBXEventStream"]
  CALL R3 4 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R4 R0 K0 ["EventName"]
  GETTABLEKS R3 R4 K1 ["EmotePlayed"]
  DUPTABLE R4 K7 [{"pid", "uid", "btid", "slotNumber", "assetID"}]
  GETIMPORT R7 K9 [game]
  GETTABLEKS R6 R7 K10 ["PlaceId"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K12 [tostring]
  CALL R5 1 1
  SETTABLEKS R5 R4 K2 ["pid"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K13 ["LocalPlayer"]
  GETTABLEKS R6 R7 K14 ["UserId"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K12 [tostring]
  CALL R5 1 1
  SETTABLEKS R5 R4 K3 ["uid"]
  GETUPVAL R5 1
  NAMECALL R5 R5 K15 ["GetBrowserTrackerId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K4 ["btid"]
  SETTABLEKS R1 R4 K5 ["slotNumber"]
  SETTABLEKS R2 R4 K6 ["assetID"]
  NAMECALL R5 R0 K16 ["_getEventStream"]
  CALL R5 1 1
  LOADK R7 K17 ["emoteMenu"]
  MOVE R8 R3
  MOVE R9 R4
  NAMECALL R5 R5 K18 ["setRBXEventStream"]
  CALL R5 4 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R5 R0 K0 ["EventName"]
  GETTABLEKS R4 R5 K1 ["EmoteFailed"]
  DUPTABLE R5 K9 [{"pid", "uid", "btid", "slotNumber", "assetID", "errorType", "invokedByCoreGui"}]
  GETIMPORT R8 K11 [game]
  GETTABLEKS R7 R8 K12 ["PlaceId"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K14 [tostring]
  CALL R6 1 1
  SETTABLEKS R6 R5 K2 ["pid"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K15 ["LocalPlayer"]
  GETTABLEKS R7 R8 K16 ["UserId"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K14 [tostring]
  CALL R6 1 1
  SETTABLEKS R6 R5 K3 ["uid"]
  GETUPVAL R6 1
  NAMECALL R6 R6 K17 ["GetBrowserTrackerId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K4 ["btid"]
  SETTABLEKS R1 R5 K5 ["slotNumber"]
  SETTABLEKS R2 R5 K6 ["assetID"]
  SETTABLEKS R3 R5 K7 ["errorType"]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["invokedByCoreGui"]
  NAMECALL R6 R0 K18 ["_getEventStream"]
  CALL R6 1 1
  LOADK R8 K19 ["emoteMenu"]
  MOVE R9 R4
  MOVE R10 R5
  NAMECALL R6 R6 K20 ["setRBXEventStream"]
  CALL R6 4 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["eventStreamImpl"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["EventStream implementation not found. Did you forget to construct withEventStream?"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K0 ["eventStreamImpl"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Stats"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  NEWTABLE R2 8 0
  SETTABLEKS R2 R2 K5 ["__index"]
  DUPTABLE R3 K9 [{"MenuOpened", "EmotePlayed", "EmoteFailed"}]
  LOADK R4 K10 ["emoteMenuOpened"]
  SETTABLEKS R4 R3 K6 ["MenuOpened"]
  LOADK R4 K11 ["emoteTriggered"]
  SETTABLEKS R4 R3 K7 ["EmotePlayed"]
  LOADK R4 K12 ["emoteTriggerFailed"]
  SETTABLEKS R4 R3 K8 ["EmoteFailed"]
  SETTABLEKS R3 R2 K13 ["EventName"]
  DUPCLOSURE R3 K14 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K15 ["new"]
  DUPCLOSURE R3 K16 [PROTO_1]
  SETTABLEKS R3 R2 K17 ["withEventStream"]
  DUPCLOSURE R3 K18 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K19 ["onMenuOpened"]
  DUPCLOSURE R3 K20 [PROTO_3]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K21 ["onEmotePlayed"]
  DUPCLOSURE R3 K22 [PROTO_4]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K23 ["onEmoteFailed"]
  DUPCLOSURE R3 K24 [PROTO_5]
  SETTABLEKS R3 R2 K25 ["_getEventStream"]
  RETURN R2 1
