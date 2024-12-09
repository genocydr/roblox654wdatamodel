PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateContainerScale"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateTransparency"]
  MOVE R2 R0
  CALL R1 1 0
  LOADK R1 K1 [0.5]
  JUMPIFNOTLT R0 R1 [+22]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["isVisible"]
  JUMPIFNOT R1 [+15]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K4 ["contentsVisible"]
  JUMPIFNOT R1 [+9]
  GETUPVAL R1 0
  DUPTABLE R3 K6 [{"contentVisible"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["contentVisible"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  JUMP [+8]
  GETUPVAL R1 0
  DUPTABLE R3 K6 [{"contentVisible"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["contentVisible"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 0
  DUPTABLE R3 K9 [{"allVisible"}]
  LOADN R5 1
  JUMPIFLT R0 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K8 ["allVisible"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateButtonTransparency"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K2 [{"allVisible", "contentVisible"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["allVisible"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["contentVisible"]
  SETTABLEKS R1 R0 K3 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["createBinding"]
  LOADN R2 1
  CALL R1 1 2
  SETTABLEKS R1 R0 K5 ["containerScale"]
  SETTABLEKS R2 R0 K6 ["updateContainerScale"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["createSingleMotor"]
  LOADN R2 0
  CALL R1 1 1
  SETTABLEKS R1 R0 K8 ["containerScaleMotor"]
  GETTABLEKS R1 R0 K8 ["containerScaleMotor"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K9 ["onStep"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["createBinding"]
  LOADN R2 1
  CALL R1 1 2
  SETTABLEKS R1 R0 K10 ["transparency"]
  SETTABLEKS R2 R0 K11 ["updateTransparency"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["createSingleMotor"]
  LOADN R2 0
  CALL R1 1 1
  SETTABLEKS R1 R0 K12 ["transparencyMotor"]
  GETTABLEKS R1 R0 K12 ["transparencyMotor"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K9 ["onStep"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["createBinding"]
  LOADN R2 1
  CALL R1 1 2
  SETTABLEKS R1 R0 K13 ["buttonTransparency"]
  SETTABLEKS R2 R0 K14 ["updateButtonTransparency"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["createSingleMotor"]
  LOADN R2 0
  CALL R1 1 1
  SETTABLEKS R1 R0 K15 ["buttonTransparencyMotor"]
  GETTABLEKS R1 R0 K15 ["buttonTransparencyMotor"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  NAMECALL R1 R1 K9 ["onStep"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["selectedPlayer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K8 [{"layoutOrder", "playerRelationship", "selectedPlayer", "dropDownOpen", "requestFriendship", "contentVisible"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K3 ["layoutOrder"]
  SETTABLEKS R1 R5 K4 ["playerRelationship"]
  SETTABLEKS R2 R5 K1 ["selectedPlayer"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K9 ["isVisible"]
  SETTABLEKS R6 R5 K5 ["dropDownOpen"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["requestFriendship"]
  SETTABLEKS R6 R5 K6 ["requestFriendship"]
  GETTABLEKS R7 R0 K10 ["state"]
  GETTABLEKS R6 R7 K7 ["contentVisible"]
  SETTABLEKS R6 R5 K7 ["contentVisible"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["isBlocked"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R0 R1 K2 ["unblockPlayer"]
  GETUPVAL R1 2
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R0 R1 K3 ["blockPlayer"]
  GETUPVAL R1 2
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["selectedPlayer"]
  GETUPVAL R3 0
  LOADK R5 K2 ["PlayerDropDown.Block"]
  NAMECALL R3 R3 K3 ["FormatByKey"]
  CALL R3 2 1
  GETUPVAL R4 0
  LOADK R6 K4 ["PlayerDropDown.UnBlock"]
  NAMECALL R4 R4 K3 ["FormatByKey"]
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["icons/actions/block"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K15 [{"contentVisible", "buttonTransparency", "layoutOrder", "text", "icon", "lastButton", "forceShowOptions", "onActivated"}]
  GETTABLEKS R10 R0 K16 ["state"]
  GETTABLEKS R9 R10 K7 ["contentVisible"]
  SETTABLEKS R9 R8 K7 ["contentVisible"]
  GETTABLEKS R9 R0 K8 ["buttonTransparency"]
  SETTABLEKS R9 R8 K8 ["buttonTransparency"]
  LOADN R9 4
  SETTABLEKS R9 R8 K9 ["layoutOrder"]
  GETTABLEKS R10 R1 K17 ["isBlocked"]
  JUMPIFNOT R10 [+2]
  MOVE R9 R4
  JUMPIF R9 [+1]
  MOVE R9 R3
  SETTABLEKS R9 R8 K10 ["text"]
  SETTABLEKS R5 R8 K11 ["icon"]
  LOADB R9 0
  SETTABLEKS R9 R8 K12 ["lastButton"]
  LOADB R9 0
  SETTABLEKS R9 R8 K13 ["forceShowOptions"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K14 ["onActivated"]
  CALL R6 2 -1
  RETURN R6 -1

PROTO_7:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+16]
  GETIMPORT R0 K1 [require]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Modules"]
  GETTABLEKS R1 R2 K3 ["InGameMenuInit"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K4 ["openReportDialog"]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["__componentName"]
  CALL R1 2 0
  RETURN R0 0
  GETIMPORT R0 K1 [require]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Modules"]
  GETTABLEKS R3 R4 K6 ["Settings"]
  GETTABLEKS R2 R3 K7 ["Pages"]
  GETTABLEKS R1 R2 K8 ["ReportAbuseMenuNewContainerPage"]
  CALL R0 1 1
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["__componentName"]
  NAMECALL R1 R0 K9 ["ReportPlayer"]
  CALL R1 3 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K10 ["props"]
  GETTABLEKS R1 R2 K11 ["closeDropDown"]
  CALL R1 0 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["selectedPlayer"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["icons/actions/feedback"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K12 [{"contentVisible", "buttonTransparency", "layoutOrder", "text", "icon", "lastButton", "forceShowOptions", "onActivated"}]
  GETTABLEKS R7 R0 K13 ["state"]
  GETTABLEKS R6 R7 K4 ["contentVisible"]
  SETTABLEKS R6 R5 K4 ["contentVisible"]
  GETTABLEKS R6 R0 K5 ["buttonTransparency"]
  SETTABLEKS R6 R5 K5 ["buttonTransparency"]
  LOADN R6 5
  SETTABLEKS R6 R5 K6 ["layoutOrder"]
  GETUPVAL R6 3
  LOADK R8 K14 ["PlayerDropDown.Report"]
  NAMECALL R6 R6 K15 ["FormatByKey"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["text"]
  SETTABLEKS R2 R5 K8 ["icon"]
  LOADB R6 1
  SETTABLEKS R6 R5 K9 ["lastButton"]
  LOADB R6 0
  SETTABLEKS R6 R5 K10 ["forceShowOptions"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K11 ["onActivated"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_9:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["UserId"]
  LOADK R3 K1 ["leaderBoard"]
  NAMECALL R0 R0 K2 ["InspectPlayerFromUserIdWithCtx"]
  CALL R0 3 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["closeDropDown"]
  CALL R0 0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K5 ["setPlayerListVisibility"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["selectedPlayer"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["icons/actions/zoomIn"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K12 [{"contentVisible", "buttonTransparency", "layoutOrder", "text", "icon", "lastButton", "forceShowOptions", "onActivated"}]
  GETTABLEKS R7 R0 K13 ["state"]
  GETTABLEKS R6 R7 K4 ["contentVisible"]
  SETTABLEKS R6 R5 K4 ["contentVisible"]
  GETTABLEKS R6 R0 K5 ["buttonTransparency"]
  SETTABLEKS R6 R5 K5 ["buttonTransparency"]
  LOADN R6 3
  SETTABLEKS R6 R5 K6 ["layoutOrder"]
  GETUPVAL R6 3
  LOADK R8 K14 ["PlayerDropDown.Examine"]
  NAMECALL R6 R6 K15 ["FormatByKey"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["text"]
  SETTABLEKS R2 R5 K8 ["icon"]
  GETUPVAL R7 4
  JUMPIFEQ R1 R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  SETTABLEKS R6 R5 K9 ["lastButton"]
  LOADB R6 0
  SETTABLEKS R6 R5 K10 ["forceShowOptions"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K11 ["onActivated"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["selectedPlayer"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["isTenFootInterface"]
  JUMPIFNOT R2 [+2]
  LOADNIL R2
  RETURN R2 1
  NEWTABLE R2 0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createElement"]
  LOADK R4 K4 ["UIScale"]
  DUPTABLE R5 K6 [{"Scale"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["containerScale"]
  SETTABLEKS R6 R5 K5 ["Scale"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["UIScale"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createElement"]
  LOADK R4 K8 ["UIListLayout"]
  DUPTABLE R5 K11 [{"Padding", "SortOrder"}]
  GETIMPORT R6 K14 [UDim.new]
  LOADN R7 0
  GETTABLEKS R8 R0 K15 ["DropDownButtonPadding"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["Padding"]
  GETIMPORT R6 K18 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R6 R5 K10 ["SortOrder"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K8 ["UIListLayout"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K22 [{"player", "contentVisible", "transparency"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K1 ["selectedPlayer"]
  SETTABLEKS R6 R5 K19 ["player"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K23 ["state"]
  GETTABLEKS R6 R7 K20 ["contentVisible"]
  SETTABLEKS R6 R5 K20 ["contentVisible"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K21 ["transparency"]
  SETTABLEKS R6 R5 K21 ["transparency"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K24 ["PlayerHeader"]
  LOADN R5 4
  GETTABLEKS R6 R0 K25 ["DropDownButtonSizeY"]
  MUL R4 R5 R6
  GETTABLEKS R5 R0 K26 ["DropDownHeaderSizeY"]
  ADD R3 R4 R5
  GETTABLEKS R5 R0 K15 ["DropDownButtonPadding"]
  GETTABLEKS R6 R0 K26 ["DropDownHeaderSizeY"]
  ADD R4 R5 R6
  MOVE R5 R4
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K27 ["playerRelationship"]
  GETUPVAL R7 3
  JUMPIFEQ R1 R7 [+42]
  GETTABLEKS R7 R6 K28 ["isBlocked"]
  JUMPIF R7 [+13]
  GETUPVAL R7 0
  MOVE R9 R6
  NAMECALL R7 R7 K29 ["createFriendButton"]
  CALL R7 2 1
  SETTABLEKS R7 R2 K30 ["FriendButton"]
  GETTABLEKS R8 R0 K15 ["DropDownButtonPadding"]
  ADD R7 R5 R8
  GETTABLEKS R8 R0 K25 ["DropDownButtonSizeY"]
  ADD R5 R7 R8
  GETUPVAL R7 0
  MOVE R9 R6
  NAMECALL R7 R7 K31 ["createBlockButton"]
  CALL R7 2 1
  SETTABLEKS R7 R2 K32 ["BlockButton"]
  GETTABLEKS R8 R0 K15 ["DropDownButtonPadding"]
  ADD R7 R5 R8
  GETTABLEKS R8 R0 K25 ["DropDownButtonSizeY"]
  ADD R5 R7 R8
  GETUPVAL R7 0
  NAMECALL R7 R7 K33 ["createReportButton"]
  CALL R7 1 1
  SETTABLEKS R7 R2 K34 ["ReportButton"]
  GETTABLEKS R8 R0 K15 ["DropDownButtonPadding"]
  ADD R7 R5 R8
  GETTABLEKS R8 R0 K25 ["DropDownButtonSizeY"]
  ADD R5 R7 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K35 ["inspectMenuEnabled"]
  JUMPIFNOT R7 [+12]
  GETUPVAL R7 0
  NAMECALL R7 R7 K36 ["createInspectButton"]
  CALL R7 1 1
  SETTABLEKS R7 R2 K37 ["InspectButton"]
  GETTABLEKS R8 R0 K15 ["DropDownButtonPadding"]
  ADD R7 R5 R8
  GETTABLEKS R8 R0 K25 ["DropDownButtonSizeY"]
  ADD R5 R7 R8
  GETTABLEKS R7 R0 K15 ["DropDownButtonPadding"]
  SUB R5 R5 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K38 ["ImageButton"]
  NEWTABLE R9 16 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["props"]
  GETTABLEKS R10 R11 K39 ["layoutOrder"]
  SETTABLEKS R10 R9 K17 ["LayoutOrder"]
  GETIMPORT R10 K41 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K42 ["Position"]
  GETIMPORT R10 K41 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K43 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K44 ["BackgroundTransparency"]
  LOADB R10 0
  SETTABLEKS R10 R9 K45 ["Selectable"]
  LOADB R10 0
  SETTABLEKS R10 R9 K46 ["Modal"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K23 ["state"]
  GETTABLEKS R10 R11 K47 ["allVisible"]
  SETTABLEKS R10 R9 K48 ["Visible"]
  LOADB R10 0
  SETTABLEKS R10 R9 K49 ["AutoButtonColor"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["props"]
  GETTABLEKS R10 R11 K50 ["isVisible"]
  SETTABLEKS R10 R9 K51 ["Active"]
  LOADK R10 K52 [""]
  SETTABLEKS R10 R9 K53 ["Image"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K54 ["Event"]
  GETTABLEKS R10 R11 K55 ["Activated"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["props"]
  GETTABLEKS R11 R12 K56 ["closeDropDown"]
  SETTABLE R11 R9 R10
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K57 ["Ref"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K58 ["imageButtonRef"]
  SETTABLE R11 R9 R10
  DUPTABLE R10 K60 [{"Container"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K3 ["createElement"]
  LOADK R12 K61 ["Frame"]
  DUPTABLE R13 K64 [{"LayoutOrder", "AnchorPoint", "Position", "Size", "BackgroundTransparency", "ClipsDescendants"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K0 ["props"]
  GETTABLEKS R14 R15 K39 ["layoutOrder"]
  SETTABLEKS R14 R13 K17 ["LayoutOrder"]
  GETIMPORT R14 K66 [Vector2.new]
  LOADK R15 K67 [0.5]
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K62 ["AnchorPoint"]
  GETIMPORT R14 K41 [UDim2.new]
  LOADK R15 K67 [0.5]
  LOADN R16 0
  LOADK R17 K67 [0.5]
  MINUS R19 R3
  DIVK R18 R19 K68 [2]
  CALL R14 4 1
  SETTABLEKS R14 R13 K42 ["Position"]
  GETIMPORT R14 K41 [UDim2.new]
  LOADN R15 0
  GETTABLEKS R16 R0 K69 ["PlayerDropDownSizeXMobile"]
  LOADN R17 0
  MOVE R18 R5
  CALL R14 4 1
  SETTABLEKS R14 R13 K43 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K44 ["BackgroundTransparency"]
  LOADB R14 1
  SETTABLEKS R14 R13 K63 ["ClipsDescendants"]
  MOVE R14 R2
  CALL R11 3 1
  SETTABLEKS R11 R10 K59 ["Container"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_12:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1

PROTO_13:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["isVisible"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["contentsVisible"]
  JUMPIFNOT R1 [+2]
  LOADN R1 1
  RETURN R1 1
  LOADK R1 K3 [1.25]
  RETURN R1 1

PROTO_14:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["isVisible"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["contentsVisible"]
  JUMPIFNOT R1 [+2]
  LOADN R1 0
  RETURN R1 1
  LOADN R1 1
  RETURN R1 1

PROTO_15:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["isVisible"]
  JUMPIFNOT R1 [+11]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["contentsVisible"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["preferredTransparency"]
  MULK R1 R2 K3 [0.3]
  RETURN R1 1
  LOADN R1 1
  RETURN R1 1

PROTO_16:
  GETTABLEKS R3 R0 K0 ["containerScaleMotor"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["spring"]
  NAMECALL R6 R0 K2 ["getScale"]
  CALL R6 1 1
  GETUPVAL R7 1
  CALL R5 2 -1
  NAMECALL R3 R3 K3 ["setGoal"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K4 ["transparencyMotor"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["spring"]
  NAMECALL R6 R0 K5 ["getTransparency"]
  CALL R6 1 1
  GETUPVAL R7 1
  CALL R5 2 -1
  NAMECALL R3 R3 K3 ["setGoal"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K6 ["buttonTransparencyMotor"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["spring"]
  NAMECALL R6 R0 K7 ["getButtonTransparency"]
  CALL R6 1 1
  GETUPVAL R7 1
  CALL R5 2 -1
  NAMECALL R3 R3 K3 ["setGoal"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_17:
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["transparencyMotor"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["containerScaleMotor"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["buttonTransparencyMotor"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["transparencyMotor"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["containerScaleMotor"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["buttonTransparencyMotor"]
  RETURN R0 0

PROTO_19:
  GETTABLEKS R2 R0 K0 ["playerDropDown"]
  GETTABLEKS R1 R2 K1 ["selectedPlayer"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+10]
  GETTABLEKS R3 R0 K0 ["playerDropDown"]
  GETTABLEKS R2 R3 K2 ["isVisible"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R3 R0 K3 ["displayOptions"]
  GETTABLEKS R2 R3 K2 ["isVisible"]
  JUMP [+4]
  GETTABLEKS R3 R0 K0 ["playerDropDown"]
  GETTABLEKS R2 R3 K2 ["isVisible"]
  DUPTABLE R3 K9 [{"selectedPlayer", "isVisible", "playerRelationship", "inspectMenuEnabled", "isTenFootInterface", "subjectToChinaPolicies", "preferredTransparency"}]
  SETTABLEKS R1 R3 K1 ["selectedPlayer"]
  SETTABLEKS R2 R3 K2 ["isVisible"]
  MOVE R4 R1
  JUMPIFNOT R4 [+5]
  GETTABLEKS R5 R0 K4 ["playerRelationship"]
  GETTABLEKS R6 R1 K10 ["UserId"]
  GETTABLE R4 R5 R6
  SETTABLEKS R4 R3 K4 ["playerRelationship"]
  GETTABLEKS R5 R0 K3 ["displayOptions"]
  GETTABLEKS R4 R5 K5 ["inspectMenuEnabled"]
  SETTABLEKS R4 R3 K5 ["inspectMenuEnabled"]
  GETTABLEKS R5 R0 K3 ["displayOptions"]
  GETTABLEKS R4 R5 K6 ["isTenFootInterface"]
  SETTABLEKS R4 R3 K6 ["isTenFootInterface"]
  GETTABLEKS R5 R0 K3 ["displayOptions"]
  GETTABLEKS R4 R5 K7 ["subjectToChinaPolicies"]
  SETTABLEKS R4 R3 K7 ["subjectToChinaPolicies"]
  GETTABLEKS R5 R0 K11 ["settings"]
  GETTABLEKS R4 R5 K8 ["preferredTransparency"]
  SETTABLEKS R4 R3 K8 ["preferredTransparency"]
  RETURN R3 1

PROTO_20:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_21:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_22:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_23:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_24:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_25:
  DUPTABLE R1 K5 [{"closeDropDown", "setPlayerListVisibility", "blockPlayer", "unblockPlayer", "requestFriendship"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["closeDropDown"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["setPlayerListVisibility"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["blockPlayer"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["unblockPlayer"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["requestFriendship"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["Players"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["GuiService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K9 ["Packages"]
  GETTABLEKS R6 R7 K11 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K9 ["Packages"]
  GETTABLEKS R7 R8 K12 ["t"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R0 K9 ["Packages"]
  GETTABLEKS R8 R9 K13 ["Otter"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R0 K9 ["Packages"]
  GETTABLEKS R9 R10 K14 ["UIBlox"]
  CALL R8 1 1
  GETIMPORT R11 K16 [script]
  GETTABLEKS R10 R11 K17 ["Parent"]
  GETTABLEKS R9 R10 K17 ["Parent"]
  GETTABLEKS R10 R9 K18 ["Connection"]
  GETIMPORT R11 K8 [require]
  GETTABLEKS R12 R10 K19 ["LayoutValues"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K20 ["WithLayoutValues"]
  GETIMPORT R13 K8 [require]
  GETIMPORT R16 K16 [script]
  GETTABLEKS R15 R16 K17 ["Parent"]
  GETTABLEKS R14 R15 K21 ["DropDownButton"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETIMPORT R17 K16 [script]
  GETTABLEKS R16 R17 K17 ["Parent"]
  GETTABLEKS R15 R16 K22 ["DropDownPlayerHeader"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETIMPORT R18 K16 [script]
  GETTABLEKS R17 R18 K17 ["Parent"]
  GETTABLEKS R16 R17 K23 ["FriendDropDownButton"]
  CALL R15 1 1
  GETTABLEKS R16 R2 K24 ["LocalPlayer"]
  LOADK R19 K25 ["RobloxGui"]
  NAMECALL R17 R1 K26 ["WaitForChild"]
  CALL R17 2 1
  GETIMPORT R18 K8 [require]
  GETTABLEKS R20 R17 K27 ["Modules"]
  GETTABLEKS R19 R20 K28 ["RobloxTranslator"]
  CALL R18 1 1
  GETTABLEKS R21 R8 K29 ["App"]
  GETTABLEKS R20 R21 K30 ["ImageSet"]
  GETTABLEKS R19 R20 K31 ["Images"]
  GETIMPORT R20 K8 [require]
  GETTABLEKS R22 R17 K27 ["Modules"]
  GETTABLEKS R21 R22 K32 ["isNewInGameMenuEnabled"]
  CALL R20 1 1
  GETTABLEKS R21 R9 K17 ["Parent"]
  GETIMPORT R22 K8 [require]
  GETTABLEKS R24 R21 K33 ["Actions"]
  GETTABLEKS R23 R24 K34 ["ClosePlayerDropDown"]
  CALL R22 1 1
  GETIMPORT R23 K8 [require]
  GETTABLEKS R25 R21 K33 ["Actions"]
  GETTABLEKS R24 R25 K35 ["SetPlayerListVisibility"]
  CALL R23 1 1
  GETIMPORT R24 K8 [require]
  GETTABLEKS R26 R21 K36 ["Flags"]
  GETTABLEKS R25 R26 K37 ["GetFFlagFixDropDownVisibility"]
  CALL R24 1 1
  GETIMPORT R25 K8 [require]
  GETTABLEKS R27 R21 K38 ["Thunks"]
  GETTABLEKS R26 R27 K39 ["BlockPlayer"]
  CALL R25 1 1
  GETIMPORT R26 K8 [require]
  GETTABLEKS R28 R21 K38 ["Thunks"]
  GETTABLEKS R27 R28 K40 ["UnblockPlayer"]
  CALL R26 1 1
  GETIMPORT R27 K8 [require]
  GETTABLEKS R29 R21 K38 ["Thunks"]
  GETTABLEKS R28 R29 K41 ["RequestFriendship"]
  CALL R27 1 1
  GETTABLEKS R28 R4 K42 ["PureComponent"]
  LOADK R30 K43 ["PlayerDropDown"]
  NAMECALL R28 R28 K44 ["extend"]
  CALL R28 2 1
  GETTABLEKS R29 R6 K45 ["strictInterface"]
  DUPTABLE R30 K59 [{"contentsVisible", "selectedPlayer", "isVisible", "playerRelationship", "inspectMenuEnabled", "isTenFootInterface", "subjectToChinaPolicies", "preferredTransparency", "closeDropDown", "blockPlayer", "unblockPlayer", "requestFriendship", "setPlayerListVisibility"}]
  GETTABLEKS R31 R6 K60 ["boolean"]
  SETTABLEKS R31 R30 K46 ["contentsVisible"]
  GETTABLEKS R31 R6 K61 ["optional"]
  GETTABLEKS R32 R6 K62 ["instanceIsA"]
  LOADK R33 K63 ["Player"]
  CALL R32 1 -1
  CALL R31 -1 1
  SETTABLEKS R31 R30 K47 ["selectedPlayer"]
  GETTABLEKS R31 R6 K60 ["boolean"]
  SETTABLEKS R31 R30 K48 ["isVisible"]
  GETTABLEKS R31 R6 K61 ["optional"]
  GETTABLEKS R32 R6 K45 ["strictInterface"]
  DUPTABLE R33 K68 [{"isBlocked", "friendStatus", "isFollowing", "isFollower"}]
  GETTABLEKS R34 R6 K60 ["boolean"]
  SETTABLEKS R34 R33 K64 ["isBlocked"]
  GETTABLEKS R34 R6 K69 ["enum"]
  GETIMPORT R35 K72 [Enum.FriendStatus]
  CALL R34 1 1
  SETTABLEKS R34 R33 K65 ["friendStatus"]
  GETTABLEKS R34 R6 K60 ["boolean"]
  SETTABLEKS R34 R33 K66 ["isFollowing"]
  GETTABLEKS R34 R6 K60 ["boolean"]
  SETTABLEKS R34 R33 K67 ["isFollower"]
  CALL R32 1 -1
  CALL R31 -1 1
  SETTABLEKS R31 R30 K49 ["playerRelationship"]
  GETTABLEKS R31 R6 K60 ["boolean"]
  SETTABLEKS R31 R30 K50 ["inspectMenuEnabled"]
  GETTABLEKS R31 R6 K60 ["boolean"]
  SETTABLEKS R31 R30 K51 ["isTenFootInterface"]
  GETTABLEKS R31 R6 K60 ["boolean"]
  SETTABLEKS R31 R30 K52 ["subjectToChinaPolicies"]
  GETTABLEKS R31 R6 K73 ["number"]
  SETTABLEKS R31 R30 K53 ["preferredTransparency"]
  GETTABLEKS R31 R6 K74 ["callback"]
  SETTABLEKS R31 R30 K54 ["closeDropDown"]
  GETTABLEKS R31 R6 K74 ["callback"]
  SETTABLEKS R31 R30 K55 ["blockPlayer"]
  GETTABLEKS R31 R6 K74 ["callback"]
  SETTABLEKS R31 R30 K56 ["unblockPlayer"]
  GETTABLEKS R31 R6 K74 ["callback"]
  SETTABLEKS R31 R30 K57 ["requestFriendship"]
  GETTABLEKS R31 R6 K74 ["callback"]
  SETTABLEKS R31 R30 K58 ["setPlayerListVisibility"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K75 ["validateProps"]
  DUPTABLE R29 K78 [{"dampingRatio", "frequency"}]
  LOADN R30 1
  SETTABLEKS R30 R29 K76 ["dampingRatio"]
  LOADN R30 4
  SETTABLEKS R30 R29 K77 ["frequency"]
  DUPCLOSURE R30 K79 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R30 R28 K80 ["init"]
  DUPCLOSURE R30 K81 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R15
  SETTABLEKS R30 R28 K82 ["createFriendButton"]
  DUPCLOSURE R30 K83 [PROTO_6]
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R4
  CAPTURE VAL R13
  SETTABLEKS R30 R28 K84 ["createBlockButton"]
  DUPCLOSURE R30 K85 [PROTO_8]
  CAPTURE VAL R19
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R17
  SETTABLEKS R30 R28 K86 ["createReportButton"]
  DUPCLOSURE R30 K87 [PROTO_10]
  CAPTURE VAL R19
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R3
  SETTABLEKS R30 R28 K88 ["createInspectButton"]
  DUPCLOSURE R30 K89 [PROTO_12]
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R16
  SETTABLEKS R30 R28 K90 ["render"]
  DUPCLOSURE R30 K91 [PROTO_13]
  SETTABLEKS R30 R28 K92 ["getScale"]
  DUPCLOSURE R30 K93 [PROTO_14]
  SETTABLEKS R30 R28 K94 ["getTransparency"]
  DUPCLOSURE R30 K95 [PROTO_15]
  SETTABLEKS R30 R28 K96 ["getButtonTransparency"]
  DUPCLOSURE R30 K97 [PROTO_16]
  CAPTURE VAL R7
  CAPTURE VAL R29
  SETTABLEKS R30 R28 K98 ["didUpdate"]
  DUPCLOSURE R30 K99 [PROTO_17]
  SETTABLEKS R30 R28 K100 ["didMount"]
  DUPCLOSURE R30 K101 [PROTO_18]
  SETTABLEKS R30 R28 K102 ["willUnmount"]
  DUPCLOSURE R30 K103 [PROTO_19]
  CAPTURE VAL R24
  DUPCLOSURE R31 K104 [PROTO_25]
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R27
  GETTABLEKS R32 R5 K105 ["connect"]
  MOVE R33 R30
  MOVE R34 R31
  CALL R32 2 1
  MOVE R33 R28
  CALL R32 1 -1
  RETURN R32 -1
