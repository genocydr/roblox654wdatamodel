PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["SignalSetFavoritePermissionDenied"]
  CALL R1 1 0
  GETUPVAL R3 1
  CALL R3 0 -1
  NAMECALL R1 R0 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarEditorService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Actions"]
  GETTABLEKS R3 R4 K10 ["CloseOpenPrompt"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R3 1
