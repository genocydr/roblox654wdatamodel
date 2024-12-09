PROTO_0:
  DUPTABLE R2 K3 [{"_eventStreamImpl", "_target", "_context"}]
  SETTABLEKS R0 R2 K0 ["_eventStreamImpl"]
  LOADK R3 K4 ["EventIngest"]
  SETTABLEKS R3 R2 K1 ["_target"]
  ORK R3 R1 K5 ["SettingsHub"]
  SETTABLEKS R3 R2 K2 ["_context"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K7 [setmetatable]
  CALL R3 2 0
  RETURN R2 1

PROTO_1:
  JUMPIFNOT R1 [+4]
  NAMECALL R2 R0 K0 ["onMuteAll"]
  CALL R2 1 0
  RETURN R0 0
  NAMECALL R2 R0 K1 ["onUnmuteAll"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R1 [+4]
  NAMECALL R2 R0 K0 ["onMuteSelf"]
  CALL R2 1 0
  RETURN R0 0
  NAMECALL R2 R0 K1 ["onUnmuteSelf"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  JUMPIFNOT R2 [+5]
  MOVE R5 R1
  NAMECALL R3 R0 K0 ["onMutePlayer"]
  CALL R3 2 0
  RETURN R0 0
  MOVE R5 R1
  NAMECALL R3 R0 K1 ["onUnmutePlayer"]
  CALL R3 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["VoiceAnalytics"]
  GETTABLEKS R1 R2 K1 ["MuteSelf"]
  GETTABLEKS R2 R0 K2 ["_eventStreamImpl"]
  GETTABLEKS R4 R0 K3 ["_target"]
  GETTABLEKS R5 R0 K4 ["_context"]
  MOVE R6 R1
  NEWTABLE R7 0 0
  NAMECALL R2 R2 K5 ["setRBXEventStream"]
  CALL R2 5 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["VoiceAnalytics"]
  GETTABLEKS R1 R2 K1 ["UnmuteSelf"]
  GETTABLEKS R2 R0 K2 ["_eventStreamImpl"]
  GETTABLEKS R4 R0 K3 ["_target"]
  GETTABLEKS R5 R0 K4 ["_context"]
  MOVE R6 R1
  NEWTABLE R7 0 0
  NAMECALL R2 R2 K5 ["setRBXEventStream"]
  CALL R2 5 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["VoiceAnalytics"]
  GETTABLEKS R1 R2 K1 ["MuteAll"]
  GETTABLEKS R2 R0 K2 ["_eventStreamImpl"]
  GETTABLEKS R4 R0 K3 ["_target"]
  GETTABLEKS R5 R0 K4 ["_context"]
  MOVE R6 R1
  NEWTABLE R7 0 0
  NAMECALL R2 R2 K5 ["setRBXEventStream"]
  CALL R2 5 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["VoiceAnalytics"]
  GETTABLEKS R1 R2 K1 ["UnmuteAll"]
  GETTABLEKS R2 R0 K2 ["_eventStreamImpl"]
  GETTABLEKS R4 R0 K3 ["_target"]
  GETTABLEKS R5 R0 K4 ["_context"]
  MOVE R6 R1
  NEWTABLE R7 0 0
  NAMECALL R2 R2 K5 ["setRBXEventStream"]
  CALL R2 5 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["VoiceAnalytics"]
  GETTABLEKS R2 R3 K1 ["MutePlayer"]
  GETTABLEKS R3 R0 K2 ["_eventStreamImpl"]
  GETTABLEKS R5 R0 K3 ["_target"]
  GETTABLEKS R6 R0 K4 ["_context"]
  MOVE R7 R2
  DUPTABLE R8 K6 [{"mutedUserId"}]
  SETTABLEKS R1 R8 K5 ["mutedUserId"]
  NAMECALL R3 R3 K7 ["setRBXEventStream"]
  CALL R3 5 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["VoiceAnalytics"]
  GETTABLEKS R2 R3 K1 ["UnmutePlayer"]
  GETTABLEKS R3 R0 K2 ["_eventStreamImpl"]
  GETTABLEKS R5 R0 K3 ["_target"]
  GETTABLEKS R6 R0 K4 ["_context"]
  MOVE R7 R2
  DUPTABLE R8 K6 [{"mutedUserId"}]
  SETTABLEKS R1 R8 K5 ["mutedUserId"]
  NAMECALL R3 R3 K7 ["setRBXEventStream"]
  CALL R3 5 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["Resources"]
  GETTABLEKS R1 R2 K6 ["Constants"]
  CALL R0 1 1
  NEWTABLE R1 16 0
  SETTABLEKS R1 R1 K7 ["__index"]
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K9 ["new"]
  DUPCLOSURE R2 K10 [PROTO_1]
  SETTABLEKS R2 R1 K11 ["onToggleMuteAll"]
  DUPCLOSURE R2 K12 [PROTO_2]
  SETTABLEKS R2 R1 K13 ["onToggleMuteSelf"]
  DUPCLOSURE R2 K14 [PROTO_3]
  SETTABLEKS R2 R1 K15 ["onToggleMutePlayer"]
  DUPCLOSURE R2 K16 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K17 ["onMuteSelf"]
  DUPCLOSURE R2 K18 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K19 ["onUnmuteSelf"]
  DUPCLOSURE R2 K20 [PROTO_6]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K21 ["onMuteAll"]
  DUPCLOSURE R2 K22 [PROTO_7]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K23 ["onUnmuteAll"]
  DUPCLOSURE R2 K24 [PROTO_8]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K25 ["onMutePlayer"]
  DUPCLOSURE R2 K26 [PROTO_9]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K27 ["onUnmutePlayer"]
  RETURN R1 1
