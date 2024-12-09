PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StarterPlayer"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R2 K4 ["PlayerSettings"]
  NAMECALL R0 R0 K5 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOTEQKNIL R0 [+56]
  GETIMPORT R1 K8 [Instance.new]
  LOADK R2 K9 ["ModuleScript"]
  CALL R1 1 1
  MOVE R0 R1
  LOADK R1 K4 ["PlayerSettings"]
  SETTABLEKS R1 R0 K10 ["Name"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["getFFlagServerCoreScriptSourceCode"]
  CALL R1 0 1
  JUMPIFNOT R1 [+17]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K12 ["getSourceForServerScript"]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K15 ["Parent"]
  GETTABLEKS R2 R3 K16 ["DefaultServerPlayerModules"]
  LOADK R4 K4 ["PlayerSettings"]
  NAMECALL R2 R2 K17 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K18 ["Source"]
  JUMP [+14]
  GETIMPORT R4 K14 [script]
  GETTABLEKS R3 R4 K15 ["Parent"]
  GETTABLEKS R2 R3 K16 ["DefaultServerPlayerModules"]
  LOADK R4 K4 ["PlayerSettings"]
  NAMECALL R2 R2 K17 ["WaitForChild"]
  CALL R2 2 1
  GETTABLEKS R1 R2 K18 ["Source"]
  SETTABLEKS R1 R0 K18 ["Source"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["StarterPlayer"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K15 ["Parent"]
  LOADB R1 0
  SETTABLEKS R1 R0 K19 ["Archivable"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R2 K4 ["RobloxGui"]
  NAMECALL R0 R0 K5 ["WaitForChild"]
  CALL R0 2 1
  GETIMPORT R1 K7 [require]
  GETTABLEKS R4 R0 K8 ["Modules"]
  GETTABLEKS R3 R4 K9 ["Server"]
  GETTABLEKS R2 R3 K10 ["ServerUtil"]
  CALL R1 1 1
  DUPCLOSURE R2 K11 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
