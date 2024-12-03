PROTO_0:
  GETTABLEKS R2 R1 K0 ["AbsolutePosition"]
  GETTABLEKS R4 R1 K1 ["AbsoluteSize"]
  ADD R3 R2 R4
  LOADB R4 0
  GETTABLEKS R5 R0 K2 ["X"]
  GETTABLEKS R6 R2 K2 ["X"]
  JUMPIFNOTLE R6 R5 [+23]
  LOADB R4 0
  GETTABLEKS R5 R0 K2 ["X"]
  GETTABLEKS R6 R3 K2 ["X"]
  JUMPIFNOTLE R5 R6 [+16]
  LOADB R4 0
  GETTABLEKS R5 R0 K3 ["Y"]
  GETTABLEKS R6 R2 K3 ["Y"]
  JUMPIFNOTLE R6 R5 [+9]
  GETTABLEKS R5 R0 K3 ["Y"]
  GETTABLEKS R6 R3 K3 ["Y"]
  JUMPIFLE R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  RETURN R4 1

PROTO_1:
  GETUPVAL R1 0
  LOADK R3 K0 ["PluginGui"]
  NAMECALL R1 R1 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["GetRelativeMousePosition"]
  CALL R0 1 1
  JUMP [+4]
  GETUPVAL R0 1
  NAMECALL R0 R0 K3 ["GetMouseLocation"]
  CALL R0 1 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFEQKNIL R1 [+39]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["current"]
  GETTABLEKS R3 R2 K5 ["AbsolutePosition"]
  GETTABLEKS R5 R2 K6 ["AbsoluteSize"]
  ADD R4 R3 R5
  LOADB R1 0
  GETTABLEKS R5 R0 K7 ["X"]
  GETTABLEKS R6 R3 K7 ["X"]
  JUMPIFNOTLE R6 R5 [+23]
  LOADB R1 0
  GETTABLEKS R5 R0 K7 ["X"]
  GETTABLEKS R6 R4 K7 ["X"]
  JUMPIFNOTLE R5 R6 [+16]
  LOADB R1 0
  GETTABLEKS R5 R0 K8 ["Y"]
  GETTABLEKS R6 R3 K8 ["Y"]
  JUMPIFNOTLE R6 R5 [+9]
  GETTABLEKS R5 R0 K8 ["Y"]
  GETTABLEKS R6 R4 K8 ["Y"]
  JUMPIFLE R5 R6 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIF R1 [+5]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K9 ["disable"]
  CALL R1 0 0
  RETURN R0 0
  GETIMPORT R1 K12 [task.wait]
  CALL R1 0 0
  JUMPBACK [-67]
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["enabled"]
  JUMPIF R0 [+2]
  LOADNIL R0
  RETURN R0 1
  GETIMPORT R0 K3 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CALL R0 1 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_4:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["get"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADB R3 0
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["useEffect"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R2 K3 ["enabled"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 0
  DUPTABLE R3 K6 [{"hover", "isHovered"}]
  GETTABLEKS R4 R2 K7 ["enable"]
  SETTABLEKS R4 R3 K4 ["hover"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  SETTABLEKS R4 R3 K5 ["isHovered"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Hooks"]
  GETTABLEKS R4 R5 K11 ["useToggleState"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K12 ["ContextServices"]
  GETTABLEKS R4 R5 K13 ["Focus"]
  GETIMPORT R5 K15 [game]
  LOADK R7 K16 ["UserInputService"]
  NAMECALL R5 R5 K17 ["GetService"]
  CALL R5 2 1
  DUPCLOSURE R6 K18 [PROTO_0]
  DUPCLOSURE R7 K19 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  RETURN R7 1