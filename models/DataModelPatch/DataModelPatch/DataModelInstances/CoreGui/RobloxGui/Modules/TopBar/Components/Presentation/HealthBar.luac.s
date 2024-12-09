PROTO_0:
  GETTABLEKS R2 R0 K0 ["r"]
  GETTABLEKS R3 R0 K1 ["g"]
  GETTABLEKS R4 R0 K2 ["b"]
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K5 [Vector3.new]
  CALL R1 3 1
  RETURN R1 1

PROTO_1:
  LOADK R1 K0 [0.1]
  JUMPIFNOTLE R0 R1 [+3]
  GETUPVAL R1 0
  RETURN R1 1
  LOADK R1 K1 [0.8]
  JUMPIFNOTLE R1 R0 [+3]
  GETUPVAL R1 1
  RETURN R1 1
  LOADK R1 K2 [{0, 0, 0}]
  LOADN R2 0
  GETIMPORT R3 K4 [pairs]
  GETUPVAL R4 2
  CALL R3 1 3
  FORGPREP_NEXT R3
  SUB R8 R0 R7
  JUMPIFNOTEQKN R8 K5 [0] [+11]
  GETIMPORT R9 K8 [Color3.new]
  GETTABLEKS R10 R6 K9 ["x"]
  GETTABLEKS R11 R6 K10 ["y"]
  GETTABLEKS R12 R6 K11 ["z"]
  CALL R9 3 -1
  RETURN R9 -1
  MUL R10 R8 R8
  DIVRK R9 R12 K10 ["y"]
  MUL R10 R9 R6
  ADD R1 R1 R10
  ADD R2 R2 R9
  FORGLOOP R3 2 [-19]
  DIV R3 R1 R2
  GETIMPORT R4 K8 [Color3.new]
  GETTABLEKS R5 R3 K9 ["x"]
  GETTABLEKS R6 R3 K10 ["y"]
  GETTABLEKS R7 R3 K11 ["z"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["rootRef"]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+22]
  DUPTABLE R3 K3 [{"chromeMenuOpen"}]
  GETUPVAL R5 1
  NAMECALL R5 R5 K4 ["status"]
  CALL R5 1 1
  NAMECALL R5 R5 K5 ["get"]
  CALL R5 1 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["MenuStatus"]
  GETTABLEKS R6 R7 K7 ["Open"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["chromeMenuOpen"]
  NAMECALL R1 R0 K8 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"chromeMenuOpen"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K2 ["status"]
  CALL R4 1 1
  NAMECALL R4 R4 K3 ["get"]
  CALL R4 1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["MenuStatus"]
  GETTABLEKS R5 R6 K5 ["Open"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["chromeMenuOpen"]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  JUMPIF R1 [+14]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+12]
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["status"]
  CALL R1 1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K1 ["connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["chromeMenuStatusConn"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  JUMPIF R1 [+11]
  GETTABLEKS R1 R0 K0 ["chromeMenuStatusConn"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["chromeMenuStatusConn"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["chromeMenuStatusConn"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  JUMPIF R1 [+26]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+15]
  JUMPIFNOT R0 [+14]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["setKeepOutArea"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["HealthBarKeepOutAreaId"]
  GETTABLEKS R3 R0 K3 ["AbsolutePosition"]
  GETTABLEKS R4 R0 K4 ["AbsoluteSize"]
  CALL R1 3 0
  RETURN R0 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K5 ["removeKeepOutArea"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["HealthBarKeepOutAreaId"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["healthEnabled"]
  JUMPIFNOT R1 [+12]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["health"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["maxHealth"]
  JUMPIFLT R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R2 0
  JUMPIFNOT R2 [+1]
  JUMP [+8]
  MOVE R2 R1
  JUMPIFNOT R2 [+5]
  GETTABLEKS R4 R0 K4 ["state"]
  GETTABLEKS R3 R4 K5 ["chromeMenuOpen"]
  NOT R2 R3
  MOVE R1 R2
  LOADN R2 1
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K6 ["isDead"]
  JUMPIFNOT R3 [+2]
  LOADN R2 0
  JUMP [+16]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["maxHealth"]
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+10]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["health"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["maxHealth"]
  DIV R2 R3 R4
  LOADNIL R3
  GETUPVAL R4 0
  JUMPIFNOT R4 [+30]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K7 ["screenSize"]
  GETTABLEKS R4 R5 K8 ["X"]
  LOADN R5 64
  JUMPIFNOTLE R4 R5 [+3]
  GETUPVAL R3 1
  JUMP [+12]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K7 ["screenSize"]
  GETTABLEKS R4 R5 K8 ["X"]
  LOADN R5 137
  JUMPIFNOTLE R4 R5 [+3]
  GETUPVAL R3 2
  JUMP [+1]
  GETUPVAL R3 3
  GETUPVAL R4 4
  NAMECALL R4 R4 K9 ["IsEnabled"]
  CALL R4 1 1
  JUMPIFNOT R4 [+9]
  GETUPVAL R3 5
  JUMP [+7]
  GETUPVAL R3 3
  GETUPVAL R4 4
  NAMECALL R4 R4 K9 ["IsEnabled"]
  CALL R4 1 1
  JUMPIFNOT R4 [+1]
  GETUPVAL R3 5
  LOADN R4 4
  GETUPVAL R5 4
  NAMECALL R5 R5 K9 ["IsEnabled"]
  CALL R5 1 1
  JUMPIFNOT R5 [+1]
  LOADN R4 0
  LOADNIL R5
  LOADNIL R6
  LOADNIL R7
  GETUPVAL R8 0
  JUMPIFNOT R8 [+11]
  LOADK R5 K10 ["rbxasset://textures/ui/TopBar/HealthBarBaseTV.png"]
  LOADK R6 K11 ["rbxasset://textures/ui/TopBar/HealthBarTV.png"]
  GETIMPORT R8 K14 [Rect.new]
  LOADN R9 8
  LOADN R10 8
  LOADN R11 9
  LOADN R12 9
  CALL R8 4 1
  MOVE R7 R8
  JUMP [+25]
  LOADK R5 K15 ["rbxasset://textures/ui/TopBar/HealthBarBase.png"]
  LOADK R6 K16 ["rbxasset://textures/ui/TopBar/HealthBar.png"]
  GETIMPORT R8 K14 [Rect.new]
  LOADN R9 3
  LOADN R10 3
  LOADN R11 4
  LOADN R12 4
  CALL R8 4 1
  MOVE R7 R8
  GETUPVAL R8 4
  NAMECALL R8 R8 K9 ["IsEnabled"]
  CALL R8 1 1
  JUMPIFNOT R8 [+10]
  LOADK R5 K10 ["rbxasset://textures/ui/TopBar/HealthBarBaseTV.png"]
  LOADK R6 K11 ["rbxasset://textures/ui/TopBar/HealthBarTV.png"]
  GETIMPORT R8 K14 [Rect.new]
  LOADN R9 8
  LOADN R10 8
  LOADN R11 9
  LOADN R12 9
  CALL R8 4 1
  MOVE R7 R8
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U0
  CAPTURE REF R1
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  GETUPVAL R9 7
  JUMPIFNOT R9 [+34]
  GETTABLEKS R10 R0 K17 ["rootRef"]
  GETTABLEKS R9 R10 K18 ["current"]
  JUMPIFNOT R9 [+29]
  GETTABLEKS R10 R0 K17 ["rootRef"]
  GETTABLEKS R9 R10 K18 ["current"]
  GETUPVAL R10 0
  JUMPIF R10 [+23]
  JUMPIFNOT R1 [+14]
  JUMPIFNOT R9 [+13]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K19 ["setKeepOutArea"]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K20 ["HealthBarKeepOutAreaId"]
  GETTABLEKS R12 R9 K21 ["AbsolutePosition"]
  GETTABLEKS R13 R9 K22 ["AbsoluteSize"]
  CALL R10 3 0
  JUMP [+8]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K23 ["removeKeepOutArea"]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K20 ["HealthBarKeepOutAreaId"]
  CALL R10 1 0
  GETUPVAL R9 8
  MOVE R10 R2
  CALL R9 1 1
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K24 ["createElement"]
  LOADK R11 K25 ["Frame"]
  NEWTABLE R12 16 0
  GETUPVAL R14 0
  JUMPIFNOT R14 [+6]
  GETIMPORT R13 K27 [Vector2.new]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K28 ["AnchorPoint"]
  GETUPVAL R14 0
  JUMPIFNOT R14 [+8]
  GETIMPORT R13 K30 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K31 ["Position"]
  SETTABLEKS R1 R12 K32 ["Visible"]
  LOADN R13 1
  SETTABLEKS R13 R12 K33 ["BackgroundTransparency"]
  GETIMPORT R13 K30 [UDim2.new]
  GETTABLEKS R14 R3 K8 ["X"]
  GETIMPORT R15 K35 [UDim.new]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 -1
  CALL R13 -1 1
  SETTABLEKS R13 R12 K36 ["Size"]
  GETTABLEKS R14 R0 K0 ["props"]
  GETTABLEKS R13 R14 K37 ["layoutOrder"]
  SETTABLEKS R13 R12 K38 ["LayoutOrder"]
  GETUPVAL R15 9
  GETTABLEKS R14 R15 K39 ["Change"]
  GETTABLEKS R13 R14 K22 ["AbsoluteSize"]
  GETUPVAL R15 7
  JUMPIFNOT R15 [+2]
  MOVE R14 R8
  JUMP [+1]
  LOADNIL R14
  SETTABLE R14 R12 R13
  GETUPVAL R15 9
  GETTABLEKS R14 R15 K39 ["Change"]
  GETTABLEKS R13 R14 K21 ["AbsolutePosition"]
  GETUPVAL R15 7
  JUMPIFNOT R15 [+2]
  MOVE R14 R8
  JUMP [+1]
  LOADNIL R14
  SETTABLE R14 R12 R13
  GETUPVAL R14 9
  GETTABLEKS R13 R14 K40 ["Ref"]
  GETTABLEKS R14 R0 K17 ["rootRef"]
  SETTABLE R14 R12 R13
  DUPTABLE R13 K43 [{"Padding", "HealthBar"}]
  GETUPVAL R15 10
  JUMPIF R15 [+14]
  GETUPVAL R15 9
  GETTABLEKS R14 R15 K24 ["createElement"]
  LOADK R15 K44 ["UIPadding"]
  DUPTABLE R16 K46 [{"PaddingTop"}]
  GETIMPORT R17 K35 [UDim.new]
  LOADN R18 0
  MOVE R19 R4
  CALL R17 2 1
  SETTABLEKS R17 R16 K45 ["PaddingTop"]
  CALL R14 2 1
  JUMPIF R14 [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K41 ["Padding"]
  GETUPVAL R15 9
  GETTABLEKS R14 R15 K24 ["createElement"]
  LOADK R15 K47 ["ImageLabel"]
  DUPTABLE R16 K51 [{"BackgroundTransparency", "Image", "ScaleType", "SliceCenter", "Size", "Position", "AnchorPoint"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K33 ["BackgroundTransparency"]
  SETTABLEKS R5 R16 K48 ["Image"]
  GETIMPORT R17 K54 [Enum.ScaleType.Slice]
  SETTABLEKS R17 R16 K49 ["ScaleType"]
  SETTABLEKS R7 R16 K50 ["SliceCenter"]
  SETTABLEKS R3 R16 K36 ["Size"]
  GETIMPORT R17 K56 [UDim2.fromScale]
  LOADN R18 0
  LOADK R19 K57 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K31 ["Position"]
  GETIMPORT R17 K27 [Vector2.new]
  LOADN R18 0
  LOADK R19 K57 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K28 ["AnchorPoint"]
  DUPTABLE R17 K59 [{"Fill"}]
  GETUPVAL R19 9
  GETTABLEKS R18 R19 K24 ["createElement"]
  LOADK R19 K47 ["ImageLabel"]
  DUPTABLE R20 K61 [{"BackgroundTransparency", "Image", "ImageColor3", "ScaleType", "SliceCenter", "Size"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K33 ["BackgroundTransparency"]
  SETTABLEKS R6 R20 K48 ["Image"]
  SETTABLEKS R9 R20 K60 ["ImageColor3"]
  GETIMPORT R21 K54 [Enum.ScaleType.Slice]
  SETTABLEKS R21 R20 K49 ["ScaleType"]
  SETTABLEKS R7 R20 K50 ["SliceCenter"]
  GETIMPORT R21 K56 [UDim2.fromScale]
  MOVE R22 R2
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K36 ["Size"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K58 ["Fill"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K42 ["HealthBar"]
  CALL R10 3 -1
  CLOSEUPVALS R1
  RETURN R10 -1

PROTO_8:
  DUPTABLE R1 K4 [{"screenSize", "health", "maxHealth", "healthEnabled"}]
  GETTABLEKS R3 R0 K5 ["displayOptions"]
  GETTABLEKS R2 R3 K0 ["screenSize"]
  SETTABLEKS R2 R1 K0 ["screenSize"]
  GETTABLEKS R3 R0 K1 ["health"]
  GETTABLEKS R2 R3 K6 ["currentHealth"]
  SETTABLEKS R2 R1 K1 ["health"]
  GETTABLEKS R3 R0 K1 ["health"]
  GETTABLEKS R2 R3 K2 ["maxHealth"]
  SETTABLEKS R2 R1 K2 ["maxHealth"]
  GETTABLEKS R3 R0 K7 ["coreGuiEnabled"]
  GETIMPORT R4 K11 [Enum.CoreGuiType.Health]
  GETTABLE R2 R3 R4
  SETTABLEKS R2 R1 K3 ["healthEnabled"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 -1
  RETURN R3 -1

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_11:
  DUPTABLE R1 K2 [{"setKeepOutArea", "removeKeepOutArea"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["setKeepOutArea"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["removeKeepOutArea"]
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
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K11 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K9 ["Packages"]
  GETTABLEKS R6 R7 K12 ["t"]
  CALL R5 1 1
  GETIMPORT R8 K14 [script]
  GETTABLEKS R7 R8 K15 ["Parent"]
  GETTABLEKS R6 R7 K15 ["Parent"]
  GETTABLEKS R7 R6 K15 ["Parent"]
  GETIMPORT R8 K8 [require]
  GETTABLEKS R9 R7 K16 ["Constants"]
  CALL R8 1 1
  LOADK R11 K5 ["RobloxGui"]
  NAMECALL R9 R1 K6 ["WaitForChild"]
  CALL R9 2 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R9 K17 ["Modules"]
  GETTABLEKS R11 R12 K18 ["TenFootInterface"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R13 R7 K19 ["Flags"]
  GETTABLEKS R12 R13 K20 ["GetFFlagEnableChromeBackwardsSignalAPI"]
  CALL R11 1 1
  CALL R11 0 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R14 R7 K21 ["Actions"]
  GETTABLEKS R13 R14 K22 ["SetKeepOutArea"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R15 R7 K21 ["Actions"]
  GETTABLEKS R14 R15 K23 ["RemoveKeepOutArea"]
  CALL R13 1 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R18 R0 K24 ["Workspace"]
  GETTABLEKS R17 R18 K9 ["Packages"]
  GETTABLEKS R16 R17 K25 ["SharedFlags"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K26 ["GetFFlagFixChromeReferences"]
  GETTABLEKS R16 R7 K15 ["Parent"]
  GETTABLEKS R15 R16 K27 ["Chrome"]
  GETIMPORT R16 K8 [require]
  GETTABLEKS R17 R15 K28 ["Enabled"]
  CALL R16 1 1
  MOVE R18 R14
  CALL R18 0 1
  JUMPIFNOT R18 [+11]
  MOVE R18 R16
  CALL R18 0 1
  JUMPIFNOT R18 [+6]
  GETIMPORT R17 K8 [require]
  GETTABLEKS R18 R15 K29 ["Service"]
  CALL R17 1 1
  JUMP [+10]
  LOADNIL R17
  JUMP [+8]
  JUMPIFNOT R16 [+6]
  GETIMPORT R17 K8 [require]
  GETTABLEKS R18 R15 K29 ["Service"]
  CALL R17 1 1
  JUMP [+1]
  LOADNIL R17
  MOVE R18 R16
  CALL R18 0 1
  GETIMPORT R19 K32 [UDim2.new]
  LOADN R20 0
  LOADN R21 80
  LOADN R22 0
  LOADN R23 6
  CALL R19 4 1
  JUMPIFNOT R18 [+8]
  GETIMPORT R20 K32 [UDim2.new]
  LOADN R21 0
  LOADN R22 125
  LOADN R23 0
  LOADN R24 20
  CALL R20 4 1
  MOVE R19 R20
  GETIMPORT R20 K32 [UDim2.new]
  LOADN R21 0
  LOADN R22 50
  LOADN R23 0
  LOADN R24 16
  CALL R20 4 1
  GETIMPORT R21 K32 [UDim2.new]
  LOADN R22 0
  LOADN R23 80
  LOADN R24 0
  LOADN R25 20
  CALL R21 4 1
  GETIMPORT R22 K32 [UDim2.new]
  LOADN R23 0
  LOADN R24 220
  LOADN R25 0
  LOADN R26 16
  CALL R22 4 1
  GETTABLEKS R23 R3 K33 ["PureComponent"]
  LOADK R25 K34 ["HealthBar"]
  NAMECALL R23 R23 K35 ["extend"]
  CALL R23 2 1
  GETTABLEKS R24 R5 K36 ["strictInterface"]
  DUPTABLE R25 K44 [{"layoutOrder", "screenSize", "healthEnabled", "health", "maxHealth", "setKeepOutArea", "removeKeepOutArea"}]
  GETTABLEKS R26 R5 K45 ["optional"]
  GETTABLEKS R27 R5 K46 ["integer"]
  CALL R26 1 1
  SETTABLEKS R26 R25 K37 ["layoutOrder"]
  GETTABLEKS R26 R5 K47 ["Vector2"]
  SETTABLEKS R26 R25 K38 ["screenSize"]
  GETTABLEKS R26 R5 K48 ["boolean"]
  SETTABLEKS R26 R25 K39 ["healthEnabled"]
  GETTABLEKS R26 R5 K49 ["number"]
  SETTABLEKS R26 R25 K40 ["health"]
  GETTABLEKS R26 R5 K49 ["number"]
  SETTABLEKS R26 R25 K41 ["maxHealth"]
  GETTABLEKS R26 R5 K50 ["callback"]
  SETTABLEKS R26 R25 K42 ["setKeepOutArea"]
  GETTABLEKS R26 R5 K50 ["callback"]
  SETTABLEKS R26 R25 K43 ["removeKeepOutArea"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K51 ["validateProps"]
  DUPCLOSURE R24 K52 [PROTO_0]
  NEWTABLE R25 4 0
  GETTABLEKS R27 R8 K53 ["HealthRedColor"]
  GETTABLEKS R29 R27 K54 ["r"]
  GETTABLEKS R30 R27 K55 ["g"]
  GETTABLEKS R31 R27 K56 ["b"]
  FASTCALL VECTOR [+2]
  GETIMPORT R28 K58 [Vector3.new]
  CALL R28 3 1
  MOVE R26 R28
  LOADK R27 K59 [0.1]
  SETTABLE R27 R25 R26
  GETTABLEKS R27 R8 K60 ["HealthYellowColor"]
  GETTABLEKS R29 R27 K54 ["r"]
  GETTABLEKS R30 R27 K55 ["g"]
  GETTABLEKS R31 R27 K56 ["b"]
  FASTCALL VECTOR [+2]
  GETIMPORT R28 K58 [Vector3.new]
  CALL R28 3 1
  MOVE R26 R28
  LOADK R27 K61 [0.5]
  SETTABLE R27 R25 R26
  GETTABLEKS R27 R8 K62 ["HealthGreenColor"]
  GETTABLEKS R29 R27 K54 ["r"]
  GETTABLEKS R30 R27 K55 ["g"]
  GETTABLEKS R31 R27 K56 ["b"]
  FASTCALL VECTOR [+2]
  GETIMPORT R28 K58 [Vector3.new]
  CALL R28 3 1
  MOVE R26 R28
  LOADK R27 K63 [0.8]
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R8 K53 ["HealthRedColor"]
  GETTABLEKS R27 R8 K62 ["HealthGreenColor"]
  DUPCLOSURE R28 K64 [PROTO_1]
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R25
  DUPCLOSURE R29 K65 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R17
  SETTABLEKS R29 R23 K66 ["init"]
  DUPCLOSURE R29 K67 [PROTO_4]
  CAPTURE VAL R18
  CAPTURE VAL R17
  SETTABLEKS R29 R23 K68 ["didMount"]
  DUPCLOSURE R29 K69 [PROTO_5]
  CAPTURE VAL R18
  SETTABLEKS R29 R23 K70 ["onUnmount"]
  NEWCLOSURE R29 P5
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE REF R19
  CAPTURE VAL R10
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R28
  CAPTURE VAL R3
  CAPTURE VAL R16
  SETTABLEKS R29 R23 K71 ["render"]
  DUPCLOSURE R29 K72 [PROTO_8]
  DUPCLOSURE R30 K73 [PROTO_11]
  CAPTURE VAL R12
  CAPTURE VAL R13
  GETTABLEKS R31 R4 K74 ["UNSTABLE_connect2"]
  MOVE R32 R29
  MOVE R33 R30
  CALL R31 2 1
  MOVE R32 R23
  CALL R31 1 -1
  CLOSEUPVALS R19
  RETURN R31 -1
