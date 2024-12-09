PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Dictionary"]
  GETTABLEKS R3 R4 K3 ["join"]
  DUPTABLE R4 K5 [{"Size"}]
  GETIMPORT R5 K8 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 1
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  MOVE R5 R0
  DUPTABLE R6 K13 [{"BorderSizePixel", "BackgroundColor3", "BackgroundTransparency", "theme"}]
  LOADN R7 0
  SETTABLEKS R7 R6 K9 ["BorderSizePixel"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K14 ["Graphite"]
  SETTABLEKS R7 R6 K10 ["BackgroundColor3"]
  LOADK R7 K15 [0.5]
  SETTABLEKS R7 R6 K11 ["BackgroundTransparency"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["None"]
  SETTABLEKS R7 R6 K12 ["theme"]
  CALL R3 3 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K5 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K2 ["BackgroundTransparency"]
  GETIMPORT R4 K8 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 72
  CALL R4 4 1
  SETTABLEKS R4 R3 K3 ["Size"]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETIMPORT R4 K11 [Enum.AutomaticSize.XY]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K4 ["AutomaticSize"]
  DUPTABLE R4 K15 [{"ListLayout", "IconFrame", "TextFrame"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K16 ["UIListLayout"]
  DUPTABLE R7 K19 [{"FillDirection", "SortOrder"}]
  GETIMPORT R8 K21 [Enum.FillDirection.Horizontal]
  SETTABLEKS R8 R7 K17 ["FillDirection"]
  GETIMPORT R8 K23 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R8 R7 K18 ["SortOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["ListLayout"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K1 ["Frame"]
  DUPTABLE R7 K24 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K2 ["BackgroundTransparency"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 0
  LOADN R10 68
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K3 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K22 ["LayoutOrder"]
  DUPTABLE R8 K28 [{"Layout", "CustomIcon", "Icon"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K16 ["UIListLayout"]
  DUPTABLE R11 K31 [{"HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R12 K33 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K29 ["HorizontalAlignment"]
  GETIMPORT R12 K35 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K30 ["VerticalAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K25 ["Layout"]
  GETTABLEKS R10 R0 K37 ["iconComponent"]
  ORK R9 R10 K36 []
  SETTABLEKS R9 R8 K26 ["CustomIcon"]
  GETTABLEKS R9 R0 K38 ["icon"]
  JUMPIFNOT R9 [+21]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K40 [{"BackgroundTransparency", "Image", "Size"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K2 ["BackgroundTransparency"]
  GETTABLEKS R13 R0 K38 ["icon"]
  GETTABLEKS R12 R13 K39 ["Image"]
  SETTABLEKS R12 R11 K39 ["Image"]
  GETTABLEKS R13 R0 K38 ["icon"]
  GETTABLEKS R12 R13 K3 ["Size"]
  SETTABLEKS R12 R11 K3 ["Size"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K27 ["Icon"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K13 ["IconFrame"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K1 ["Frame"]
  DUPTABLE R7 K24 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K2 ["BackgroundTransparency"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 1
  LOADN R10 188
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K3 ["Size"]
  LOADN R8 2
  SETTABLEKS R8 R7 K22 ["LayoutOrder"]
  DUPTABLE R8 K43 [{"ListLayout", "Text", "SubText"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K16 ["UIListLayout"]
  DUPTABLE R11 K45 [{"FillDirection", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R12 K47 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K17 ["FillDirection"]
  GETIMPORT R12 K23 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K18 ["SortOrder"]
  GETIMPORT R12 K35 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K30 ["VerticalAlignment"]
  GETIMPORT R12 K49 [UDim.new]
  LOADN R13 0
  LOADN R14 2
  CALL R12 2 1
  SETTABLEKS R12 R11 K44 ["Padding"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["ListLayout"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K55 [{"AnchorPoint", "themeKey", "fontKey", "Size", "Text", "TextTruncate", "TextXAlignment"}]
  GETIMPORT R12 K57 [Vector2.new]
  LOADN R13 0
  LOADK R14 K58 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K50 ["AnchorPoint"]
  LOADK R12 K59 ["TextEmphasis"]
  SETTABLEKS R12 R11 K51 ["themeKey"]
  LOADK R12 K60 ["Header2"]
  SETTABLEKS R12 R11 K52 ["fontKey"]
  GETIMPORT R12 K8 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 20
  CALL R12 4 1
  SETTABLEKS R12 R11 K3 ["Size"]
  GETTABLEKS R12 R0 K61 ["text"]
  SETTABLEKS R12 R11 K41 ["Text"]
  GETIMPORT R12 K63 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R12 R11 K53 ["TextTruncate"]
  GETIMPORT R12 K64 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K54 ["TextXAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K41 ["Text"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K65 [{"AnchorPoint", "fontKey", "themeKey", "Size", "Text", "TextTruncate", "TextXAlignment"}]
  GETIMPORT R12 K57 [Vector2.new]
  LOADN R13 0
  LOADK R14 K58 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K50 ["AnchorPoint"]
  LOADK R12 K66 ["CaptionBody"]
  SETTABLEKS R12 R11 K52 ["fontKey"]
  LOADK R12 K67 ["TextMuted"]
  SETTABLEKS R12 R11 K51 ["themeKey"]
  GETIMPORT R12 K8 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 14
  CALL R12 4 1
  SETTABLEKS R12 R11 K3 ["Size"]
  GETTABLEKS R12 R0 K68 ["subtext"]
  SETTABLEKS R12 R11 K41 ["Text"]
  GETIMPORT R12 K63 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R12 R11 K53 ["TextTruncate"]
  GETIMPORT R12 K64 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K54 ["TextXAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K42 ["SubText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["TextFrame"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"userInteractionEnabled", "onActivated", "SelectionImageObject", "layoutOrder", "size", "head", "tail"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["userInteractionEnabled"]
  GETTABLEKS R4 R0 K2 ["onActivated"]
  SETTABLEKS R4 R3 K2 ["onActivated"]
  GETUPVAL R4 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K9 ["Square"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["SelectionImageObject"]
  GETTABLEKS R4 R0 K4 ["layoutOrder"]
  SETTABLEKS R4 R3 K4 ["layoutOrder"]
  GETIMPORT R4 K12 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 72
  CALL R4 4 1
  SETTABLEKS R4 R3 K5 ["size"]
  GETUPVAL R4 4
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["head"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K13 ["Frame"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K7 ["tail"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["closeDialog"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["buttonRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onCancel"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["selectReportCategory"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Category"]
  GETTABLEKS R1 R2 K3 ["Voice"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["selectReportCategory"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Category"]
  GETTABLEKS R1 R2 K3 ["Text"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["selectReportCategory"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Category"]
  GETTABLEKS R1 R2 K3 ["Experience"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["selectReportCategory"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Category"]
  GETTABLEKS R1 R2 K3 ["Other"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  GETTABLEKS R2 R0 K2 ["Theme"]
  GETUPVAL R3 1
  CALL R1 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"Theme"}]
  SETTABLEKS R1 R4 K2 ["Theme"]
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 3
  DUPTABLE R5 K6 [{"style"}]
  SETTABLEKS R2 R5 K5 ["style"]
  NEWTABLE R6 0 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K10 [{"Size", "CanvasSize", "scrollingFrameRef"}]
  GETIMPORT R10 K13 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K7 ["Size"]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 72
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["CanvasSize"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K9 ["scrollingFrameRef"]
  SETTABLEKS R10 R9 K9 ["scrollingFrameRef"]
  GETUPVAL R10 6
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_10:
  GETTABLEKS R3 R0 K0 ["props"]
  DUPTABLE R4 K2 [{"ListLayout"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K4 ["UIListLayout"]
  DUPTABLE R7 K7 [{"FillDirection", "SortOrder"}]
  GETIMPORT R8 K10 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K5 ["FillDirection"]
  GETIMPORT R8 K12 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R8 R7 K6 ["SortOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["ListLayout"]
  MOVE R5 R1
  JUMPIFNOT R1 [+39]
  GETUPVAL R6 1
  NAMECALL R6 R6 K13 ["getRecentUsersInteractionData"]
  CALL R6 1 1
  JUMPIFNOT R6 [+33]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K14 ["isEmpty"]
  MOVE R8 R6
  CALL R7 1 1
  JUMPIF R7 [+27]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K15 ["playerFocusedFlow"]
  JUMPIFNOT R7 [+23]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K16 ["targetPlayer"]
  JUMPIFNOT R7 [+15]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K16 ["targetPlayer"]
  GETTABLEKS R10 R11 K17 ["UserId"]
  FASTCALL1 TOSTRING R10 [+2]
  GETIMPORT R9 K19 [tostring]
  CALL R9 1 1
  GETTABLE R8 R6 R9
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  MOVE R5 R7
  JUMP [+1]
  LOADB R5 0
  JUMPIFNOT R5 [+50]
  MOVE R7 R4
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K25 [{"text", "subtext", "icon", "layoutOrder", "onActivated"}]
  GETTABLEKS R11 R2 K26 ["voiceHeader"]
  SETTABLEKS R11 R10 K20 ["text"]
  GETTABLEKS R11 R2 K27 ["voiceDescription"]
  SETTABLEKS R11 R10 K21 ["subtext"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K28 ["Images"]
  GETTABLEKS R11 R12 K29 ["VoiceChatIcon"]
  SETTABLEKS R11 R10 K22 ["icon"]
  LENGTH R12 R4
  ADDK R11 R12 K30 [1]
  SETTABLEKS R11 R10 K23 ["layoutOrder"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R11 R10 K24 ["onActivated"]
  CALL R8 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K33 [table.insert]
  CALL R6 -1 0
  MOVE R7 R4
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K34 [{"LayoutOrder"}]
  LENGTH R12 R4
  ADDK R11 R12 K30 [1]
  SETTABLEKS R11 R10 K11 ["LayoutOrder"]
  CALL R8 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K33 [table.insert]
  CALL R6 -1 0
  MOVE R7 R4
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K25 [{"text", "subtext", "icon", "layoutOrder", "onActivated"}]
  GETTABLEKS R11 R2 K35 ["textHeader"]
  SETTABLEKS R11 R10 K20 ["text"]
  GETTABLEKS R11 R2 K36 ["textDescription"]
  SETTABLEKS R11 R10 K21 ["subtext"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K28 ["Images"]
  GETTABLEKS R11 R12 K37 ["TextChatIcon"]
  SETTABLEKS R11 R10 K22 ["icon"]
  LENGTH R12 R4
  ADDK R11 R12 K30 [1]
  SETTABLEKS R11 R10 K23 ["layoutOrder"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R11 R10 K24 ["onActivated"]
  CALL R8 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K33 [table.insert]
  CALL R6 -1 0
  MOVE R7 R4
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K34 [{"LayoutOrder"}]
  LENGTH R12 R4
  ADDK R11 R12 K30 [1]
  SETTABLEKS R11 R10 K11 ["LayoutOrder"]
  CALL R8 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K33 [table.insert]
  CALL R6 -1 0
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K15 ["playerFocusedFlow"]
  JUMPIF R6 [+67]
  MOVE R7 R4
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K39 [{"iconComponent", "text", "subtext", "layoutOrder", "onActivated"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 7
  DUPTABLE R13 K43 [{"gameId", "iconSize", "cornerRadius"}]
  GETIMPORT R15 K45 [game]
  GETTABLEKS R14 R15 K46 ["GameId"]
  SETTABLEKS R14 R13 K40 ["gameId"]
  LOADN R14 33
  SETTABLEKS R14 R13 K41 ["iconSize"]
  GETIMPORT R14 K49 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K42 ["cornerRadius"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K38 ["iconComponent"]
  GETTABLEKS R11 R2 K50 ["experienceHeader"]
  SETTABLEKS R11 R10 K20 ["text"]
  GETTABLEKS R11 R2 K51 ["experienceDescription"]
  SETTABLEKS R11 R10 K21 ["subtext"]
  LENGTH R12 R4
  ADDK R11 R12 K30 [1]
  SETTABLEKS R11 R10 K23 ["layoutOrder"]
  NEWCLOSURE R11 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R11 R10 K24 ["onActivated"]
  CALL R8 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K33 [table.insert]
  CALL R6 -1 0
  MOVE R7 R4
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K34 [{"LayoutOrder"}]
  LENGTH R12 R4
  ADDK R11 R12 K30 [1]
  SETTABLEKS R11 R10 K11 ["LayoutOrder"]
  CALL R8 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K33 [table.insert]
  CALL R6 -1 0
  MOVE R7 R4
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K25 [{"text", "subtext", "icon", "layoutOrder", "onActivated"}]
  GETTABLEKS R11 R2 K52 ["otherHeader"]
  SETTABLEKS R11 R10 K20 ["text"]
  GETTABLEKS R11 R2 K53 ["otherDescription"]
  SETTABLEKS R11 R10 K21 ["subtext"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K28 ["Images"]
  GETTABLEKS R11 R12 K54 ["OtherIcon"]
  SETTABLEKS R11 R10 K22 ["icon"]
  LENGTH R12 R4
  ADDK R11 R12 K30 [1]
  SETTABLEKS R11 R10 K23 ["layoutOrder"]
  NEWCLOSURE R11 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R11 R10 K24 ["onActivated"]
  CALL R8 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K33 [table.insert]
  CALL R6 -1 0
  MOVE R7 R4
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K34 [{"LayoutOrder"}]
  LENGTH R12 R4
  ADDK R11 R12 K30 [1]
  SETTABLEKS R11 R10 K11 ["LayoutOrder"]
  CALL R8 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K33 [table.insert]
  CALL R6 -1 0
  GETUPVAL R6 8
  NEWCLOSURE R7 P4
  CAPTURE UPVAL U2
  CAPTURE UPVAL U9
  CAPTURE UPVAL U0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE VAL R0
  CAPTURE VAL R4
  CALL R6 1 -1
  RETURN R6 -1

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K2 [{"ModalDialog"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K10 [{"visible", "screenSize", "titleText", "contents", "showCloseButton", "onDismiss"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["props"]
  GETTABLEKS R6 R7 K12 ["isReportCategoryMenuOpen"]
  SETTABLEKS R6 R5 K4 ["visible"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["props"]
  GETTABLEKS R6 R7 K5 ["screenSize"]
  SETTABLEKS R6 R5 K5 ["screenSize"]
  GETTABLEKS R6 R0 K6 ["titleText"]
  SETTABLEKS R6 R5 K6 ["titleText"]
  GETUPVAL R6 2
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K13 ["voiceEnabled"]
  MOVE R9 R0
  NAMECALL R6 R6 K14 ["renderContents"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["contents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["showCloseButton"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["onCancel"]
  SETTABLEKS R6 R5 K9 ["onDismiss"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["ModalDialog"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_12:
  GETUPVAL R1 0
  DUPTABLE R2 K10 [{"titleText", "dismissText", "voiceHeader", "voiceDescription", "textHeader", "textDescription", "experienceHeader", "experienceDescription", "otherHeader", "otherDescription"}]
  LOADK R3 K11 ["CoreScripts.InGameMenu.Report.MenuTitle"]
  SETTABLEKS R3 R2 K0 ["titleText"]
  LOADK R3 K12 ["CoreScripts.InGameMenu.Report.Done"]
  SETTABLEKS R3 R2 K1 ["dismissText"]
  LOADK R3 K13 ["CoreScripts.InGameMenu.Report.Category.Header.Voice"]
  SETTABLEKS R3 R2 K2 ["voiceHeader"]
  LOADK R3 K14 ["CoreScripts.InGameMenu.Report.Category.Description.Voice"]
  SETTABLEKS R3 R2 K3 ["voiceDescription"]
  LOADK R3 K15 ["CoreScripts.InGameMenu.Report.Category.Header.Text"]
  SETTABLEKS R3 R2 K4 ["textHeader"]
  LOADK R3 K16 ["CoreScripts.InGameMenu.Report.Category.Description.Text"]
  SETTABLEKS R3 R2 K5 ["textDescription"]
  LOADK R3 K17 ["CoreScripts.InGameMenu.Report.Category.Header.Experience"]
  SETTABLEKS R3 R2 K6 ["experienceHeader"]
  LOADK R3 K18 ["CoreScripts.InGameMenu.Report.Category.Description.Experience"]
  SETTABLEKS R3 R2 K7 ["experienceDescription"]
  LOADK R3 K19 ["CoreScripts.InGameMenu.Report.Category.Header.Other"]
  SETTABLEKS R3 R2 K8 ["otherHeader"]
  LOADK R3 K20 ["CoreScripts.InGameMenu.Report.Category.Description.Other"]
  SETTABLEKS R3 R2 K9 ["otherDescription"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_14:
  DUPTABLE R2 K5 [{"isReportCategoryMenuOpen", "reportType", "targetPlayer", "screenSize", "playerFocusedFlow"}]
  GETTABLEKS R5 R0 K6 ["report"]
  GETTABLEKS R4 R5 K7 ["currentPage"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["Page"]
  GETTABLEKS R5 R6 K9 ["Category"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isReportCategoryMenuOpen"]
  GETTABLEKS R4 R0 K6 ["report"]
  GETTABLEKS R3 R4 K1 ["reportType"]
  SETTABLEKS R3 R2 K1 ["reportType"]
  GETTABLEKS R4 R0 K6 ["report"]
  GETTABLEKS R3 R4 K2 ["targetPlayer"]
  SETTABLEKS R3 R2 K2 ["targetPlayer"]
  GETTABLEKS R4 R0 K10 ["displayOptions"]
  GETTABLEKS R3 R4 K3 ["screenSize"]
  SETTABLEKS R3 R2 K3 ["screenSize"]
  GETTABLEKS R5 R0 K6 ["report"]
  GETTABLEKS R4 R5 K11 ["beginningReportType"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K12 ["ReportType"]
  GETTABLEKS R5 R6 K13 ["Player"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["playerFocusedFlow"]
  RETURN R2 1

PROTO_15:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  GETUPVAL R0 2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["Analytics"]
  GETTABLEKS R1 R2 K1 ["ReportType"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K0 ["Analytics"]
  GETTABLEKS R2 R3 K2 ["ReportFlowAbandoned"]
  DUPTABLE R3 K4 [{"source"}]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K0 ["Analytics"]
  GETTABLEKS R4 R5 K1 ["ReportType"]
  SETTABLEKS R4 R3 K3 ["source"]
  CALL R0 3 0
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K5 ["endAbuseReportSession"]
  CALL R0 0 0
  RETURN R0 0

PROTO_17:
  DUPTABLE R1 K2 [{"selectReportCategory", "closeDialog"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["selectReportCategory"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K1 ["closeDialog"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContextActionService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["GuiService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R1 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R1 K8 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R1 K8 ["Packages"]
  GETTABLEKS R6 R7 K11 ["UIBlox"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R8 R1 K8 ["Packages"]
  GETTABLEKS R7 R8 K12 ["t"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R9 R1 K8 ["Packages"]
  GETTABLEKS R8 R9 K13 ["Cryo"]
  CALL R7 1 1
  GETIMPORT R10 K15 [script]
  GETTABLEKS R9 R10 K16 ["Parent"]
  GETTABLEKS R8 R9 K16 ["Parent"]
  GETIMPORT R9 K7 [require]
  GETTABLEKS R10 R8 K17 ["Dependencies"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETTABLEKS R11 R9 K18 ["FocusHandler"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R12 R9 K19 ["playerInterface"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R13 R9 K20 ["ThemedTextLabel"]
  CALL R12 1 1
  GETIMPORT R13 K7 [require]
  GETTABLEKS R14 R9 K21 ["withLocalization"]
  CALL R13 1 1
  GETIMPORT R14 K1 [game]
  LOADK R16 K22 ["CoreGui"]
  NAMECALL R14 R14 K3 ["GetService"]
  CALL R14 2 1
  LOADK R17 K23 ["RobloxGui"]
  NAMECALL R15 R14 K24 ["WaitForChild"]
  CALL R15 2 1
  GETIMPORT R17 K7 [require]
  GETTABLEKS R20 R15 K25 ["Modules"]
  GETTABLEKS R19 R20 K26 ["VoiceChat"]
  GETTABLEKS R18 R19 K27 ["VoiceStateContext"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K28 ["withVoiceState"]
  GETIMPORT R18 K7 [require]
  GETTABLEKS R21 R15 K25 ["Modules"]
  GETTABLEKS R20 R21 K26 ["VoiceChat"]
  GETTABLEKS R19 R20 K29 ["VoiceChatServiceManager"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K30 ["default"]
  GETTABLEKS R20 R5 K31 ["Core"]
  GETTABLEKS R19 R20 K32 ["ImageSet"]
  GETTABLEKS R18 R19 K33 ["ImageSetLabel"]
  GETIMPORT R19 K7 [require]
  GETTABLEKS R20 R9 K34 ["GameIcon"]
  CALL R19 1 1
  GETIMPORT R20 K7 [require]
  GETTABLEKS R22 R8 K35 ["Components"]
  GETTABLEKS R21 R22 K36 ["BlockPlayerItem"]
  CALL R20 1 1
  GETIMPORT R21 K7 [require]
  GETTABLEKS R23 R8 K37 ["Actions"]
  GETTABLEKS R22 R23 K38 ["EndReportFlow"]
  CALL R21 1 1
  GETIMPORT R22 K7 [require]
  GETTABLEKS R24 R8 K37 ["Actions"]
  GETTABLEKS R23 R24 K39 ["OpenBlockPlayerDialog"]
  CALL R22 1 1
  GETIMPORT R23 K7 [require]
  GETTABLEKS R25 R8 K37 ["Actions"]
  GETTABLEKS R24 R25 K40 ["SelectReportCategory"]
  CALL R23 1 1
  GETIMPORT R24 K7 [require]
  GETTABLEKS R26 R8 K41 ["Utility"]
  GETTABLEKS R25 R26 K42 ["SendAnalytics"]
  CALL R24 1 1
  GETIMPORT R25 K7 [require]
  GETTABLEKS R27 R8 K41 ["Utility"]
  GETTABLEKS R26 R27 K43 ["SessionUtility"]
  CALL R25 1 1
  GETIMPORT R26 K7 [require]
  GETTABLEKS R28 R8 K44 ["Resources"]
  GETTABLEKS R27 R28 K45 ["Constants"]
  CALL R26 1 1
  GETIMPORT R27 K7 [require]
  GETTABLEKS R29 R8 K35 ["Components"]
  GETTABLEKS R28 R29 K46 ["ModalDialog"]
  CALL R27 1 1
  GETIMPORT R28 K7 [require]
  GETTABLEKS R30 R8 K44 ["Resources"]
  GETTABLEKS R29 R30 K47 ["Assets"]
  CALL R28 1 1
  GETIMPORT R29 K7 [require]
  GETTABLEKS R31 R8 K35 ["Components"]
  GETTABLEKS R30 R31 K48 ["GameCell"]
  CALL R29 1 1
  GETIMPORT R30 K7 [require]
  GETTABLEKS R31 R9 K49 ["BarOnTopScrollingFrame"]
  CALL R30 1 1
  GETTABLEKS R33 R5 K50 ["App"]
  GETTABLEKS R32 R33 K51 ["Table"]
  GETTABLEKS R31 R32 K52 ["Cell"]
  GETTABLEKS R34 R5 K50 ["App"]
  GETTABLEKS R33 R34 K53 ["SelectionImage"]
  GETTABLEKS R32 R33 K54 ["useSelectionCursor"]
  GETTABLEKS R35 R5 K50 ["App"]
  GETTABLEKS R34 R35 K53 ["SelectionImage"]
  GETTABLEKS R33 R34 K55 ["CursorKind"]
  GETTABLEKS R36 R5 K31 ["Core"]
  GETTABLEKS R35 R36 K56 ["Style"]
  GETTABLEKS R34 R35 K57 ["Provider"]
  GETTABLEKS R37 R5 K31 ["Core"]
  GETTABLEKS R36 R37 K56 ["Style"]
  GETTABLEKS R35 R36 K58 ["withStyle"]
  GETTABLEKS R38 R5 K50 ["App"]
  GETTABLEKS R37 R38 K56 ["Style"]
  GETTABLEKS R36 R37 K59 ["Colors"]
  GETIMPORT R37 K7 [require]
  GETTABLEKS R40 R15 K25 ["Modules"]
  GETTABLEKS R39 R40 K60 ["Flags"]
  GETTABLEKS R38 R39 K61 ["GetFFlagReportMenuCellToUseAutomaticSize"]
  CALL R37 1 1
  DUPTABLE R38 K65 [{"BackgroundDefault", "BackgroundOnHover", "BackgroundOnPress"}]
  DUPTABLE R39 K68 [{"Color", "Transparency"}]
  GETTABLEKS R40 R36 K69 ["Flint"]
  SETTABLEKS R40 R39 K66 ["Color"]
  LOADN R40 1
  SETTABLEKS R40 R39 K67 ["Transparency"]
  SETTABLEKS R39 R38 K62 ["BackgroundDefault"]
  DUPTABLE R39 K68 [{"Color", "Transparency"}]
  GETTABLEKS R40 R36 K70 ["Graphite"]
  SETTABLEKS R40 R39 K66 ["Color"]
  LOADK R40 K71 [0.666]
  SETTABLEKS R40 R39 K67 ["Transparency"]
  SETTABLEKS R39 R38 K63 ["BackgroundOnHover"]
  DUPTABLE R39 K68 [{"Color", "Transparency"}]
  GETTABLEKS R40 R36 K70 ["Graphite"]
  SETTABLEKS R40 R39 K66 ["Color"]
  LOADN R40 0
  SETTABLEKS R40 R39 K67 ["Transparency"]
  SETTABLEKS R39 R38 K64 ["BackgroundOnPress"]
  DUPCLOSURE R39 K72 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R36
  DUPCLOSURE R40 K73 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R37
  CAPTURE VAL R18
  CAPTURE VAL R12
  DUPCLOSURE R41 K74 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R31
  CAPTURE VAL R32
  CAPTURE VAL R33
  CAPTURE VAL R40
  GETTABLEKS R42 R3 K75 ["PureComponent"]
  LOADK R44 K76 ["ReportCategoryDialog"]
  NAMECALL R42 R42 K77 ["extend"]
  CALL R42 2 1
  GETTABLEKS R43 R6 K78 ["strictInterface"]
  DUPTABLE R44 K87 [{"isReportCategoryMenuOpen", "screenSize", "inputType", "reportType", "targetPlayer", "closeDialog", "selectReportCategory", "playerFocusedFlow"}]
  GETTABLEKS R45 R6 K88 ["boolean"]
  SETTABLEKS R45 R44 K79 ["isReportCategoryMenuOpen"]
  GETTABLEKS R45 R6 K89 ["Vector2"]
  SETTABLEKS R45 R44 K80 ["screenSize"]
  GETTABLEKS R45 R6 K90 ["optional"]
  GETTABLEKS R46 R6 K91 ["string"]
  CALL R45 1 1
  SETTABLEKS R45 R44 K81 ["inputType"]
  GETTABLEKS R45 R6 K90 ["optional"]
  GETTABLEKS R46 R6 K92 ["valueOf"]
  GETTABLEKS R47 R26 K93 ["ReportType"]
  CALL R46 1 -1
  CALL R45 -1 1
  SETTABLEKS R45 R44 K82 ["reportType"]
  GETTABLEKS R45 R6 K90 ["optional"]
  MOVE R46 R11
  CALL R45 1 1
  SETTABLEKS R45 R44 K83 ["targetPlayer"]
  GETTABLEKS R45 R6 K94 ["callback"]
  SETTABLEKS R45 R44 K84 ["closeDialog"]
  GETTABLEKS R45 R6 K90 ["optional"]
  GETTABLEKS R46 R6 K94 ["callback"]
  CALL R45 1 1
  SETTABLEKS R45 R44 K85 ["selectReportCategory"]
  GETTABLEKS R45 R6 K88 ["boolean"]
  SETTABLEKS R45 R44 K86 ["playerFocusedFlow"]
  CALL R43 1 1
  SETTABLEKS R43 R42 K95 ["validateProps"]
  DUPCLOSURE R43 K96 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R43 R42 K97 ["init"]
  DUPCLOSURE R43 K98 [PROTO_10]
  CAPTURE VAL R3
  CAPTURE VAL R17
  CAPTURE VAL R7
  CAPTURE VAL R41
  CAPTURE VAL R28
  CAPTURE VAL R26
  CAPTURE VAL R39
  CAPTURE VAL R19
  CAPTURE VAL R35
  CAPTURE VAL R38
  CAPTURE VAL R34
  CAPTURE VAL R30
  SETTABLEKS R43 R42 K99 ["renderContents"]
  DUPCLOSURE R43 K100 [PROTO_13]
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R27
  SETTABLEKS R43 R42 K101 ["render"]
  GETTABLEKS R43 R4 K102 ["UNSTABLE_connect2"]
  DUPCLOSURE R44 K103 [PROTO_14]
  CAPTURE VAL R26
  DUPCLOSURE R45 K104 [PROTO_17]
  CAPTURE VAL R23
  CAPTURE VAL R21
  CAPTURE VAL R24
  CAPTURE VAL R26
  CAPTURE VAL R25
  CALL R43 2 1
  MOVE R44 R42
  CALL R43 1 -1
  RETURN R43 -1
