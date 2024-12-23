PROTO_0:
  GETIMPORT R1 K1 [ipairs]
  NAMECALL R2 R0 K2 ["GetDescendants"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_INEXT R1
  LOADK R8 K3 ["LuaSourceContainer"]
  NAMECALL R6 R5 K4 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  NAMECALL R6 R5 K5 ["Destroy"]
  CALL R6 1 0
  FORGLOOP R1 2 [inext] [-9]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Position"]
  LOADK R3 K1 [{0, 5, 0}]
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K0 ["Position"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  LOADB R0 1
  SETUPVAL R0 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Destroy"]
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K0 ["Destroy"]
  CALL R0 1 0
  GETUPVAL R0 3
  LOADK R2 K1 ["ContextActionMenuRenderArrow"]
  NAMECALL R0 R0 K2 ["UnbindFromRenderStep"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["Model"]
  CALL R2 1 1
  LOADK R3 K4 ["ContextMenuArrow"]
  SETTABLEKS R3 R2 K5 ["Name"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K6 ["Parent"]
  LOADK R5 K7 ["Humanoid"]
  NAMECALL R3 R0 K8 ["FindFirstChildOfClass"]
  CALL R3 2 1
  JUMPIFNOTEQKNIL R3 [+10]
  LOADK R6 K7 ["Humanoid"]
  LOADN R7 15
  NAMECALL R4 R0 K9 ["WaitForChild"]
  CALL R4 3 1
  MOVE R3 R4
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R0 0
  LOADK R6 K10 ["HumanoidRootPart"]
  NAMECALL R4 R0 K9 ["WaitForChild"]
  CALL R4 2 1
  GETTABLEKS R5 R1 K11 ["SelectedCharacterIndicator"]
  NAMECALL R5 R5 K12 ["Clone"]
  CALL R5 1 1
  GETUPVAL R6 1
  MOVE R7 R5
  CALL R6 1 0
  LOADB R6 1
  SETTABLEKS R6 R5 K13 ["Anchored"]
  LOADN R6 0
  SETTABLEKS R6 R5 K14 ["Transparency"]
  LOADB R6 0
  SETTABLEKS R6 R5 K15 ["CanCollide"]
  SETTABLEKS R2 R5 K6 ["Parent"]
  GETUPVAL R6 2
  MOVE R8 R5
  GETIMPORT R9 K17 [TweenInfo.new]
  LOADN R10 4
  GETIMPORT R11 K21 [Enum.EasingStyle.Linear]
  GETIMPORT R12 K24 [Enum.EasingDirection.Out]
  LOADN R13 255
  LOADB R14 0
  CALL R9 5 1
  DUPTABLE R10 K26 [{"Orientation"}]
  LOADK R11 K27 [{0, 360, 180}]
  SETTABLEKS R11 R10 K25 ["Orientation"]
  NAMECALL R6 R6 K28 ["Create"]
  CALL R6 4 1
  NAMECALL R7 R6 K29 ["Play"]
  CALL R7 1 0
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  CAPTURE VAL R4
  LOADB R8 0
  NEWCLOSURE R9 P1
  CAPTURE REF R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE UPVAL U3
  GETTABLEKS R10 R3 K30 ["Died"]
  MOVE R12 R9
  NAMECALL R10 R10 K31 ["Connect"]
  CALL R10 2 0
  GETTABLEKS R10 R0 K32 ["AncestryChanged"]
  MOVE R12 R9
  NAMECALL R10 R10 K31 ["Connect"]
  CALL R10 2 0
  GETUPVAL R10 3
  LOADK R12 K33 ["ContextActionMenuRenderArrow"]
  GETIMPORT R15 K37 [Enum.RenderPriority.Camera]
  GETTABLEKS R14 R15 K38 ["Value"]
  ADDK R13 R14 K34 [1]
  MOVE R14 R7
  NAMECALL R10 R10 K39 ["BindToRenderStep"]
  CALL R10 4 0
  GETUPVAL R10 0
  SETTABLEKS R10 R2 K6 ["Parent"]
  CLOSEUPVALS R8
  RETURN R9 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["KillOldRenderFunction"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["KillOldRenderFunction"]
  CALL R1 0 0
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  GETUPVAL R4 2
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["KillOldRenderFunction"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["SelectedPlayer"]
  JUMPIFNOT R0 [+26]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["SelectedPlayer"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["CharacterAddedConn"]
  NAMECALL R0 R0 K2 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["CharacterAddedConn"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["KillOldRenderFunction"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["KillOldRenderFunction"]
  CALL R0 0 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["KillOldRenderFunction"]
  GETUPVAL R0 1
  JUMPIFNOT R0 [+30]
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["SelectedPlayer"]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["CharacterAdded"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R1 R1 K5 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["CharacterAddedConn"]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K6 ["Character"]
  JUMPIFNOT R0 [+9]
  GETUPVAL R0 0
  GETUPVAL R1 2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["Character"]
  GETUPVAL R3 3
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["KillOldRenderFunction"]
  RETURN R0 0

PROTO_6:
  GETIMPORT R3 K2 [coroutine.wrap]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CALL R3 1 1
  CALL R3 0 0
  RETURN R0 0

PROTO_7:
  NEWTABLE R1 4 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["KillOldRenderFunction"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["SelectedPlayer"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["CharacterAddedConn"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  SETTABLEKS R0 R0 K0 ["__index"]
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["RunService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K2 [game]
  LOADK R4 K5 ["Workspace"]
  NAMECALL R2 R2 K4 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K2 [game]
  LOADK R5 K6 ["TweenService"]
  NAMECALL R3 R3 K4 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K2 [game]
  LOADK R6 K7 ["InsertService"]
  NAMECALL R4 R4 K4 ["GetService"]
  CALL R4 2 1
  GETTABLEKS R5 R2 K8 ["CurrentCamera"]
  DUPCLOSURE R6 K9 [PROTO_0]
  DUPCLOSURE R7 K10 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R1
  DUPCLOSURE R8 K11 [PROTO_6]
  CAPTURE VAL R7
  SETTABLEKS R8 R0 K12 ["ChangeSelectedPlayer"]
  DUPCLOSURE R8 K13 [PROTO_7]
  CAPTURE VAL R0
  SETTABLEKS R8 R0 K14 ["new"]
  GETTABLEKS R8 R0 K14 ["new"]
  CALL R8 0 -1
  RETURN R8 -1
