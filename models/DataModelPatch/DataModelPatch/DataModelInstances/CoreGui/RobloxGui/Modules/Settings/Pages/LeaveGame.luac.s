PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["HubRef"]
  JUMPIFNOT R1 [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["HubRef"]
  MOVE R3 R0
  LOADB R4 1
  NAMECALL R1 R1 K1 ["PopMenu"]
  CALL R1 3 0
  GETUPVAL R1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["AnalyticsTargetName"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["AnalyticsInGameMenuName"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["AnalyticsLeaveGameName"]
  DUPTABLE R6 K8 [{"confirmed", "universeid", "source"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["AnalyticsCancelledName"]
  SETTABLEKS R7 R6 K5 ["confirmed"]
  GETIMPORT R9 K11 [game]
  GETTABLEKS R8 R9 K12 ["GameId"]
  FASTCALL1 TOSTRING R8 [+2]
  GETIMPORT R7 K14 [tostring]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["universeid"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K15 ["AnalyticsLeaveGameSource"]
  SETTABLEKS R7 R6 K7 ["source"]
  NAMECALL R1 R1 K16 ["SetRBXEventStream"]
  CALL R1 5 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R3 [+35]
  LOADB R3 1
  GETTABLEKS R4 R2 K4 ["UserInputType"]
  GETIMPORT R5 K6 [Enum.UserInputType.Gamepad1]
  JUMPIFEQ R4 R5 [+23]
  LOADB R3 1
  GETTABLEKS R4 R2 K4 ["UserInputType"]
  GETIMPORT R5 K8 [Enum.UserInputType.Gamepad2]
  JUMPIFEQ R4 R5 [+16]
  LOADB R3 1
  GETTABLEKS R4 R2 K4 ["UserInputType"]
  GETIMPORT R5 K10 [Enum.UserInputType.Gamepad3]
  JUMPIFEQ R4 R5 [+9]
  GETTABLEKS R4 R2 K4 ["UserInputType"]
  GETIMPORT R5 K12 [Enum.UserInputType.Gamepad4]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["DontLeaveFunc"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["DontLeaveFunc"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K1 [require]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Modules"]
  GETTABLEKS R2 R3 K3 ["Settings"]
  GETTABLEKS R1 R2 K4 ["SettingsPageFactory"]
  CALL R0 1 1
  NAMECALL R1 R0 K5 ["CreateNewPage"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K6 ["DontLeaveFunc"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K7 ["DontLeaveFromHotkey"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K8 ["DontLeaveFromButton"]
  LOADNIL R2
  SETTABLEKS R2 R1 K9 ["TabHeader"]
  GETTABLEKS R2 R1 K10 ["Page"]
  LOADK R3 K11 ["LeaveGamePage"]
  SETTABLEKS R3 R2 K12 ["Name"]
  LOADB R2 0
  SETTABLEKS R2 R1 K13 ["ShouldShowBottomBar"]
  LOADB R2 0
  SETTABLEKS R2 R1 K14 ["ShouldShowHubBar"]
  GETUPVAL R2 3
  LOADK R3 K15 ["TextLabel"]
  CALL R2 1 1
  DUPTABLE R3 K26 [{"Name", "Text", "Font", "FontSize", "TextColor3", "BackgroundTransparency", "Size", "TextWrapped", "ZIndex", "Parent", "Position"}]
  LOADK R4 K27 ["LeaveGameText"]
  SETTABLEKS R4 R3 K12 ["Name"]
  LOADK R4 K28 ["Are you sure you want to leave the experience?"]
  SETTABLEKS R4 R3 K16 ["Text"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K29 ["font"]
  GETIMPORT R5 K32 [Enum.Font.SourceSansBold]
  LOADK R6 K33 ["Confirmation"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K17 ["Font"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K34 ["fontSize"]
  GETIMPORT R5 K36 [Enum.FontSize.Size36]
  LOADK R6 K33 ["Confirmation"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K18 ["FontSize"]
  GETIMPORT R4 K39 [Color3.new]
  LOADN R5 1
  LOADN R6 1
  LOADN R7 1
  CALL R4 3 1
  SETTABLEKS R4 R3 K19 ["TextColor3"]
  LOADN R4 1
  SETTABLEKS R4 R3 K20 ["BackgroundTransparency"]
  GETIMPORT R4 K41 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 200
  CALL R4 4 1
  SETTABLEKS R4 R3 K21 ["Size"]
  LOADB R4 1
  SETTABLEKS R4 R3 K22 ["TextWrapped"]
  LOADN R4 2
  SETTABLEKS R4 R3 K23 ["ZIndex"]
  GETTABLEKS R4 R1 K10 ["Page"]
  SETTABLEKS R4 R3 K24 ["Parent"]
  GETUPVAL R5 5
  JUMPIFNOT R5 [+8]
  GETIMPORT R4 K41 [UDim2.new]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  LOADN R8 100
  CALL R4 4 1
  JUMPIF R4 [+7]
  GETIMPORT R4 K41 [UDim2.new]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K25 ["Position"]
  CALL R2 1 1
  GETUPVAL R3 3
  LOADK R4 K42 ["Frame"]
  CALL R3 1 1
  DUPTABLE R4 K43 [{"Name", "Parent", "Size", "BackgroundTransparency", "Position"}]
  LOADK R5 K44 ["LeaveButtonContainer"]
  SETTABLEKS R5 R4 K12 ["Name"]
  SETTABLEKS R2 R4 K24 ["Parent"]
  GETIMPORT R5 K41 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 144
  CALL R5 4 1
  SETTABLEKS R5 R4 K21 ["Size"]
  LOADN R5 1
  SETTABLEKS R5 R4 K20 ["BackgroundTransparency"]
  GETIMPORT R5 K41 [UDim2.new]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K25 ["Position"]
  CALL R3 1 1
  GETUPVAL R4 3
  LOADK R5 K45 ["UIGridLayout"]
  CALL R4 1 1
  DUPTABLE R5 K52 [{"Name", "CellSize", "CellPadding", "FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Parent"}]
  LOADK R6 K53 ["LeavetButtonsLayout"]
  SETTABLEKS R6 R5 K12 ["Name"]
  GETUPVAL R7 5
  JUMPIFNOT R7 [+8]
  GETIMPORT R6 K41 [UDim2.new]
  LOADN R7 0
  LOADN R8 44
  LOADN R9 0
  LOADN R10 80
  CALL R6 4 1
  JUMPIF R6 [+7]
  GETIMPORT R6 K41 [UDim2.new]
  LOADN R7 0
  LOADN R8 200
  LOADN R9 0
  LOADN R10 50
  CALL R6 4 1
  SETTABLEKS R6 R5 K46 ["CellSize"]
  GETIMPORT R6 K41 [UDim2.new]
  LOADN R7 0
  LOADN R8 20
  LOADN R9 0
  LOADN R10 20
  CALL R6 4 1
  SETTABLEKS R6 R5 K47 ["CellPadding"]
  GETIMPORT R6 K55 [Enum.FillDirection.Horizontal]
  SETTABLEKS R6 R5 K48 ["FillDirection"]
  GETIMPORT R6 K57 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R6 R5 K49 ["HorizontalAlignment"]
  GETIMPORT R6 K59 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R6 R5 K50 ["SortOrder"]
  GETIMPORT R6 K61 [Enum.VerticalAlignment.Top]
  SETTABLEKS R6 R5 K51 ["VerticalAlignment"]
  SETTABLEKS R3 R5 K24 ["Parent"]
  CALL R4 1 1
  GETUPVAL R5 6
  NAMECALL R5 R5 K62 ["IsSmallTouchScreen"]
  CALL R5 1 1
  JUMPIFNOT R5 [+14]
  GETIMPORT R5 K64 [Enum.FontSize.Size24]
  SETTABLEKS R5 R2 K18 ["FontSize"]
  GETIMPORT R5 K41 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 100
  CALL R5 4 1
  SETTABLEKS R5 R2 K21 ["Size"]
  JUMP [+6]
  GETUPVAL R5 5
  JUMPIFNOT R5 [+4]
  GETIMPORT R5 K66 [Enum.FontSize.Size48]
  SETTABLEKS R5 R2 K18 ["FontSize"]
  GETUPVAL R5 6
  LOADK R7 K67 ["LeaveGame"]
  LOADK R8 K68 ["Leave"]
  LOADNIL R9
  DUPCLOSURE R10 K69 [PROTO_3]
  CAPTURE UPVAL U7
  NAMECALL R5 R5 K70 ["MakeStyledButton"]
  CALL R5 5 1
  SETTABLEKS R5 R1 K71 ["LeaveGameButton"]
  GETTABLEKS R5 R1 K71 ["LeaveGameButton"]
  LOADNIL R6
  SETTABLEKS R6 R5 K72 ["NextSelectionRight"]
  GETTABLEKS R5 R1 K71 ["LeaveGameButton"]
  SETTABLEKS R3 R5 K24 ["Parent"]
  GETUPVAL R5 6
  LOADK R7 K73 ["DontLeaveGame"]
  LOADK R8 K74 ["Don't Leave"]
  LOADNIL R9
  GETTABLEKS R10 R1 K8 ["DontLeaveFromButton"]
  NAMECALL R5 R5 K70 ["MakeStyledButton"]
  CALL R5 5 1
  LOADNIL R6
  SETTABLEKS R6 R5 K75 ["NextSelectionLeft"]
  SETTABLEKS R3 R5 K24 ["Parent"]
  GETTABLEKS R6 R1 K10 ["Page"]
  GETIMPORT R7 K41 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R13 R5 K76 ["AbsolutePosition"]
  GETTABLEKS R12 R13 K77 ["Y"]
  GETTABLEKS R14 R5 K78 ["AbsoluteSize"]
  GETTABLEKS R13 R14 K77 ["Y"]
  ADD R11 R12 R13
  CALL R7 4 1
  SETTABLEKS R7 R6 K21 ["Size"]
  RETURN R1 1

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["LeaveGameButton"]
  SETTABLEKS R1 R0 K1 ["SelectedCoreObject"]
  GETUPVAL R0 2
  LOADK R2 K2 ["LeaveGameCancelAction"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["DontLeaveFromHotkey"]
  LOADB R4 0
  GETIMPORT R5 K7 [Enum.KeyCode.ButtonB]
  NAMECALL R0 R0 K8 ["BindCoreAction"]
  CALL R0 5 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADK R2 K0 ["LeaveGameCancelAction"]
  NAMECALL R0 R0 K1 ["UnbindCoreAction"]
  CALL R0 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ContextActionService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R5 K6 ["RobloxGui"]
  NAMECALL R3 R0 K7 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["GuiService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["RbxAnalyticsService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R9 R3 K12 ["Modules"]
  GETTABLEKS R8 R9 K13 ["Settings"]
  GETTABLEKS R7 R8 K14 ["Utility"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R10 R3 K12 ["Modules"]
  GETTABLEKS R9 R10 K13 ["Settings"]
  GETTABLEKS R8 R9 K15 ["leaveGame"]
  CALL R7 1 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R12 R1 K16 ["Workspace"]
  GETTABLEKS R11 R12 K17 ["Packages"]
  GETTABLEKS R10 R11 K18 ["AppCommonLib"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K19 ["Create"]
  LOADNIL R9
  LOADK R12 K12 ["Modules"]
  NAMECALL R10 R3 K7 ["WaitForChild"]
  CALL R10 2 1
  LOADK R12 K20 ["TenFootInterface"]
  NAMECALL R10 R10 K7 ["WaitForChild"]
  CALL R10 2 0
  GETIMPORT R10 K11 [require]
  GETTABLEKS R12 R3 K12 ["Modules"]
  GETTABLEKS R11 R12 K20 ["TenFootInterface"]
  CALL R10 1 1
  NAMECALL R10 R10 K21 ["IsEnabled"]
  CALL R10 1 1
  GETIMPORT R11 K11 [require]
  GETTABLEKS R12 R3 K12 ["Modules"]
  LOADK R14 K22 ["InGameMenu"]
  NAMECALL R12 R12 K7 ["WaitForChild"]
  CALL R12 2 1
  LOADK R14 K23 ["Resources"]
  NAMECALL R12 R12 K7 ["WaitForChild"]
  CALL R12 2 1
  LOADK R14 K24 ["Constants"]
  NAMECALL R12 R12 K7 ["WaitForChild"]
  CALL R12 2 -1
  CALL R11 -1 1
  GETIMPORT R12 K11 [require]
  GETTABLEKS R15 R3 K12 ["Modules"]
  GETTABLEKS R14 R15 K13 ["Settings"]
  GETTABLEKS R13 R14 K25 ["Theme"]
  CALL R12 1 1
  DUPCLOSURE R13 K26 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R7
  MOVE R14 R13
  CALL R14 0 1
  MOVE R9 R14
  GETTABLEKS R15 R9 K27 ["Displayed"]
  GETTABLEKS R14 R15 K28 ["Event"]
  NEWCLOSURE R16 P1
  CAPTURE VAL R4
  CAPTURE REF R9
  CAPTURE VAL R2
  NAMECALL R14 R14 K29 ["connect"]
  CALL R14 2 0
  GETTABLEKS R15 R9 K30 ["Hidden"]
  GETTABLEKS R14 R15 K28 ["Event"]
  DUPCLOSURE R16 K31 [PROTO_6]
  CAPTURE VAL R2
  NAMECALL R14 R14 K29 ["connect"]
  CALL R14 2 0
  CLOSEUPVALS R9
  RETURN R9 1