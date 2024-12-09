PROTO_0:
  NEWTABLE R2 0 0
  GETTABLEKS R3 R1 K0 ["bubbles"]
  JUMPIFNOT R3 [+33]
  GETIMPORT R3 K2 [ipairs]
  GETTABLEKS R4 R1 K0 ["bubbles"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["List"]
  GETTABLEKS R8 R9 K4 ["find"]
  GETTABLEKS R9 R0 K5 ["messageIds"]
  GETTABLEKS R10 R7 K6 ["messageId"]
  CALL R8 2 1
  JUMPIF R8 [+14]
  DUPTABLE R10 K8 [{"messageId", "fadingOut"}]
  GETTABLEKS R11 R7 K6 ["messageId"]
  SETTABLEKS R11 R10 K6 ["messageId"]
  LOADB R11 1
  SETTABLEKS R11 R10 K7 ["fadingOut"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K11 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-26]
  GETIMPORT R3 K2 [ipairs]
  GETTABLEKS R4 R0 K5 ["messageIds"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  DUPTABLE R10 K8 [{"messageId", "fadingOut"}]
  SETTABLEKS R7 R10 K6 ["messageId"]
  LOADB R11 0
  SETTABLEKS R11 R10 K7 ["fadingOut"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K11 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-13]
  DUPTABLE R3 K12 [{"bubbles"}]
  SETTABLEKS R2 R3 K0 ["bubbles"]
  RETURN R3 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["messageId"]
  GETUPVAL R3 0
  JUMPIFNOTEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["List"]
  GETTABLEKS R1 R2 K1 ["filter"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["bubbles"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R1 2 1
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K4 [0] [+14]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["props"]
  GETTABLEKS R2 R3 K6 ["onLastBubbleFadeOut"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["props"]
  GETTABLEKS R2 R3 K6 ["onLastBubbleFadeOut"]
  CALL R2 0 0
  RETURN R0 0
  GETUPVAL R2 1
  DUPTABLE R4 K7 [{"bubbles"}]
  SETTABLEKS R1 R4 K3 ["bubbles"]
  NAMECALL R2 R2 K8 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R1 K0 ["messageIds"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R3 R1 K0 ["messageIds"]
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K1 [0] [+7]
  GETTABLEKS R2 R1 K2 ["onLastBubbleFadeOut"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R1 K2 ["onLastBubbleFadeOut"]
  CALL R2 0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["onBubbleFadeOut"]
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 2 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["chatSettings"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["UIListLayout"]
  DUPTABLE R5 K8 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R6 K11 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R6 R5 K4 ["SortOrder"]
  GETIMPORT R6 K13 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R6 R5 K5 ["HorizontalAlignment"]
  GETIMPORT R6 K15 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R6 R5 K6 ["VerticalAlignment"]
  GETIMPORT R6 K18 [UDim.new]
  LOADN R7 0
  GETTABLEKS R8 R2 K19 ["BubblesSpacing"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Padding"]
  CALL R3 2 1
  SETTABLEKS R3 R1 K20 ["Layout"]
  GETTABLEKS R3 R2 K21 ["TailVisible"]
  JUMPIFNOT R3 [+18]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K22 ["showCarat"]
  JUMPIFNOT R3 [+13]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K23 ["UIPadding"]
  DUPTABLE R5 K25 [{"PaddingBottom"}]
  GETIMPORT R6 K18 [UDim.new]
  LOADN R7 0
  LOADN R8 8
  CALL R6 2 1
  SETTABLEKS R6 R5 K24 ["PaddingBottom"]
  CALL R3 2 1
  SETTABLEKS R3 R1 K26 ["CaretPadding"]
  GETIMPORT R3 K28 [ipairs]
  GETTABLEKS R6 R0 K29 ["state"]
  GETTABLEKS R4 R6 K30 ["bubbles"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R11 R0 K29 ["state"]
  GETTABLEKS R10 R11 K30 ["bubbles"]
  LENGTH R9 R10
  JUMPIFEQ R6 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  JUMPIFNOT R8 [+5]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K31 ["renderFirstInsert"]
  JUMPIF R9 [+1]
  LOADNIL R9
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K32 ["insertSize"]
  LOADK R12 K33 ["Bubble"]
  GETTABLEKS R13 R7 K34 ["messageId"]
  CONCAT R11 R12 R13
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K40 [{"messageId", "isMostRecent", "theme", "fadingOut", "onFadeOut", "chatSettings", "renderInsert", "insertSize", "showCarat"}]
  GETTABLEKS R15 R7 K34 ["messageId"]
  SETTABLEKS R15 R14 K34 ["messageId"]
  SETTABLEKS R8 R14 K35 ["isMostRecent"]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K36 ["theme"]
  SETTABLEKS R15 R14 K36 ["theme"]
  GETTABLEKS R15 R7 K37 ["fadingOut"]
  SETTABLEKS R15 R14 K37 ["fadingOut"]
  GETTABLEKS R15 R0 K41 ["onBubbleFadeOut"]
  SETTABLEKS R15 R14 K38 ["onFadeOut"]
  SETTABLEKS R2 R14 K1 ["chatSettings"]
  SETTABLEKS R9 R14 K39 ["renderInsert"]
  SETTABLEKS R10 R14 K32 ["insertSize"]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K22 ["showCarat"]
  SETTABLEKS R15 R14 K22 ["showCarat"]
  CALL R12 2 1
  SETTABLE R12 R1 R11
  FORGLOOP R3 2 [inext] [-64]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K42 ["Frame"]
  DUPTABLE R5 K46 [{"Visible", "Size", "BackgroundTransparency"}]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K47 ["isVisible"]
  SETTABLEKS R6 R5 K43 ["Visible"]
  GETIMPORT R6 K50 [UDim2.fromScale]
  LOADN R7 1
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K44 ["Size"]
  LOADN R6 1
  SETTABLEKS R6 R5 K45 ["BackgroundTransparency"]
  MOVE R6 R1
  CALL R3 3 -1
  RETURN R3 -1

PROTO_5:
  DUPTABLE R2 K1 [{"messageIds"}]
  GETTABLEKS R4 R0 K2 ["userMessages"]
  GETTABLEKS R5 R1 K3 ["userId"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K0 ["messageIds"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["t"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K12 [script]
  GETTABLEKS R7 R8 K13 ["Parent"]
  GETTABLEKS R6 R7 K14 ["ChatBubble"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R10 K12 [script]
  GETTABLEKS R9 R10 K13 ["Parent"]
  GETTABLEKS R8 R9 K13 ["Parent"]
  GETTABLEKS R7 R8 K15 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K16 ["CoreGui"]
  NAMECALL R7 R7 K3 ["GetService"]
  CALL R7 2 1
  LOADK R9 K17 ["RobloxGui"]
  NAMECALL R7 R7 K18 ["WaitForChild"]
  CALL R7 2 1
  GETTABLEKS R8 R2 K19 ["Component"]
  LOADK R10 K20 ["BubbleChatList"]
  NAMECALL R8 R8 K21 ["extend"]
  CALL R8 2 1
  GETTABLEKS R9 R4 K22 ["strictInterface"]
  DUPTABLE R10 K31 [{"userId", "isVisible", "theme", "onLastBubbleFadeOut", "chatSettings", "renderFirstInsert", "insertSize", "messageIds"}]
  GETTABLEKS R11 R4 K32 ["string"]
  SETTABLEKS R11 R10 K23 ["userId"]
  GETTABLEKS R11 R4 K33 ["optional"]
  GETTABLEKS R12 R4 K34 ["boolean"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K24 ["isVisible"]
  GETTABLEKS R11 R4 K33 ["optional"]
  GETTABLEKS R12 R4 K32 ["string"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K25 ["theme"]
  GETTABLEKS R11 R4 K33 ["optional"]
  GETTABLEKS R12 R4 K35 ["callback"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K26 ["onLastBubbleFadeOut"]
  GETTABLEKS R11 R6 K36 ["IChatSettings"]
  SETTABLEKS R11 R10 K27 ["chatSettings"]
  GETTABLEKS R11 R4 K33 ["optional"]
  GETTABLEKS R12 R4 K35 ["callback"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K28 ["renderFirstInsert"]
  GETTABLEKS R11 R4 K33 ["optional"]
  GETTABLEKS R12 R4 K37 ["Vector2"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K29 ["insertSize"]
  GETTABLEKS R11 R4 K38 ["array"]
  GETTABLEKS R12 R4 K32 ["string"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K30 ["messageIds"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K39 ["validateProps"]
  DUPTABLE R9 K40 [{"theme"}]
  LOADK R10 K41 ["Light"]
  SETTABLEKS R10 R9 K25 ["theme"]
  SETTABLEKS R9 R8 K42 ["defaultProps"]
  DUPCLOSURE R9 K43 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K44 ["getDerivedStateFromProps"]
  DUPCLOSURE R9 K45 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K46 ["init"]
  DUPCLOSURE R9 K47 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K48 ["render"]
  DUPCLOSURE R9 K49 [PROTO_5]
  GETTABLEKS R10 R3 K50 ["connect"]
  MOVE R11 R9
  CALL R10 1 1
  MOVE R11 R8
  CALL R10 1 -1
  RETURN R10 -1
