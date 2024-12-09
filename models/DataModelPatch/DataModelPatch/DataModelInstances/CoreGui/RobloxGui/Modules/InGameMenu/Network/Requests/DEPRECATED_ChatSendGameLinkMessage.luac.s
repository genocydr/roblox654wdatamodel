PROTO_0:
  FASTCALL2K ASSERT R0 K0 [+5]
  MOVE R5 R0
  LOADK R6 K0 ["requestImpl is required"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  FASTCALL2K ASSERT R1 K3 [+5]
  MOVE R5 R1
  LOADK R6 K3 ["conversationId is required"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  FASTCALL2K ASSERT R2 K4 [+5]
  MOVE R5 R2
  LOADK R6 K4 ["universeId is required"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  GETUPVAL R4 0
  DUPTABLE R6 K8 [{"conversationId", "universeId", "decorators"}]
  SETTABLEKS R1 R6 K5 ["conversationId"]
  SETTABLEKS R2 R6 K6 ["universeId"]
  SETTABLEKS R3 R6 K7 ["decorators"]
  NAMECALL R4 R4 K9 ["JSONEncode"]
  CALL R4 2 1
  GETIMPORT R5 K12 [string.format]
  LOADK R6 K13 ["%s/send-game-link-message"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K14 ["CHAT_URL"]
  CALL R5 2 1
  MOVE R6 R0
  MOVE R7 R5
  LOADK R8 K15 ["POST"]
  DUPTABLE R9 K17 [{"postBody"}]
  SETTABLEKS R4 R9 K16 ["postBody"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Network"]
  GETTABLEKS R3 R4 K10 ["Url"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R3 1
