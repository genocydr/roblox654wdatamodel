PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"isVoiceMuted"}]
  SETTABLEKS R0 R3 K0 ["isVoiceMuted"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["onMuteCheckboxActivated"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"isBlocked"}]
  SETTABLEKS R0 R3 K0 ["isBlocked"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["onBlockCheckboxActivated"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onDoneActivated"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K3 ["isBlocked"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["state"]
  GETTABLEKS R2 R3 K4 ["isVoiceMuted"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onMuteCheckboxActivated"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onBlockCheckboxActivated"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onDoneActivated"]
  DUPTABLE R3 K5 [{"isVoiceMuted", "isBlocked"}]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K3 ["isVoiceMuted"]
  SETTABLEKS R4 R3 K3 ["isVoiceMuted"]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K4 ["isBlocked"]
  SETTABLEKS R4 R3 K4 ["isBlocked"]
  NAMECALL R1 R0 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
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
  DUPTABLE R5 K23 [{"uiScale", "layout", "title", "subtitle", "actions"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K24 ["UIScale"]
  DUPTABLE R8 K26 [{"Scale"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K17 ["props"]
  GETTABLEKS R9 R10 K18 ["uiScale"]
  SETTABLEKS R9 R8 K25 ["Scale"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["uiScale"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K27 ["UIListLayout"]
  DUPTABLE R8 K33 [{"VerticalAlignment", "HorizontalAlignment", "Padding", "FillDirection", "SortOrder"}]
  GETIMPORT R9 K36 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K28 ["VerticalAlignment"]
  GETIMPORT R9 K38 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R9 R8 K29 ["HorizontalAlignment"]
  GETIMPORT R9 K40 [UDim.new]
  LOADN R10 0
  LOADN R11 22
  CALL R9 2 1
  SETTABLEKS R9 R8 K30 ["Padding"]
  GETIMPORT R9 K42 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K31 ["FillDirection"]
  GETIMPORT R9 K44 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R9 R8 K32 ["SortOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K19 ["layout"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K45 ["TextLabel"]
  DUPTABLE R8 K51 [{"Text", "TextColor3", "TextTransparency", "TextSize", "Font", "BackgroundTransparency", "AutomaticSize", "LayoutOrder"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K17 ["props"]
  GETTABLEKS R9 R10 K52 ["titleText"]
  SETTABLEKS R9 R8 K46 ["Text"]
  GETTABLEKS R11 R0 K53 ["Theme"]
  GETTABLEKS R10 R11 K54 ["TextEmphasis"]
  GETTABLEKS R9 R10 K55 ["Color"]
  SETTABLEKS R9 R8 K47 ["TextColor3"]
  GETTABLEKS R11 R0 K53 ["Theme"]
  GETTABLEKS R10 R11 K54 ["TextEmphasis"]
  GETTABLEKS R9 R10 K56 ["Transparency"]
  SETTABLEKS R9 R8 K48 ["TextTransparency"]
  GETTABLEKS R12 R0 K0 ["Font"]
  GETTABLEKS R11 R12 K57 ["Header1"]
  GETTABLEKS R10 R11 K58 ["RelativeSize"]
  MUL R9 R10 R1
  SETTABLEKS R9 R8 K49 ["TextSize"]
  GETTABLEKS R11 R0 K0 ["Font"]
  GETTABLEKS R10 R11 K57 ["Header1"]
  GETTABLEKS R9 R10 K0 ["Font"]
  SETTABLEKS R9 R8 K0 ["Font"]
  LOADN R9 1
  SETTABLEKS R9 R8 K7 ["BackgroundTransparency"]
  GETIMPORT R9 K60 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K50 ["AutomaticSize"]
  LOADN R9 1
  SETTABLEKS R9 R8 K43 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K20 ["title"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K45 ["TextLabel"]
  DUPTABLE R8 K62 [{"Size", "Text", "TextColor3", "TextTransparency", "TextSize", "Font", "TextWrapped", "BackgroundTransparency", "AutomaticSize", "LayoutOrder"}]
  GETIMPORT R9 K64 [UDim2.fromOffset]
  LOADN R10 100
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K4 ["Size"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K17 ["props"]
  GETTABLEKS R9 R10 K65 ["subtitleText"]
  SETTABLEKS R9 R8 K46 ["Text"]
  GETTABLEKS R11 R0 K53 ["Theme"]
  GETTABLEKS R10 R11 K54 ["TextEmphasis"]
  GETTABLEKS R9 R10 K55 ["Color"]
  SETTABLEKS R9 R8 K47 ["TextColor3"]
  GETTABLEKS R11 R0 K53 ["Theme"]
  GETTABLEKS R10 R11 K54 ["TextEmphasis"]
  GETTABLEKS R9 R10 K56 ["Transparency"]
  SETTABLEKS R9 R8 K48 ["TextTransparency"]
  GETTABLEKS R12 R0 K0 ["Font"]
  GETTABLEKS R11 R12 K66 ["CaptionHeader"]
  GETTABLEKS R10 R11 K58 ["RelativeSize"]
  MUL R9 R10 R1
  SETTABLEKS R9 R8 K49 ["TextSize"]
  GETTABLEKS R11 R0 K0 ["Font"]
  GETTABLEKS R10 R11 K66 ["CaptionHeader"]
  GETTABLEKS R9 R10 K0 ["Font"]
  SETTABLEKS R9 R8 K0 ["Font"]
  LOADB R9 1
  SETTABLEKS R9 R8 K61 ["TextWrapped"]
  LOADN R9 1
  SETTABLEKS R9 R8 K7 ["BackgroundTransparency"]
  GETIMPORT R9 K68 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K50 ["AutomaticSize"]
  LOADN R9 2
  SETTABLEKS R9 R8 K43 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K21 ["subtitle"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K3 ["Frame"]
  DUPTABLE R8 K69 [{"Size", "BackgroundTransparency", "AutomaticSize", "LayoutOrder"}]
  GETIMPORT R9 K64 [UDim2.fromOffset]
  LOADN R10 72
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K4 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K7 ["BackgroundTransparency"]
  GETIMPORT R9 K68 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K50 ["AutomaticSize"]
  LOADN R9 3
  SETTABLEKS R9 R8 K43 ["LayoutOrder"]
  DUPTABLE R9 K75 [{"layout", "instruction", "muteCheckbox", "div", "blockCheckbox", "doneContainer"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  LOADK R11 K27 ["UIListLayout"]
  DUPTABLE R12 K33 [{"VerticalAlignment", "HorizontalAlignment", "Padding", "FillDirection", "SortOrder"}]
  GETIMPORT R13 K36 [Enum.VerticalAlignment.Top]
  SETTABLEKS R13 R12 K28 ["VerticalAlignment"]
  GETIMPORT R13 K38 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K29 ["HorizontalAlignment"]
  GETIMPORT R13 K40 [UDim.new]
  LOADN R14 0
  LOADN R15 18
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["Padding"]
  GETIMPORT R13 K42 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K31 ["FillDirection"]
  GETIMPORT R13 K44 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K32 ["SortOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["layout"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  LOADK R11 K45 ["TextLabel"]
  DUPTABLE R12 K77 [{"Size", "Text", "TextColor3", "TextTransparency", "TextSize", "Font", "TextXAlignment", "BackgroundTransparency", "AutomaticSize", "LayoutOrder"}]
  GETIMPORT R13 K12 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K4 ["Size"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K17 ["props"]
  GETTABLEKS R13 R14 K78 ["instructionText"]
  SETTABLEKS R13 R12 K46 ["Text"]
  GETTABLEKS R15 R0 K53 ["Theme"]
  GETTABLEKS R14 R15 K79 ["TextDefault"]
  GETTABLEKS R13 R14 K55 ["Color"]
  SETTABLEKS R13 R12 K47 ["TextColor3"]
  GETTABLEKS R15 R0 K53 ["Theme"]
  GETTABLEKS R14 R15 K79 ["TextDefault"]
  GETTABLEKS R13 R14 K56 ["Transparency"]
  SETTABLEKS R13 R12 K48 ["TextTransparency"]
  GETTABLEKS R16 R0 K0 ["Font"]
  GETTABLEKS R15 R16 K66 ["CaptionHeader"]
  GETTABLEKS R14 R15 K58 ["RelativeSize"]
  MUL R13 R14 R1
  SETTABLEKS R13 R12 K49 ["TextSize"]
  GETTABLEKS R15 R0 K0 ["Font"]
  GETTABLEKS R14 R15 K66 ["CaptionHeader"]
  GETTABLEKS R13 R14 K0 ["Font"]
  SETTABLEKS R13 R12 K0 ["Font"]
  GETIMPORT R13 K81 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K76 ["TextXAlignment"]
  LOADN R13 1
  SETTABLEKS R13 R12 K7 ["BackgroundTransparency"]
  GETIMPORT R13 K68 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K50 ["AutomaticSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K43 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K70 ["instruction"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K17 ["props"]
  GETTABLEKS R10 R11 K82 ["showVoiceMuting"]
  JUMPIFNOT R10 [+47]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K89 [{"height", "image", "descriptionText", "actionDisabled", "checkboxSelected", "onCheckboxActivated", "LayoutOrder"}]
  LOADN R13 28
  SETTABLEKS R13 R12 K83 ["height"]
  LOADK R13 K90 ["icons/controls/microphone"]
  SETTABLEKS R13 R12 K84 ["image"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K17 ["props"]
  GETTABLEKS R13 R14 K91 ["muteText"]
  SETTABLEKS R13 R12 K85 ["descriptionText"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K92 ["state"]
  GETTABLEKS R13 R14 K93 ["isBlocked"]
  SETTABLEKS R13 R12 K86 ["actionDisabled"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K92 ["state"]
  GETTABLEKS R13 R14 K93 ["isBlocked"]
  JUMPIF R13 [+5]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K92 ["state"]
  GETTABLEKS R13 R14 K94 ["isVoiceMuted"]
  SETTABLEKS R13 R12 K87 ["checkboxSelected"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K95 ["onMuteCheckboxActivated"]
  SETTABLEKS R13 R12 K88 ["onCheckboxActivated"]
  LOADN R13 2
  SETTABLEKS R13 R12 K43 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K71 ["muteCheckbox"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K17 ["props"]
  GETTABLEKS R10 R11 K82 ["showVoiceMuting"]
  JUMPIFNOT R10 [+37]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  LOADK R11 K3 ["Frame"]
  DUPTABLE R12 K98 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R13 K99 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 1
  CALL R13 4 1
  SETTABLEKS R13 R12 K4 ["Size"]
  GETTABLEKS R15 R0 K53 ["Theme"]
  GETTABLEKS R14 R15 K100 ["Divider"]
  GETTABLEKS R13 R14 K55 ["Color"]
  SETTABLEKS R13 R12 K96 ["BackgroundColor3"]
  GETTABLEKS R15 R0 K53 ["Theme"]
  GETTABLEKS R14 R15 K100 ["Divider"]
  GETTABLEKS R13 R14 K56 ["Transparency"]
  SETTABLEKS R13 R12 K7 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K97 ["BorderSizePixel"]
  LOADN R13 3
  SETTABLEKS R13 R12 K43 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K72 ["div"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K101 [{"height", "image", "descriptionText", "checkboxSelected", "onCheckboxActivated", "LayoutOrder"}]
  LOADN R13 28
  SETTABLEKS R13 R12 K83 ["height"]
  LOADK R13 K102 ["icons/actions/block"]
  SETTABLEKS R13 R12 K84 ["image"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K17 ["props"]
  GETTABLEKS R13 R14 K103 ["blockText"]
  SETTABLEKS R13 R12 K85 ["descriptionText"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K92 ["state"]
  GETTABLEKS R13 R14 K93 ["isBlocked"]
  SETTABLEKS R13 R12 K87 ["checkboxSelected"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K104 ["onBlockCheckboxActivated"]
  SETTABLEKS R13 R12 K88 ["onCheckboxActivated"]
  LOADN R13 4
  SETTABLEKS R13 R12 K43 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K73 ["blockCheckbox"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  LOADK R11 K3 ["Frame"]
  DUPTABLE R12 K105 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size", "LayoutOrder"}]
  GETTABLEKS R15 R0 K53 ["Theme"]
  GETTABLEKS R14 R15 K106 ["SystemPrimaryContent"]
  GETTABLEKS R13 R14 K55 ["Color"]
  SETTABLEKS R13 R12 K96 ["BackgroundColor3"]
  GETTABLEKS R15 R0 K53 ["Theme"]
  GETTABLEKS R14 R15 K106 ["SystemPrimaryContent"]
  GETTABLEKS R13 R14 K56 ["Transparency"]
  SETTABLEKS R13 R12 K7 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K97 ["BorderSizePixel"]
  GETIMPORT R13 K99 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 44
  CALL R13 4 1
  SETTABLEKS R13 R12 K4 ["Size"]
  LOADN R13 5
  SETTABLEKS R13 R12 K43 ["LayoutOrder"]
  DUPTABLE R13 K109 [{"uiCorner", "doneButton"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K2 ["createElement"]
  LOADK R15 K110 ["UICorner"]
  DUPTABLE R16 K112 [{"CornerRadius"}]
  GETIMPORT R17 K40 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K111 ["CornerRadius"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K107 ["uiCorner"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K2 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K116 [{"size", "text", "onActivated"}]
  GETIMPORT R17 K12 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K113 ["size"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K17 ["props"]
  GETTABLEKS R17 R18 K117 ["doneText"]
  SETTABLEKS R17 R16 K114 ["text"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K118 ["onDoneActivated"]
  SETTABLEKS R17 R16 K115 ["onActivated"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K108 ["doneButton"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K74 ["doneContainer"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K22 ["actions"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_6:
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
  GETIMPORT R6 K5 [require]
  GETIMPORT R9 K16 [script]
  GETTABLEKS R8 R9 K17 ["Parent"]
  GETTABLEKS R7 R8 K18 ["CheckboxRow"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K19 ["PureComponent"]
  LOADK R9 K20 ["ReportActionSelection"]
  NAMECALL R7 R7 K21 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K22 [PROTO_0]
  DUPTABLE R9 K37 [{"titleText", "subtitleText", "instructionText", "muteText", "blockText", "doneText", "showVoiceMuting", "isVoiceMuted", "isBlocked", "onMuteCheckboxActivated", "onBlockCheckboxActivated", "onDoneActivated", "ZIndex", "uiScale"}]
  LOADK R10 K38 ["Thanks for your report!"]
  SETTABLEKS R10 R9 K23 ["titleText"]
  LOADK R10 K39 ["We've received your report and will take action soon if needed. Your feedback helps keep our community safe."]
  SETTABLEKS R10 R9 K24 ["subtitleText"]
  LOADK R10 K40 ["Other steps you can take:"]
  SETTABLEKS R10 R9 K25 ["instructionText"]
  LOADK R10 K41 ["Mute {DISPLAYNAME}(@username)"]
  SETTABLEKS R10 R9 K26 ["muteText"]
  LOADK R10 K42 ["Block {DISPLAYNAME}(@username)"]
  SETTABLEKS R10 R9 K27 ["blockText"]
  LOADK R10 K43 ["Done"]
  SETTABLEKS R10 R9 K28 ["doneText"]
  LOADB R10 1
  SETTABLEKS R10 R9 K29 ["showVoiceMuting"]
  LOADB R10 0
  SETTABLEKS R10 R9 K30 ["isVoiceMuted"]
  LOADB R10 0
  SETTABLEKS R10 R9 K31 ["isBlocked"]
  SETTABLEKS R8 R9 K32 ["onMuteCheckboxActivated"]
  SETTABLEKS R8 R9 K33 ["onBlockCheckboxActivated"]
  SETTABLEKS R8 R9 K34 ["onDoneActivated"]
  LOADN R10 1
  SETTABLEKS R10 R9 K35 ["ZIndex"]
  LOADK R10 K44 [1.3]
  SETTABLEKS R10 R9 K36 ["uiScale"]
  SETTABLEKS R9 R7 K45 ["defaultProps"]
  GETTABLEKS R9 R2 K46 ["interface"]
  DUPTABLE R10 K47 [{"titleText", "subtitleText", "instructionText", "muteText", "blockText", "doneText", "showVoiceMuting", "isVoiceMuted", "isBlocked", "onMuteCheckboxActivated", "onBlockCheckboxActivated", "onDoneActivated", "ZIndex"}]
  GETTABLEKS R11 R2 K48 ["string"]
  SETTABLEKS R11 R10 K23 ["titleText"]
  GETTABLEKS R11 R2 K48 ["string"]
  SETTABLEKS R11 R10 K24 ["subtitleText"]
  GETTABLEKS R11 R2 K48 ["string"]
  SETTABLEKS R11 R10 K25 ["instructionText"]
  GETTABLEKS R11 R2 K48 ["string"]
  SETTABLEKS R11 R10 K26 ["muteText"]
  GETTABLEKS R11 R2 K48 ["string"]
  SETTABLEKS R11 R10 K27 ["blockText"]
  GETTABLEKS R11 R2 K48 ["string"]
  SETTABLEKS R11 R10 K28 ["doneText"]
  GETTABLEKS R11 R2 K49 ["boolean"]
  SETTABLEKS R11 R10 K29 ["showVoiceMuting"]
  GETTABLEKS R11 R2 K50 ["optional"]
  GETTABLEKS R12 R2 K49 ["boolean"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K30 ["isVoiceMuted"]
  GETTABLEKS R11 R2 K50 ["optional"]
  GETTABLEKS R12 R2 K49 ["boolean"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K31 ["isBlocked"]
  GETTABLEKS R11 R2 K50 ["optional"]
  GETTABLEKS R12 R2 K51 ["callback"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K32 ["onMuteCheckboxActivated"]
  GETTABLEKS R11 R2 K50 ["optional"]
  GETTABLEKS R12 R2 K51 ["callback"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K33 ["onBlockCheckboxActivated"]
  GETTABLEKS R11 R2 K51 ["callback"]
  SETTABLEKS R11 R10 K34 ["onDoneActivated"]
  GETTABLEKS R11 R2 K52 ["number"]
  SETTABLEKS R11 R10 K35 ["ZIndex"]
  CALL R9 1 1
  SETTABLEKS R9 R7 K53 ["validateProps"]
  DUPCLOSURE R9 K54 [PROTO_4]
  SETTABLEKS R9 R7 K55 ["init"]
  DUPCLOSURE R9 K56 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R9 R7 K57 ["render"]
  RETURN R7 1
