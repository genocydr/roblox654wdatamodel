PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"Size", "LayoutOrder"}]
  GETTABLEKS R4 R0 K1 ["Size"]
  SETTABLEKS R4 R3 K1 ["Size"]
  GETTABLEKS R4 R0 K2 ["LayoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  DUPTABLE R4 K5 [{"SendButton"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K12 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "StyleModifier", "Text"}]
  GETIMPORT R8 K15 [Vector2.new]
  LOADN R9 1
  LOADK R10 K16 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K6 ["AnchorPoint"]
  GETTABLEKS R8 R0 K7 ["OnClick"]
  SETTABLEKS R8 R7 K7 ["OnClick"]
  GETIMPORT R8 K19 [UDim2.fromScale]
  LOADN R9 1
  LOADK R10 K16 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K8 ["Position"]
  GETIMPORT R8 K21 [UDim2.fromOffset]
  LOADN R9 100
  LOADN R10 30
  CALL R8 2 1
  SETTABLEKS R8 R7 K1 ["Size"]
  LOADK R8 K22 ["RoundPrimary"]
  SETTABLEKS R8 R7 K9 ["Style"]
  GETTABLEKS R9 R0 K23 ["Enabled"]
  JUMPIF R9 [+4]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K24 ["Disabled"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K10 ["StyleModifier"]
  GETTABLEKS R8 R0 K25 ["PreviewButtonText"]
  SETTABLEKS R8 R7 K11 ["Text"]
  DUPTABLE R8 K27 [{"QuotaTooltip"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K29 [{"Text", "TextXAlignment"}]
  GETTABLEKS R12 R0 K30 ["QuotaTooltipText"]
  SETTABLEKS R12 R11 K11 ["Text"]
  GETIMPORT R12 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K28 ["TextXAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K26 ["QuotaTooltip"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["SendButton"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFNOTEQKS R1 K1 [""] [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["current"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["setPromptText"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["promptText"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["validRotation"]
  JUMPIFNOT R1 [+3]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["validSeed"]
  GETUPVAL R2 1
  LOADB R3 0
  JUMPIFEQKS R0 K3 [""] [+5]
  GETUPVAL R4 2
  NOT R3 R4
  JUMPIFNOT R3 [+1]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["CreatePartGroup"]
  CALL R0 2 1
  JUMPIFNOT R0 [+8]
  GETUPVAL R1 0
  MOVE R3 R0
  GETUPVAL R4 2
  GETUPVAL R5 3
  NAMECALL R1 R1 K1 ["PreviewTexture"]
  CALL R1 4 -1
  RETURN R1 -1
  GETUPVAL R1 4
  LOADK R3 K2 ["PromptEntry"]
  LOADK R4 K3 ["PartGroupError"]
  NAMECALL R1 R1 K4 ["getText"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R0 0
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R0 2
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K0 ["current"]
  GETUPVAL R1 4
  GETUPVAL R2 5
  CALL R1 1 1
  GETUPVAL R2 6
  GETUPVAL R3 7
  CALL R2 1 1
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K1 ["rotation"]
  NAMECALL R3 R3 K2 ["ToEulerAnglesYXZ"]
  CALL R3 1 3
  FASTCALL1 MATH_DEG R3 [+3]
  MOVE R8 R3
  GETIMPORT R7 K5 [math.deg]
  CALL R7 1 1
  FASTCALL1 MATH_DEG R4 [+3]
  MOVE R9 R4
  GETIMPORT R8 K5 [math.deg]
  CALL R8 1 1
  FASTCALL1 MATH_DEG R5 [+3]
  MOVE R10 R5
  GETIMPORT R9 K5 [math.deg]
  CALL R9 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K8 [Vector3.new]
  CALL R6 3 1
  GETUPVAL R7 8
  CALL R7 0 1
  JUMPIFNOT R7 [+21]
  GETUPVAL R7 9
  CALL R7 0 1
  JUMPIF R7 [+18]
  GETUPVAL R7 10
  LOADK R9 K9 ["GeneratedPreview"]
  GETUPVAL R10 7
  MOVE R11 R0
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K10 ["seed"]
  MOVE R13 R6
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K11 ["smartUVUnwrap"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K12 ["promptMasking"]
  LOADNIL R16
  NAMECALL R7 R7 K13 ["report"]
  CALL R7 9 0
  GETIMPORT R7 K15 [pcall]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U11
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U12
  CALL R7 1 2
  GETUPVAL R9 1
  LOADB R10 1
  CALL R9 1 0
  GETUPVAL R9 2
  LOADB R10 0
  CALL R9 1 0
  JUMPIFNOT R7 [+7]
  FASTCALL1 TYPEOF R8 [+3]
  MOVE R10 R8
  GETIMPORT R9 K17 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K18 ["string"] [+16]
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K19 ["addError"]
  MOVE R10 R2
  MOVE R11 R8
  GETUPVAL R12 12
  LOADK R14 K20 ["EntryArea"]
  LOADK R15 K21 ["ErrorAlertTitle"]
  NAMECALL R12 R12 K22 ["getText"]
  CALL R12 3 1
  MOVE R13 R8
  LOADK R14 K23 ["error"]
  CALL R9 5 0
  RETURN R0 0
  GETUPVAL R9 7
  SETTABLEKS R9 R8 K24 ["meshParts"]
  SETTABLEKS R6 R8 K1 ["rotation"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K11 ["smartUVUnwrap"]
  SETTABLEKS R9 R8 K11 ["smartUVUnwrap"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K12 ["promptMasking"]
  SETTABLEKS R9 R8 K12 ["promptMasking"]
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K25 ["addOrUpdatePreview"]
  MOVE R10 R8
  CALL R9 1 0
  DUPTABLE R9 K28 [{"hash", "uuid"}]
  SETTABLEKS R2 R9 K26 ["hash"]
  GETTABLEKS R10 R8 K27 ["uuid"]
  SETTABLEKS R10 R9 K27 ["uuid"]
  GETUPVAL R11 13
  GETTABLEKS R10 R11 K29 ["addOrUpdateModelToPreview"]
  MOVE R11 R9
  CALL R10 1 0
  GETUPVAL R10 8
  CALL R10 0 1
  JUMPIFNOT R10 [+22]
  GETUPVAL R10 9
  CALL R10 0 1
  JUMPIFNOT R10 [+19]
  GETUPVAL R10 10
  LOADK R12 K9 ["GeneratedPreview"]
  GETUPVAL R13 7
  MOVE R14 R0
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K10 ["seed"]
  MOVE R16 R6
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K11 ["smartUVUnwrap"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K12 ["promptMasking"]
  GETTABLEKS R19 R8 K27 ["uuid"]
  NAMECALL R10 R10 K13 ["report"]
  CALL R10 9 0
  GETUPVAL R10 14
  GETUPVAL R11 15
  GETUPVAL R12 13
  CALL R10 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R3 2
  CALL R3 0 1
  LOADK R6 K1 ["General"]
  LOADK R7 K2 ["Preview"]
  NAMECALL R4 R2 K3 ["getText"]
  CALL R4 3 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["useContext"]
  GETUPVAL R6 4
  CALL R5 1 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["useRef"]
  GETTABLEKS R7 R5 K6 ["promptText"]
  CALL R6 1 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K7 ["useState"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R6
  CALL R7 1 2
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K7 ["useState"]
  LOADB R10 0
  CALL R9 1 2
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K8 ["useCallback"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R6
  CAPTURE VAL R5
  CALL R11 1 1
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["useContext"]
  GETUPVAL R13 5
  CALL R12 1 1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K4 ["useContext"]
  GETUPVAL R14 6
  CALL R13 1 1
  GETTABLEKS R15 R13 K9 ["quota"]
  LOADN R16 0
  JUMPIFLT R16 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K10 ["useEffect"]
  NEWCLOSURE R16 P2
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R9
  NEWTABLE R17 0 5
  GETTABLEKS R18 R5 K6 ["promptText"]
  MOVE R19 R9
  GETTABLEKS R20 R5 K11 ["validRotation"]
  GETTABLEKS R21 R5 K12 ["validSeed"]
  MOVE R22 R14
  SETLIST R17 R18 5 [1]
  CALL R15 2 0
  GETIMPORT R15 K15 [string.format]
  LOADK R18 K1 ["General"]
  LOADK R19 K16 ["QuotaTooltip"]
  NAMECALL R16 R2 K3 ["getText"]
  CALL R16 3 1
  GETTABLEKS R17 R13 K9 ["quota"]
  GETTABLEKS R18 R13 K17 ["total"]
  GETTABLEKS R19 R13 K17 ["total"]
  CALL R15 4 1
  NEWTABLE R16 0 5
  MOVE R17 R7
  MOVE R18 R3
  GETTABLEKS R19 R13 K18 ["addOrUpdatePreview"]
  GETTABLEKS R20 R13 K19 ["addOrUpdateModelToPreview"]
  MOVE R21 R5
  SETLIST R16 R17 5 [1]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K8 ["useCallback"]
  NEWCLOSURE R18 P3
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE UPVAL U7
  CAPTURE VAL R5
  CAPTURE UPVAL U8
  CAPTURE VAL R3
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R1
  CAPTURE UPVAL U11
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE UPVAL U12
  CAPTURE VAL R12
  MOVE R19 R16
  CALL R17 2 1
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K20 ["createElement"]
  GETUPVAL R19 13
  DUPTABLE R20 K24 [{"LayoutOrder", "Padding", "Size"}]
  GETTABLEKS R21 R0 K21 ["LayoutOrder"]
  SETTABLEKS R21 R20 K21 ["LayoutOrder"]
  LOADN R21 10
  SETTABLEKS R21 R20 K22 ["Padding"]
  GETIMPORT R21 K27 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  LOADN R25 140
  CALL R21 4 1
  SETTABLEKS R21 R20 K23 ["Size"]
  DUPTABLE R21 K29 [{"TextInput"}]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K20 ["createElement"]
  GETUPVAL R23 14
  DUPTABLE R24 K38 [{"BottomComponent", "BottomComponentProps", "Disabled", "MultiLine", "OnEnter", "OnTextChanged", "Text", "Size", "PlaceholderText"}]
  GETUPVAL R25 15
  SETTABLEKS R25 R24 K30 ["BottomComponent"]
  DUPTABLE R25 K43 [{"Enabled", "OnClick", "PreviewButtonText", "QuotaTooltipText", "Size"}]
  SETTABLEKS R7 R25 K39 ["Enabled"]
  SETTABLEKS R17 R25 K40 ["OnClick"]
  SETTABLEKS R4 R25 K41 ["PreviewButtonText"]
  SETTABLEKS R15 R25 K42 ["QuotaTooltipText"]
  GETIMPORT R26 K27 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 32
  CALL R26 4 1
  SETTABLEKS R26 R25 K23 ["Size"]
  SETTABLEKS R25 R24 K31 ["BottomComponentProps"]
  SETTABLEKS R9 R24 K32 ["Disabled"]
  LOADB R25 1
  SETTABLEKS R25 R24 K33 ["MultiLine"]
  SETTABLEKS R17 R24 K34 ["OnEnter"]
  SETTABLEKS R11 R24 K35 ["OnTextChanged"]
  GETTABLEKS R25 R6 K44 ["current"]
  SETTABLEKS R25 R24 K36 ["Text"]
  GETIMPORT R25 K27 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 120
  CALL R25 4 1
  SETTABLEKS R25 R24 K23 ["Size"]
  LOADK R27 K45 ["PromptEntry"]
  LOADK R28 K46 ["PromptPlaceholder"]
  NAMECALL R25 R2 K3 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K37 ["PlaceholderText"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K28 ["TextInput"]
  CALL R18 3 -1
  RETURN R18 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["TextureGenerationService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K13 ["Src"]
  GETTABLEKS R5 R6 K14 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K15 ["ContextServices"]
  GETTABLEKS R6 R5 K16 ["Analytics"]
  GETTABLEKS R7 R5 K17 ["Localization"]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K18 ["Hooks"]
  GETIMPORT R9 K9 [require]
  GETTABLEKS R10 R8 K19 ["useSelectedMeshParts"]
  CALL R9 1 1
  GETTABLEKS R11 R3 K20 ["Style"]
  GETTABLEKS R10 R11 K21 ["Stylizer"]
  GETTABLEKS R12 R3 K22 ["Util"]
  GETTABLEKS R11 R12 K23 ["StyleModifier"]
  GETTABLEKS R12 R3 K24 ["UI"]
  GETTABLEKS R13 R12 K25 ["Pane"]
  GETTABLEKS R14 R12 K26 ["Button"]
  GETTABLEKS R15 R12 K27 ["TextInput"]
  GETTABLEKS R16 R12 K28 ["Tooltip"]
  GETTABLEKS R18 R0 K13 ["Src"]
  GETTABLEKS R17 R18 K22 ["Util"]
  GETIMPORT R18 K9 [require]
  GETTABLEKS R19 R17 K29 ["createHashFromMeshParts"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R20 R17 K30 ["fetchAndSetQuotas"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R21 R17 K31 ["GenerationsContext"]
  CALL R20 1 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R22 R17 K32 ["OptionsContext"]
  CALL R21 1 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R23 R17 K33 ["PreviewsContext"]
  CALL R22 1 1
  GETIMPORT R23 K9 [require]
  GETTABLEKS R24 R17 K34 ["createOptionsFromContext"]
  CALL R23 1 1
  GETIMPORT R24 K9 [require]
  GETTABLEKS R27 R0 K13 ["Src"]
  GETTABLEKS R26 R27 K35 ["Flags"]
  GETTABLEKS R25 R26 K36 ["getFFlagTextureGeneratorTelemetry"]
  CALL R24 1 1
  GETIMPORT R25 K9 [require]
  GETTABLEKS R28 R0 K13 ["Src"]
  GETTABLEKS R27 R28 K35 ["Flags"]
  GETTABLEKS R26 R27 K37 ["getFFlagTextureGeneratorTelemetryIncludeLocalId"]
  CALL R25 1 1
  DUPCLOSURE R26 K38 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R16
  DUPCLOSURE R27 K39 [PROTO_6]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R18
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R26
  RETURN R27 1