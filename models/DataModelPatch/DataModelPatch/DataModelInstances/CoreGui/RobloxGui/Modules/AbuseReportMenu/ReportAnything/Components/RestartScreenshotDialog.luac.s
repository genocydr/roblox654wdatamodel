PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R2 R1 K0 ["Theme"]
  GETTABLEKS R3 R1 K1 ["Font"]
  LOADN R4 48
  LOADN R5 180
  LOADN R6 50
  GETTABLEKS R7 R0 K2 ["isSmallPortraitMode"]
  JUMPIFNOT R7 [+3]
  LOADN R4 84
  LOADN R5 4
  LOADN R6 100
  GETTABLEKS R8 R0 K2 ["isSmallPortraitMode"]
  JUMPIFNOT R8 [+2]
  LOADN R7 87
  JUMP [+1]
  LOADN R7 224
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["createElement"]
  LOADK R9 K4 ["Frame"]
  DUPTABLE R10 K10 [{"Size", "AnchorPoint", "Position", "BackgroundColor3", "ZIndex"}]
  GETIMPORT R11 K13 [UDim2.new]
  LOADN R12 0
  MOVE R13 R7
  LOADN R14 0
  MOVE R15 R5
  CALL R11 4 1
  SETTABLEKS R11 R10 K5 ["Size"]
  GETIMPORT R11 K15 [Vector2.new]
  LOADK R12 K16 [0.5]
  LOADK R13 K16 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K6 ["AnchorPoint"]
  GETIMPORT R11 K13 [UDim2.new]
  LOADK R12 K16 [0.5]
  LOADN R13 0
  LOADK R14 K16 [0.5]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K7 ["Position"]
  GETIMPORT R11 K19 [Color3.fromHex]
  LOADK R12 K20 ["#4F545F"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K8 ["BackgroundColor3"]
  LOADN R11 5
  SETTABLEKS R11 R10 K9 ["ZIndex"]
  DUPTABLE R11 K24 [{"Corner", "HeaderAndContent", "Footer"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K3 ["createElement"]
  LOADK R13 K25 ["UICorner"]
  DUPTABLE R14 K27 [{"CornerRadius"}]
  GETIMPORT R15 K29 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K26 ["CornerRadius"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["Corner"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K3 ["createElement"]
  LOADK R13 K4 ["Frame"]
  DUPTABLE R14 K31 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R15 K13 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K5 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K30 ["BackgroundTransparency"]
  DUPTABLE R15 K36 [{"Layout", "Header", "Divider", "Description"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K3 ["createElement"]
  LOADK R17 K37 ["UIListLayout"]
  DUPTABLE R18 K41 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R19 K44 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K38 ["FillDirection"]
  GETIMPORT R19 K46 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R19 R18 K39 ["HorizontalAlignment"]
  GETIMPORT R19 K48 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K40 ["SortOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K32 ["Layout"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K54 [{"backgroundTransparency", "barHeight", "renderLeft", "renderRight", "title", "LayoutOrder"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K49 ["backgroundTransparency"]
  LOADN R19 48
  SETTABLEKS R19 R18 K50 ["barHeight"]
  DUPCLOSURE R19 K55 [PROTO_0]
  SETTABLEKS R19 R18 K51 ["renderLeft"]
  DUPCLOSURE R19 K56 [PROTO_1]
  SETTABLEKS R19 R18 K52 ["renderRight"]
  GETUPVAL R19 3
  LOADK R21 K57 ["Feature.ReportAbuse.Action.RetakeScene"]
  NAMECALL R19 R19 K58 ["FormatByKey"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K53 ["title"]
  LOADN R19 1
  SETTABLEKS R19 R18 K47 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K33 ["Header"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K59 [{"LayoutOrder"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K47 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K34 ["Divider"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K3 ["createElement"]
  LOADK R17 K4 ["Frame"]
  DUPTABLE R18 K60 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R19 K13 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  MINUS R24 R4
  SUBK R23 R24 K61 [1]
  CALL R19 4 1
  SETTABLEKS R19 R18 K5 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K30 ["BackgroundTransparency"]
  LOADN R19 3
  SETTABLEKS R19 R18 K47 ["LayoutOrder"]
  DUPTABLE R19 K64 [{"Padding", "TextBody"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K3 ["createElement"]
  LOADK R21 K65 ["UIPadding"]
  DUPTABLE R22 K70 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R23 K29 [UDim.new]
  LOADN R24 0
  LOADN R25 8
  CALL R23 2 1
  SETTABLEKS R23 R22 K66 ["PaddingTop"]
  GETIMPORT R23 K29 [UDim.new]
  LOADN R24 0
  LOADN R25 8
  CALL R23 2 1
  SETTABLEKS R23 R22 K67 ["PaddingBottom"]
  GETIMPORT R23 K29 [UDim.new]
  LOADN R24 0
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K68 ["PaddingLeft"]
  GETIMPORT R23 K29 [UDim.new]
  LOADN R24 0
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K69 ["PaddingRight"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K62 ["Padding"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K3 ["createElement"]
  LOADK R21 K71 ["TextLabel"]
  DUPTABLE R22 K79 [{"Text", "Font", "LayoutOrder", "TextColor3", "TextTransparency", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment", "Size", "BackgroundTransparency"}]
  GETUPVAL R23 3
  LOADK R25 K80 ["Feature.ReportAbuse.Message.RetakeScene"]
  NAMECALL R23 R23 K58 ["FormatByKey"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["Text"]
  GETTABLEKS R24 R3 K81 ["Body"]
  GETTABLEKS R23 R24 K1 ["Font"]
  SETTABLEKS R23 R22 K1 ["Font"]
  LOADN R23 3
  SETTABLEKS R23 R22 K47 ["LayoutOrder"]
  GETTABLEKS R24 R2 K82 ["TextEmphasis"]
  GETTABLEKS R23 R24 K83 ["Color"]
  SETTABLEKS R23 R22 K73 ["TextColor3"]
  GETTABLEKS R24 R2 K82 ["TextEmphasis"]
  GETTABLEKS R23 R24 K84 ["Transparency"]
  SETTABLEKS R23 R22 K74 ["TextTransparency"]
  LOADN R23 16
  SETTABLEKS R23 R22 K75 ["TextSize"]
  LOADB R23 1
  SETTABLEKS R23 R22 K76 ["TextWrapped"]
  GETIMPORT R23 K86 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K77 ["TextXAlignment"]
  GETIMPORT R23 K88 [Enum.TextYAlignment.Top]
  SETTABLEKS R23 R22 K78 ["TextYAlignment"]
  GETIMPORT R23 K13 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  MOVE R27 R6
  CALL R23 4 1
  SETTABLEKS R23 R22 K5 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K30 ["BackgroundTransparency"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K63 ["TextBody"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K35 ["Description"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K22 ["HeaderAndContent"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K3 ["createElement"]
  LOADK R13 K4 ["Frame"]
  DUPTABLE R14 K90 [{"BackgroundTransparency", "Size", "Position", "BorderSizePixel", "LayoutOrder"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K30 ["BackgroundTransparency"]
  GETIMPORT R15 K13 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  MOVE R19 R4
  CALL R15 4 1
  SETTABLEKS R15 R14 K5 ["Size"]
  GETIMPORT R15 K13 [UDim2.new]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 1
  MINUS R19 R4
  CALL R15 4 1
  SETTABLEKS R15 R14 K7 ["Position"]
  LOADN R15 0
  SETTABLEKS R15 R14 K89 ["BorderSizePixel"]
  LOADN R15 4
  SETTABLEKS R15 R14 K47 ["LayoutOrder"]
  DUPTABLE R15 K92 [{"Padding", "ActionButtons"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K3 ["createElement"]
  LOADK R17 K65 ["UIPadding"]
  DUPTABLE R18 K70 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R19 K29 [UDim.new]
  LOADN R20 0
  LOADN R21 6
  CALL R19 2 1
  SETTABLEKS R19 R18 K66 ["PaddingTop"]
  GETIMPORT R19 K29 [UDim.new]
  LOADN R20 0
  LOADN R21 6
  CALL R19 2 1
  SETTABLEKS R19 R18 K67 ["PaddingBottom"]
  GETIMPORT R19 K29 [UDim.new]
  LOADN R20 0
  LOADN R21 16
  CALL R19 2 1
  SETTABLEKS R19 R18 K68 ["PaddingLeft"]
  GETIMPORT R19 K29 [UDim.new]
  LOADN R20 0
  LOADN R21 16
  CALL R19 2 1
  SETTABLEKS R19 R18 K69 ["PaddingRight"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K62 ["Padding"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K95 [{"forcedFillDirection", "buttons"}]
  GETTABLEKS R20 R0 K2 ["isSmallPortraitMode"]
  JUMPIFNOT R20 [+3]
  GETIMPORT R19 K44 [Enum.FillDirection.Vertical]
  JUMP [+2]
  GETIMPORT R19 K97 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K93 ["forcedFillDirection"]
  NEWTABLE R19 0 2
  DUPTABLE R20 K100 [{"buttonType", "props"}]
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K101 ["Secondary"]
  SETTABLEKS R21 R20 K98 ["buttonType"]
  GETTABLEKS R22 R0 K2 ["isSmallPortraitMode"]
  JUMPIFNOT R22 [+26]
  DUPTABLE R21 K106 [{"onActivated", "text", "size", "fontStyle"}]
  GETTABLEKS R22 R0 K107 ["onCancel"]
  SETTABLEKS R22 R21 K102 ["onActivated"]
  GETUPVAL R22 3
  LOADK R24 K108 ["InGame.InspectMenu.Action.Cancel"]
  NAMECALL R22 R22 K58 ["FormatByKey"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K103 ["text"]
  GETIMPORT R22 K13 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 28
  CALL R22 4 1
  SETTABLEKS R22 R21 K104 ["size"]
  GETTABLEKS R22 R3 K109 ["Body2"]
  SETTABLEKS R22 R21 K105 ["fontStyle"]
  JUMP [+12]
  DUPTABLE R21 K110 [{"onActivated", "text"}]
  GETTABLEKS R22 R0 K107 ["onCancel"]
  SETTABLEKS R22 R21 K102 ["onActivated"]
  GETUPVAL R22 3
  LOADK R24 K108 ["InGame.InspectMenu.Action.Cancel"]
  NAMECALL R22 R22 K58 ["FormatByKey"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K103 ["text"]
  SETTABLEKS R21 R20 K99 ["props"]
  DUPTABLE R21 K100 [{"buttonType", "props"}]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K111 ["PrimarySystem"]
  SETTABLEKS R22 R21 K98 ["buttonType"]
  GETTABLEKS R23 R0 K2 ["isSmallPortraitMode"]
  JUMPIFNOT R23 [+26]
  DUPTABLE R22 K106 [{"onActivated", "text", "size", "fontStyle"}]
  GETTABLEKS R23 R0 K112 ["onRestart"]
  SETTABLEKS R23 R22 K102 ["onActivated"]
  GETUPVAL R23 3
  LOADK R25 K113 ["Feature.ReportAbuse.Action.BackToExperience"]
  NAMECALL R23 R23 K58 ["FormatByKey"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K103 ["text"]
  GETIMPORT R23 K13 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 28
  CALL R23 4 1
  SETTABLEKS R23 R22 K104 ["size"]
  GETTABLEKS R23 R3 K109 ["Body2"]
  SETTABLEKS R23 R22 K105 ["fontStyle"]
  JUMP [+12]
  DUPTABLE R22 K110 [{"onActivated", "text"}]
  GETTABLEKS R23 R0 K112 ["onRestart"]
  SETTABLEKS R23 R22 K102 ["onActivated"]
  GETUPVAL R23 3
  LOADK R25 K113 ["Feature.ReportAbuse.Action.BackToExperience"]
  NAMECALL R23 R23 K58 ["FormatByKey"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K103 ["text"]
  SETTABLEKS R22 R21 K99 ["props"]
  SETLIST R19 R20 2 [1]
  SETTABLEKS R19 R18 K94 ["buttons"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K91 ["ActionButtons"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K23 ["Footer"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["UIBlox"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R5 R1 K9 ["App"]
  GETTABLEKS R4 R5 K10 ["Button"]
  GETTABLEKS R3 R4 K11 ["ButtonStack"]
  GETTABLEKS R7 R1 K9 ["App"]
  GETTABLEKS R6 R7 K10 ["Button"]
  GETTABLEKS R5 R6 K12 ["Enum"]
  GETTABLEKS R4 R5 K13 ["ButtonType"]
  GETTABLEKS R7 R1 K9 ["App"]
  GETTABLEKS R6 R7 K14 ["Bar"]
  GETTABLEKS R5 R6 K15 ["HeaderBar"]
  GETTABLEKS R8 R1 K16 ["Core"]
  GETTABLEKS R7 R8 K17 ["Style"]
  GETTABLEKS R6 R7 K18 ["useStyle"]
  GETIMPORT R9 K20 [script]
  GETTABLEKS R8 R9 K21 ["Parent"]
  GETTABLEKS R7 R8 K21 ["Parent"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K22 ["Workspace"]
  GETTABLEKS R10 R11 K6 ["Packages"]
  GETTABLEKS R9 R10 K23 ["RobloxTranslator"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R7 K24 ["Components"]
  GETTABLEKS R10 R11 K25 ["Divider"]
  CALL R9 1 1
  DUPCLOSURE R10 K26 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R10 1
