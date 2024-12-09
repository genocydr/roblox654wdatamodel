PROTO_0:
  DUPTABLE R1 K2 [{"FullScreen", "FormSheet"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["FullScreen"]
  LOADN R2 2
  SETTABLEKS R2 R1 K1 ["FormSheet"]
  GETUPVAL R2 0
  DUPTABLE R4 K7 [{"title", "presentationStyle", "visible", "url"}]
  GETIMPORT R6 K9 [game]
  LOADK R8 K10 ["SetWebViewTitle"]
  NAMECALL R6 R6 K11 ["GetEngineFeature"]
  CALL R6 2 1
  JUMPIFNOT R6 [+2]
  LOADK R5 K12 ["Help Center"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K3 ["title"]
  GETTABLEKS R5 R1 K1 ["FormSheet"]
  SETTABLEKS R5 R4 K4 ["presentationStyle"]
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["visible"]
  SETTABLEKS R0 R4 K6 ["url"]
  NAMECALL R2 R2 K13 ["JSONEncode"]
  CALL R2 2 1
  GETUPVAL R3 1
  MOVE R5 R2
  LOADN R6 20
  NAMECALL R3 R3 K14 ["BroadcastNotification"]
  CALL R3 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  DUPCLOSURE R2 K5 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1
