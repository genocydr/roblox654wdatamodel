PROTO_0:
  GETIMPORT R1 K2 [utf8.len]
  GETIMPORT R2 K4 [utf8.nfcnormalize]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 1
  JUMPIFNOTEQKNIL R1 [+3]
  LOADN R2 0
  RETURN R2 1
  RETURN R1 1

PROTO_1:
  GETIMPORT R4 K2 [utf8.len]
  GETIMPORT R5 K4 [utf8.nfcnormalize]
  MOVE R6 R0
  CALL R5 1 -1
  CALL R4 -1 1
  JUMPIFNOTEQKNIL R4 [+3]
  LOADN R3 0
  JUMP [+2]
  MOVE R3 R4
  JUMP [0]
  JUMPIFLT R1 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["wasInitiallyFocused"]
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R0 R1 K2 ["descriptionTextBoxRef"]
  NAMECALL R0 R0 K3 ["getValue"]
  CALL R0 1 1
  JUMPIFNOT R0 [+13]
  GETIMPORT R3 K5 [game]
  NAMECALL R1 R0 K6 ["IsDescendantOf"]
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  NAMECALL R1 R0 K7 ["CaptureFocus"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["wasInitiallyFocused"]
  RETURN R0 0

PROTO_3:
  DUPTABLE R3 K9 [{"lastValidDescription", "assetDescription", "descriptionLength", "scrollingFrameHeight", "canvasHeight", "canvasPosition", "cursorPosition", "textBoxWidth", "isDescriptionValid"}]
  LOADK R4 K10 [""]
  SETTABLEKS R4 R3 K0 ["lastValidDescription"]
  GETTABLEKS R6 R0 K11 ["props"]
  GETTABLEKS R5 R6 K12 ["defaultDescription"]
  ORK R4 R5 K10 [""]
  SETTABLEKS R4 R3 K1 ["assetDescription"]
  LOADN R4 0
  SETTABLEKS R4 R3 K2 ["descriptionLength"]
  LOADN R4 100
  SETTABLEKS R4 R3 K3 ["scrollingFrameHeight"]
  LOADN R4 100
  SETTABLEKS R4 R3 K4 ["canvasHeight"]
  LOADN R4 0
  SETTABLEKS R4 R3 K5 ["canvasPosition"]
  LOADN R4 0
  SETTABLEKS R4 R3 K6 ["cursorPosition"]
  LOADN R4 100
  SETTABLEKS R4 R3 K7 ["textBoxWidth"]
  LOADB R4 1
  SETTABLEKS R4 R3 K8 ["isDescriptionValid"]
  NAMECALL R1 R0 K13 ["setState"]
  CALL R1 2 0
  LOADB R1 0
  SETTABLEKS R1 R0 K14 ["wasInitiallyFocused"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["tryFocusTextBox"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["cursorPosition"]
  JUMPIFNOTEQKN R3 K2 [-1] [+2]
  RETURN R0 0
  GETTABLEKS R5 R0 K0 ["state"]
  GETTABLEKS R4 R5 K4 ["assetDescription"]
  ORK R3 R4 K3 [""]
  LOADN R6 1
  GETTABLEKS R9 R0 K0 ["state"]
  GETTABLEKS R8 R9 K1 ["cursorPosition"]
  SUBK R7 R8 K5 [1]
  NAMECALL R4 R3 K6 ["sub"]
  CALL R4 3 1
  GETTABLEKS R6 R2 K7 ["RelativeSize"]
  GETTABLEKS R8 R1 K8 ["Font"]
  GETTABLEKS R7 R8 K9 ["BaseSize"]
  MUL R5 R6 R7
  GETIMPORT R6 K12 [Vector2.new]
  GETTABLEKS R8 R0 K0 ["state"]
  GETTABLEKS R7 R8 K13 ["textBoxWidth"]
  LOADN R8 16
  CALL R6 2 1
  GETUPVAL R7 0
  MOVE R9 R4
  MOVE R10 R5
  GETTABLEKS R11 R2 K8 ["Font"]
  MOVE R12 R6
  NAMECALL R7 R7 K14 ["GetTextSize"]
  CALL R7 5 1
  GETTABLEKS R8 R7 K15 ["Y"]
  GETTABLEKS R11 R0 K0 ["state"]
  GETTABLEKS R10 R11 K16 ["scrollingFrameHeight"]
  GETTABLEKS R12 R0 K0 ["state"]
  GETTABLEKS R11 R12 K17 ["canvasPosition"]
  ADD R9 R10 R11
  JUMPIFNOTLT R9 R8 [+15]
  DUPTABLE R10 K18 [{"canvasPosition"}]
  GETTABLEKS R12 R7 K15 ["Y"]
  GETTABLEKS R14 R0 K0 ["state"]
  GETTABLEKS R13 R14 K16 ["scrollingFrameHeight"]
  SUB R11 R12 R13
  SETTABLEKS R11 R10 K17 ["canvasPosition"]
  NAMECALL R8 R0 K19 ["setState"]
  CALL R8 2 0
  RETURN R0 0
  GETTABLEKS R9 R7 K15 ["Y"]
  SUB R8 R9 R5
  GETTABLEKS R10 R0 K0 ["state"]
  GETTABLEKS R9 R10 K17 ["canvasPosition"]
  JUMPIFNOTLT R8 R9 [+10]
  DUPTABLE R10 K18 [{"canvasPosition"}]
  GETTABLEKS R12 R7 K15 ["Y"]
  SUB R11 R12 R5
  SETTABLEKS R11 R10 K17 ["canvasPosition"]
  NAMECALL R8 R0 K19 ["setState"]
  CALL R8 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R4 R1 K0 ["Text"]
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+4]
  JUMPIFNOTEQKS R4 K1 [""] [+3]
  LOADB R5 0
  JUMP [+1]
  LOADB R5 1
  GETTABLEKS R7 R0 K2 ["state"]
  GETTABLEKS R6 R7 K3 ["lastValidDescription"]
  MOVE R8 R4
  GETIMPORT R10 K6 [utf8.len]
  GETIMPORT R11 K8 [utf8.nfcnormalize]
  MOVE R12 R8
  CALL R11 1 -1
  CALL R10 -1 1
  JUMPIFNOTEQKNIL R10 [+3]
  LOADN R9 0
  JUMP [+2]
  MOVE R9 R10
  JUMP [0]
  LOADN R10 232
  JUMPIFLT R10 R9 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  JUMPIFNOT R7 [+4]
  MOVE R4 R6
  SETTABLEKS R4 R1 K0 ["Text"]
  JUMP [+2]
  GETTABLEKS R6 R1 K0 ["Text"]
  MOVE R8 R4
  GETIMPORT R9 K6 [utf8.len]
  GETIMPORT R10 K8 [utf8.nfcnormalize]
  MOVE R11 R8
  CALL R10 1 -1
  CALL R9 -1 1
  JUMPIFNOTEQKNIL R9 [+3]
  LOADN R7 0
  JUMP [+2]
  MOVE R7 R9
  JUMP [0]
  GETTABLEKS R9 R3 K9 ["RelativeSize"]
  GETTABLEKS R11 R2 K10 ["Font"]
  GETTABLEKS R10 R11 K11 ["BaseSize"]
  MUL R8 R9 R10
  GETIMPORT R9 K14 [Vector2.new]
  GETTABLEKS R11 R0 K2 ["state"]
  GETTABLEKS R10 R11 K15 ["textBoxWidth"]
  LOADN R11 16
  CALL R9 2 1
  GETUPVAL R10 1
  MOVE R12 R4
  MOVE R13 R8
  GETTABLEKS R14 R3 K10 ["Font"]
  MOVE R15 R9
  NAMECALL R10 R10 K16 ["GetTextSize"]
  CALL R10 5 1
  DUPTABLE R13 K21 [{"lastValidDescription", "assetDescription", "descriptionLength", "canvasHeight", "isDescriptionValid"}]
  SETTABLEKS R6 R13 K3 ["lastValidDescription"]
  SETTABLEKS R4 R13 K17 ["assetDescription"]
  SETTABLEKS R7 R13 K18 ["descriptionLength"]
  LOADN R15 100
  GETTABLEKS R16 R10 K22 ["Y"]
  FASTCALL2 MATH_MAX R15 R16 [+3]
  GETIMPORT R14 K25 [math.max]
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["canvasHeight"]
  SETTABLEKS R5 R13 K20 ["isDescriptionValid"]
  NAMECALL R11 R0 K26 ["setState"]
  CALL R11 2 0
  GETTABLEKS R12 R0 K27 ["props"]
  GETTABLEKS R11 R12 K28 ["onAssetDescriptionUpdated"]
  MOVE R12 R4
  MOVE R13 R5
  CALL R11 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"canvasPosition"}]
  GETTABLEKS R5 R0 K2 ["CanvasPosition"]
  GETTABLEKS R4 R5 K3 ["Y"]
  SETTABLEKS R4 R3 K0 ["canvasPosition"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"scrollingFrameHeight"}]
  GETTABLEKS R5 R0 K2 ["AbsoluteSize"]
  GETTABLEKS R4 R5 K3 ["Y"]
  SETTABLEKS R4 R3 K0 ["scrollingFrameHeight"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  NAMECALL R1 R1 K5 ["calculateNeedsRescroll"]
  CALL R1 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  MOVE R3 R0
  GETUPVAL R4 1
  GETUPVAL R5 2
  NAMECALL R1 R1 K0 ["onTextChanged"]
  CALL R1 4 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"textBoxWidth"}]
  GETTABLEKS R5 R0 K2 ["AbsoluteSize"]
  GETTABLEKS R4 R5 K3 ["X"]
  SETTABLEKS R4 R3 K0 ["textBoxWidth"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  NAMECALL R1 R1 K5 ["calculateNeedsRescroll"]
  CALL R1 3 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"cursorPosition"}]
  GETTABLEKS R4 R0 K2 ["CursorPosition"]
  SETTABLEKS R4 R3 K0 ["cursorPosition"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  NAMECALL R1 R1 K4 ["calculateNeedsRescroll"]
  CALL R1 3 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R3 R1 K0 ["Font"]
  GETTABLEKS R4 R3 K1 ["CaptionBody"]
  GETTABLEKS R5 R1 K2 ["Theme"]
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+6]
  GETTABLEKS R8 R0 K3 ["state"]
  GETTABLEKS R7 R8 K4 ["isDescriptionValid"]
  NOT R6 R7
  JUMP [+1]
  LOADB R6 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["createElement"]
  LOADK R8 K6 ["Frame"]
  DUPTABLE R9 K10 [{"BackgroundTransparency", "Size", "Position"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K7 ["BackgroundTransparency"]
  GETTABLEKS R11 R0 K11 ["props"]
  GETTABLEKS R10 R11 K8 ["Size"]
  SETTABLEKS R10 R9 K8 ["Size"]
  GETTABLEKS R11 R0 K11 ["props"]
  GETTABLEKS R10 R11 K9 ["Position"]
  SETTABLEKS R10 R9 K9 ["Position"]
  DUPTABLE R10 K15 [{"TextboxContainer", "LengthDisplay", "WarningText"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K22 [{"BackgroundTransparency", "Image", "ImageColor3", "ImageTransparency", "LayoutOrder", "ScaleType", "Size", "SliceCenter"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K7 ["BackgroundTransparency"]
  GETUPVAL R14 3
  SETTABLEKS R14 R13 K16 ["Image"]
  GETTABLEKS R15 R5 K23 ["UIDefault"]
  GETTABLEKS R14 R15 K24 ["Color"]
  SETTABLEKS R14 R13 K17 ["ImageColor3"]
  GETTABLEKS R15 R5 K23 ["UIDefault"]
  GETTABLEKS R14 R15 K25 ["Transparency"]
  SETTABLEKS R14 R13 K18 ["ImageTransparency"]
  LOADN R14 1
  SETTABLEKS R14 R13 K19 ["LayoutOrder"]
  GETIMPORT R14 K28 [Enum.ScaleType.Slice]
  SETTABLEKS R14 R13 K20 ["ScaleType"]
  GETIMPORT R14 K31 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 241
  CALL R14 4 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETUPVAL R14 4
  SETTABLEKS R14 R13 K21 ["SliceCenter"]
  DUPTABLE R14 K33 [{"ScrollingFrame"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K5 ["createElement"]
  LOADK R16 K32 ["ScrollingFrame"]
  NEWTABLE R17 8 0
  GETIMPORT R18 K35 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K8 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K7 ["BackgroundTransparency"]
  GETIMPORT R18 K37 [Vector2.new]
  LOADN R19 0
  GETTABLEKS R21 R0 K3 ["state"]
  GETTABLEKS R20 R21 K38 ["canvasPosition"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K39 ["CanvasPosition"]
  GETIMPORT R18 K42 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K43 ["AutomaticCanvasSize"]
  LOADN R18 12
  SETTABLEKS R18 R17 K44 ["ScrollBarThickness"]
  LOADN R18 0
  SETTABLEKS R18 R17 K45 ["BorderSizePixel"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K46 ["Change"]
  GETTABLEKS R18 R19 K39 ["CanvasPosition"]
  NEWCLOSURE R19 P0
  CAPTURE VAL R0
  SETTABLE R19 R17 R18
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K46 ["Change"]
  GETTABLEKS R18 R19 K47 ["AbsoluteSize"]
  NEWCLOSURE R19 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLE R19 R17 R18
  DUPTABLE R18 K49 [{"Textbox"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K5 ["createElement"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K50 ["TextBox"]
  NEWTABLE R21 32 0
  GETTABLEKS R23 R0 K3 ["state"]
  GETTABLEKS R22 R23 K51 ["assetDescription"]
  SETTABLEKS R22 R21 K52 ["Text"]
  LOADN R22 1
  SETTABLEKS R22 R21 K7 ["BackgroundTransparency"]
  LOADB R22 0
  SETTABLEKS R22 R21 K53 ["ClearTextOnFocus"]
  GETTABLEKS R23 R3 K54 ["Header2"]
  GETTABLEKS R22 R23 K0 ["Font"]
  SETTABLEKS R22 R21 K0 ["Font"]
  GETTABLEKS R23 R3 K55 ["BaseSize"]
  GETTABLEKS R24 R4 K56 ["RelativeSize"]
  MUL R22 R23 R24
  SETTABLEKS R22 R21 K57 ["TextSize"]
  GETTABLEKS R23 R5 K58 ["PlaceHolder"]
  GETTABLEKS R22 R23 K24 ["Color"]
  SETTABLEKS R22 R21 K59 ["PlaceholderColor3"]
  GETUPVAL R22 6
  LOADK R24 K60 ["CoreScripts.PublishAssetPrompt.AssetDescriptionPlaceholder"]
  NAMECALL R22 R22 K61 ["FormatByKey"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K62 ["PlaceholderText"]
  GETIMPORT R22 K64 [UDim2.fromOffset]
  LOADN R23 6
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K9 ["Position"]
  GETIMPORT R22 K31 [UDim2.new]
  LOADN R23 1
  LOADN R24 232
  LOADN R25 0
  GETTABLEKS R27 R0 K3 ["state"]
  GETTABLEKS R26 R27 K65 ["canvasHeight"]
  CALL R22 4 1
  SETTABLEKS R22 R21 K8 ["Size"]
  LOADB R22 1
  SETTABLEKS R22 R21 K66 ["MultiLine"]
  GETTABLEKS R23 R5 K67 ["TextDefault"]
  GETTABLEKS R22 R23 K24 ["Color"]
  SETTABLEKS R22 R21 K68 ["TextColor3"]
  GETIMPORT R22 K71 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R22 R21 K69 ["TextTruncate"]
  LOADB R22 1
  SETTABLEKS R22 R21 K72 ["TextWrapped"]
  GETIMPORT R22 K75 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K73 ["TextXAlignment"]
  GETIMPORT R22 K78 [Enum.TextYAlignment.Top]
  SETTABLEKS R22 R21 K76 ["TextYAlignment"]
  LOADB R22 1
  SETTABLEKS R22 R21 K79 ["OverlayNativeInput"]
  GETTABLEKS R23 R0 K11 ["props"]
  GETTABLEKS R22 R23 K80 ["NextSelectionUp"]
  SETTABLEKS R22 R21 K80 ["NextSelectionUp"]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K46 ["Change"]
  GETTABLEKS R22 R23 K81 ["TextFits"]
  GETTABLEKS R23 R0 K82 ["onTextFitsChanged"]
  SETTABLE R23 R21 R22
  MOVE R22 R2
  GETUPVAL R24 7
  GETTABLEKS R23 R24 K83 ["InputFields"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K84 ["SelectionImageObject"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K85 ["Ref"]
  GETTABLEKS R24 R0 K11 ["props"]
  GETTABLEKS R23 R24 K86 ["descriptionTextBoxRef"]
  SETTABLE R23 R21 R22
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K87 ["Event"]
  GETTABLEKS R22 R23 K88 ["AncestryChanged"]
  GETTABLEKS R23 R0 K89 ["tryFocusTextBox"]
  SETTABLE R23 R21 R22
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K46 ["Change"]
  GETTABLEKS R22 R23 K52 ["Text"]
  NEWCLOSURE R23 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLE R23 R21 R22
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K46 ["Change"]
  GETTABLEKS R22 R23 K47 ["AbsoluteSize"]
  NEWCLOSURE R23 P3
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLE R23 R21 R22
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K46 ["Change"]
  GETTABLEKS R22 R23 K90 ["CursorPosition"]
  NEWCLOSURE R23 P4
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLE R23 R21 R22
  CALL R19 2 1
  SETTABLEKS R19 R18 K48 ["Textbox"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K32 ["ScrollingFrame"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K12 ["TextboxContainer"]
  GETTABLEKS R14 R0 K3 ["state"]
  GETTABLEKS R13 R14 K92 ["descriptionLength"]
  DIVK R12 R13 K91 [1000]
  LOADK R13 K93 [0.9]
  JUMPIFNOTLT R13 R12 [+58]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["createElement"]
  LOADK R12 K94 ["TextLabel"]
  DUPTABLE R13 K96 [{"Size", "AnchorPoint", "Position", "Text", "TextXAlignment", "TextColor3", "BackgroundTransparency"}]
  GETIMPORT R14 K31 [UDim2.new]
  GETUPVAL R16 0
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  LOADK R15 K97 [0.2]
  JUMP [+1]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 15
  CALL R14 4 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETIMPORT R14 K37 [Vector2.new]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K95 ["AnchorPoint"]
  GETIMPORT R14 K35 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K9 ["Position"]
  GETTABLEKS R18 R0 K3 ["state"]
  GETTABLEKS R15 R18 K92 ["descriptionLength"]
  LOADK R16 K98 ["/"]
  LOADN R17 232
  CONCAT R14 R15 R17
  SETTABLEKS R14 R13 K52 ["Text"]
  GETIMPORT R14 K100 [Enum.TextXAlignment.Right]
  SETTABLEKS R14 R13 K73 ["TextXAlignment"]
  GETTABLEKS R15 R5 K67 ["TextDefault"]
  GETTABLEKS R14 R15 K24 ["Color"]
  SETTABLEKS R14 R13 K68 ["TextColor3"]
  LOADN R14 1
  SETTABLEKS R14 R13 K7 ["BackgroundTransparency"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K13 ["LengthDisplay"]
  GETUPVAL R11 0
  CALL R11 0 1
  JUMPIFNOT R11 [+62]
  MOVE R11 R6
  JUMPIFNOT R11 [+60]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["createElement"]
  LOADK R12 K94 ["TextLabel"]
  DUPTABLE R13 K101 [{"Position", "BackgroundTransparency", "Text", "TextXAlignment", "TextYAlignment", "Size", "TextColor3", "TextWrapped", "Font", "TextSize"}]
  GETIMPORT R14 K31 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 1
  LOADN R18 241
  CALL R14 4 1
  SETTABLEKS R14 R13 K9 ["Position"]
  LOADN R14 1
  SETTABLEKS R14 R13 K7 ["BackgroundTransparency"]
  GETUPVAL R14 6
  LOADK R16 K102 ["CoreScripts.PublishAssetPrompt.InvalidDescription"]
  NAMECALL R14 R14 K61 ["FormatByKey"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K52 ["Text"]
  GETIMPORT R14 K75 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K73 ["TextXAlignment"]
  GETIMPORT R14 K78 [Enum.TextYAlignment.Top]
  SETTABLEKS R14 R13 K76 ["TextYAlignment"]
  GETIMPORT R14 K31 [UDim2.new]
  LOADK R15 K103 [0.8]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 20
  CALL R14 4 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETTABLEKS R15 R5 K104 ["Alert"]
  GETTABLEKS R14 R15 K24 ["Color"]
  SETTABLEKS R14 R13 K68 ["TextColor3"]
  LOADB R14 1
  SETTABLEKS R14 R13 K72 ["TextWrapped"]
  GETTABLEKS R15 R3 K105 ["Body"]
  GETTABLEKS R14 R15 K0 ["Font"]
  SETTABLEKS R14 R13 K0 ["Font"]
  LOADN R14 12
  SETTABLEKS R14 R13 K57 ["TextSize"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["WarningText"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["renderWithProviders"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_14:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["tryFocusTextBox"]
  CALL R1 0 0
  RETURN R0 0

PROTO_16:
  DUPTABLE R1 K1 [{"assetType"}]
  GETTABLEKS R4 R0 K2 ["promptRequest"]
  GETTABLEKS R3 R4 K3 ["promptInfo"]
  GETTABLEKS R2 R3 K0 ["assetType"]
  SETTABLEKS R2 R1 K0 ["assetType"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["TextService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R5 K6 ["RobloxGui"]
  NAMECALL R3 R2 K7 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K12 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K10 ["Packages"]
  GETTABLEKS R7 R8 K13 ["t"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K10 ["Packages"]
  GETTABLEKS R8 R9 K14 ["RoactGamepad"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R3 K15 ["Modules"]
  GETTABLEKS R9 R10 K16 ["RobloxTranslator"]
  CALL R8 1 1
  GETTABLEKS R9 R7 K17 ["Focusable"]
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R0 K10 ["Packages"]
  GETTABLEKS R11 R12 K18 ["UIBlox"]
  CALL R10 1 1
  GETTABLEKS R12 R10 K19 ["Style"]
  GETTABLEKS R11 R12 K20 ["withStyle"]
  GETTABLEKS R14 R10 K21 ["App"]
  GETTABLEKS R13 R14 K22 ["SelectionImage"]
  GETTABLEKS R12 R13 K23 ["withSelectionCursorProvider"]
  GETTABLEKS R15 R10 K21 ["App"]
  GETTABLEKS R14 R15 K22 ["SelectionImage"]
  GETTABLEKS R13 R14 K24 ["CursorKind"]
  GETTABLEKS R16 R10 K21 ["App"]
  GETTABLEKS R15 R16 K25 ["ImageSet"]
  GETTABLEKS R14 R15 K26 ["Images"]
  GETTABLEKS R17 R10 K27 ["Core"]
  GETTABLEKS R16 R17 K25 ["ImageSet"]
  GETTABLEKS R15 R16 K28 ["ImageSetLabel"]
  GETTABLEKS R16 R14 K29 ["component_assets/circle_17_stroke_1"]
  GETIMPORT R17 K32 [Rect.new]
  LOADN R18 8
  LOADN R19 8
  LOADN R20 8
  LOADN R21 8
  CALL R17 4 1
  GETIMPORT R20 K34 [script]
  GETTABLEKS R19 R20 K35 ["Parent"]
  GETTABLEKS R18 R19 K35 ["Parent"]
  GETIMPORT R19 K9 [require]
  GETTABLEKS R20 R18 K36 ["GetFFlagValidateDescription"]
  CALL R19 1 1
  GETTABLEKS R20 R4 K37 ["PureComponent"]
  LOADK R22 K38 ["AssetDescriptionTextBox"]
  NAMECALL R20 R20 K39 ["extend"]
  CALL R20 2 1
  GETTABLEKS R21 R6 K40 ["strictInterface"]
  DUPTABLE R22 K48 [{"Size", "Position", "onAssetDescriptionUpdated", "descriptionTextBoxRef", "NextSelectionUp", "assetType", "defaultDescription"}]
  GETTABLEKS R23 R6 K49 ["optional"]
  GETTABLEKS R24 R6 K50 ["UDim2"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K41 ["Size"]
  GETTABLEKS R23 R6 K49 ["optional"]
  GETTABLEKS R24 R6 K50 ["UDim2"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K42 ["Position"]
  GETTABLEKS R23 R6 K51 ["callback"]
  SETTABLEKS R23 R22 K43 ["onAssetDescriptionUpdated"]
  GETTABLEKS R23 R6 K49 ["optional"]
  GETTABLEKS R24 R6 K52 ["table"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K44 ["descriptionTextBoxRef"]
  GETTABLEKS R23 R6 K49 ["optional"]
  GETTABLEKS R24 R6 K52 ["table"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K45 ["NextSelectionUp"]
  GETTABLEKS R23 R6 K49 ["optional"]
  GETTABLEKS R24 R6 K53 ["enum"]
  GETIMPORT R25 K56 [Enum.AssetType]
  CALL R24 1 -1
  CALL R23 -1 1
  SETTABLEKS R23 R22 K46 ["assetType"]
  GETTABLEKS R23 R6 K49 ["optional"]
  GETTABLEKS R24 R6 K57 ["string"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K47 ["defaultDescription"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K58 ["validateProps"]
  DUPCLOSURE R21 K59 [PROTO_0]
  DUPCLOSURE R22 K60 [PROTO_1]
  DUPCLOSURE R23 K61 [PROTO_3]
  SETTABLEKS R23 R20 K62 ["init"]
  DUPCLOSURE R23 K63 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R23 R20 K64 ["calculateNeedsRescroll"]
  DUPCLOSURE R23 K65 [PROTO_5]
  CAPTURE VAL R19
  CAPTURE VAL R1
  SETTABLEKS R23 R20 K66 ["onTextChanged"]
  DUPCLOSURE R23 K67 [PROTO_11]
  CAPTURE VAL R19
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R13
  SETTABLEKS R23 R20 K68 ["renderWithProviders"]
  DUPCLOSURE R23 K69 [PROTO_14]
  CAPTURE VAL R11
  CAPTURE VAL R12
  SETTABLEKS R23 R20 K70 ["render"]
  DUPCLOSURE R23 K71 [PROTO_15]
  SETTABLEKS R23 R20 K72 ["didMount"]
  DUPCLOSURE R23 K73 [PROTO_16]
  GETTABLEKS R24 R5 K74 ["connect"]
  MOVE R25 R23
  CALL R24 1 1
  MOVE R25 R20
  CALL R24 1 -1
  RETURN R24 -1
