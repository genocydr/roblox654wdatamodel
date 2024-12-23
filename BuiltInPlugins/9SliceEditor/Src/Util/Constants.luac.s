MAIN:
  PREPVARARGS 0
  NEWTABLE R0 64 0
  GETIMPORT R1 K2 [Vector2.new]
  LOADN R2 74
  LOADN R3 255
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["WIDGET_SIZE"]
  LOADN R1 20
  SETTABLEKS R1 R0 K4 ["BUTTON_FROMEDGE_PADDING"]
  LOADN R1 5
  SETTABLEKS R1 R0 K5 ["BUTTON_FROMCENTER_PADDING"]
  LOADN R1 180
  SETTABLEKS R1 R0 K6 ["BACKGROUND_SIZE"]
  LOADN R1 150
  SETTABLEKS R1 R0 K7 ["IMAGE_SIZE"]
  LOADN R1 40
  SETTABLEKS R1 R0 K8 ["BACKGROUND_FROMEDGE_PADDING"]
  LOADN R1 20
  SETTABLEKS R1 R0 K9 ["BACKGROUND_TILE_SIZE"]
  LOADN R1 5
  SETTABLEKS R1 R0 K10 ["PIXEL_TOP_PADDING"]
  GETTABLEKS R2 R0 K6 ["BACKGROUND_SIZE"]
  GETTABLEKS R3 R0 K10 ["PIXEL_TOP_PADDING"]
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K11 ["PIXEL_YPOSITION"]
  LOADN R1 18
  SETTABLEKS R1 R0 K12 ["IMAGE_PREVIEW_WINDOW_PADDING"]
  LOADN R1 9
  SETTABLEKS R1 R0 K13 ["DRAGGER_WIDTH"]
  LOADN R1 180
  SETTABLEKS R1 R0 K14 ["DRAGGER_HEIGHT"]
  LOADN R1 8
  SETTABLEKS R1 R0 K15 ["DRAGGER_WIDTH_V2"]
  LOADN R1 16
  SETTABLEKS R1 R0 K16 ["DRAGGER_CLICK_WINDOW_WIDTH"]
  LOADN R1 1
  SETTABLEKS R1 R0 K17 ["DRAGGER_CENTER_INSETPX"]
  LOADN R1 16
  SETTABLEKS R1 R0 K18 ["DRAGGER_HANDLE_SIZE"]
  DUPTABLE R1 K23 [{"BACKGROUND_GRID", "HORIZONTAL_DRAGGER", "VERTICAL_DRAGGER", "DRAGGER_V2"}]
  LOADK R3 K24 ["rbxasset://textures/9SliceEditor/"]
  LOADK R4 K25 ["GridPattern.png"]
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K19 ["BACKGROUND_GRID"]
  LOADK R3 K24 ["rbxasset://textures/9SliceEditor/"]
  LOADK R4 K26 ["HorizontalDragger.png"]
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K20 ["HORIZONTAL_DRAGGER"]
  LOADK R3 K24 ["rbxasset://textures/9SliceEditor/"]
  LOADK R4 K27 ["VerticalDragger.png"]
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K21 ["VERTICAL_DRAGGER"]
  DUPTABLE R2 K32 [{"LEFT", "RIGHT", "TOP", "BOTTOM"}]
  DUPTABLE R3 K35 [{"NORMAL", "OUTLINED"}]
  LOADK R5 K24 ["rbxasset://textures/9SliceEditor/"]
  LOADK R6 K36 ["Dragger2Left.png"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K33 ["NORMAL"]
  LOADK R5 K24 ["rbxasset://textures/9SliceEditor/"]
  LOADK R6 K37 ["Dragger2OutlinedLeft.png"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K34 ["OUTLINED"]
  SETTABLEKS R3 R2 K28 ["LEFT"]
  DUPTABLE R3 K35 [{"NORMAL", "OUTLINED"}]
  LOADK R5 K24 ["rbxasset://textures/9SliceEditor/"]
  LOADK R6 K38 ["Dragger2Right.png"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K33 ["NORMAL"]
  LOADK R5 K24 ["rbxasset://textures/9SliceEditor/"]
  LOADK R6 K39 ["Dragger2OutlinedRight.png"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K34 ["OUTLINED"]
  SETTABLEKS R3 R2 K29 ["RIGHT"]
  DUPTABLE R3 K35 [{"NORMAL", "OUTLINED"}]
  LOADK R5 K24 ["rbxasset://textures/9SliceEditor/"]
  LOADK R6 K40 ["Dragger2Top.png"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K33 ["NORMAL"]
  LOADK R5 K24 ["rbxasset://textures/9SliceEditor/"]
  LOADK R6 K41 ["Dragger2OutlinedTop.png"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K34 ["OUTLINED"]
  SETTABLEKS R3 R2 K30 ["TOP"]
  DUPTABLE R3 K35 [{"NORMAL", "OUTLINED"}]
  LOADK R5 K24 ["rbxasset://textures/9SliceEditor/"]
  LOADK R6 K42 ["Dragger2Bottom.png"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K33 ["NORMAL"]
  LOADK R5 K24 ["rbxasset://textures/9SliceEditor/"]
  LOADK R6 K43 ["Dragger2OutlinedBottom.png"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K34 ["OUTLINED"]
  SETTABLEKS R3 R2 K31 ["BOTTOM"]
  SETTABLEKS R2 R1 K22 ["DRAGGER_V2"]
  SETTABLEKS R1 R0 K44 ["IMAGES"]
  DUPTABLE R1 K48 [{"EW", "NS", "NONE"}]
  LOADK R2 K49 ["rbxasset://SystemCursors/SizeEW"]
  SETTABLEKS R2 R1 K45 ["EW"]
  LOADK R2 K50 ["rbxasset://SystemCursors/SizeNS"]
  SETTABLEKS R2 R1 K46 ["NS"]
  LOADK R2 K51 [""]
  SETTABLEKS R2 R1 K47 ["NONE"]
  SETTABLEKS R1 R0 K52 ["MOUSE_CURSORS"]
  LOADN R1 70
  SETTABLEKS R1 R0 K53 ["TEXTIMAGE_PADDING"]
  LOADN R1 116
  SETTABLEKS R1 R0 K54 ["TEXTEDITOR_YOFFSET"]
  GETTABLEKS R3 R0 K6 ["BACKGROUND_SIZE"]
  GETTABLEKS R4 R0 K8 ["BACKGROUND_FROMEDGE_PADDING"]
  ADD R2 R3 R4
  GETTABLEKS R3 R0 K53 ["TEXTIMAGE_PADDING"]
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K55 ["TEXTEDITOR_XOFFSET"]
  LOADN R1 110
  SETTABLEKS R1 R0 K56 ["TEXTEDITOR_XSIZE"]
  LOADN R1 140
  SETTABLEKS R1 R0 K57 ["TEXTEDITOR_YSIZE"]
  LOADN R1 18
  SETTABLEKS R1 R0 K58 ["TEXTSIZE"]
  LOADN R1 8
  SETTABLEKS R1 R0 K59 ["TEXTINPUT_PADDING"]
  LOADN R1 24
  SETTABLEKS R1 R0 K60 ["LEFTINPUT_YPOSITION"]
  GETTABLEKS R3 R0 K60 ["LEFTINPUT_YPOSITION"]
  ADDK R2 R3 K61 [20]
  GETTABLEKS R3 R0 K59 ["TEXTINPUT_PADDING"]
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K62 ["RIGHTINPUT_YPOSITION"]
  GETTABLEKS R3 R0 K62 ["RIGHTINPUT_YPOSITION"]
  ADDK R2 R3 K61 [20]
  GETTABLEKS R3 R0 K59 ["TEXTINPUT_PADDING"]
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K63 ["TOPINPUT_YPOSITION"]
  GETTABLEKS R3 R0 K63 ["TOPINPUT_YPOSITION"]
  ADDK R2 R3 K61 [20]
  GETTABLEKS R3 R0 K59 ["TEXTINPUT_PADDING"]
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K64 ["BOTTOMINPUT_YPOSITION"]
  LOADN R1 2
  SETTABLEKS R1 R0 K65 ["TEXTLABEL_PADDING"]
  GETTABLEKS R2 R0 K60 ["LEFTINPUT_YPOSITION"]
  GETTABLEKS R3 R0 K65 ["TEXTLABEL_PADDING"]
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K66 ["LEFTLABEL_YPOSITION"]
  GETTABLEKS R2 R0 K62 ["RIGHTINPUT_YPOSITION"]
  GETTABLEKS R3 R0 K65 ["TEXTLABEL_PADDING"]
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K67 ["RIGHTLABEL_YPOSITION"]
  GETTABLEKS R2 R0 K63 ["TOPINPUT_YPOSITION"]
  GETTABLEKS R3 R0 K65 ["TEXTLABEL_PADDING"]
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K68 ["TOPLABEL_YPOSITION"]
  GETTABLEKS R2 R0 K64 ["BOTTOMINPUT_YPOSITION"]
  GETTABLEKS R3 R0 K65 ["TEXTLABEL_PADDING"]
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K69 ["BOTTOMLABEL_YPOSITION"]
  RETURN R0 1
