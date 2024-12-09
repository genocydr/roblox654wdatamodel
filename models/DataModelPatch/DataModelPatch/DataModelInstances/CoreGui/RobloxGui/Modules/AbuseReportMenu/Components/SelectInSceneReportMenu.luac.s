PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Connected"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["IsInBackground"]
  JUMPIF R0 [+8]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K2 ["hideReportTab"]
  CALL R0 0 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K3 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["SafetyService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ExperienceStateCaptureService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ExperienceStateCaptureIsInBackground"]
  NAMECALL R2 R2 K6 ["GetEngineFeature"]
  CALL R2 2 1
  JUMPIFNOT R2 [+14]
  LOADNIL R2
  LOADK R5 K7 ["IsInBackground"]
  NAMECALL R3 R1 K8 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE REF R2
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K9 ["Connect"]
  CALL R3 2 1
  MOVE R2 R3
  CLOSEUPVALS R2
  LOADB R2 1
  SETTABLEKS R2 R0 K10 ["IsCaptureModeForReport"]
  NAMECALL R2 R1 K11 ["ToggleCaptureMode"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["Frame"]
  DUPTABLE R4 K5 [{"BackgroundTransparency", "AutomaticSize", "Size"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K2 ["BackgroundTransparency"]
  GETIMPORT R5 K8 [Enum.AutomaticSize.Y]
  SETTABLEKS R5 R4 K3 ["AutomaticSize"]
  GETIMPORT R5 K11 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  DUPTABLE R5 K17 [{"Layout", "Padding", "Title", "SubheadingFrame", "EnterSelectInSceneButton"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  LOADK R7 K18 ["UIListLayout"]
  DUPTABLE R8 K22 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
  GETIMPORT R9 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K19 ["FillDirection"]
  GETIMPORT R9 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R9 R8 K20 ["SortOrder"]
  GETIMPORT R9 K28 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R9 R8 K21 ["HorizontalAlignment"]
  GETIMPORT R9 K30 [UDim.new]
  LOADN R10 0
  LOADN R11 30
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["Padding"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["Layout"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  LOADK R7 K31 ["UIPadding"]
  DUPTABLE R8 K33 [{"PaddingTop"}]
  GETIMPORT R9 K30 [UDim.new]
  LOADN R10 0
  LOADN R11 15
  CALL R9 2 1
  SETTABLEKS R9 R8 K32 ["PaddingTop"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["Padding"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K39 [{"text", "fontStyle", "colorStyle", "layoutOrder", "automaticSize"}]
  GETUPVAL R9 3
  LOADK R11 K40 ["Feature.ReportAbuse.Heading.ReportUsingSelectInScene"]
  NAMECALL R9 R9 K41 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K34 ["text"]
  GETTABLEKS R10 R1 K42 ["Font"]
  GETTABLEKS R9 R10 K43 ["Header1"]
  SETTABLEKS R9 R8 K35 ["fontStyle"]
  GETTABLEKS R10 R1 K44 ["Theme"]
  GETTABLEKS R9 R10 K45 ["TextEmphasis"]
  SETTABLEKS R9 R8 K36 ["colorStyle"]
  LOADN R9 0
  SETTABLEKS R9 R8 K37 ["layoutOrder"]
  GETIMPORT R9 K47 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K38 ["automaticSize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["Title"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  LOADK R7 K1 ["Frame"]
  DUPTABLE R8 K50 [{"BackgroundTransparency", "AutomaticSize", "Position", "AnchorPoint", "LayoutOrder"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K2 ["BackgroundTransparency"]
  GETIMPORT R9 K47 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K3 ["AutomaticSize"]
  GETIMPORT R9 K11 [UDim2.new]
  LOADK R10 K51 [0.5]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K48 ["Position"]
  GETIMPORT R9 K53 [Vector2.new]
  LOADK R10 K51 [0.5]
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K49 ["AnchorPoint"]
  LOADN R9 1
  SETTABLEKS R9 R8 K25 ["LayoutOrder"]
  DUPTABLE R9 K57 [{"Layout", "Subheading1", "Subheading2", "Subheading3"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["createElement"]
  LOADK R11 K18 ["UIListLayout"]
  DUPTABLE R12 K58 [{"FillDirection", "SortOrder", "Padding"}]
  GETIMPORT R13 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K19 ["FillDirection"]
  GETIMPORT R13 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K20 ["SortOrder"]
  GETIMPORT R13 K30 [UDim.new]
  LOADN R14 0
  LOADN R15 30
  CALL R13 2 1
  SETTABLEKS R13 R12 K13 ["Padding"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Layout"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K39 [{"text", "fontStyle", "colorStyle", "layoutOrder", "automaticSize"}]
  LOADK R14 K59 ["• "]
  GETUPVAL R15 3
  LOADK R17 K60 ["Feature.ReportAbuse.Label.SelectInSceneDescription1"]
  NAMECALL R15 R15 K41 ["FormatByKey"]
  CALL R15 2 1
  CONCAT R13 R14 R15
  SETTABLEKS R13 R12 K34 ["text"]
  GETTABLEKS R14 R1 K42 ["Font"]
  GETTABLEKS R13 R14 K61 ["Body"]
  SETTABLEKS R13 R12 K35 ["fontStyle"]
  GETTABLEKS R14 R1 K44 ["Theme"]
  GETTABLEKS R13 R14 K45 ["TextEmphasis"]
  SETTABLEKS R13 R12 K36 ["colorStyle"]
  LOADN R13 0
  SETTABLEKS R13 R12 K37 ["layoutOrder"]
  GETIMPORT R13 K47 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K38 ["automaticSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K54 ["Subheading1"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K39 [{"text", "fontStyle", "colorStyle", "layoutOrder", "automaticSize"}]
  LOADK R14 K59 ["• "]
  GETUPVAL R15 3
  LOADK R17 K62 ["Feature.ReportAbuse.Label.SelectInSceneDescription2"]
  NAMECALL R15 R15 K41 ["FormatByKey"]
  CALL R15 2 1
  CONCAT R13 R14 R15
  SETTABLEKS R13 R12 K34 ["text"]
  GETTABLEKS R14 R1 K42 ["Font"]
  GETTABLEKS R13 R14 K61 ["Body"]
  SETTABLEKS R13 R12 K35 ["fontStyle"]
  GETTABLEKS R14 R1 K44 ["Theme"]
  GETTABLEKS R13 R14 K45 ["TextEmphasis"]
  SETTABLEKS R13 R12 K36 ["colorStyle"]
  LOADN R13 1
  SETTABLEKS R13 R12 K37 ["layoutOrder"]
  GETIMPORT R13 K47 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K38 ["automaticSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K55 ["Subheading2"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K39 [{"text", "fontStyle", "colorStyle", "layoutOrder", "automaticSize"}]
  LOADK R14 K59 ["• "]
  GETUPVAL R15 3
  LOADK R17 K63 ["Feature.ReportAbuse.Label.SelectInSceneDescription3"]
  NAMECALL R15 R15 K41 ["FormatByKey"]
  CALL R15 2 1
  CONCAT R13 R14 R15
  SETTABLEKS R13 R12 K34 ["text"]
  GETTABLEKS R14 R1 K42 ["Font"]
  GETTABLEKS R13 R14 K61 ["Body"]
  SETTABLEKS R13 R12 K35 ["fontStyle"]
  GETTABLEKS R14 R1 K44 ["Theme"]
  GETTABLEKS R13 R14 K45 ["TextEmphasis"]
  SETTABLEKS R13 R12 K36 ["colorStyle"]
  LOADN R13 2
  SETTABLEKS R13 R12 K37 ["layoutOrder"]
  GETIMPORT R13 K47 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K38 ["automaticSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K56 ["Subheading3"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K15 ["SubheadingFrame"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K70 [{"text", "buttonType", "standardSize", "layoutOrder", "position", "anchorPoint", "fitContent", "onActivated"}]
  GETUPVAL R9 3
  LOADK R11 K71 ["Feature.ReportAbuse.Action.EnterSceneReporting"]
  NAMECALL R9 R9 K41 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K34 ["text"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K72 ["PrimarySystem"]
  SETTABLEKS R9 R8 K64 ["buttonType"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K73 ["Small"]
  SETTABLEKS R9 R8 K65 ["standardSize"]
  LOADN R9 2
  SETTABLEKS R9 R8 K37 ["layoutOrder"]
  GETIMPORT R9 K11 [UDim2.new]
  LOADK R10 K51 [0.5]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K66 ["position"]
  GETIMPORT R9 K53 [Vector2.new]
  LOADK R10 K51 [0.5]
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K67 ["anchorPoint"]
  LOADB R9 1
  SETTABLEKS R9 R8 K68 ["fitContent"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K69 ["onActivated"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K16 ["EnterSelectInSceneButton"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["UIBlox"]
  CALL R2 1 1
  GETTABLEKS R5 R2 K9 ["App"]
  GETTABLEKS R4 R5 K10 ["Text"]
  GETTABLEKS R3 R4 K11 ["StyledTextLabel"]
  GETTABLEKS R6 R2 K9 ["App"]
  GETTABLEKS R5 R6 K12 ["Button"]
  GETTABLEKS R4 R5 K12 ["Button"]
  GETTABLEKS R8 R2 K9 ["App"]
  GETTABLEKS R7 R8 K12 ["Button"]
  GETTABLEKS R6 R7 K13 ["Enum"]
  GETTABLEKS R5 R6 K14 ["ButtonType"]
  GETTABLEKS R9 R2 K9 ["App"]
  GETTABLEKS R8 R9 K12 ["Button"]
  GETTABLEKS R7 R8 K13 ["Enum"]
  GETTABLEKS R6 R7 K15 ["StandardButtonSize"]
  GETTABLEKS R9 R2 K16 ["Core"]
  GETTABLEKS R8 R9 K17 ["Style"]
  GETTABLEKS R7 R8 K18 ["useStyle"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K19 ["Workspace"]
  GETTABLEKS R10 R11 K6 ["Packages"]
  GETTABLEKS R9 R10 K20 ["RobloxTranslator"]
  CALL R8 1 1
  DUPCLOSURE R9 K21 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R9 1
