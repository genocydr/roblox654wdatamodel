PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onCancelActivated"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onConfirmActivated"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onCancelActivated"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onConfirmActivated"]
  LOADNIL R1
  LOADNIL R2
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["isMuted"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K4 ["isBlocked"]
  JUMPIFNOT R3 [+9]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R1 R3 K5 ["mutedAndBlockedTitleText"]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R2 R3 K6 ["mutedAndBlockedSubtitleText"]
  JUMP [+27]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["isMuted"]
  JUMPIFNOT R3 [+9]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R1 R3 K7 ["mutedTitleText"]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R2 R3 K8 ["mutedSubtitleText"]
  JUMP [+13]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K4 ["isBlocked"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R1 R3 K9 ["blockedTitleText"]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R2 R3 K10 ["blockedSubtitleText"]
  DUPTABLE R5 K13 [{"titleText", "subtitleText"}]
  SETTABLEKS R1 R5 K11 ["titleText"]
  SETTABLEKS R2 R5 K12 ["subtitleText"]
  NAMECALL R3 R0 K14 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["Font"]
  GETTABLEKS R1 R2 K1 ["BaseSize"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K3 ["Frame"]
  DUPTABLE R4 K9 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "ZIndex"}]
  GETIMPORT R5 K12 [UDim2.fromScale]
  LOADN R6 1
  LOADN R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Size"]
  GETIMPORT R5 K15 [Vector2.new]
  LOADK R6 K16 [0.5]
  LOADK R7 K16 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["AnchorPoint"]
  GETIMPORT R5 K12 [UDim2.fromScale]
  LOADK R6 K16 [0.5]
  LOADK R7 K16 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Position"]
  LOADN R5 1
  SETTABLEKS R5 R4 K7 ["BackgroundTransparency"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K17 ["props"]
  GETTABLEKS R5 R6 K8 ["ZIndex"]
  SETTABLEKS R5 R4 K8 ["ZIndex"]
  DUPTABLE R5 K24 [{"uiScale", "layout", "title", "subtitle", "spacer", "actions"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K25 ["UIScale"]
  DUPTABLE R8 K27 [{"Scale"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K17 ["props"]
  GETTABLEKS R9 R10 K18 ["uiScale"]
  SETTABLEKS R9 R8 K26 ["Scale"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["uiScale"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K28 ["UIListLayout"]
  DUPTABLE R8 K34 [{"VerticalAlignment", "HorizontalAlignment", "Padding", "FillDirection", "SortOrder"}]
  GETIMPORT R9 K37 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K29 ["VerticalAlignment"]
  GETIMPORT R9 K39 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R9 R8 K30 ["HorizontalAlignment"]
  GETIMPORT R9 K41 [UDim.new]
  LOADN R10 0
  LOADN R11 22
  CALL R9 2 1
  SETTABLEKS R9 R8 K31 ["Padding"]
  GETIMPORT R9 K43 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K32 ["FillDirection"]
  GETIMPORT R9 K45 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R9 R8 K33 ["SortOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K19 ["layout"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K46 ["TextLabel"]
  DUPTABLE R8 K52 [{"Text", "TextColor3", "TextTransparency", "TextSize", "Font", "BackgroundTransparency", "AutomaticSize", "LayoutOrder"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K53 ["state"]
  GETTABLEKS R9 R10 K54 ["titleText"]
  SETTABLEKS R9 R8 K47 ["Text"]
  GETTABLEKS R11 R0 K55 ["Theme"]
  GETTABLEKS R10 R11 K56 ["TextEmphasis"]
  GETTABLEKS R9 R10 K57 ["Color"]
  SETTABLEKS R9 R8 K48 ["TextColor3"]
  GETTABLEKS R11 R0 K55 ["Theme"]
  GETTABLEKS R10 R11 K56 ["TextEmphasis"]
  GETTABLEKS R9 R10 K58 ["Transparency"]
  SETTABLEKS R9 R8 K49 ["TextTransparency"]
  GETTABLEKS R12 R0 K0 ["Font"]
  GETTABLEKS R11 R12 K59 ["Header1"]
  GETTABLEKS R10 R11 K60 ["RelativeSize"]
  MUL R9 R10 R1
  SETTABLEKS R9 R8 K50 ["TextSize"]
  GETTABLEKS R11 R0 K0 ["Font"]
  GETTABLEKS R10 R11 K59 ["Header1"]
  GETTABLEKS R9 R10 K0 ["Font"]
  SETTABLEKS R9 R8 K0 ["Font"]
  LOADN R9 1
  SETTABLEKS R9 R8 K7 ["BackgroundTransparency"]
  GETIMPORT R9 K62 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K51 ["AutomaticSize"]
  LOADN R9 1
  SETTABLEKS R9 R8 K44 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K20 ["title"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K46 ["TextLabel"]
  DUPTABLE R8 K64 [{"Size", "Text", "TextColor3", "TextTransparency", "TextSize", "Font", "TextWrapped", "BackgroundTransparency", "AutomaticSize", "LayoutOrder"}]
  GETIMPORT R9 K66 [UDim2.fromOffset]
  LOADN R10 100
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K4 ["Size"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K53 ["state"]
  GETTABLEKS R9 R10 K67 ["subtitleText"]
  SETTABLEKS R9 R8 K47 ["Text"]
  GETTABLEKS R11 R0 K55 ["Theme"]
  GETTABLEKS R10 R11 K56 ["TextEmphasis"]
  GETTABLEKS R9 R10 K57 ["Color"]
  SETTABLEKS R9 R8 K48 ["TextColor3"]
  GETTABLEKS R11 R0 K55 ["Theme"]
  GETTABLEKS R10 R11 K56 ["TextEmphasis"]
  GETTABLEKS R9 R10 K58 ["Transparency"]
  SETTABLEKS R9 R8 K49 ["TextTransparency"]
  GETTABLEKS R12 R0 K0 ["Font"]
  GETTABLEKS R11 R12 K68 ["CaptionHeader"]
  GETTABLEKS R10 R11 K60 ["RelativeSize"]
  MUL R9 R10 R1
  SETTABLEKS R9 R8 K50 ["TextSize"]
  GETTABLEKS R11 R0 K0 ["Font"]
  GETTABLEKS R10 R11 K68 ["CaptionHeader"]
  GETTABLEKS R9 R10 K0 ["Font"]
  SETTABLEKS R9 R8 K0 ["Font"]
  LOADB R9 1
  SETTABLEKS R9 R8 K63 ["TextWrapped"]
  LOADN R9 1
  SETTABLEKS R9 R8 K7 ["BackgroundTransparency"]
  GETIMPORT R9 K70 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K51 ["AutomaticSize"]
  LOADN R9 2
  SETTABLEKS R9 R8 K44 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K21 ["subtitle"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K3 ["Frame"]
  DUPTABLE R8 K71 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K7 ["BackgroundTransparency"]
  GETIMPORT R9 K66 [UDim2.fromOffset]
  LOADN R10 0
  LOADN R11 62
  CALL R9 2 1
  SETTABLEKS R9 R8 K4 ["Size"]
  LOADN R9 3
  SETTABLEKS R9 R8 K44 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K22 ["spacer"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K3 ["Frame"]
  DUPTABLE R8 K72 [{"Size", "BackgroundTransparency", "AutomaticSize", "LayoutOrder"}]
  GETIMPORT R9 K66 [UDim2.fromOffset]
  LOADN R10 72
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K4 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K7 ["BackgroundTransparency"]
  GETIMPORT R9 K70 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K51 ["AutomaticSize"]
  LOADN R9 4
  SETTABLEKS R9 R8 K44 ["LayoutOrder"]
  DUPTABLE R9 K75 [{"layout", "cancelContainer", "confirmContainer"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  LOADK R11 K28 ["UIListLayout"]
  DUPTABLE R12 K34 [{"VerticalAlignment", "HorizontalAlignment", "Padding", "FillDirection", "SortOrder"}]
  GETIMPORT R13 K76 [Enum.VerticalAlignment.Center]
  SETTABLEKS R13 R12 K29 ["VerticalAlignment"]
  GETIMPORT R13 K39 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K30 ["HorizontalAlignment"]
  GETIMPORT R13 K41 [UDim.new]
  LOADN R14 0
  LOADN R15 70
  CALL R13 2 1
  SETTABLEKS R13 R12 K31 ["Padding"]
  GETIMPORT R13 K78 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K32 ["FillDirection"]
  GETIMPORT R13 K45 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K33 ["SortOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["layout"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  LOADK R11 K3 ["Frame"]
  DUPTABLE R12 K81 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size", "LayoutOrder"}]
  GETTABLEKS R15 R0 K55 ["Theme"]
  GETTABLEKS R14 R15 K82 ["SystemPrimaryContent"]
  GETTABLEKS R13 R14 K57 ["Color"]
  SETTABLEKS R13 R12 K79 ["BackgroundColor3"]
  GETTABLEKS R15 R0 K55 ["Theme"]
  GETTABLEKS R14 R15 K82 ["SystemPrimaryContent"]
  GETTABLEKS R13 R14 K58 ["Transparency"]
  SETTABLEKS R13 R12 K7 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K80 ["BorderSizePixel"]
  GETIMPORT R13 K66 [UDim2.fromOffset]
  LOADN R14 234
  LOADN R15 44
  CALL R13 2 1
  SETTABLEKS R13 R12 K4 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K44 ["LayoutOrder"]
  DUPTABLE R13 K85 [{"uiCorner", "cancelButton"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K2 ["createElement"]
  LOADK R15 K86 ["UICorner"]
  DUPTABLE R16 K88 [{"CornerRadius"}]
  GETIMPORT R17 K41 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K87 ["CornerRadius"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K83 ["uiCorner"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K2 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K92 [{"size", "text", "onActivated"}]
  GETIMPORT R17 K12 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K89 ["size"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K17 ["props"]
  GETTABLEKS R17 R18 K93 ["cancelText"]
  SETTABLEKS R17 R16 K90 ["text"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K94 ["onCancelActivated"]
  SETTABLEKS R17 R16 K91 ["onActivated"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K84 ["cancelButton"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K73 ["cancelContainer"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  LOADK R11 K3 ["Frame"]
  DUPTABLE R12 K81 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size", "LayoutOrder"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K95 ["App"]
  GETTABLEKS R15 R16 K96 ["Style"]
  GETTABLEKS R14 R15 K97 ["Colors"]
  GETTABLEKS R13 R14 K98 ["Blue"]
  SETTABLEKS R13 R12 K79 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K7 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K80 ["BorderSizePixel"]
  GETIMPORT R13 K66 [UDim2.fromOffset]
  LOADN R14 234
  LOADN R15 44
  CALL R13 2 1
  SETTABLEKS R13 R12 K4 ["Size"]
  LOADN R13 2
  SETTABLEKS R13 R12 K44 ["LayoutOrder"]
  DUPTABLE R13 K100 [{"uiCorner", "confirmButton"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K2 ["createElement"]
  LOADK R15 K86 ["UICorner"]
  DUPTABLE R16 K88 [{"CornerRadius"}]
  GETIMPORT R17 K41 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K87 ["CornerRadius"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K83 ["uiCorner"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K2 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K92 [{"size", "text", "onActivated"}]
  GETIMPORT R17 K12 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K89 ["size"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K17 ["props"]
  GETTABLEKS R17 R18 K101 ["confirmText"]
  SETTABLEKS R17 R16 K90 ["text"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K102 ["onConfirmActivated"]
  SETTABLEKS R17 R16 K91 ["onActivated"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K99 ["confirmButton"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K74 ["confirmContainer"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K23 ["actions"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["t"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["Style"]
  GETTABLEKS R4 R5 K11 ["withStyle"]
  GETTABLEKS R7 R3 K12 ["App"]
  GETTABLEKS R6 R7 K13 ["Button"]
  GETTABLEKS R5 R6 K14 ["TextButton"]
  GETTABLEKS R6 R1 K15 ["PureComponent"]
  LOADK R8 K16 ["ReportActionSelection"]
  NAMECALL R6 R6 K17 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K18 [PROTO_0]
  DUPTABLE R8 K25 [{"isMuted", "isBlocked", "onCancelActivated", "onConfirmActivated", "ZIndex", "uiScale"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K19 ["isMuted"]
  LOADB R9 1
  SETTABLEKS R9 R8 K20 ["isBlocked"]
  SETTABLEKS R7 R8 K21 ["onCancelActivated"]
  SETTABLEKS R7 R8 K22 ["onConfirmActivated"]
  LOADN R9 1
  SETTABLEKS R9 R8 K23 ["ZIndex"]
  LOADK R9 K26 [1.3]
  SETTABLEKS R9 R8 K24 ["uiScale"]
  SETTABLEKS R8 R6 K27 ["defaultProps"]
  GETTABLEKS R8 R2 K28 ["strictInterface"]
  DUPTABLE R9 K37 [{"mutedTitleText", "blockedTitleText", "mutedAndBlockedTitleText", "mutedSubtitleText", "blockedSubtitleText", "mutedAndBlockedSubtitleText", "cancelText", "confirmText", "isMuted", "isBlocked", "onCancelActivated", "onConfirmActivated", "ZIndex", "uiScale"}]
  GETTABLEKS R10 R2 K38 ["string"]
  SETTABLEKS R10 R9 K29 ["mutedTitleText"]
  GETTABLEKS R10 R2 K38 ["string"]
  SETTABLEKS R10 R9 K30 ["blockedTitleText"]
  GETTABLEKS R10 R2 K38 ["string"]
  SETTABLEKS R10 R9 K31 ["mutedAndBlockedTitleText"]
  GETTABLEKS R10 R2 K38 ["string"]
  SETTABLEKS R10 R9 K32 ["mutedSubtitleText"]
  GETTABLEKS R10 R2 K38 ["string"]
  SETTABLEKS R10 R9 K33 ["blockedSubtitleText"]
  GETTABLEKS R10 R2 K38 ["string"]
  SETTABLEKS R10 R9 K34 ["mutedAndBlockedSubtitleText"]
  GETTABLEKS R10 R2 K38 ["string"]
  SETTABLEKS R10 R9 K35 ["cancelText"]
  GETTABLEKS R10 R2 K38 ["string"]
  SETTABLEKS R10 R9 K36 ["confirmText"]
  GETTABLEKS R10 R2 K39 ["boolean"]
  SETTABLEKS R10 R9 K19 ["isMuted"]
  GETTABLEKS R10 R2 K39 ["boolean"]
  SETTABLEKS R10 R9 K20 ["isBlocked"]
  GETTABLEKS R10 R2 K40 ["callback"]
  SETTABLEKS R10 R9 K21 ["onCancelActivated"]
  GETTABLEKS R10 R2 K40 ["callback"]
  SETTABLEKS R10 R9 K22 ["onConfirmActivated"]
  GETTABLEKS R10 R2 K41 ["optional"]
  GETTABLEKS R11 R2 K42 ["number"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K23 ["ZIndex"]
  GETTABLEKS R10 R2 K41 ["optional"]
  GETTABLEKS R11 R2 K42 ["number"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["uiScale"]
  CALL R8 1 1
  SETTABLEKS R8 R6 K43 ["validateProps"]
  DUPCLOSURE R8 K44 [PROTO_3]
  SETTABLEKS R8 R6 K45 ["init"]
  DUPCLOSURE R8 K46 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETTABLEKS R8 R6 K47 ["render"]
  RETURN R6 1
