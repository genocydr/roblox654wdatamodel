PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["SpeakerUserId"]
  NAMECALL R0 R0 K1 ["GetPlayerByUserId"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R1 1 2
  JUMPIFNOT R1 [+62]
  JUMPIFNOT R2 [+61]
  GETTABLEKS R3 R2 K2 ["Character"]
  JUMPIFNOT R3 [+58]
  DUPTABLE R4 K9 [{"id", "userId", "name", "text", "timestamp", "adornee"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["ID"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K12 [tostring]
  CALL R5 1 1
  SETTABLEKS R5 R4 K3 ["id"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K13 ["SpeakerUserId"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K12 [tostring]
  CALL R5 1 1
  SETTABLEKS R5 R4 K4 ["userId"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K14 ["FromSpeaker"]
  SETTABLEKS R5 R4 K5 ["name"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["Message"]
  ORK R5 R6 K15 [""]
  SETTABLEKS R5 R4 K6 ["text"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K17 ["Time"]
  SETTABLEKS R5 R4 K7 ["timestamp"]
  SETTABLEKS R3 R4 K8 ["adornee"]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+11]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K18 ["Events"]
  GETTABLEKS R6 R5 K19 ["LegacyBubbleCreated"]
  JUMPIFEQKNIL R6 [+5]
  GETTABLEKS R6 R5 K19 ["LegacyBubbleCreated"]
  MOVE R7 R4
  CALL R6 1 0
  GETUPVAL R7 4
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R0 K20 ["dispatch"]
  CALL R5 -1 -1
  RETURN R5 -1
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["IMessageData"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R1 K7 ["Workspace"]
  GETTABLEKS R4 R5 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["ExpChat"]
  CALL R2 1 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K10 ["CoreGui"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  LOADK R5 K11 ["RobloxGui"]
  NAMECALL R3 R3 K12 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R8 K14 [script]
  GETTABLEKS R7 R8 K15 ["Parent"]
  GETTABLEKS R6 R7 K15 ["Parent"]
  GETTABLEKS R5 R6 K16 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETIMPORT R10 K14 [script]
  GETTABLEKS R9 R10 K15 ["Parent"]
  GETTABLEKS R8 R9 K15 ["Parent"]
  GETTABLEKS R7 R8 K17 ["Helpers"]
  GETTABLEKS R6 R7 K18 ["maybeAssert"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETIMPORT R9 K14 [script]
  GETTABLEKS R8 R9 K15 ["Parent"]
  GETTABLEKS R7 R8 K19 ["AddMessageWithTimeout"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R3 K20 ["Modules"]
  GETTABLEKS R9 R10 K21 ["Flags"]
  GETTABLEKS R8 R9 K22 ["GetFFlagConsolidateBubbleChat"]
  CALL R7 1 1
  DUPCLOSURE R8 K23 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  RETURN R8 1