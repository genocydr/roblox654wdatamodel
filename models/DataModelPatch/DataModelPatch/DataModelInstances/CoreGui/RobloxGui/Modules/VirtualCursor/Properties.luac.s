PROTO_0:
  GETIMPORT R2 K1 [error]
  GETIMPORT R3 K4 [string.format]
  LOADK R4 K5 ["%q is not a valid member of properties"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K7 [tostring]
  CALL R5 1 1
  CALL R3 2 1
  LOADN R4 2
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K8 [{"SpeedAdjustmentTarget", "CursorRadius", "SelectionRadius", "MaxSpeedRelative", "ThumbstickDeadzone", "ScrollingRadius", "ScrollingSlowDown", "ScrollingSpeed"}]
  LOADK R1 K9 [0.5]
  SETTABLEKS R1 R0 K0 ["SpeedAdjustmentTarget"]
  LOADN R1 40
  SETTABLEKS R1 R0 K1 ["CursorRadius"]
  LOADN R1 40
  SETTABLEKS R1 R0 K2 ["SelectionRadius"]
  LOADK R1 K10 [0.7]
  SETTABLEKS R1 R0 K3 ["MaxSpeedRelative"]
  LOADK R1 K11 [0.2]
  SETTABLEKS R1 R0 K4 ["ThumbstickDeadzone"]
  LOADN R1 15
  SETTABLEKS R1 R0 K5 ["ScrollingRadius"]
  LOADK R1 K12 [0.25]
  SETTABLEKS R1 R0 K6 ["ScrollingSlowDown"]
  LOADN R1 232
  SETTABLEKS R1 R0 K7 ["ScrollingSpeed"]
  DUPTABLE R3 K14 [{"__index"}]
  DUPCLOSURE R4 K15 [PROTO_0]
  SETTABLEKS R4 R3 K13 ["__index"]
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K17 [setmetatable]
  CALL R1 2 0
  RETURN R0 1
