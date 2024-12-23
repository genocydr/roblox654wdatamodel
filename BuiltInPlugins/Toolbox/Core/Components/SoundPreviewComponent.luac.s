PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ref"]
  GETTABLEKS R2 R3 K1 ["current"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R3 R2 K2 ["IsLoaded"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["props"]
  GETTABLEKS R4 R5 K4 ["isLoaded"]
  JUMPIFEQ R3 R4 [+10]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["props"]
  GETTABLEKS R3 R4 K5 ["setSoundLoaded"]
  GETTABLEKS R5 R2 K2 ["IsLoaded"]
  NOT R4 R5
  CALL R3 1 0
  JUMPIFNOTEQKS R1 K6 ["TimeLength"] [+19]
  GETTABLEKS R3 R2 K6 ["TimeLength"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["props"]
  GETTABLEKS R4 R5 K7 ["totalTime"]
  JUMPIFEQ R3 R4 [+10]
  GETTABLEKS R3 R2 K6 ["TimeLength"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["props"]
  GETTABLEKS R4 R5 K8 ["setSoundTotalTime"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ref"]
  GETTABLEKS R0 R1 K1 ["current"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["currentSoundId"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["props"]
  GETTABLEKS R2 R3 K4 ["isPlaying"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["lastSoundId"]
  JUMPIFEQKN R1 K6 [0] [+2]
  JUMPIF R2 [+7]
  GETTABLEKS R4 R0 K4 ["isPlaying"]
  JUMPIFNOT R4 [+26]
  LOADB R4 0
  SETTABLEKS R4 R0 K7 ["Playing"]
  RETURN R0 0
  JUMPIFNOTEQ R1 R3 [+5]
  LOADB R4 1
  SETTABLEKS R4 R0 K7 ["Playing"]
  RETURN R0 0
  LOADN R4 0
  SETTABLEKS R4 R0 K8 ["TimePosition"]
  LOADB R4 1
  SETTABLEKS R4 R0 K7 ["Playing"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["constructAssetIdString"]
  MOVE R5 R1
  CALL R4 1 1
  SETTABLEKS R4 R0 K10 ["SoundId"]
  GETUPVAL R4 0
  SETTABLEKS R1 R4 K5 ["lastSoundId"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["stopPreviewSound"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["ref"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onSoundChange"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K3 ["updateSound"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onSoundEnded"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ref"]
  GETTABLEKS R1 R2 K1 ["current"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["props"]
  GETTABLEKS R2 R3 K3 ["elapsedTime"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R3 R1 K4 ["Playing"]
  JUMPIF R3 [+1]
  RETURN R0 0
  ADD R3 R2 R0
  GETTABLEKS R4 R1 K5 ["TimeLength"]
  JUMPIFNOTLE R4 R3 [+2]
  MOVE R3 R4
  JUMPIFEQ R2 R3 [+8]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["props"]
  GETTABLEKS R5 R6 K6 ["setSoundElapsedTime"]
  MOVE R6 R3
  CALL R5 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RenderStepped"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["runServiceConnection"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["runServiceConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["runServiceConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["runServiceConnection"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Sound"]
  NEWTABLE R3 4 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Ref"]
  GETTABLEKS R5 R0 K3 ["ref"]
  SETTABLE R5 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["Event"]
  GETTABLEKS R4 R5 K5 ["Ended"]
  GETTABLEKS R5 R0 K6 ["onSoundEnded"]
  SETTABLE R5 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["Event"]
  GETTABLEKS R4 R5 K7 ["Changed"]
  GETTABLEKS R5 R0 K8 ["onSoundChange"]
  SETTABLE R5 R3 R4
  GETIMPORT R4 K12 [Enum.UsageContext.Preview]
  SETTABLEKS R4 R3 K13 ["UsageContextPermission"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["updateSound"]
  CALL R1 0 0
  RETURN R0 0

PROTO_9:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["sound"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  DUPTABLE R3 K4 [{"currentSoundId", "elapsedTime", "isPlaying"}]
  GETTABLEKS R5 R2 K1 ["currentSoundId"]
  ORK R4 R5 K5 [0]
  SETTABLEKS R4 R3 K1 ["currentSoundId"]
  GETTABLEKS R5 R2 K2 ["elapsedTime"]
  ORK R4 R5 K5 [0]
  SETTABLEKS R4 R3 K2 ["elapsedTime"]
  GETTABLEKS R5 R2 K3 ["isPlaying"]
  ORK R4 R5 K6 [False]
  SETTABLEKS R4 R3 K3 ["isPlaying"]
  RETURN R3 1

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  DUPTABLE R1 K4 [{"stopPreviewSound", "setSoundLoaded", "setSoundElapsedTime", "setSoundTotalTime"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["stopPreviewSound"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["setSoundLoaded"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["setSoundElapsedTime"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["setSoundTotalTime"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R2 R1 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R2 K11 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K12 ["Core"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["Urls"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K12 ["Core"]
  GETTABLEKS R8 R9 K15 ["Actions"]
  GETTABLEKS R7 R8 K16 ["StopPreviewSound"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K12 ["Core"]
  GETTABLEKS R9 R10 K15 ["Actions"]
  GETTABLEKS R8 R9 K17 ["SetSoundLoading"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K12 ["Core"]
  GETTABLEKS R10 R11 K15 ["Actions"]
  GETTABLEKS R9 R10 K18 ["SetSoundElapsedTime"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K12 ["Core"]
  GETTABLEKS R11 R12 K15 ["Actions"]
  GETTABLEKS R10 R11 K19 ["SetSoundTotalTime"]
  CALL R9 1 1
  GETTABLEKS R10 R3 K20 ["Component"]
  LOADK R12 K21 ["SoundPreviewComponent"]
  NAMECALL R10 R10 K22 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K23 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K24 ["init"]
  DUPCLOSURE R11 K25 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K26 ["didMount"]
  DUPCLOSURE R11 K27 [PROTO_6]
  SETTABLEKS R11 R10 K28 ["willUnmount"]
  DUPCLOSURE R11 K29 [PROTO_7]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K30 ["render"]
  DUPCLOSURE R11 K31 [PROTO_8]
  SETTABLEKS R11 R10 K32 ["didUpdate"]
  DUPCLOSURE R11 K33 [PROTO_9]
  DUPCLOSURE R12 K34 [PROTO_14]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  GETTABLEKS R13 R4 K35 ["connect"]
  MOVE R14 R11
  MOVE R15 R12
  CALL R13 2 1
  MOVE R14 R10
  CALL R13 1 -1
  RETURN R13 -1
