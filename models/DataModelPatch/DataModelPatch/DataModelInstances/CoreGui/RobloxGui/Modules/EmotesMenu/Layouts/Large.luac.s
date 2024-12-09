MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Style"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["AppFonts"]
  DUPTABLE R2 K32 [{"EmotesWheelMinSize", "EmotesWheelMaxSize", "ErrorFrameSize", "ErrorFramePosition", "ErrorFrameAspectRatio", "ErrorFrameMinSize", "ErrorFrameMaxSize", "ErrorTextFont", "ErrorTextSize", "ErrorIcon", "ErrorIconOffset", "MiddleTextSize", "MiddleTextFont", "SlotNumberTextSize", "SlotNumberFont", "CircleBackground", "SegmentedCircle", "SelectedLine", "SelectedLineImageSize", "SelectedLinePadding", "SelectedGradient", "SelectedGradientImageSize"}]
  GETIMPORT R3 K35 [Vector2.new]
  LOADN R4 200
  LOADN R5 200
  CALL R3 2 1
  SETTABLEKS R3 R2 K10 ["EmotesWheelMinSize"]
  GETIMPORT R3 K35 [Vector2.new]
  LOADN R4 144
  LOADN R5 144
  CALL R3 2 1
  SETTABLEKS R3 R2 K11 ["EmotesWheelMaxSize"]
  GETIMPORT R3 K37 [UDim2.new]
  LOADK R4 K38 [0.6]
  LOADN R5 0
  LOADK R6 K39 [0.2]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K12 ["ErrorFrameSize"]
  GETIMPORT R3 K37 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADK R6 K40 [0.1]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K13 ["ErrorFramePosition"]
  LOADN R3 6
  SETTABLEKS R3 R2 K14 ["ErrorFrameAspectRatio"]
  GETIMPORT R3 K35 [Vector2.new]
  LOADN R4 80
  LOADN R5 56
  CALL R3 2 1
  SETTABLEKS R3 R2 K15 ["ErrorFrameMinSize"]
  GETIMPORT R3 K35 [Vector2.new]
  LOADN R4 176
  LOADN R5 72
  CALL R3 2 1
  SETTABLEKS R3 R2 K16 ["ErrorFrameMaxSize"]
  GETTABLEKS R3 R1 K41 ["default"]
  NAMECALL R3 R3 K42 ["getDefault"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K17 ["ErrorTextFont"]
  LOADN R3 36
  SETTABLEKS R3 R2 K18 ["ErrorTextSize"]
  LOADK R3 K43 ["rbxasset://textures/ui/Emotes/ErrorIcon.png"]
  SETTABLEKS R3 R2 K19 ["ErrorIcon"]
  LOADN R3 10
  SETTABLEKS R3 R2 K20 ["ErrorIconOffset"]
  LOADN R3 28
  SETTABLEKS R3 R2 K21 ["MiddleTextSize"]
  GETTABLEKS R3 R1 K41 ["default"]
  NAMECALL R3 R3 K42 ["getDefault"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K22 ["MiddleTextFont"]
  LOADN R3 24
  SETTABLEKS R3 R2 K23 ["SlotNumberTextSize"]
  GETTABLEKS R3 R1 K41 ["default"]
  NAMECALL R3 R3 K42 ["getDefault"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K24 ["SlotNumberFont"]
  LOADK R3 K44 ["rbxasset://textures/ui/Emotes/Large/CircleBackground.png"]
  SETTABLEKS R3 R2 K25 ["CircleBackground"]
  LOADK R3 K45 ["rbxasset://textures/ui/Emotes/Large/SegmentedCircle.png"]
  SETTABLEKS R3 R2 K26 ["SegmentedCircle"]
  LOADK R3 K46 ["rbxasset://textures/ui/Emotes/Large/SelectedLine.png"]
  SETTABLEKS R3 R2 K27 ["SelectedLine"]
  GETIMPORT R3 K35 [Vector2.new]
  LOADN R4 11
  LOADN R5 67
  CALL R3 2 1
  SETTABLEKS R3 R2 K28 ["SelectedLineImageSize"]
  LOADN R3 4
  SETTABLEKS R3 R2 K29 ["SelectedLinePadding"]
  LOADK R3 K47 ["rbxasset://textures/ui/Emotes/Large/SelectedGradient.png"]
  SETTABLEKS R3 R2 K30 ["SelectedGradient"]
  GETIMPORT R3 K35 [Vector2.new]
  LOADN R4 183
  LOADN R5 141
  CALL R3 2 1
  SETTABLEKS R3 R2 K31 ["SelectedGradientImageSize"]
  RETURN R2 1
