PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+13]
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["NetworkClient"]
  NAMECALL R0 R0 K3 ["FindService"]
  CALL R0 2 1
  JUMPIFNOT R0 [+5]
  LOADK R3 K4 ["ClientReplicator"]
  NAMECALL R1 R0 K5 ["FindFirstChildOfClass"]
  CALL R1 2 1
  SETUPVAL R1 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+13]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+9]
  GETUPVAL R1 0
  GETIMPORT R3 K1 [game]
  NAMECALL R1 R1 K6 ["IsDescendantOf"]
  CALL R1 2 1
  JUMPIFNOT R1 [+2]
  GETUPVAL R0 0
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R0 0
  RETURN R0 1

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
  GETTABLEKS R3 R4 K9 ["Flags"]
  GETTABLEKS R2 R3 K10 ["GetFFlagGetClientReplicatorCheck"]
  CALL R1 1 1
  LOADNIL R2
  NEWCLOSURE R3 P0
  CAPTURE REF R2
  CAPTURE VAL R1
  CLOSEUPVALS R2
  RETURN R3 1
