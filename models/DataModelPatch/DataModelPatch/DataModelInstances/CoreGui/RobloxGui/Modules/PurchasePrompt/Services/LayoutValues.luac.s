PROTO_0:
  DUPTABLE R2 K2 [{"Path", "SliceCenter"}]
  LOADK R4 K3 ["rbxasset://textures/"]
  MOVE R5 R0
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K0 ["Path"]
  SETTABLEKS R1 R2 K1 ["SliceCenter"]
  RETURN R2 1

PROTO_1:
  LOADK R0 K0 ["Service(LayoutValues)"]
  RETURN R0 1

PROTO_2:
  NEWTABLE R1 2 0
  DUPTABLE R4 K1 [{"__index"}]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K0 ["__index"]
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K3 [setmetatable]
  CALL R2 2 0
  GETUPVAL R2 1
  CALL R2 0 1
  SETTABLEKS R2 R1 K4 ["signal"]
  MOVE R4 R0
  NAMECALL R2 R1 K5 ["generate"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K6 ["layout"]
  RETURN R1 1

PROTO_3:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["generate"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K1 ["layout"]
  GETTABLEKS R2 R0 K2 ["signal"]
  GETTABLEKS R4 R0 K1 ["layout"]
  NAMECALL R2 R2 K3 ["fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  JUMPIFNOT R1 [+2]
  LOADN R2 3
  JUMP [+1]
  LOADN R2 1
  LOADN R4 44
  MUL R3 R4 R2
  LOADN R5 30
  MUL R4 R5 R2
  LOADN R6 6
  MUL R5 R6 R2
  LOADN R7 16
  MUL R6 R7 R2
  LOADN R8 18
  MUL R7 R8 R2
  LOADN R9 210
  MUL R8 R9 R2
  LOADN R10 106
  MUL R9 R10 R2
  LOADN R11 96
  MUL R10 R11 R2
  LOADN R12 20
  MUL R11 R12 R2
  LOADN R13 25
  MUL R12 R13 R2
  LOADN R14 2
  MUL R13 R14 R2
  LOADN R15 64
  MUL R14 R15 R2
  LOADN R16 64
  MUL R15 R16 R2
  LOADN R17 3
  MUL R16 R17 R2
  LOADN R18 2
  MUL R17 R18 R2
  LOADN R20 2
  MUL R19 R20 R13
  ADD R18 R14 R19
  LOADN R21 2
  MUL R20 R21 R13
  ADD R19 R15 R20
  LOADN R22 2
  MUL R21 R22 R12
  ADD R20 R18 R21
  LOADN R23 2
  MUL R22 R23 R12
  ADD R21 R19 R22
  DUPTABLE R22 K15 [{"AdditionalDetailsLabel", "ItemPreview", "ItemPreviewWhiteFrame", "ItemPreviewContainerFrame", "HorizontalPadding", "ProductDescription", "ProductDescriptionPaddingTop", "RobuxIconContainerFrame", "RobuxIcon", "PriceTextLabel", "PurchasingAnimation", "ButtonIconPadding", "ButtonIconYOffset", "ButtonHeight", "Dialog"}]
  GETIMPORT R23 K18 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  MOVE R27 R4
  CALL R23 4 1
  SETTABLEKS R23 R22 K0 ["AdditionalDetailsLabel"]
  GETIMPORT R23 K18 [UDim2.new]
  LOADN R24 0
  MOVE R25 R14
  LOADN R26 0
  MOVE R27 R15
  CALL R23 4 1
  SETTABLEKS R23 R22 K1 ["ItemPreview"]
  GETIMPORT R23 K18 [UDim2.new]
  LOADN R24 0
  MOVE R25 R18
  LOADN R26 0
  MOVE R27 R19
  CALL R23 4 1
  SETTABLEKS R23 R22 K2 ["ItemPreviewWhiteFrame"]
  GETIMPORT R23 K18 [UDim2.new]
  LOADN R24 0
  MOVE R25 R20
  LOADN R26 0
  MOVE R27 R21
  CALL R23 4 1
  SETTABLEKS R23 R22 K3 ["ItemPreviewContainerFrame"]
  SETTABLEKS R12 R22 K4 ["HorizontalPadding"]
  GETIMPORT R23 K18 [UDim2.new]
  LOADN R24 0
  MOVE R25 R8
  LOADN R26 0
  MOVE R27 R9
  CALL R23 4 1
  SETTABLEKS R23 R22 K5 ["ProductDescription"]
  SETTABLEKS R7 R22 K6 ["ProductDescriptionPaddingTop"]
  GETIMPORT R23 K18 [UDim2.new]
  LOADN R24 0
  ADD R25 R6 R5
  LOADN R26 0
  LOADN R29 2
  MUL R28 R29 R5
  ADD R27 R6 R28
  CALL R23 4 1
  SETTABLEKS R23 R22 K7 ["RobuxIconContainerFrame"]
  GETIMPORT R23 K18 [UDim2.new]
  LOADN R24 0
  MOVE R25 R6
  LOADN R26 0
  MOVE R27 R6
  CALL R23 4 1
  SETTABLEKS R23 R22 K8 ["RobuxIcon"]
  GETIMPORT R23 K18 [UDim2.new]
  LOADN R24 0
  ADD R26 R6 R5
  SUB R25 R8 R26
  LOADN R26 0
  MOVE R27 R6
  CALL R23 4 1
  SETTABLEKS R23 R22 K9 ["PriceTextLabel"]
  GETIMPORT R23 K18 [UDim2.new]
  LOADN R24 0
  MOVE R25 R10
  LOADN R26 0
  MOVE R27 R11
  CALL R23 4 1
  SETTABLEKS R23 R22 K10 ["PurchasingAnimation"]
  SETTABLEKS R16 R22 K11 ["ButtonIconPadding"]
  SETTABLEKS R17 R22 K12 ["ButtonIconYOffset"]
  SETTABLEKS R3 R22 K13 ["ButtonHeight"]
  GETIMPORT R23 K18 [UDim2.new]
  LOADN R24 0
  ADD R25 R20 R8
  LOADN R26 0
  FASTCALL2 MATH_MAX R21 R9 [+5]
  MOVE R30 R21
  MOVE R31 R9
  GETIMPORT R29 K21 [math.max]
  CALL R29 2 1
  ADD R28 R29 R4
  ADD R27 R28 R3
  CALL R23 4 1
  SETTABLEKS R23 R22 K14 ["Dialog"]
  DUPTABLE R23 K26 [{"Default", "ProductDescription", "Button", "AdditionalDetails", "Purchasing"}]
  LOADN R25 18
  MUL R24 R25 R2
  SETTABLEKS R24 R23 K22 ["Default"]
  LOADN R25 18
  MUL R24 R25 R2
  SETTABLEKS R24 R23 K5 ["ProductDescription"]
  LOADN R25 24
  MUL R24 R25 R2
  SETTABLEKS R24 R23 K23 ["Button"]
  LOADN R25 14
  MUL R24 R25 R2
  SETTABLEKS R24 R23 K24 ["AdditionalDetails"]
  LOADN R25 36
  MUL R24 R25 R2
  SETTABLEKS R24 R23 K25 ["Purchasing"]
  DUPTABLE R24 K28 [{"PriceLabel"}]
  GETIMPORT R25 K30 [Color3.new]
  LOADN R26 1
  LOADN R27 1
  LOADN R28 1
  CALL R25 3 1
  SETTABLEKS R25 R24 K27 ["PriceLabel"]
  NEWTABLE R25 16 0
  JUMPIFNOT R1 [+16]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 17
  LOADN R29 17
  LOADN R30 19
  LOADN R31 19
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K37 ["ui/PurchasePrompt/PurchasePromptBG@2x.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  JUMPIF R26 [+15]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 8
  LOADN R29 9
  LOADN R30 10
  LOADN R31 10
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K38 ["ui/PurchasePrompt/PurchasePromptBG.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K39 ["PromptBackground"]
  JUMPIFNOT R1 [+16]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 17
  LOADN R29 17
  LOADN R30 19
  LOADN R31 19
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K40 ["ui/PurchasePrompt/LoadingBG@2x.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  JUMPIF R26 [+15]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 9
  LOADN R29 9
  LOADN R30 11
  LOADN R31 11
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K41 ["ui/PurchasePrompt/LoadingBG.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K42 ["InProgressBackground"]
  JUMPIFNOT R1 [+16]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 18
  LOADN R29 5
  LOADN R30 20
  LOADN R31 7
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K43 ["ui/PurchasePrompt/LeftButton@2x.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  JUMPIF R26 [+15]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 8
  LOADN R29 3
  LOADN R30 10
  LOADN R31 4
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K44 ["ui/PurchasePrompt/LeftButton.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K45 ["ButtonUpLeft"]
  JUMPIFNOT R1 [+16]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 18
  LOADN R29 5
  LOADN R30 20
  LOADN R31 7
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K46 ["ui/PurchasePrompt/LeftButtonDown@2x.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  JUMPIF R26 [+15]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 8
  LOADN R29 3
  LOADN R30 10
  LOADN R31 4
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K47 ["ui/PurchasePrompt/LeftButtonDown.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K48 ["ButtonDownLeft"]
  JUMPIFNOT R1 [+16]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 3
  LOADN R29 5
  LOADN R30 5
  LOADN R31 7
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K49 ["ui/PurchasePrompt/RightButton@2x.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  JUMPIF R26 [+15]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 2
  LOADN R29 3
  LOADN R30 3
  LOADN R31 4
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K50 ["ui/PurchasePrompt/RightButton.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K51 ["ButtonUpRight"]
  JUMPIFNOT R1 [+16]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 3
  LOADN R29 5
  LOADN R30 5
  LOADN R31 7
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K52 ["ui/PurchasePrompt/RightButtonDown@2x.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  JUMPIF R26 [+15]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 2
  LOADN R29 3
  LOADN R30 3
  LOADN R31 4
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K53 ["ui/PurchasePrompt/RightButtonDown.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K54 ["ButtonDownRight"]
  JUMPIFNOT R1 [+16]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 18
  LOADN R29 5
  LOADN R30 20
  LOADN R31 7
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K55 ["ui/PurchasePrompt/SingleButton@2x.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  JUMPIF R26 [+15]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 8
  LOADN R29 3
  LOADN R30 10
  LOADN R31 4
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K56 ["ui/PurchasePrompt/SingleButton.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K57 ["ButtonUp"]
  JUMPIFNOT R1 [+16]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 18
  LOADN R29 5
  LOADN R30 20
  LOADN R31 7
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K58 ["ui/PurchasePrompt/SingleButtonDown@2x.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  JUMPIF R26 [+15]
  GETIMPORT R27 K32 [Rect.new]
  LOADN R28 8
  LOADN R29 3
  LOADN R30 10
  LOADN R31 4
  CALL R27 4 1
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R29 K36 ["rbxasset://textures/"]
  LOADK R30 K59 ["ui/PurchasePrompt/SingleButtonDown.png"]
  CONCAT R28 R29 R30
  SETTABLEKS R28 R26 K33 ["Path"]
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K60 ["ButtonDown"]
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R28 K36 ["rbxasset://textures/"]
  LOADK R29 K61 ["ui/PurchasePrompt/Premium.png"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K33 ["Path"]
  LOADNIL R27
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K62 ["PremiumIcon"]
  JUMPIFNOT R1 [+10]
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R28 K36 ["rbxasset://textures/"]
  LOADK R29 K63 ["ui/common/robux_small@2x.png"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K33 ["Path"]
  LOADNIL R27
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  JUMPIF R26 [+9]
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R28 K36 ["rbxasset://textures/"]
  LOADK R29 K64 ["ui/common/robux_small.png"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K33 ["Path"]
  LOADNIL R27
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K8 ["RobuxIcon"]
  JUMPIFNOT R1 [+10]
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R28 K36 ["rbxasset://textures/"]
  LOADK R29 K65 ["ui/ErrorIcon.png"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K33 ["Path"]
  LOADNIL R27
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  JUMPIF R26 [+9]
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R28 K36 ["rbxasset://textures/"]
  LOADK R29 K65 ["ui/ErrorIcon.png"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K33 ["Path"]
  LOADNIL R27
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K66 ["ErrorIcon"]
  JUMPIFNOT R1 [+10]
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R28 K36 ["rbxasset://textures/"]
  LOADK R29 K67 ["ui/Settings/Help/AButtonDark@2x.png"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K33 ["Path"]
  LOADNIL R27
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  JUMPIF R26 [+9]
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R28 K36 ["rbxasset://textures/"]
  LOADK R29 K68 ["ui/Settings/Help/AButtonDark.png"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K33 ["Path"]
  LOADNIL R27
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K69 ["ButtonA"]
  JUMPIFNOT R1 [+10]
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R28 K36 ["rbxasset://textures/"]
  LOADK R29 K70 ["ui/Settings/Help/BButtonDark@2x.png"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K33 ["Path"]
  LOADNIL R27
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  JUMPIF R26 [+9]
  DUPTABLE R26 K35 [{"Path", "SliceCenter"}]
  LOADK R28 K36 ["rbxasset://textures/"]
  LOADK R29 K71 ["ui/Settings/Help/BButtonDark.png"]
  CONCAT R27 R28 R29
  SETTABLEKS R27 R26 K33 ["Path"]
  LOADNIL R27
  SETTABLEKS R27 R26 K34 ["SliceCenter"]
  SETTABLEKS R26 R25 K72 ["ButtonB"]
  GETUPVAL R26 0
  DUPTABLE R27 K77 [{"Size", "TextSize", "TextColor", "Image"}]
  GETUPVAL R28 0
  MOVE R29 R22
  LOADK R30 K78 ["LayoutValues.Size"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K73 ["Size"]
  GETUPVAL R28 0
  MOVE R29 R23
  LOADK R30 K79 ["LayoutValues.TextSize"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K74 ["TextSize"]
  GETUPVAL R28 0
  MOVE R29 R24
  LOADK R30 K80 ["LayoutValues.TextColor"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K75 ["TextColor"]
  GETUPVAL R28 0
  MOVE R29 R25
  LOADK R30 K81 ["LayoutValues.Image"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K76 ["Image"]
  LOADK R28 K82 ["LayoutValues"]
  CALL R26 2 1
  RETURN R26 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Misc"]
  GETTABLEKS R2 R3 K6 ["createSignal"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K7 ["strict"]
  CALL R2 1 1
  DUPCLOSURE R3 K8 [PROTO_0]
  NEWTABLE R4 4 0
  DUPCLOSURE R5 K9 [PROTO_1]
  SETTABLEKS R5 R4 K10 ["__tostring"]
  DUPCLOSURE R5 K11 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K12 ["new"]
  DUPCLOSURE R5 K13 [PROTO_3]
  SETTABLEKS R5 R4 K14 ["update"]
  DUPCLOSURE R5 K15 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K16 ["generate"]
  RETURN R4 1
