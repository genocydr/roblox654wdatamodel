PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["LocalPlayer"]
  JUMPIF R0 [+12]
  GETUPVAL R1 0
  LOADK R3 K0 ["LocalPlayer"]
  NAMECALL R1 R1 K1 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NAMECALL R1 R1 K2 ["Wait"]
  CALL R1 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["LocalPlayer"]
  JUMPBACK [-13]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["SelectInSceneReportMenuOverrideUserIds"]
  NAMECALL R1 R1 K6 ["GetFastString"]
  CALL R1 2 1
  LOADK R4 K7 ["%d+"]
  NAMECALL R2 R1 K8 ["gmatch"]
  CALL R2 2 3
  FORGPREP R2
  JUMPIFNOT R0 [+11]
  FASTCALL1 TONUMBER R5 [+3]
  MOVE R8 R5
  GETIMPORT R7 K10 [tonumber]
  CALL R7 1 1
  GETTABLEKS R8 R0 K11 ["UserId"]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADB R7 1
  RETURN R7 1
  FORGLOOP R2 1 [-13]
  LOADB R2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["SelectInSceneReportMenuOverrideUserIds"]
  LOADK R4 K5 [""]
  NAMECALL R1 R1 K6 ["DefineFastString"]
  CALL R1 3 0
  DUPCLOSURE R1 K7 [PROTO_0]
  CAPTURE VAL R0
  SETGLOBAL R1 K8 ["isInSelectInSceneReportMenuOverrideList"]
  GETGLOBAL R1 K8 ["isInSelectInSceneReportMenuOverrideList"]
  RETURN R1 1
