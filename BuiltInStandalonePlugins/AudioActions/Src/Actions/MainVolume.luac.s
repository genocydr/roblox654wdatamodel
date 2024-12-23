PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Value"]
  SETTABLEKS R2 R1 K1 ["MasterVolumeStudio"]
  RETURN R0 0

PROTO_1:
  DUPTABLE R0 K5 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["Uri"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["action"]
  LOADK R2 K7 ["MainVolume"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Text"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K8 ["tooltip"]
  LOADK R2 K7 ["MainVolume"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["Tooltip"]
  LOADB R1 1
  SETTABLEKS R1 R0 K3 ["Enabled"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K9 ["MasterVolumeStudio"]
  SETTABLEKS R1 R0 K4 ["Value"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 0
  NEWTABLE R2 0 1
  DUPTABLE R3 K5 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K0 ["Uri"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["action"]
  LOADK R5 K7 ["MainVolume"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["Text"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["tooltip"]
  LOADK R5 K7 ["MainVolume"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["Tooltip"]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["Enabled"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K9 ["MasterVolumeStudio"]
  SETTABLEKS R4 R3 K4 ["Value"]
  SETLIST R2 R3 1 [1]
  NAMECALL R0 R0 K10 ["UpdateAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  LOADK R3 K0 ["Settings"]
  NAMECALL R1 R0 K1 ["GetPluginComponent"]
  CALL R1 2 1
  NEWTABLE R4 0 1
  GETUPVAL R5 0
  SETLIST R4 R5 1 [1]
  NAMECALL R2 R1 K2 ["GetAsync"]
  CALL R2 2 1
  GETTABLEN R3 R2 1
  JUMPIFNOT R3 [+34]
  NEWTABLE R5 0 1
  DUPTABLE R6 K8 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  GETUPVAL R7 0
  SETTABLEKS R7 R6 K3 ["Uri"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["action"]
  LOADK R8 K10 ["MainVolume"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K4 ["Text"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["tooltip"]
  LOADK R8 K10 ["MainVolume"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K5 ["Tooltip"]
  LOADB R7 1
  SETTABLEKS R7 R6 K6 ["Enabled"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K12 ["MasterVolumeStudio"]
  SETTABLEKS R7 R6 K7 ["Value"]
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R1 K13 ["UpdateAsync"]
  CALL R3 2 0
  JUMP [+33]
  NEWTABLE R5 0 1
  DUPTABLE R6 K8 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  GETUPVAL R7 0
  SETTABLEKS R7 R6 K3 ["Uri"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["action"]
  LOADK R8 K10 ["MainVolume"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K4 ["Text"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["tooltip"]
  LOADK R8 K10 ["MainVolume"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K5 ["Tooltip"]
  LOADB R7 1
  SETTABLEKS R7 R6 K6 ["Enabled"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K12 ["MasterVolumeStudio"]
  SETTABLEKS R7 R6 K7 ["Value"]
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R1 K14 ["CreateAsync"]
  CALL R3 2 0
  GETUPVAL R3 3
  JUMPIFNOT R3 [+6]
  GETUPVAL R3 3
  NAMECALL R3 R3 K15 ["Disconnect"]
  CALL R3 1 0
  LOADNIL R3
  SETUPVAL R3 3
  GETUPVAL R5 0
  NAMECALL R3 R1 K16 ["BindAsync"]
  CALL R3 2 1
  GETUPVAL R5 4
  NAMECALL R3 R3 K17 ["Connect"]
  CALL R3 2 1
  SETUPVAL R3 3
  GETUPVAL R3 5
  JUMPIFNOT R3 [+6]
  GETUPVAL R3 5
  NAMECALL R3 R3 K15 ["Disconnect"]
  CALL R3 1 0
  LOADNIL R3
  SETUPVAL R3 5
  GETUPVAL R3 2
  LOADK R5 K12 ["MasterVolumeStudio"]
  NAMECALL R3 R3 K18 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R3 R3 K17 ["Connect"]
  CALL R3 2 1
  SETUPVAL R3 5
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [UserSettings]
  CALL R0 0 1
  LOADK R2 K2 ["UserGameSettings"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AudioActions"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["LocalizationUtil"]
  CALL R2 1 1
  DUPCLOSURE R3 K13 [PROTO_0]
  CAPTURE VAL R0
  DUPTABLE R4 K18 [{"DataModel", "PluginId", "Category", "ItemId"}]
  LOADK R5 K19 ["Standalone"]
  SETTABLEKS R5 R4 K14 ["DataModel"]
  LOADK R5 K20 ["Audio"]
  SETTABLEKS R5 R4 K15 ["PluginId"]
  LOADK R5 K21 ["Settings"]
  SETTABLEKS R5 R4 K16 ["Category"]
  LOADK R5 K22 ["Main Volume"]
  SETTABLEKS R5 R4 K17 ["ItemId"]
  DUPCLOSURE R5 K23 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R0
  NEWTABLE R6 2 0
  LOADNIL R7
  LOADNIL R8
  NEWCLOSURE R9 P2
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE REF R7
  CAPTURE VAL R3
  CAPTURE REF R8
  SETTABLEKS R9 R6 K24 ["register"]
  NEWCLOSURE R9 P3
  CAPTURE REF R7
  CAPTURE REF R8
  SETTABLEKS R9 R6 K25 ["deregister"]
  CLOSEUPVALS R7
  RETURN R6 1
