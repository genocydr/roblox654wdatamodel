PROTO_0:
  GETTABLEKS R1 R0 K0 ["getShowUpdatedCameraPath"]
  CALL R1 0 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getSize"]
  GETTABLEKS R3 R0 K1 ["displayOptions"]
  GETTABLEKS R2 R3 K2 ["screenSize"]
  GETUPVAL R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["windowSize"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["X"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Y"]
  NAMECALL R0 R0 K3 ["requestSize"]
  CALL R0 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getPermissions"]
  CALL R1 0 1
  GETTABLEKS R0 R1 K1 ["userCamEligible"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getPermissions"]
  CALL R1 0 1
  GETTABLEKS R0 R1 K2 ["placeCamEnabled"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  GETUPVAL R0 2
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R0 0
  GETUPVAL R1 3
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  LOADN R3 208
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  GETUPVAL R0 2
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R0 0
  GETUPVAL R1 3
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  LOADN R3 208
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["current"]
  NEWCLOSURE R0 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R0 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  CALL R1 1 0
  GETUPVAL R1 2
  LOADB R2 1
  CALL R1 1 0
  GETUPVAL R1 0
  GETUPVAL R2 3
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  LOADN R4 208
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["current"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K1 ["getPermissions"]
  CALL R2 0 1
  GETTABLEKS R1 R2 K2 ["userCamEnabled"]
  JUMPIF R1 [+10]
  JUMPIF R0 [+9]
  GETUPVAL R1 5
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K3 ["robloxPermissionErrorHeader"]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K4 ["robloxPermissionErrorBody"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 7
  CALL R1 0 1
  JUMPIFNOT R1 [+27]
  GETUPVAL R2 8
  GETTABLEKS R1 R2 K5 ["Character"]
  JUMPIFNOT R1 [+52]
  GETUPVAL R2 9
  GETTABLEKS R1 R2 K6 ["hasDynamicHead"]
  GETUPVAL R3 8
  GETTABLEKS R2 R3 K5 ["Character"]
  CALL R1 1 1
  JUMPIF R1 [+44]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K7 ["isCameraOn"]
  CALL R1 0 1
  JUMPIF R1 [+39]
  JUMPIF R0 [+38]
  GETUPVAL R1 5
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K8 ["dynamicAvatarMissingErrorHeader"]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K9 ["dynamicAvatarMissingErrorBody"]
  CALL R1 2 0
  JUMP [+29]
  GETUPVAL R2 9
  GETTABLEKS R1 R2 K6 ["hasDynamicHead"]
  GETUPVAL R3 8
  GETTABLEKS R2 R3 K5 ["Character"]
  JUMPIF R2 [+6]
  GETUPVAL R3 8
  GETTABLEKS R2 R3 K10 ["CharacterAdded"]
  NAMECALL R2 R2 K11 ["Wait"]
  CALL R2 1 1
  CALL R1 1 1
  JUMPIF R1 [+14]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K7 ["isCameraOn"]
  CALL R1 0 1
  JUMPIF R1 [+9]
  JUMPIF R0 [+8]
  GETUPVAL R1 5
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K8 ["dynamicAvatarMissingErrorHeader"]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K9 ["dynamicAvatarMissingErrorBody"]
  CALL R1 2 0
  GETUPVAL R1 10
  LOADK R3 K12 ["SelfView"]
  NAMECALL R1 R1 K13 ["setLastCtx"]
  CALL R1 2 0
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K14 ["toggleVideoAnimation"]
  CALL R1 0 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  GETUPVAL R0 2
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R0 0
  GETUPVAL R1 3
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  LOADN R3 208
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R1 K1 [_G]
  GETTABLEKS R0 R1 K2 ["__TESTEZ_RUNNING_TEST__"]
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["current"]
  CALL R0 2 1
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["isCameraOn"]
  CALL R1 0 1
  JUMPIF R1 [+10]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K5 ["isDraggedOut"]
  JUMPIF R1 [+6]
  GETUPVAL R1 5
  CALL R1 0 1
  JUMPIF R1 [+3]
  GETUPVAL R1 6
  LOADB R2 1
  CALL R1 1 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_13:
  GETUPVAL R2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Hover"]
  JUMPIFEQ R1 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Hover"]
  JUMPIFEQ R1 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Hover"]
  JUMPIFEQ R1 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  NEWTABLE R3 16 0
  GETIMPORT R4 K3 [UDim2.fromOffset]
  LOADN R5 36
  LOADN R6 36
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["Size"]
  GETUPVAL R5 2
  JUMPIFNOT R5 [+15]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["getPermissions"]
  CALL R6 0 1
  GETTABLEKS R5 R6 K6 ["userCamEnabled"]
  JUMPIFNOT R5 [+8]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K7 ["Theme"]
  GETTABLEKS R5 R6 K8 ["BackgroundOnHover"]
  GETTABLEKS R4 R5 K9 ["Color"]
  JUMP [+7]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K7 ["Theme"]
  GETTABLEKS R5 R6 K10 ["BackgroundUIContrast"]
  GETTABLEKS R4 R5 K9 ["Color"]
  SETTABLEKS R4 R3 K11 ["BackgroundColor3"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K7 ["Theme"]
  GETTABLEKS R5 R6 K12 ["Overlay"]
  GETTABLEKS R4 R5 K13 ["Transparency"]
  SETTABLEKS R4 R3 K14 ["BackgroundTransparency"]
  GETUPVAL R4 5
  SETTABLEKS R4 R3 K15 ["onStateChanged"]
  GETIMPORT R4 K17 [UDim2.fromScale]
  LOADK R5 K18 [0.5]
  LOADK R6 K18 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K19 ["Position"]
  GETIMPORT R4 K22 [Vector2.new]
  LOADK R5 K18 [0.5]
  LOADK R6 K18 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K23 ["AnchorPoint"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K24 ["Change"]
  GETTABLEKS R4 R5 K25 ["AbsoluteSize"]
  SETTABLE R0 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K24 ["Change"]
  GETTABLEKS R4 R5 K26 ["AbsolutePosition"]
  SETTABLE R0 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K27 ["Event"]
  GETTABLEKS R4 R5 K28 ["Activated"]
  GETUPVAL R5 6
  SETTABLE R5 R3 R4
  DUPTABLE R4 K31 [{"Corner", "CameraStatusIcon"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K32 ["UICorner"]
  DUPTABLE R7 K34 [{"CornerRadius"}]
  GETIMPORT R8 K36 [UDim.new]
  LOADN R9 1
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K33 ["CornerRadius"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K29 ["Corner"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 7
  DUPTABLE R7 K39 [{"iconSize", "transparency"}]
  GETIMPORT R8 K3 [UDim2.fromOffset]
  LOADN R9 28
  LOADN R10 28
  CALL R8 2 1
  SETTABLEKS R8 R7 K37 ["iconSize"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K5 ["getPermissions"]
  CALL R10 0 1
  GETTABLEKS R9 R10 K6 ["userCamEnabled"]
  JUMPIF R9 [+2]
  LOADK R8 K18 [0.5]
  JUMP [+1]
  LOADN R8 0
  SETTABLEKS R8 R7 K38 ["transparency"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K30 ["CameraStatusIcon"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_17:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["toggleWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["windowSize"]
  NAMECALL R0 R0 K1 ["toggleIsLarge"]
  CALL R0 1 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R1 R0 K0 ["id"]
  GETUPVAL R2 0
  CALL R2 0 1
  GETTABLEKS R3 R2 K1 ["Theme"]
  GETTABLEKS R4 R2 K2 ["Font"]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+4]
  GETUPVAL R5 2
  DUPCLOSURE R6 K3 [PROTO_0]
  CALL R5 1 1
  JUMP [+1]
  LOADB R5 0
  GETUPVAL R6 3
  DUPTABLE R7 K8 [{"robloxPermissionErrorHeader", "robloxPermissionErrorBody", "dynamicAvatarMissingErrorHeader", "dynamicAvatarMissingErrorBody"}]
  LOADK R8 K9 ["CoreScripts.TopBar.RobloxPermissionErrorHeader"]
  SETTABLEKS R8 R7 K4 ["robloxPermissionErrorHeader"]
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIFNOT R9 [+3]
  JUMPIFNOT R5 [+2]
  LOADK R8 K10 ["CoreScripts.TopBar.RobloxPermissionErrorBodyTwo"]
  JUMP [+1]
  LOADK R8 K11 ["CoreScripts.TopBar.RobloxPermissionErrorBody"]
  SETTABLEKS R8 R7 K5 ["robloxPermissionErrorBody"]
  LOADK R8 K12 ["CoreScripts.TopBar.DynamicAvatarMissingErrorHeader"]
  SETTABLEKS R8 R7 K6 ["dynamicAvatarMissingErrorHeader"]
  LOADK R8 K13 ["CoreScripts.TopBar.DynamicAvatarMissingErrorBody"]
  SETTABLEKS R8 R7 K7 ["dynamicAvatarMissingErrorBody"]
  CALL R6 1 1
  GETUPVAL R7 4
  CALL R7 0 1
  GETUPVAL R8 5
  CALL R8 0 1
  GETUPVAL R9 6
  GETTABLEKS R10 R0 K14 ["windowSize"]
  CALL R9 1 1
  GETUPVAL R10 7
  NEWCLOSURE R11 P1
  CAPTURE UPVAL U8
  CAPTURE VAL R9
  CALL R10 1 1
  GETUPVAL R12 9
  GETTABLEKS R11 R12 K15 ["useEffect"]
  NEWCLOSURE R12 P2
  CAPTURE VAL R0
  CAPTURE VAL R10
  NEWTABLE R13 0 1
  MOVE R14 R10
  SETLIST R13 R14 1 [1]
  CALL R11 2 0
  GETUPVAL R11 10
  CALL R11 0 1
  GETUPVAL R13 9
  GETTABLEKS R12 R13 K16 ["useMemo"]
  DUPCLOSURE R13 K17 [PROTO_3]
  CAPTURE UPVAL U11
  CALL R12 1 1
  GETUPVAL R13 12
  LOADN R14 208
  CALL R13 1 4
  GETUPVAL R18 9
  GETTABLEKS R17 R18 K18 ["useState"]
  LOADB R18 1
  CALL R17 1 2
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K18 ["useState"]
  LOADB R20 0
  CALL R19 1 2
  GETUPVAL R22 9
  GETTABLEKS R21 R22 K18 ["useState"]
  LOADB R22 0
  CALL R21 1 2
  GETUPVAL R24 9
  GETTABLEKS R23 R24 K18 ["useState"]
  LOADB R24 0
  CALL R23 1 2
  GETUPVAL R26 9
  GETTABLEKS R25 R26 K19 ["useRef"]
  LOADNIL R26
  CALL R25 1 1
  NEWCLOSURE R26 P4
  CAPTURE VAL R25
  CAPTURE UPVAL U13
  CAPTURE VAL R18
  CAPTURE UPVAL U14
  GETUPVAL R28 9
  GETTABLEKS R27 R28 K15 ["useEffect"]
  NEWCLOSURE R28 P5
  CAPTURE VAL R25
  CAPTURE UPVAL U13
  CAPTURE VAL R18
  CAPTURE UPVAL U14
  NEWTABLE R29 0 1
  MOVE R30 R25
  SETLIST R29 R30 1 [1]
  CALL R27 2 0
  NEWCLOSURE R27 P6
  CAPTURE VAL R25
  CAPTURE UPVAL U13
  CAPTURE VAL R18
  CAPTURE UPVAL U14
  CAPTURE UPVAL U11
  CAPTURE VAL R16
  CAPTURE VAL R6
  CAPTURE UPVAL U15
  CAPTURE VAL R11
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  GETUPVAL R29 9
  GETTABLEKS R28 R29 K20 ["useCallback"]
  NEWCLOSURE R29 P7
  CAPTURE VAL R27
  NEWTABLE R30 0 4
  GETUPVAL R31 11
  GETUPVAL R32 16
  MOVE R33 R6
  MOVE R34 R11
  SETLIST R30 R31 4 [1]
  CALL R28 2 1
  GETUPVAL R30 9
  GETTABLEKS R29 R30 K20 ["useCallback"]
  NEWCLOSURE R30 P8
  CAPTURE VAL R25
  CAPTURE UPVAL U13
  CAPTURE VAL R18
  CAPTURE UPVAL U14
  NEWTABLE R31 0 3
  MOVE R32 R26
  MOVE R33 R17
  GETTABLEKS R34 R0 K14 ["windowSize"]
  SETLIST R31 R32 3 [1]
  CALL R29 2 1
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K19 ["useRef"]
  LOADNIL R31
  CALL R30 1 1
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K15 ["useEffect"]
  NEWCLOSURE R32 P9
  CAPTURE UPVAL U18
  CAPTURE VAL R11
  CAPTURE VAL R30
  CAPTURE UPVAL U11
  CAPTURE VAL R0
  CAPTURE UPVAL U19
  CAPTURE VAL R27
  NEWTABLE R33 0 2
  MOVE R34 R11
  MOVE R35 R30
  SETLIST R33 R34 2 [1]
  CALL R31 2 0
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K20 ["useCallback"]
  NEWCLOSURE R32 P10
  CAPTURE VAL R22
  CAPTURE UPVAL U20
  NEWTABLE R33 0 1
  MOVE R34 R22
  SETLIST R33 R34 1 [1]
  CALL R31 2 1
  GETUPVAL R33 9
  GETTABLEKS R32 R33 K20 ["useCallback"]
  NEWCLOSURE R33 P11
  CAPTURE VAL R20
  CAPTURE UPVAL U20
  NEWTABLE R34 0 1
  MOVE R35 R20
  SETLIST R34 R35 1 [1]
  CALL R32 2 1
  GETUPVAL R34 9
  GETTABLEKS R33 R34 K20 ["useCallback"]
  NEWCLOSURE R34 P12
  CAPTURE VAL R24
  CAPTURE UPVAL U20
  NEWTABLE R35 0 1
  MOVE R36 R24
  SETLIST R35 R36 1 [1]
  CALL R33 2 1
  GETUPVAL R35 9
  GETTABLEKS R34 R35 K20 ["useCallback"]
  NEWCLOSURE R35 P13
  CAPTURE UPVAL U9
  CAPTURE UPVAL U21
  CAPTURE VAL R21
  CAPTURE UPVAL U11
  CAPTURE VAL R2
  CAPTURE VAL R31
  CAPTURE VAL R28
  CAPTURE UPVAL U22
  NEWTABLE R36 0 2
  MOVE R37 R31
  MOVE R38 R28
  SETLIST R36 R37 2 [1]
  CALL R34 2 1
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K21 ["createElement"]
  LOADK R36 K22 ["Frame"]
  NEWTABLE R37 8 0
  LOADK R38 K23 ["SelfieViewFrame"]
  SETTABLEKS R38 R37 K24 ["Name"]
  LOADB R38 1
  SETTABLEKS R38 R37 K25 ["Active"]
  GETIMPORT R38 K28 [UDim2.fromScale]
  LOADN R39 1
  LOADN R40 1
  CALL R38 2 1
  SETTABLEKS R38 R37 K29 ["Size"]
  GETTABLEKS R40 R2 K1 ["Theme"]
  GETTABLEKS R39 R40 K30 ["BackgroundUIDefault"]
  GETTABLEKS R38 R39 K31 ["Color"]
  SETTABLEKS R38 R37 K32 ["BackgroundColor3"]
  LOADN R38 0
  SETTABLEKS R38 R37 K33 ["BackgroundTransparency"]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K34 ["Event"]
  GETTABLEKS R38 R39 K35 ["MouseEnter"]
  SETTABLE R26 R37 R38
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K34 ["Event"]
  GETTABLEKS R38 R39 K36 ["MouseMoved"]
  SETTABLE R26 R37 R38
  SETTABLEKS R30 R37 K37 ["ref"]
  NEWTABLE R38 0 0
  DUPTABLE R39 K45 [{"CloseButtonWrapper", "ExpandButtonWrapper", "Corners", "ControlMessage", "IconFrame", "CameraStatusDot", "Interactable"}]
  MOVE R40 R17
  JUMPIFNOT R40 [+256]
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K21 ["createElement"]
  LOADK R41 K22 ["Frame"]
  DUPTABLE R42 K47 [{"ZIndex", "BackgroundTransparency", "Size"}]
  LOADN R43 2
  SETTABLEKS R43 R42 K46 ["ZIndex"]
  LOADN R43 1
  SETTABLEKS R43 R42 K33 ["BackgroundTransparency"]
  GETUPVAL R44 23
  GETTABLEKS R43 R44 K48 ["CLOSE_BUTTON_FRAME"]
  SETTABLEKS R43 R42 K29 ["Size"]
  DUPTABLE R43 K51 [{"CloseButtonLayout", "CloseButtonInteractable"}]
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K21 ["createElement"]
  LOADK R45 K52 ["UIListLayout"]
  DUPTABLE R46 K57 [{"FillDirection", "SortOrder", "VerticalAlignment", "HorizontalAlignment"}]
  GETIMPORT R47 K60 [Enum.FillDirection.Horizontal]
  SETTABLEKS R47 R46 K53 ["FillDirection"]
  GETIMPORT R47 K62 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R47 R46 K54 ["SortOrder"]
  GETIMPORT R47 K64 [Enum.VerticalAlignment.Center]
  SETTABLEKS R47 R46 K55 ["VerticalAlignment"]
  GETIMPORT R47 K65 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R47 R46 K56 ["HorizontalAlignment"]
  CALL R44 2 1
  SETTABLEKS R44 R43 K49 ["CloseButtonLayout"]
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K21 ["createElement"]
  GETUPVAL R45 21
  NEWTABLE R46 8 0
  GETIMPORT R47 K67 [UDim2.fromOffset]
  LOADN R48 36
  LOADN R49 36
  CALL R47 2 1
  SETTABLEKS R47 R46 K29 ["Size"]
  JUMPIFNOT R19 [+7]
  GETTABLEKS R49 R2 K1 ["Theme"]
  GETTABLEKS R48 R49 K68 ["BackgroundOnHover"]
  GETTABLEKS R47 R48 K31 ["Color"]
  JUMP [+6]
  GETTABLEKS R49 R2 K1 ["Theme"]
  GETTABLEKS R48 R49 K69 ["BackgroundUIContrast"]
  GETTABLEKS R47 R48 K31 ["Color"]
  SETTABLEKS R47 R46 K32 ["BackgroundColor3"]
  LOADK R47 K70 [0.8]
  SETTABLEKS R47 R46 K33 ["BackgroundTransparency"]
  SETTABLEKS R32 R46 K71 ["onStateChanged"]
  GETUPVAL R49 9
  GETTABLEKS R48 R49 K34 ["Event"]
  GETTABLEKS R47 R48 K72 ["Activated"]
  GETUPVAL R49 24
  JUMPIFNOT R49 [+4]
  NEWCLOSURE R48 P14
  CAPTURE UPVAL U24
  CAPTURE VAL R1
  JUMP [+1]
  LOADNIL R48
  SETTABLE R48 R46 R47
  DUPTABLE R47 K75 [{"Corner", "Fragment"}]
  GETUPVAL R49 9
  GETTABLEKS R48 R49 K21 ["createElement"]
  LOADK R49 K76 ["UICorner"]
  DUPTABLE R50 K78 [{"CornerRadius"}]
  GETIMPORT R51 K81 [UDim.new]
  LOADN R52 1
  LOADN R53 0
  CALL R51 2 1
  SETTABLEKS R51 R50 K77 ["CornerRadius"]
  CALL R48 2 1
  SETTABLEKS R48 R47 K73 ["Corner"]
  GETUPVAL R49 9
  GETTABLEKS R48 R49 K21 ["createElement"]
  GETUPVAL R50 9
  GETTABLEKS R49 R50 K74 ["Fragment"]
  LOADNIL R50
  NEWTABLE R51 0 2
  GETUPVAL R53 9
  GETTABLEKS R52 R53 K21 ["createElement"]
  LOADK R53 K22 ["Frame"]
  DUPTABLE R54 K86 [{"Name", "Position", "AnchorPoint", "Size", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency", "Rotation"}]
  LOADK R55 K87 ["X1"]
  SETTABLEKS R55 R54 K24 ["Name"]
  GETIMPORT R55 K88 [UDim2.new]
  LOADK R56 K89 [0.5]
  LOADN R57 0
  LOADK R58 K89 [0.5]
  LOADN R59 0
  CALL R55 4 1
  SETTABLEKS R55 R54 K82 ["Position"]
  GETIMPORT R55 K91 [Vector2.new]
  LOADK R56 K89 [0.5]
  LOADK R57 K89 [0.5]
  CALL R55 2 1
  SETTABLEKS R55 R54 K83 ["AnchorPoint"]
  GETIMPORT R55 K88 [UDim2.new]
  LOADN R56 0
  LOADN R57 16
  LOADN R58 0
  LOADN R59 2
  CALL R55 4 1
  SETTABLEKS R55 R54 K29 ["Size"]
  LOADN R55 0
  SETTABLEKS R55 R54 K84 ["BorderSizePixel"]
  GETTABLEKS R57 R2 K1 ["Theme"]
  GETTABLEKS R56 R57 K92 ["IconEmphasis"]
  GETTABLEKS R55 R56 K31 ["Color"]
  SETTABLEKS R55 R54 K32 ["BackgroundColor3"]
  LOADN R55 0
  SETTABLEKS R55 R54 K33 ["BackgroundTransparency"]
  LOADN R55 45
  SETTABLEKS R55 R54 K85 ["Rotation"]
  DUPTABLE R55 K93 [{"Corner"}]
  GETUPVAL R57 9
  GETTABLEKS R56 R57 K21 ["createElement"]
  LOADK R57 K76 ["UICorner"]
  DUPTABLE R58 K78 [{"CornerRadius"}]
  GETIMPORT R59 K81 [UDim.new]
  LOADN R60 1
  LOADN R61 0
  CALL R59 2 1
  SETTABLEKS R59 R58 K77 ["CornerRadius"]
  CALL R56 2 1
  SETTABLEKS R56 R55 K73 ["Corner"]
  CALL R52 3 1
  GETUPVAL R54 9
  GETTABLEKS R53 R54 K21 ["createElement"]
  LOADK R54 K22 ["Frame"]
  DUPTABLE R55 K86 [{"Name", "Position", "AnchorPoint", "Size", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency", "Rotation"}]
  LOADK R56 K94 ["X2"]
  SETTABLEKS R56 R55 K24 ["Name"]
  GETIMPORT R56 K88 [UDim2.new]
  LOADK R57 K89 [0.5]
  LOADN R58 0
  LOADK R59 K89 [0.5]
  LOADN R60 0
  CALL R56 4 1
  SETTABLEKS R56 R55 K82 ["Position"]
  GETIMPORT R56 K91 [Vector2.new]
  LOADK R57 K89 [0.5]
  LOADK R58 K89 [0.5]
  CALL R56 2 1
  SETTABLEKS R56 R55 K83 ["AnchorPoint"]
  GETIMPORT R56 K88 [UDim2.new]
  LOADN R57 0
  LOADN R58 16
  LOADN R59 0
  LOADN R60 2
  CALL R56 4 1
  SETTABLEKS R56 R55 K29 ["Size"]
  LOADN R56 0
  SETTABLEKS R56 R55 K84 ["BorderSizePixel"]
  GETTABLEKS R58 R2 K1 ["Theme"]
  GETTABLEKS R57 R58 K92 ["IconEmphasis"]
  GETTABLEKS R56 R57 K31 ["Color"]
  SETTABLEKS R56 R55 K32 ["BackgroundColor3"]
  LOADN R56 0
  SETTABLEKS R56 R55 K33 ["BackgroundTransparency"]
  LOADN R56 211
  SETTABLEKS R56 R55 K85 ["Rotation"]
  DUPTABLE R56 K93 [{"Corner"}]
  GETUPVAL R58 9
  GETTABLEKS R57 R58 K21 ["createElement"]
  LOADK R58 K76 ["UICorner"]
  DUPTABLE R59 K78 [{"CornerRadius"}]
  GETIMPORT R60 K81 [UDim.new]
  LOADN R61 1
  LOADN R62 0
  CALL R60 2 1
  SETTABLEKS R60 R59 K77 ["CornerRadius"]
  CALL R57 2 1
  SETTABLEKS R57 R56 K73 ["Corner"]
  CALL R53 3 1
  SETLIST R51 R52 2 [1]
  CALL R48 3 1
  SETTABLEKS R48 R47 K74 ["Fragment"]
  CALL R44 3 1
  SETTABLEKS R44 R43 K50 ["CloseButtonInteractable"]
  CALL R40 3 1
  SETTABLEKS R40 R39 K38 ["CloseButtonWrapper"]
  JUMPIFNOT R17 [+212]
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K21 ["createElement"]
  LOADK R41 K22 ["Frame"]
  DUPTABLE R42 K95 [{"ZIndex", "BackgroundTransparency", "Size", "AnchorPoint", "Position"}]
  LOADN R43 2
  SETTABLEKS R43 R42 K46 ["ZIndex"]
  LOADN R43 1
  SETTABLEKS R43 R42 K33 ["BackgroundTransparency"]
  GETUPVAL R44 23
  GETTABLEKS R43 R44 K48 ["CLOSE_BUTTON_FRAME"]
  SETTABLEKS R43 R42 K29 ["Size"]
  GETIMPORT R43 K91 [Vector2.new]
  LOADN R44 1
  LOADN R45 0
  CALL R43 2 1
  SETTABLEKS R43 R42 K83 ["AnchorPoint"]
  GETIMPORT R43 K88 [UDim2.new]
  LOADN R44 1
  LOADN R45 0
  LOADN R46 0
  LOADN R47 0
  CALL R43 4 1
  SETTABLEKS R43 R42 K82 ["Position"]
  DUPTABLE R43 K99 [{"ExpandButtonLayout", "ExpandButtonPadding", "ExpandButtonInteractable"}]
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K21 ["createElement"]
  LOADK R45 K52 ["UIListLayout"]
  DUPTABLE R46 K57 [{"FillDirection", "SortOrder", "VerticalAlignment", "HorizontalAlignment"}]
  GETIMPORT R47 K60 [Enum.FillDirection.Horizontal]
  SETTABLEKS R47 R46 K53 ["FillDirection"]
  GETIMPORT R47 K62 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R47 R46 K54 ["SortOrder"]
  GETIMPORT R47 K64 [Enum.VerticalAlignment.Center]
  SETTABLEKS R47 R46 K55 ["VerticalAlignment"]
  GETIMPORT R47 K65 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R47 R46 K56 ["HorizontalAlignment"]
  CALL R44 2 1
  SETTABLEKS R44 R43 K96 ["ExpandButtonLayout"]
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K21 ["createElement"]
  LOADK R45 K100 ["UIPadding"]
  DUPTABLE R46 K105 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R47 K81 [UDim.new]
  LOADN R48 0
  LOADN R49 4
  CALL R47 2 1
  SETTABLEKS R47 R46 K101 ["PaddingTop"]
  GETIMPORT R47 K81 [UDim.new]
  LOADN R48 0
  LOADN R49 4
  CALL R47 2 1
  SETTABLEKS R47 R46 K102 ["PaddingLeft"]
  GETIMPORT R47 K81 [UDim.new]
  LOADN R48 0
  LOADN R49 4
  CALL R47 2 1
  SETTABLEKS R47 R46 K103 ["PaddingRight"]
  GETIMPORT R47 K81 [UDim.new]
  LOADN R48 0
  LOADN R49 4
  CALL R47 2 1
  SETTABLEKS R47 R46 K104 ["PaddingBottom"]
  CALL R44 2 1
  SETTABLEKS R44 R43 K97 ["ExpandButtonPadding"]
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K21 ["createElement"]
  GETUPVAL R45 21
  NEWTABLE R46 8 0
  GETIMPORT R47 K67 [UDim2.fromOffset]
  LOADN R48 36
  LOADN R49 36
  CALL R47 2 1
  SETTABLEKS R47 R46 K29 ["Size"]
  JUMPIFNOT R23 [+7]
  GETTABLEKS R49 R2 K1 ["Theme"]
  GETTABLEKS R48 R49 K68 ["BackgroundOnHover"]
  GETTABLEKS R47 R48 K31 ["Color"]
  JUMP [+6]
  GETTABLEKS R49 R2 K1 ["Theme"]
  GETTABLEKS R48 R49 K69 ["BackgroundUIContrast"]
  GETTABLEKS R47 R48 K31 ["Color"]
  SETTABLEKS R47 R46 K32 ["BackgroundColor3"]
  LOADK R47 K70 [0.8]
  SETTABLEKS R47 R46 K33 ["BackgroundTransparency"]
  SETTABLEKS R33 R46 K71 ["onStateChanged"]
  GETUPVAL R49 9
  GETTABLEKS R48 R49 K34 ["Event"]
  GETTABLEKS R47 R48 K72 ["Activated"]
  GETUPVAL R49 24
  JUMPIFNOT R49 [+3]
  NEWCLOSURE R48 P15
  CAPTURE VAL R0
  JUMP [+1]
  LOADNIL R48
  SETTABLE R48 R46 R47
  DUPTABLE R47 K107 [{"Corner", "ExpandImage"}]
  GETUPVAL R49 9
  GETTABLEKS R48 R49 K21 ["createElement"]
  LOADK R49 K76 ["UICorner"]
  DUPTABLE R50 K78 [{"CornerRadius"}]
  GETIMPORT R51 K81 [UDim.new]
  LOADN R52 1
  LOADN R53 0
  CALL R51 2 1
  SETTABLEKS R51 R50 K77 ["CornerRadius"]
  CALL R48 2 1
  SETTABLEKS R48 R47 K73 ["Corner"]
  GETUPVAL R49 9
  GETTABLEKS R48 R49 K21 ["createElement"]
  GETUPVAL R49 25
  DUPTABLE R50 K111 [{"AnchorPoint", "BackgroundTransparency", "Size", "Position", "Image", "ImageColor3", "ImageTransparency"}]
  GETIMPORT R51 K91 [Vector2.new]
  LOADK R52 K89 [0.5]
  LOADK R53 K89 [0.5]
  CALL R51 2 1
  SETTABLEKS R51 R50 K83 ["AnchorPoint"]
  LOADN R51 1
  SETTABLEKS R51 R50 K33 ["BackgroundTransparency"]
  GETIMPORT R51 K67 [UDim2.fromOffset]
  LOADN R52 28
  LOADN R53 28
  CALL R51 2 1
  SETTABLEKS R51 R50 K29 ["Size"]
  GETIMPORT R51 K88 [UDim2.new]
  LOADK R52 K89 [0.5]
  LOADN R53 0
  LOADK R54 K89 [0.5]
  LOADN R55 0
  CALL R51 4 1
  SETTABLEKS R51 R50 K82 ["Position"]
  JUMPIFNOT R9 [+2]
  GETUPVAL R51 26
  JUMP [+1]
  GETUPVAL R51 27
  SETTABLEKS R51 R50 K108 ["Image"]
  GETTABLEKS R52 R3 K112 ["TextEmphasis"]
  GETTABLEKS R51 R52 K31 ["Color"]
  SETTABLEKS R51 R50 K109 ["ImageColor3"]
  GETTABLEKS R52 R3 K112 ["TextEmphasis"]
  GETTABLEKS R51 R52 K113 ["Transparency"]
  SETTABLEKS R51 R50 K110 ["ImageTransparency"]
  CALL R48 2 1
  SETTABLEKS R48 R47 K106 ["ExpandImage"]
  CALL R44 3 1
  SETTABLEKS R44 R43 K98 ["ExpandButtonInteractable"]
  CALL R40 3 1
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K39 ["ExpandButtonWrapper"]
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K21 ["createElement"]
  LOADK R41 K76 ["UICorner"]
  DUPTABLE R42 K78 [{"CornerRadius"}]
  GETUPVAL R44 28
  JUMPIFNOT R44 [+6]
  GETIMPORT R43 K81 [UDim.new]
  LOADN R44 0
  LOADN R45 8
  CALL R43 2 1
  JUMP [+5]
  GETIMPORT R43 K81 [UDim.new]
  LOADN R44 0
  LOADN R45 20
  CALL R43 2 1
  SETTABLEKS R43 R42 K77 ["CornerRadius"]
  CALL R40 2 1
  SETTABLEKS R40 R39 K40 ["Corners"]
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K21 ["createElement"]
  LOADK R41 K22 ["Frame"]
  DUPTABLE R42 K116 [{"AnchorPoint", "Position", "BackgroundColor3", "AutomaticSize", "ZIndex", "BorderSizePixel", "Visible"}]
  GETIMPORT R43 K91 [Vector2.new]
  LOADK R44 K89 [0.5]
  LOADN R45 1
  CALL R43 2 1
  SETTABLEKS R43 R42 K83 ["AnchorPoint"]
  GETIMPORT R43 K88 [UDim2.new]
  LOADK R44 K89 [0.5]
  LOADN R45 0
  LOADN R46 1
  LOADN R47 212
  CALL R43 4 1
  SETTABLEKS R43 R42 K82 ["Position"]
  GETTABLEKS R44 R3 K30 ["BackgroundUIDefault"]
  GETTABLEKS R43 R44 K31 ["Color"]
  SETTABLEKS R43 R42 K32 ["BackgroundColor3"]
  GETIMPORT R43 K118 [Enum.AutomaticSize.XY]
  SETTABLEKS R43 R42 K114 ["AutomaticSize"]
  LOADN R43 2
  SETTABLEKS R43 R42 K46 ["ZIndex"]
  LOADN R43 0
  SETTABLEKS R43 R42 K84 ["BorderSizePixel"]
  GETTABLEKS R43 R8 K119 ["visible"]
  SETTABLEKS R43 R42 K115 ["Visible"]
  DUPTABLE R43 K122 [{"Corners", "UIPadding", "UIListLayout", "Line1", "Line2"}]
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K21 ["createElement"]
  LOADK R45 K76 ["UICorner"]
  NEWTABLE R46 0 0
  CALL R44 2 1
  SETTABLEKS R44 R43 K40 ["Corners"]
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K21 ["createElement"]
  LOADK R45 K100 ["UIPadding"]
  DUPTABLE R46 K123 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R47 K81 [UDim.new]
  LOADN R48 0
  LOADN R49 4
  CALL R47 2 1
  SETTABLEKS R47 R46 K101 ["PaddingTop"]
  GETIMPORT R47 K81 [UDim.new]
  LOADN R48 0
  LOADN R49 8
  CALL R47 2 1
  SETTABLEKS R47 R46 K103 ["PaddingRight"]
  GETIMPORT R47 K81 [UDim.new]
  LOADN R48 0
  LOADN R49 4
  CALL R47 2 1
  SETTABLEKS R47 R46 K104 ["PaddingBottom"]
  GETIMPORT R47 K81 [UDim.new]
  LOADN R48 0
  LOADN R49 8
  CALL R47 2 1
  SETTABLEKS R47 R46 K102 ["PaddingLeft"]
  CALL R44 2 1
  SETTABLEKS R44 R43 K100 ["UIPadding"]
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K21 ["createElement"]
  LOADK R45 K52 ["UIListLayout"]
  DUPTABLE R46 K124 [{"FillDirection"}]
  GETIMPORT R47 K126 [Enum.FillDirection.Vertical]
  SETTABLEKS R47 R46 K53 ["FillDirection"]
  CALL R44 2 1
  SETTABLEKS R44 R43 K52 ["UIListLayout"]
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K21 ["createElement"]
  GETUPVAL R45 29
  DUPTABLE R46 K134 [{"text", "fontStyle", "colorStyle", "textXAlignment", "layoutOrder", "size", "TextWrapped"}]
  GETTABLEKS R47 R8 K127 ["text"]
  SETTABLEKS R47 R46 K127 ["text"]
  GETTABLEKS R47 R4 K135 ["Footer"]
  SETTABLEKS R47 R46 K128 ["fontStyle"]
  GETTABLEKS R47 R3 K136 ["TextDefault"]
  SETTABLEKS R47 R46 K129 ["colorStyle"]
  GETIMPORT R47 K138 [Enum.TextXAlignment.Center]
  SETTABLEKS R47 R46 K130 ["textXAlignment"]
  LOADN R47 1
  SETTABLEKS R47 R46 K131 ["layoutOrder"]
  GETIMPORT R47 K67 [UDim2.fromOffset]
  LOADN R48 46
  LOADN R49 36
  CALL R47 2 1
  SETTABLEKS R47 R46 K132 ["size"]
  LOADB R47 1
  SETTABLEKS R47 R46 K133 ["TextWrapped"]
  CALL R44 2 1
  SETTABLEKS R44 R43 K120 ["Line1"]
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K21 ["createElement"]
  GETUPVAL R45 29
  DUPTABLE R46 K140 [{"text", "fontStyle", "colorStyle", "textXAlignment", "layoutOrder", "size", "automaticSize"}]
  GETTABLEKS R47 R8 K141 ["status"]
  SETTABLEKS R47 R46 K127 ["text"]
  GETTABLEKS R47 R4 K135 ["Footer"]
  SETTABLEKS R47 R46 K128 ["fontStyle"]
  GETTABLEKS R47 R3 K142 ["ContextualPrimaryContent"]
  SETTABLEKS R47 R46 K129 ["colorStyle"]
  GETIMPORT R47 K138 [Enum.TextXAlignment.Center]
  SETTABLEKS R47 R46 K130 ["textXAlignment"]
  LOADN R47 2
  SETTABLEKS R47 R46 K131 ["layoutOrder"]
  GETIMPORT R47 K67 [UDim2.fromOffset]
  LOADN R48 46
  LOADN R49 12
  CALL R47 2 1
  SETTABLEKS R47 R46 K132 ["size"]
  GETIMPORT R47 K144 [Enum.AutomaticSize.Y]
  SETTABLEKS R47 R46 K139 ["automaticSize"]
  CALL R44 2 1
  SETTABLEKS R44 R43 K121 ["Line2"]
  CALL R40 3 1
  SETTABLEKS R40 R39 K41 ["ControlMessage"]
  JUMPIFNOT R17 [+123]
  JUMPIFNOT R12 [+122]
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K21 ["createElement"]
  LOADK R41 K22 ["Frame"]
  DUPTABLE R42 K145 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "ZIndex"}]
  LOADN R43 1
  SETTABLEKS R43 R42 K33 ["BackgroundTransparency"]
  GETUPVAL R44 23
  GETTABLEKS R43 R44 K48 ["CLOSE_BUTTON_FRAME"]
  SETTABLEKS R43 R42 K29 ["Size"]
  GETIMPORT R43 K28 [UDim2.fromScale]
  LOADK R44 K89 [0.5]
  LOADN R45 1
  CALL R43 2 1
  SETTABLEKS R43 R42 K82 ["Position"]
  GETIMPORT R43 K91 [Vector2.new]
  LOADK R44 K89 [0.5]
  LOADN R45 1
  CALL R43 2 1
  SETTABLEKS R43 R42 K83 ["AnchorPoint"]
  LOADN R43 2
  SETTABLEKS R43 R42 K46 ["ZIndex"]
  DUPTABLE R43 K148 [{"Tooltip", "Hover"}]
  GETUPVAL R44 30
  DUPTABLE R45 K151 [{"headerText", "bodyText", "textXAlignment"}]
  SETTABLEKS R13 R45 K149 ["headerText"]
  SETTABLEKS R14 R45 K150 ["bodyText"]
  GETIMPORT R46 K153 [Enum.TextXAlignment.Left]
  SETTABLEKS R46 R45 K130 ["textXAlignment"]
  DUPTABLE R46 K158 [{"guiTarget", "active", "DisplayOrder", "preferredOrientation"}]
  GETUPVAL R47 31
  SETTABLEKS R47 R46 K154 ["guiTarget"]
  SETTABLEKS R15 R46 K155 ["active"]
  LOADN R47 101
  SETTABLEKS R47 R46 K156 ["DisplayOrder"]
  GETUPVAL R48 32
  GETTABLEKS R47 R48 K159 ["Bottom"]
  SETTABLEKS R47 R46 K157 ["preferredOrientation"]
  MOVE R47 R34
  CALL R44 3 1
  SETTABLEKS R44 R43 K146 ["Tooltip"]
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K21 ["createElement"]
  LOADK R45 K22 ["Frame"]
  DUPTABLE R46 K160 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R47 K67 [UDim2.fromOffset]
  LOADN R48 32
  LOADN R49 32
  CALL R47 2 1
  SETTABLEKS R47 R46 K29 ["Size"]
  GETIMPORT R47 K91 [Vector2.new]
  LOADK R48 K89 [0.5]
  LOADK R49 K89 [0.5]
  CALL R47 2 1
  SETTABLEKS R47 R46 K83 ["AnchorPoint"]
  GETIMPORT R47 K28 [UDim2.fromScale]
  LOADK R48 K89 [0.5]
  LOADK R49 K89 [0.5]
  CALL R47 2 1
  SETTABLEKS R47 R46 K82 ["Position"]
  GETTABLEKS R49 R2 K1 ["Theme"]
  GETTABLEKS R48 R49 K68 ["BackgroundOnHover"]
  GETTABLEKS R47 R48 K113 ["Transparency"]
  SETTABLEKS R47 R46 K33 ["BackgroundTransparency"]
  GETTABLEKS R49 R2 K1 ["Theme"]
  GETTABLEKS R48 R49 K68 ["BackgroundOnHover"]
  GETTABLEKS R47 R48 K31 ["Color"]
  SETTABLEKS R47 R46 K32 ["BackgroundColor3"]
  DUPTABLE R47 K93 [{"Corner"}]
  GETUPVAL R49 9
  GETTABLEKS R48 R49 K21 ["createElement"]
  LOADK R49 K76 ["UICorner"]
  DUPTABLE R50 K78 [{"CornerRadius"}]
  GETIMPORT R51 K81 [UDim.new]
  LOADN R52 0
  LOADN R53 8
  CALL R51 2 1
  SETTABLEKS R51 R50 K77 ["CornerRadius"]
  CALL R48 2 1
  SETTABLEKS R48 R47 K73 ["Corner"]
  CALL R44 3 1
  SETTABLEKS R44 R43 K147 ["Hover"]
  CALL R40 3 1
  JUMPIF R40 [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K42 ["IconFrame"]
  JUMPIFNOT R7 [+26]
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K21 ["createElement"]
  GETUPVAL R41 33
  DUPTABLE R42 K161 [{"Position", "ZIndex", "Size"}]
  GETIMPORT R43 K88 [UDim2.new]
  LOADN R44 1
  LOADN R45 244
  LOADN R46 1
  LOADN R47 244
  CALL R43 4 1
  SETTABLEKS R43 R42 K82 ["Position"]
  LOADN R43 2
  SETTABLEKS R43 R42 K46 ["ZIndex"]
  GETIMPORT R43 K67 [UDim2.fromOffset]
  LOADN R44 8
  LOADN R45 8
  CALL R43 2 1
  SETTABLEKS R43 R42 K29 ["Size"]
  CALL R40 2 1
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K43 ["CameraStatusDot"]
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K21 ["createElement"]
  GETUPVAL R41 21
  NEWTABLE R42 4 0
  GETIMPORT R43 K28 [UDim2.fromScale]
  LOADN R44 1
  LOADN R45 1
  CALL R43 2 1
  SETTABLEKS R43 R42 K29 ["Size"]
  LOADN R43 1
  SETTABLEKS R43 R42 K33 ["BackgroundTransparency"]
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K34 ["Event"]
  GETTABLEKS R43 R44 K72 ["Activated"]
  SETTABLE R29 R42 R43
  CALL R40 2 1
  SETTABLEKS R40 R39 K44 ["Interactable"]
  CALL R35 4 -1
  RETURN R35 -1

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
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K7 ["Packages"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K10 ["Workspace"]
  GETTABLEKS R8 R9 K7 ["Packages"]
  GETTABLEKS R7 R8 K11 ["Localization"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K12 ["Hooks"]
  GETTABLEKS R4 R5 K13 ["useLocalization"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R3 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K10 ["Workspace"]
  GETTABLEKS R8 R9 K7 ["Packages"]
  GETTABLEKS R7 R8 K15 ["RoactUtils"]
  CALL R6 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R0 K10 ["Workspace"]
  GETTABLEKS R10 R11 K7 ["Packages"]
  GETTABLEKS R9 R10 K16 ["UniversalAppPolicy"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K17 ["useAppPolicy"]
  GETTABLEKS R10 R6 K12 ["Hooks"]
  GETTABLEKS R9 R10 K18 ["RoactRodux"]
  GETTABLEKS R8 R9 K19 ["useSelector"]
  GETIMPORT R9 K9 [require]
  GETTABLEKS R10 R3 K20 ["LuauPolyfill"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K21 ["setTimeout"]
  GETTABLEKS R11 R9 K22 ["clearTimeout"]
  GETIMPORT R12 K9 [require]
  GETIMPORT R20 K24 [script]
  GETTABLEKS R19 R20 K25 ["Parent"]
  GETTABLEKS R18 R19 K25 ["Parent"]
  GETTABLEKS R17 R18 K25 ["Parent"]
  GETTABLEKS R16 R17 K26 ["Chrome"]
  GETTABLEKS R15 R16 K27 ["ChromeShared"]
  GETTABLEKS R14 R15 K28 ["Service"]
  GETTABLEKS R13 R14 K29 ["WindowSizeSignal"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETIMPORT R21 K24 [script]
  GETTABLEKS R20 R21 K25 ["Parent"]
  GETTABLEKS R19 R20 K25 ["Parent"]
  GETTABLEKS R18 R19 K25 ["Parent"]
  GETTABLEKS R17 R18 K26 ["Chrome"]
  GETTABLEKS R16 R17 K27 ["ChromeShared"]
  GETTABLEKS R15 R16 K12 ["Hooks"]
  GETTABLEKS R14 R15 K30 ["useWindowSizeIsLarge"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R15 R3 K31 ["UIBlox"]
  CALL R14 1 1
  GETTABLEKS R17 R14 K32 ["Core"]
  GETTABLEKS R16 R17 K33 ["Control"]
  GETTABLEKS R15 R16 K34 ["Interactable"]
  GETTABLEKS R18 R14 K35 ["App"]
  GETTABLEKS R17 R18 K36 ["Text"]
  GETTABLEKS R16 R17 K37 ["StyledTextLabel"]
  GETTABLEKS R19 R14 K32 ["Core"]
  GETTABLEKS R18 R19 K38 ["Style"]
  GETTABLEKS R17 R18 K39 ["useStyle"]
  GETTABLEKS R21 R14 K35 ["App"]
  GETTABLEKS R20 R21 K40 ["Dialog"]
  GETTABLEKS R19 R20 K41 ["TooltipV2"]
  GETTABLEKS R18 R19 K42 ["withTooltip"]
  GETTABLEKS R22 R14 K35 ["App"]
  GETTABLEKS R21 R22 K40 ["Dialog"]
  GETTABLEKS R20 R21 K43 ["Enum"]
  GETTABLEKS R19 R20 K44 ["TooltipOrientation"]
  GETTABLEKS R23 R14 K32 ["Core"]
  GETTABLEKS R22 R23 K33 ["Control"]
  GETTABLEKS R21 R22 K43 ["Enum"]
  GETTABLEKS R20 R21 K45 ["ControlState"]
  GETTABLEKS R23 R14 K35 ["App"]
  GETTABLEKS R22 R23 K46 ["ImageSet"]
  GETTABLEKS R21 R22 K47 ["Images"]
  GETTABLEKS R24 R14 K32 ["Core"]
  GETTABLEKS R23 R24 K46 ["ImageSet"]
  GETTABLEKS R22 R23 K48 ["ImageSetLabel"]
  GETIMPORT R23 K9 [require]
  GETIMPORT R26 K24 [script]
  GETTABLEKS R25 R26 K25 ["Parent"]
  GETTABLEKS R24 R25 K49 ["CameraStatusIcon"]
  CALL R23 1 1
  GETIMPORT R24 K9 [require]
  GETIMPORT R27 K24 [script]
  GETTABLEKS R26 R27 K25 ["Parent"]
  GETTABLEKS R25 R26 K50 ["CameraStatusDot"]
  CALL R24 1 1
  GETIMPORT R25 K9 [require]
  GETIMPORT R30 K24 [script]
  GETTABLEKS R29 R30 K25 ["Parent"]
  GETTABLEKS R28 R29 K25 ["Parent"]
  GETTABLEKS R27 R28 K51 ["Utils"]
  GETTABLEKS R26 R27 K52 ["SizingUtils"]
  CALL R25 1 1
  GETIMPORT R26 K9 [require]
  GETIMPORT R31 K24 [script]
  GETTABLEKS R30 R31 K25 ["Parent"]
  GETTABLEKS R29 R30 K25 ["Parent"]
  GETTABLEKS R28 R29 K51 ["Utils"]
  GETTABLEKS R27 R28 K53 ["FaceChatUtils"]
  CALL R26 1 1
  GETIMPORT R27 K9 [require]
  GETIMPORT R32 K24 [script]
  GETTABLEKS R31 R32 K25 ["Parent"]
  GETTABLEKS R30 R31 K25 ["Parent"]
  GETTABLEKS R29 R30 K51 ["Utils"]
  GETTABLEKS R28 R29 K54 ["ModelUtils"]
  CALL R27 1 1
  GETIMPORT R28 K9 [require]
  GETIMPORT R33 K24 [script]
  GETTABLEKS R32 R33 K25 ["Parent"]
  GETTABLEKS R31 R32 K25 ["Parent"]
  GETTABLEKS R30 R31 K12 ["Hooks"]
  GETTABLEKS R29 R30 K55 ["useCameraOn"]
  CALL R28 1 1
  GETIMPORT R29 K9 [require]
  GETIMPORT R34 K24 [script]
  GETTABLEKS R33 R34 K25 ["Parent"]
  GETTABLEKS R32 R33 K25 ["Parent"]
  GETTABLEKS R31 R32 K12 ["Hooks"]
  GETTABLEKS R30 R31 K56 ["useLocalPlayer"]
  CALL R29 1 1
  GETIMPORT R30 K9 [require]
  GETIMPORT R35 K24 [script]
  GETTABLEKS R34 R35 K25 ["Parent"]
  GETTABLEKS R33 R34 K25 ["Parent"]
  GETTABLEKS R32 R33 K12 ["Hooks"]
  GETTABLEKS R31 R32 K57 ["useTrackerMessage"]
  CALL R30 1 1
  GETIMPORT R31 K9 [require]
  GETIMPORT R36 K24 [script]
  GETTABLEKS R35 R36 K25 ["Parent"]
  GETTABLEKS R34 R35 K25 ["Parent"]
  GETTABLEKS R33 R34 K12 ["Hooks"]
  GETTABLEKS R32 R33 K58 ["useTooltipDismissal"]
  CALL R31 1 1
  GETIMPORT R32 K9 [require]
  GETIMPORT R40 K24 [script]
  GETTABLEKS R39 R40 K25 ["Parent"]
  GETTABLEKS R38 R39 K25 ["Parent"]
  GETTABLEKS R37 R38 K25 ["Parent"]
  GETTABLEKS R36 R37 K26 ["Chrome"]
  GETTABLEKS R35 R36 K27 ["ChromeShared"]
  GETTABLEKS R34 R35 K59 ["Unibar"]
  GETTABLEKS R33 R34 K60 ["Constants"]
  CALL R32 1 1
  GETIMPORT R34 K9 [require]
  GETTABLEKS R37 R0 K10 ["Workspace"]
  GETTABLEKS R36 R37 K7 ["Packages"]
  GETTABLEKS R35 R36 K61 ["SharedFlags"]
  CALL R34 1 1
  GETTABLEKS R33 R34 K62 ["GetFFlagFixChromeReferences"]
  GETIMPORT R38 K24 [script]
  GETTABLEKS R37 R38 K25 ["Parent"]
  GETTABLEKS R36 R37 K25 ["Parent"]
  GETTABLEKS R35 R36 K25 ["Parent"]
  GETTABLEKS R34 R35 K26 ["Chrome"]
  GETIMPORT R35 K9 [require]
  GETTABLEKS R36 R34 K63 ["Enabled"]
  CALL R35 1 1
  MOVE R37 R33
  CALL R37 0 1
  JUMPIFNOT R37 [+11]
  MOVE R37 R35
  CALL R37 0 1
  JUMPIFNOT R37 [+6]
  GETIMPORT R36 K9 [require]
  GETTABLEKS R37 R34 K28 ["Service"]
  CALL R36 1 1
  JUMP [+17]
  LOADNIL R36
  JUMP [+15]
  GETIMPORT R36 K9 [require]
  GETIMPORT R42 K24 [script]
  GETTABLEKS R41 R42 K25 ["Parent"]
  GETTABLEKS R40 R41 K25 ["Parent"]
  GETTABLEKS R39 R40 K25 ["Parent"]
  GETTABLEKS R38 R39 K26 ["Chrome"]
  GETTABLEKS R37 R38 K28 ["Service"]
  CALL R36 1 1
  GETIMPORT R41 K24 [script]
  GETTABLEKS R40 R41 K25 ["Parent"]
  GETTABLEKS R39 R40 K25 ["Parent"]
  GETTABLEKS R38 R39 K25 ["Parent"]
  GETTABLEKS R37 R38 K64 ["SelfieView"]
  GETIMPORT R38 K9 [require]
  GETTABLEKS R40 R37 K65 ["Flags"]
  GETTABLEKS R39 R40 K66 ["GetFFlagSelfieViewDontWaitForCharacter"]
  CALL R38 1 1
  GETIMPORT R39 K9 [require]
  GETTABLEKS R41 R37 K65 ["Flags"]
  GETTABLEKS R40 R41 K67 ["GetFFlagSelfieViewDontStartOnOpen"]
  CALL R39 1 1
  GETIMPORT R41 K9 [require]
  GETTABLEKS R44 R0 K10 ["Workspace"]
  GETTABLEKS R43 R44 K7 ["Packages"]
  GETTABLEKS R42 R43 K61 ["SharedFlags"]
  CALL R41 1 1
  GETTABLEKS R40 R41 K68 ["GetFFlagSelfieViewUseNewErrorBody"]
  GETIMPORT R41 K1 [game]
  LOADK R43 K69 ["SelfieViewReducedCornerWidth"]
  LOADB R44 1
  NAMECALL R41 R41 K70 ["DefineFastFlag"]
  CALL R41 3 1
  GETIMPORT R43 K9 [require]
  GETTABLEKS R46 R2 K71 ["Modules"]
  GETTABLEKS R45 R46 K72 ["SelfView"]
  GETTABLEKS R44 R45 K73 ["Analytics"]
  CALL R43 1 1
  GETTABLEKS R42 R43 K74 ["new"]
  CALL R42 0 1
  GETTABLEKS R43 R21 K75 ["icons/actions/previewShrink"]
  GETTABLEKS R44 R21 K76 ["icons/actions/previewExpand"]
  GETIMPORT R45 K9 [require]
  GETIMPORT R48 K24 [script]
  GETTABLEKS R47 R48 K25 ["Parent"]
  GETTABLEKS R46 R47 K77 ["FaceClone"]
  CALL R45 1 1
  DUPCLOSURE R46 K78 [PROTO_19]
  CAPTURE VAL R17
  CAPTURE VAL R40
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R28
  CAPTURE VAL R30
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R25
  CAPTURE VAL R5
  CAPTURE VAL R29
  CAPTURE VAL R26
  CAPTURE VAL R31
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R38
  CAPTURE VAL R27
  CAPTURE VAL R42
  CAPTURE VAL R45
  CAPTURE VAL R39
  CAPTURE VAL R20
  CAPTURE VAL R15
  CAPTURE VAL R23
  CAPTURE VAL R32
  CAPTURE VAL R36
  CAPTURE VAL R22
  CAPTURE VAL R43
  CAPTURE VAL R44
  CAPTURE VAL R41
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R24
  RETURN R46 1
