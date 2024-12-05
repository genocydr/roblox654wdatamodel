PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["Clipboard"]
  GETTABLEKS R3 R1 K3 ["AnimationData"]
  GETTABLEKS R4 R1 K4 ["EditorMode"]
  JUMPIFNOT R3 [+1]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R5 0
  MOVE R6 R3
  CALL R5 1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["isChannelAnimation"]
  MOVE R7 R5
  CALL R6 1 1
  LOADNIL R7
  GETIMPORT R8 K7 [pairs]
  MOVE R9 R2
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETIMPORT R13 K7 [pairs]
  MOVE R14 R12
  CALL R13 1 3
  FORGPREP_NEXT R13
  GETIMPORT R18 K7 [pairs]
  GETTABLEKS R19 R17 K8 ["Data"]
  CALL R18 1 3
  FORGPREP_NEXT R18
  JUMPIFNOT R7 [+8]
  FASTCALL2 MATH_MIN R7 R21 [+5]
  MOVE R24 R7
  MOVE R25 R21
  GETIMPORT R23 K11 [math.min]
  CALL R23 2 1
  JUMPIF R23 [+1]
  MOVE R23 R21
  MOVE R7 R23
  FORGLOOP R18 2 [-12]
  FORGLOOP R13 2 [-20]
  FORGLOOP R8 2 [-27]
  GETIMPORT R8 K7 [pairs]
  MOVE R9 R2
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETTABLEKS R14 R5 K12 ["Instances"]
  GETTABLE R13 R14 R11
  GETIMPORT R14 K14 [ipairs]
  MOVE R15 R12
  CALL R14 1 3
  FORGPREP_INEXT R14
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K15 ["List"]
  GETTABLEKS R19 R20 K16 ["join"]
  NEWTABLE R20 0 1
  GETTABLEKS R21 R18 K17 ["TopTrackName"]
  SETLIST R20 R21 1 [1]
  GETTABLEKS R21 R18 K18 ["RelPath"]
  CALL R19 2 1
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K19 ["getTrack"]
  MOVE R21 R5
  MOVE R22 R11
  NEWTABLE R23 0 1
  GETTABLEKS R24 R18 K17 ["TopTrackName"]
  SETLIST R23 R24 1 [1]
  CALL R20 3 1
  JUMPIFNOTEQKNIL R20 [+31]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K20 ["addTrack"]
  GETTABLEKS R22 R13 K21 ["Tracks"]
  GETTABLEKS R23 R18 K17 ["TopTrackName"]
  GETTABLEKS R24 R18 K22 ["TopTrackType"]
  MOVE R25 R6
  GETTABLEKS R26 R18 K23 ["RotationType"]
  GETTABLEKS R27 R18 K24 ["EulerAnglesOrder"]
  CALL R21 6 0
  GETUPVAL R23 3
  MOVE R24 R11
  GETTABLEKS R25 R18 K17 ["TopTrackName"]
  GETTABLEKS R26 R18 K22 ["TopTrackType"]
  GETTABLEKS R27 R18 K23 ["RotationType"]
  GETTABLEKS R28 R18 K24 ["EulerAnglesOrder"]
  GETUPVAL R29 4
  CALL R23 6 -1
  NAMECALL R21 R0 K25 ["dispatch"]
  CALL R21 -1 0
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K19 ["getTrack"]
  MOVE R22 R5
  MOVE R23 R11
  MOVE R24 R19
  CALL R21 3 1
  JUMPIFNOT R21 [+42]
  GETTABLEKS R22 R21 K26 ["Type"]
  GETTABLEKS R23 R18 K26 ["Type"]
  JUMPIFNOTEQ R22 R23 [+37]
  GETIMPORT R22 K7 [pairs]
  GETTABLEKS R23 R18 K8 ["Data"]
  CALL R22 1 3
  FORGPREP_NEXT R22
  GETUPVAL R28 5
  SUB R29 R25 R7
  ADD R27 R28 R29
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K27 ["addKeyframe"]
  MOVE R29 R21
  MOVE R30 R27
  MOVE R31 R26
  CALL R28 3 0
  GETUPVAL R28 4
  LOADK R30 K28 ["onAddKeyframe"]
  GETTABLEKS R31 R18 K17 ["TopTrackName"]
  MOVE R32 R4
  GETTABLEKS R34 R5 K29 ["Metadata"]
  JUMPIFNOT R34 [+5]
  GETTABLEKS R34 R5 K29 ["Metadata"]
  GETTABLEKS R33 R34 K30 ["Guid"]
  JUMP [+1]
  LOADNIL R33
  NAMECALL R28 R28 K31 ["report"]
  CALL R28 5 0
  FORGLOOP R22 2 [-28]
  JUMP [+7]
  GETUPVAL R24 6
  LOADK R25 K32 ["CannotPasteError"]
  LOADB R26 1
  CALL R24 2 -1
  NAMECALL R22 R0 K25 ["dispatch"]
  CALL R22 -1 0
  FORGLOOP R14 2 [inext] [-116]
  FORGLOOP R8 2 [-126]
  GETUPVAL R10 7
  MOVE R11 R5
  CALL R10 1 -1
  NAMECALL R8 R0 K25 ["dispatch"]
  CALL R8 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["deepCopy"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["AnimationData"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K12 ["Thunks"]
  GETTABLEKS R5 R6 K13 ["UpdateAnimationData"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K12 ["Thunks"]
  GETTABLEKS R6 R7 K14 ["AddTrack"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K15 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K16 ["Actions"]
  GETTABLEKS R8 R9 K17 ["SetNotification"]
  CALL R7 1 1
  DUPCLOSURE R8 K18 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R4
  RETURN R8 1