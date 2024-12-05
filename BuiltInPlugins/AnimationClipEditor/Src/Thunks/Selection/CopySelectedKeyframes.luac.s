PROTO_0:
  GETTABLEKS R3 R0 K0 ["Selection"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R3 R1 K1 ["Data"]
  JUMPIF R3 [+1]
  RETURN R0 0
  DUPTABLE R3 K8 [{"TopTrackName", "TopTrackType", "RelPath", "Type", "RotationType", "EulerAnglesOrder", "Data"}]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K2 ["TopTrackName"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["Type"]
  SETTABLEKS R4 R3 K3 ["TopTrackType"]
  SETTABLEKS R2 R3 K4 ["RelPath"]
  GETTABLEKS R4 R1 K5 ["Type"]
  SETTABLEKS R4 R3 K5 ["Type"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K9 ["getRotationType"]
  GETUPVAL R5 1
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["RotationType"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K10 ["getEulerAnglesOrder"]
  GETUPVAL R5 1
  CALL R4 1 1
  SETTABLEKS R4 R3 K7 ["EulerAnglesOrder"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K1 ["Data"]
  GETIMPORT R4 K12 [pairs]
  GETTABLEKS R5 R0 K0 ["Selection"]
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R10 R1 K1 ["Data"]
  GETTABLE R9 R10 R7
  JUMPIFNOT R9 [+6]
  GETTABLEKS R10 R3 K1 ["Data"]
  GETUPVAL R11 3
  MOVE R12 R9
  CALL R11 1 1
  SETTABLE R11 R10 R7
  FORGLOOP R4 2 [-11]
  GETUPVAL R5 4
  FASTCALL2 TABLE_INSERT R5 R3 [+4]
  MOVE R6 R3
  GETIMPORT R4 K15 [table.insert]
  CALL R4 2 0
  RETURN R0 0

PROTO_1:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["SelectedKeyframes"]
  GETTABLEKS R3 R1 K3 ["AnimationData"]
  JUMPIFNOT R3 [+1]
  JUMPIF R2 [+1]
  RETURN R0 0
  NEWTABLE R4 0 0
  GETIMPORT R5 K5 [pairs]
  MOVE R6 R2
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETTABLEKS R11 R3 K6 ["Instances"]
  GETTABLE R10 R11 R8
  NEWTABLE R11 0 0
  GETIMPORT R12 K5 [pairs]
  MOVE R13 R9
  CALL R12 1 3
  FORGPREP_NEXT R12
  GETTABLEKS R18 R10 K7 ["Tracks"]
  GETTABLE R17 R18 R15
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K8 ["traverse"]
  MOVE R19 R16
  MOVE R20 R17
  NEWCLOSURE R21 P0
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R11
  CALL R18 3 0
  FORGLOOP R12 2 [-16]
  SETTABLE R11 R4 R8
  FORGLOOP R5 2 [-29]
  GETUPVAL R5 3
  MOVE R6 R4
  CALL R5 1 1
  JUMPIF R5 [+5]
  GETUPVAL R5 4
  LOADK R7 K9 [""]
  NAMECALL R5 R5 K10 ["CopyToClipboard"]
  CALL R5 2 0
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K11 ["isChannelAnimation"]
  MOVE R7 R3
  CALL R6 1 1
  JUMPIFNOT R6 [+6]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K12 ["CLIPBOARD_TYPE"]
  GETTABLEKS R5 R6 K13 ["Channels"]
  JUMPIF R5 [+5]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K12 ["CLIPBOARD_TYPE"]
  GETTABLEKS R5 R6 K14 ["Keyframes"]
  GETUPVAL R8 7
  MOVE R9 R4
  MOVE R10 R5
  CALL R8 2 -1
  NAMECALL R6 R0 K15 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_2:
  DUPCLOSURE R0 K0 [PROTO_1]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationClipEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["deepCopy"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K13 ["isEmpty"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K10 ["Src"]
  GETTABLEKS R6 R7 K14 ["Actions"]
  GETTABLEKS R5 R6 K15 ["SetClipboard"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K16 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETTABLEKS R7 R8 K17 ["AnimationData"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["Util"]
  GETTABLEKS R8 R9 K18 ["SelectionUtils"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K10 ["Src"]
  GETTABLEKS R10 R11 K11 ["Util"]
  GETTABLEKS R9 R10 K19 ["TrackUtils"]
  CALL R8 1 1
  DUPCLOSURE R9 K20 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R9 1