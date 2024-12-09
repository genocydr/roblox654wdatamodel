PROTO_0:
  LOADNIL R3
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+7]
  JUMPIFNOTEQKS R0 K0 ["Connecting"] [+6]
  LOADK R4 K1 ["icons/controls/voice/"]
  MOVE R5 R2
  LOADK R6 K2 ["_0_dark"]
  CONCAT R3 R4 R6
  RETURN R3 1
  JUMPIFEQKS R0 K3 ["Muted"] [+3]
  JUMPIFNOTEQKS R0 K4 ["LOCAL_MUTED"] [+6]
  LOADK R4 K1 ["icons/controls/voice/"]
  MOVE R5 R2
  LOADK R6 K5 ["_off_light"]
  CONCAT R3 R4 R6
  RETURN R3 1
  JUMPIFEQKS R0 K6 ["Inactive"] [+3]
  JUMPIFNOTEQKS R0 K0 ["Connecting"] [+6]
  LOADK R4 K1 ["icons/controls/voice/"]
  MOVE R5 R2
  LOADK R6 K7 ["_0_light"]
  CONCAT R3 R4 R6
  RETURN R3 1
  JUMPIFNOTEQKS R0 K8 ["Talking"] [+23]
  LOADN R5 20
  LOADK R8 K9 [0.5]
  LOADN R10 5
  MUL R9 R10 R1
  ADD R7 R8 R9
  FASTCALL1 MATH_FLOOR R7 [+2]
  GETIMPORT R6 K12 [math.floor]
  CALL R6 1 1
  MUL R4 R5 R6
  LOADK R5 K1 ["icons/controls/voice/"]
  MOVE R6 R2
  LOADK R7 K13 ["_"]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R11 R4
  GETIMPORT R10 K15 [tostring]
  CALL R10 1 1
  MOVE R8 R10
  LOADK R9 K16 ["_light"]
  CONCAT R3 R5 R9
  RETURN R3 1
  LOADK R4 K1 ["icons/controls/voice/"]
  MOVE R5 R2
  LOADK R6 K17 ["_error_light"]
  CONCAT R3 R4 R6
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["RobloxGui"]
  GETTABLEKS R1 R2 K5 ["Modules"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R1 K8 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagEnableShimmeringIconLegacyChatService"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
