PROTO_0:
  DUPTABLE R2 K5 [{"placeid", "universeid", "type", "enabled", "sessionid"}]
  GETIMPORT R5 K7 [game]
  GETTABLEKS R4 R5 K8 ["PlaceId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K10 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["placeid"]
  GETIMPORT R5 K7 [game]
  GETTABLEKS R4 R5 K11 ["GameId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K10 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["universeid"]
  GETTABLEKS R4 R0 K12 ["Name"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K10 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["type"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K10 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["enabled"]
  GETUPVAL R3 0
  NAMECALL R3 R3 K13 ["GetSessionId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["sessionid"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K14 ["evenStream"]
  LOADK R5 K15 ["core_gui_type"]
  LOADK R6 K15 ["core_gui_type"]
  MOVE R7 R2
  NAMECALL R3 R3 K16 ["sendEventDeferred"]
  CALL R3 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendCoreGuiAnalytic"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R0 4 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  GETUPVAL R2 1
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["evenStream"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["sendCoreGuiAnalytic"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["CoreGuiChangedSignal"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K4 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["signalConnection"]
  GETUPVAL R3 3
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K7 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["signalConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StarterGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RbxAnalyticsService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CorePackages"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R8 R2 K8 ["Workspace"]
  GETTABLEKS R7 R8 K9 ["Packages"]
  GETTABLEKS R6 R7 K10 ["Analytics"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K11 ["AnalyticsReporters"]
  GETTABLEKS R3 R4 K12 ["EventStream"]
  NEWTABLE R4 4 0
  SETTABLEKS R4 R4 K13 ["__index"]
  DUPCLOSURE R5 K14 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K15 ["new"]
  DUPCLOSURE R5 K16 [PROTO_3]
  SETTABLEKS R5 R4 K17 ["DisconnectSignal"]
  GETTABLEKS R5 R4 K15 ["new"]
  CALL R5 0 1
  RETURN R4 1
