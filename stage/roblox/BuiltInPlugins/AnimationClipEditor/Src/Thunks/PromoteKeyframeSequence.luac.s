PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["AnimationData"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R3 R2 K2 ["Metadata"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R4 R2 K2 ["Metadata"]
  GETTABLEKS R3 R4 K3 ["IsChannelAnimation"]
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETTABLEKS R4 R1 K4 ["Status"]
  GETTABLEKS R3 R4 K5 ["DefaultRotationType"]
  GETTABLEKS R5 R1 K4 ["Status"]
  GETTABLEKS R4 R5 K6 ["DefaultEulerAnglesOrder"]
  GETUPVAL R7 0
  NEWTABLE R8 0 0
  CALL R7 1 -1
  NAMECALL R5 R0 K7 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R7 1
  NEWTABLE R8 0 0
  CALL R7 1 -1
  NAMECALL R5 R0 K7 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R7 2
  NEWTABLE R8 0 0
  CALL R7 1 -1
  NAMECALL R5 R0 K7 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R5 3
  MOVE R6 R2
  CALL R5 1 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K8 ["promoteToChannels"]
  MOVE R7 R5
  MOVE R8 R3
  MOVE R9 R4
  CALL R6 3 2
  GETTABLEKS R9 R1 K4 ["Status"]
  GETTABLEKS R8 R9 K9 ["Tracks"]
  GETIMPORT R9 K11 [ipairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_INEXT R9
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K12 ["createTrackListEntryComponents"]
  MOVE R15 R13
  GETTABLEKS R16 R13 K13 ["Instance"]
  MOVE R17 R3
  MOVE R18 R4
  CALL R14 4 0
  LOADNIL R14
  SETTABLEKS R14 R13 K14 ["EulerAnglesOrder"]
  FORGLOOP R9 2 [inext] [-13]
  GETUPVAL R11 6
  MOVE R12 R8
  CALL R11 1 -1
  NAMECALL R9 R0 K7 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R11 7
  MOVE R12 R5
  CALL R11 1 -1
  NAMECALL R9 R0 K7 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R9 8
  LOADK R11 K15 ["onPromoteAnimation"]
  GETTABLEKS R13 R2 K2 ["Metadata"]
  GETTABLEKS R12 R13 K16 ["Name"]
  MOVE R13 R6
  MOVE R14 R7
  GETTABLEKS R16 R2 K2 ["Metadata"]
  JUMPIFNOT R16 [+5]
  GETTABLEKS R16 R2 K2 ["Metadata"]
  GETTABLEKS R15 R16 K17 ["Guid"]
  JUMP [+1]
  LOADNIL R15
  NAMECALL R9 R9 K18 ["report"]
  CALL R9 6 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["AnimationData"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["deepCopy"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K10 ["TrackUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["Actions"]
  GETTABLEKS R5 R6 K12 ["SetFuture"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K11 ["Actions"]
  GETTABLEKS R6 R7 K13 ["SetPast"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K11 ["Actions"]
  GETTABLEKS R7 R8 K14 ["SetSelectedKeyframes"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K15 ["Thunks"]
  GETTABLEKS R8 R9 K16 ["SortAndSetTracks"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K15 ["Thunks"]
  GETTABLEKS R9 R10 K17 ["UpdateAnimationData"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K18 ["Types"]
  CALL R9 1 1
  DUPCLOSURE R10 K19 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R10 1