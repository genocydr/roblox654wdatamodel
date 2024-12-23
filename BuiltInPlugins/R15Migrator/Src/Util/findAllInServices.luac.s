PROTO_0:
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  JUMPIFNOT R0 [+4]
  MOVE R8 R0
  MOVE R9 R7
  CALL R8 1 1
  JUMPIFNOT R8 [+7]
  FASTCALL2 TABLE_INSERT R2 R7 [+5]
  MOVE R9 R2
  MOVE R10 R7
  GETIMPORT R8 K2 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-13]
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K0 ["isRootSaveFolderChildOf"]
  MOVE R9 R6
  CALL R8 1 1
  JUMPIF R8 [+6]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K1 ["isRootSaveFolderDescendantOf"]
  MOVE R10 R6
  CALL R9 1 1
  NOT R8 R9
  FASTCALL1 ASSERT R8 [+2]
  GETIMPORT R7 K3 [assert]
  CALL R7 1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["isRootSaveFolderChildOf"]
  MOVE R8 R6
  CALL R7 1 1
  JUMPIFNOT R7 [+28]
  NAMECALL R7 R6 K4 ["GetChildren"]
  CALL R7 1 3
  FORGPREP R7
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["isRootSaveFolder"]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIF R12 [+15]
  NAMECALL R12 R11 K6 ["GetDescendants"]
  CALL R12 1 1
  FASTCALL2 TABLE_INSERT R12 R11 [+5]
  MOVE R14 R12
  MOVE R15 R11
  GETIMPORT R13 K9 [table.insert]
  CALL R13 2 0
  GETUPVAL R13 2
  MOVE R14 R0
  MOVE R15 R12
  MOVE R16 R1
  CALL R13 3 0
  FORGLOOP R7 2 [-22]
  JUMP [+7]
  GETUPVAL R7 2
  MOVE R8 R0
  NAMECALL R9 R6 K6 ["GetDescendants"]
  CALL R9 1 1
  MOVE R10 R1
  CALL R7 3 0
  FORGLOOP R2 2 [-58]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Util"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["SaveInterface"]
  CALL R2 1 1
  NEWTABLE R3 0 10
  GETIMPORT R4 K10 [game]
  LOADK R6 K11 ["Chat"]
  NAMECALL R4 R4 K12 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K10 [game]
  LOADK R7 K13 ["Lighting"]
  NAMECALL R5 R5 K12 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K10 [game]
  LOADK R8 K14 ["ReplicatedFirst"]
  NAMECALL R6 R6 K12 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K10 [game]
  LOADK R9 K15 ["ReplicatedStorage"]
  NAMECALL R7 R7 K12 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K10 [game]
  LOADK R10 K16 ["ServerScriptService"]
  NAMECALL R8 R8 K12 ["GetService"]
  CALL R8 2 1
  GETIMPORT R9 K10 [game]
  LOADK R11 K17 ["ServerStorage"]
  NAMECALL R9 R9 K12 ["GetService"]
  CALL R9 2 1
  GETIMPORT R10 K10 [game]
  LOADK R12 K18 ["StarterGui"]
  NAMECALL R10 R10 K12 ["GetService"]
  CALL R10 2 1
  GETIMPORT R11 K10 [game]
  LOADK R13 K19 ["StarterPack"]
  NAMECALL R11 R11 K12 ["GetService"]
  CALL R11 2 1
  GETIMPORT R12 K10 [game]
  LOADK R14 K20 ["StarterPlayer"]
  NAMECALL R12 R12 K12 ["GetService"]
  CALL R12 2 1
  GETIMPORT R13 K10 [game]
  LOADK R15 K21 ["Workspace"]
  NAMECALL R13 R13 K12 ["GetService"]
  CALL R13 2 -1
  SETLIST R3 R4 -1 [1]
  DUPCLOSURE R4 K22 [PROTO_0]
  DUPCLOSURE R5 K23 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R5 1
