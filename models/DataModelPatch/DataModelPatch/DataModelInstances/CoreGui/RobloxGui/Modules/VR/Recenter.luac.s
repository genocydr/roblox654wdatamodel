PROTO_0:
  LOADB R0 0
  SETUPVAL R0 0
  GETUPVAL R0 1
  LOADB R2 0
  NAMECALL R0 R0 K0 ["SetVisible"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ModuleName"]
  JUMPIFEQ R0 R1 [+16]
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["GetModule"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K2 ["VRIsExclusive"]
  JUMPIFNOT R2 [+7]
  LOADB R2 0
  SETUPVAL R2 2
  GETUPVAL R2 3
  LOADB R4 0
  NAMECALL R2 R2 K3 ["SetVisible"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R3 [+8]
  LOADB R3 0
  SETUPVAL R3 0
  GETUPVAL R3 1
  LOADB R5 0
  NAMECALL R3 R3 K4 ["SetVisible"]
  CALL R3 2 0
  RETURN R0 0

PROTO_3:
  LOADB R0 1
  SETUPVAL R0 0
  GETUPVAL R0 1
  LOADB R2 1
  NAMECALL R0 R0 K0 ["SetVisible"]
  CALL R0 2 0
  GETUPVAL R0 2
  LOADK R2 K1 ["CancelRecenterShortcut"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  LOADB R4 0
  GETIMPORT R5 K5 [Enum.KeyCode.ButtonB]
  NAMECALL R0 R0 K6 ["BindCoreAction"]
  CALL R0 5 0
  GETUPVAL R0 0
  JUMPIFNOT R0 [+12]
  GETUPVAL R0 3
  LOADN R2 3
  FASTCALL1 TOSTRING R2 [+2]
  GETIMPORT R1 K8 [tostring]
  CALL R1 1 1
  SETTABLEKS R1 R0 K9 ["Text"]
  GETIMPORT R0 K11 [wait]
  LOADN R1 1
  CALL R0 1 0
  GETUPVAL R0 0
  JUMPIFNOT R0 [+12]
  GETUPVAL R0 3
  LOADN R2 2
  FASTCALL1 TOSTRING R2 [+2]
  GETIMPORT R1 K8 [tostring]
  CALL R1 1 1
  SETTABLEKS R1 R0 K9 ["Text"]
  GETIMPORT R0 K11 [wait]
  LOADN R1 1
  CALL R0 1 0
  GETUPVAL R0 0
  JUMPIFNOT R0 [+12]
  GETUPVAL R0 3
  LOADN R2 1
  FASTCALL1 TOSTRING R2 [+2]
  GETIMPORT R1 K8 [tostring]
  CALL R1 1 1
  SETTABLEKS R1 R0 K9 ["Text"]
  GETIMPORT R0 K11 [wait]
  LOADN R1 1
  CALL R0 1 0
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 4
  NAMECALL R0 R0 K12 ["RecenterUserHeadCFrame"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADB R2 0
  NAMECALL R0 R0 K0 ["SetVisible"]
  CALL R0 2 0
  LOADB R0 0
  SETUPVAL R0 0
  GETUPVAL R0 2
  LOADK R2 K1 ["CancelRecenterShortcut"]
  NAMECALL R0 R0 K13 ["UnbindCoreAction"]
  CALL R0 2 0
  GETUPVAL R0 5
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K14 ["ModuleName"]
  NAMECALL R0 R0 K15 ["FireModuleClosed"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  SETUPVAL R1 0
  GETUPVAL R2 0
  JUMPIFNOT R2 [+36]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+15]
  LOADB R2 0
  SETUPVAL R2 1
  GETUPVAL R2 2
  LOADB R4 0
  NAMECALL R2 R2 K0 ["SetVisible"]
  CALL R2 2 0
  GETUPVAL R2 3
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["ModuleName"]
  NAMECALL R2 R2 K2 ["FireModuleClosed"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R2 3
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["ModuleName"]
  NAMECALL R2 R2 K3 ["FireModuleOpened"]
  CALL R2 2 0
  GETIMPORT R2 K5 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R2 1 0
  RETURN R0 0
  LOADB R2 0
  SETUPVAL R2 1
  GETUPVAL R2 2
  LOADB R4 0
  NAMECALL R2 R2 K0 ["SetVisible"]
  CALL R2 2 0
  GETUPVAL R2 3
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["ModuleName"]
  NAMECALL R2 R2 K2 ["FireModuleClosed"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UserInputService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ContextActionService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CorePackages"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  LOADK R6 K7 ["RobloxGui"]
  NAMECALL R4 R2 K8 ["WaitForChild"]
  CALL R4 2 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R9 R3 K11 ["Workspace"]
  GETTABLEKS R8 R9 K12 ["Packages"]
  GETTABLEKS R7 R8 K13 ["VrCommon"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K14 ["Panel3D"]
  GETIMPORT R6 K10 [require]
  GETTABLEKS R9 R4 K15 ["Modules"]
  GETTABLEKS R8 R9 K16 ["VR"]
  GETTABLEKS R7 R8 K17 ["VRHub"]
  CALL R6 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R11 R3 K11 ["Workspace"]
  GETTABLEKS R10 R11 K12 ["Packages"]
  GETTABLEKS R9 R10 K18 ["AppCommonLib"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K19 ["Create"]
  LOADB R8 0
  NEWTABLE R9 8 0
  LOADK R10 K20 ["Recenter"]
  SETTABLEKS R10 R9 K21 ["ModuleName"]
  LOADB R10 1
  SETTABLEKS R10 R9 K22 ["KeepVRTopbarOpen"]
  LOADB R10 1
  SETTABLEKS R10 R9 K23 ["VRIsExclusive"]
  LOADB R10 0
  SETTABLEKS R10 R9 K24 ["VRClosesNonExclusive"]
  MOVE R12 R9
  NAMECALL R10 R6 K25 ["RegisterModule"]
  CALL R10 2 0
  GETTABLEKS R10 R5 K26 ["Get"]
  LOADK R11 K27 ["RecenterCountdown"]
  CALL R10 1 1
  GETTABLEKS R14 R5 K28 ["Type"]
  GETTABLEKS R13 R14 K29 ["HorizontalFollow"]
  NAMECALL R11 R10 K30 ["SetType"]
  CALL R11 2 0
  LOADN R13 5
  LOADN R14 3
  LOADN R15 128
  NAMECALL R11 R10 K31 ["ResizeStuds"]
  CALL R11 4 0
  LOADB R13 0
  NAMECALL R11 R10 K32 ["SetCanFade"]
  CALL R11 2 0
  MOVE R11 R7
  LOADK R12 K33 ["TextLabel"]
  CALL R11 1 1
  DUPTABLE R12 K44 [{"Parent", "Position", "Size", "BackgroundTransparency", "BackgroundColor3", "TextColor3", "Text", "TextScaled", "Font", "Visible"}]
  NAMECALL R13 R10 K45 ["GetGUI"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K34 ["Parent"]
  GETIMPORT R13 K48 [UDim2.new]
  LOADK R14 K49 [0.5]
  LOADN R15 192
  LOADK R16 K49 [0.5]
  LOADN R17 192
  CALL R13 4 1
  SETTABLEKS R13 R12 K35 ["Position"]
  GETIMPORT R13 K48 [UDim2.new]
  LOADN R14 0
  LOADN R15 128
  LOADN R16 0
  LOADN R17 128
  CALL R13 4 1
  SETTABLEKS R13 R12 K36 ["Size"]
  LOADK R13 K50 [0.9]
  SETTABLEKS R13 R12 K37 ["BackgroundTransparency"]
  GETIMPORT R13 K52 [Color3.new]
  LOADK R14 K53 [0.2]
  LOADK R15 K53 [0.2]
  LOADK R16 K53 [0.2]
  CALL R13 3 1
  SETTABLEKS R13 R12 K38 ["BackgroundColor3"]
  GETIMPORT R13 K52 [Color3.new]
  LOADN R14 1
  LOADN R15 1
  LOADN R16 1
  CALL R13 3 1
  SETTABLEKS R13 R12 K39 ["TextColor3"]
  LOADK R13 K54 [""]
  SETTABLEKS R13 R12 K40 ["Text"]
  LOADB R13 1
  SETTABLEKS R13 R12 K41 ["TextScaled"]
  GETIMPORT R13 K57 [Enum.Font.SourceSansBold]
  SETTABLEKS R13 R12 K42 ["Font"]
  LOADB R13 1
  SETTABLEKS R13 R12 K43 ["Visible"]
  CALL R11 1 1
  MOVE R12 R7
  LOADK R13 K58 ["ImageLabel"]
  CALL R12 1 1
  DUPTABLE R13 K60 [{"Parent", "Position", "Size", "BackgroundTransparency", "Image"}]
  NAMECALL R14 R10 K45 ["GetGUI"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K34 ["Parent"]
  GETIMPORT R14 K48 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K35 ["Position"]
  GETIMPORT R14 K48 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K36 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K37 ["BackgroundTransparency"]
  LOADK R14 K61 ["rbxasset://textures/ui/VR/recenterFrame.png"]
  SETTABLEKS R14 R13 K59 ["Image"]
  CALL R12 1 1
  LOADB R15 0
  NAMECALL R13 R10 K62 ["SetVisible"]
  CALL R13 2 0
  LOADB R13 0
  NEWCLOSURE R14 P0
  CAPTURE REF R13
  CAPTURE VAL R10
  GETTABLEKS R16 R6 K63 ["ModuleOpened"]
  GETTABLEKS R15 R16 K64 ["Event"]
  NEWCLOSURE R17 P1
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE REF R13
  CAPTURE VAL R10
  NAMECALL R15 R15 K65 ["connect"]
  CALL R15 2 0
  NEWCLOSURE R15 P2
  CAPTURE REF R8
  CAPTURE REF R13
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R0
  SETTABLEKS R15 R9 K62 ["SetVisible"]
  NEWCLOSURE R15 P3
  CAPTURE REF R8
  SETTABLEKS R15 R9 K66 ["IsVisible"]
  CLOSEUPVALS R8
  RETURN R9 1