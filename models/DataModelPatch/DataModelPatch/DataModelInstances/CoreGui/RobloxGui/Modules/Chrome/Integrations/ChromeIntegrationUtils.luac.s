PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETIMPORT R0 K2 [tick]
  CALL R0 0 1
  GETUPVAL R1 1
  JUMPIFNOTLT R0 R1 [+4]
  GETUPVAL R0 2
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Modules"]
  GETTABLEKS R3 R4 K3 ["Settings"]
  GETTABLEKS R2 R3 K4 ["SettingsHub"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["MenuIsOpen"]
  JUMPIFNOT R2 [+22]
  GETIMPORT R3 K8 [tick]
  CALL R3 0 1
  ADDK R2 R3 K6 [3]
  LOADNIL R3
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["MenuClosed"]
  NEWCLOSURE R6 P0
  CAPTURE REF R3
  CAPTURE VAL R2
  CAPTURE VAL R0
  NAMECALL R4 R4 K10 ["Connect"]
  CALL R4 2 1
  MOVE R3 R4
  LOADB R6 0
  NAMECALL R4 R1 K11 ["SetVisibility"]
  CALL R4 2 0
  CLOSEUPVALS R3
  RETURN R0 0
  MOVE R2 R0
  LOADB R3 0
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  DUPCLOSURE R3 K7 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETGLOBAL R3 K8 ["dismissRobloxMenuAndRun"]
  DUPTABLE R3 K9 [{"dismissRobloxMenuAndRun"}]
  GETGLOBAL R4 K8 ["dismissRobloxMenuAndRun"]
  SETTABLEKS R4 R3 K8 ["dismissRobloxMenuAndRun"]
  RETURN R3 1