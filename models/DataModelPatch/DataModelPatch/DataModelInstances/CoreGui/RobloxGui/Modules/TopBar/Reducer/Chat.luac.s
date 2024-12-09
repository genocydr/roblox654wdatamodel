PROTO_0:
  GETTABLEKS R2 R0 K0 ["visible"]
  JUMPIFNOT R2 [+15]
  DUPTABLE R2 K4 [{"canChat", "visible", "lastReadMessages", "unreadMessages"}]
  GETTABLEKS R3 R0 K1 ["canChat"]
  SETTABLEKS R3 R2 K1 ["canChat"]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["visible"]
  LOADN R3 0
  SETTABLEKS R3 R2 K2 ["lastReadMessages"]
  LOADN R3 0
  SETTABLEKS R3 R2 K3 ["unreadMessages"]
  RETURN R2 1
  DUPTABLE R2 K4 [{"canChat", "visible", "lastReadMessages", "unreadMessages"}]
  GETTABLEKS R3 R0 K1 ["canChat"]
  SETTABLEKS R3 R2 K1 ["canChat"]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["visible"]
  LOADN R3 0
  SETTABLEKS R3 R2 K2 ["lastReadMessages"]
  GETTABLEKS R3 R1 K5 ["messages"]
  SETTABLEKS R3 R2 K3 ["unreadMessages"]
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["visible"]
  JUMPIFNOT R2 [+16]
  DUPTABLE R2 K4 [{"canChat", "visible", "lastReadMessages", "unreadMessages"}]
  GETTABLEKS R3 R0 K1 ["canChat"]
  SETTABLEKS R3 R2 K1 ["canChat"]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["visible"]
  GETTABLEKS R3 R1 K5 ["messages"]
  SETTABLEKS R3 R2 K2 ["lastReadMessages"]
  LOADN R3 0
  SETTABLEKS R3 R2 K3 ["unreadMessages"]
  RETURN R2 1
  DUPTABLE R2 K4 [{"canChat", "visible", "lastReadMessages", "unreadMessages"}]
  GETTABLEKS R3 R0 K1 ["canChat"]
  SETTABLEKS R3 R2 K1 ["canChat"]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["visible"]
  GETTABLEKS R3 R0 K2 ["lastReadMessages"]
  SETTABLEKS R3 R2 K2 ["lastReadMessages"]
  GETTABLEKS R4 R1 K5 ["messages"]
  GETTABLEKS R5 R0 K2 ["lastReadMessages"]
  SUB R3 R4 R5
  SETTABLEKS R3 R2 K3 ["unreadMessages"]
  RETURN R2 1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["visible"]
  JUMPIFNOT R2 [+19]
  DUPTABLE R2 K4 [{"canChat", "visible", "lastReadMessages", "unreadMessages"}]
  GETTABLEKS R3 R0 K1 ["canChat"]
  SETTABLEKS R3 R2 K1 ["canChat"]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["visible"]
  GETTABLEKS R4 R0 K2 ["lastReadMessages"]
  GETTABLEKS R5 R0 K3 ["unreadMessages"]
  ADD R3 R4 R5
  SETTABLEKS R3 R2 K2 ["lastReadMessages"]
  LOADN R3 0
  SETTABLEKS R3 R2 K3 ["unreadMessages"]
  RETURN R2 1
  DUPTABLE R2 K4 [{"canChat", "visible", "lastReadMessages", "unreadMessages"}]
  GETTABLEKS R3 R0 K1 ["canChat"]
  SETTABLEKS R3 R2 K1 ["canChat"]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["visible"]
  GETTABLEKS R3 R0 K2 ["lastReadMessages"]
  SETTABLEKS R3 R2 K2 ["lastReadMessages"]
  GETTABLEKS R3 R0 K3 ["unreadMessages"]
  SETTABLEKS R3 R2 K3 ["unreadMessages"]
  RETURN R2 1

PROTO_3:
  DUPTABLE R2 K4 [{"canChat", "visible", "lastReadMessages", "unreadMessages"}]
  GETTABLEKS R3 R1 K0 ["canChat"]
  SETTABLEKS R3 R2 K0 ["canChat"]
  GETTABLEKS R3 R0 K1 ["visible"]
  SETTABLEKS R3 R2 K1 ["visible"]
  GETTABLEKS R3 R0 K2 ["lastReadMessages"]
  SETTABLEKS R3 R2 K2 ["lastReadMessages"]
  GETTABLEKS R3 R0 K3 ["unreadMessages"]
  SETTABLEKS R3 R2 K3 ["unreadMessages"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R5 K9 [script]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K10 ["Parent"]
  GETTABLEKS R2 R3 K11 ["Actions"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K12 ["UpdateChatMessages"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K13 ["UpdateUnreadMessagesBadge"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K14 ["UpdateChatVisible"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K15 ["SetCanChat"]
  CALL R6 1 1
  DUPTABLE R7 K20 [{"canChat", "visible", "lastReadMessages", "unreadMessages"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K16 ["canChat"]
  LOADB R8 1
  SETTABLEKS R8 R7 K17 ["visible"]
  LOADN R8 0
  SETTABLEKS R8 R7 K18 ["lastReadMessages"]
  LOADN R8 0
  SETTABLEKS R8 R7 K19 ["unreadMessages"]
  GETTABLEKS R8 R1 K21 ["createReducer"]
  MOVE R9 R7
  NEWTABLE R10 4 0
  GETTABLEKS R11 R4 K22 ["name"]
  DUPCLOSURE R12 K23 [PROTO_0]
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R3 K22 ["name"]
  DUPCLOSURE R12 K24 [PROTO_1]
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R5 K22 ["name"]
  DUPCLOSURE R12 K25 [PROTO_2]
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R6 K22 ["name"]
  DUPCLOSURE R12 K26 [PROTO_3]
  SETTABLE R12 R10 R11
  CALL R8 2 1
  RETURN R8 1
