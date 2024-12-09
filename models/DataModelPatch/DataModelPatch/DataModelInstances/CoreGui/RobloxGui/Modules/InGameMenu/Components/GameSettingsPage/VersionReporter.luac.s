PROTO_0:
  LOADK R3 K0 ["PlayerScriptsLoader"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  LOADK R4 K2 ["PlayerModule"]
  NAMECALL R2 R0 K1 ["FindFirstChild"]
  CALL R2 2 1
  LOADNIL R3
  JUMPIFEQKNIL R1 [+21]
  JUMPIFEQKNIL R2 [+19]
  GETTABLEKS R4 R2 K3 ["Archivable"]
  JUMPIF R4 [+9]
  GETTABLEKS R4 R1 K3 ["Archivable"]
  JUMPIF R4 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["PlayerScriptStatusStrings"]
  GETTABLEKS R3 R4 K5 ["Default"]
  JUMP [+29]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["PlayerScriptStatusStrings"]
  GETTABLEKS R3 R4 K6 ["PossiblyCustom"]
  JUMP [+23]
  LOADK R6 K7 ["CameraScript"]
  NAMECALL R4 R0 K1 ["FindFirstChild"]
  CALL R4 2 1
  LOADK R7 K8 ["ControlScript"]
  NAMECALL R5 R0 K1 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOTEQKNIL R4 [+3]
  JUMPIFEQKNIL R5 [+7]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["PlayerScriptStatusStrings"]
  GETTABLEKS R3 R6 K9 ["CustomOld"]
  JUMP [+5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["PlayerScriptStatusStrings"]
  GETTABLEKS R3 R6 K10 ["Custom"]
  GETUPVAL R4 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["AnalyticsTargetName"]
  LOADK R7 K12 ["player_scripts_status"]
  LOADK R8 K13 ["player_scripts_status_action"]
  DUPTABLE R9 K18 [{"defaultPlayerScripts", "placeID", "rawValue", "context"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["PlayerScriptStatusStrings"]
  GETTABLEKS R11 R12 K5 ["Default"]
  JUMPIFEQ R3 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K14 ["defaultPlayerScripts"]
  GETIMPORT R12 K20 [game]
  GETTABLEKS R11 R12 K21 ["PlaceId"]
  FASTCALL1 TOSTRING R11 [+2]
  GETIMPORT R10 K23 [tostring]
  CALL R10 1 1
  SETTABLEKS R10 R9 K15 ["placeID"]
  GETUPVAL R11 2
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  MOVE R10 R3
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K16 ["rawValue"]
  GETUPVAL R11 2
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADK R10 K24 ["IGMv2"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K17 ["context"]
  NAMECALL R4 R4 K25 ["SetRBXEventStream"]
  CALL R4 5 0
  RETURN R3 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["Name"]
  JUMPIFNOTEQKS R1 K1 ["StarterPlayerScripts"] [+21]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["playerScriptsAddedConnection"]
  NAMECALL R1 R1 K3 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["playerScriptsAddedConnection"]
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"playerScriptStatus"}]
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["playerScriptStatus"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  LOADK R1 K0 ["PlayerScript Status: Unknown"]
  GETUPVAL R2 0
  LOADK R4 K1 ["StarterPlayerScripts"]
  NAMECALL R2 R2 K2 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 1
  MOVE R4 R2
  CALL R3 1 1
  MOVE R1 R3
  JUMP [+11]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["ChildAdded"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R3 R3 K4 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K5 ["playerScriptsAddedConnection"]
  DUPTABLE R5 K14 [{"baseUrl", "clientVersion", "isAdmin", "latestPlaceVersion", "placeVersion", "serverVersion", "playerScriptStatus", "coreScriptVersion"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["BaseUrl"]
  SETTABLEKS R6 R5 K6 ["baseUrl"]
  GETUPVAL R6 3
  NAMECALL R6 R6 K16 ["GetRobloxVersion"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["clientVersion"]
  LOADB R6 0
  SETTABLEKS R6 R5 K8 ["isAdmin"]
  LOADNIL R6
  SETTABLEKS R6 R5 K9 ["latestPlaceVersion"]
  GETIMPORT R7 K18 [game]
  GETTABLEKS R6 R7 K19 ["PlaceVersion"]
  SETTABLEKS R6 R5 K10 ["placeVersion"]
  LOADNIL R6
  SETTABLEKS R6 R5 K11 ["serverVersion"]
  SETTABLEKS R1 R5 K12 ["playerScriptStatus"]
  GETUPVAL R7 4
  JUMPIFNOT R7 [+5]
  GETUPVAL R6 3
  NAMECALL R6 R6 K20 ["GetCoreScriptVersion"]
  CALL R6 1 1
  JUMPIF R6 [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K13 ["coreScriptVersion"]
  NAMECALL R3 R0 K21 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ClientGitHash"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"placeVersion"}]
  GETIMPORT R4 K3 [game]
  GETTABLEKS R3 R4 K4 ["PlaceVersion"]
  SETTABLEKS R3 R2 K0 ["placeVersion"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["clientVersion"]
  GETIMPORT R2 K2 [pcall]
  DUPCLOSURE R3 K3 [PROTO_3]
  CAPTURE UPVAL U0
  CALL R2 1 2
  JUMPIFNOT R2 [+7]
  GETIMPORT R4 K6 [string.format]
  LOADK R5 K7 ["%s (%.6s)"]
  MOVE R6 R1
  MOVE R7 R3
  CALL R4 3 1
  MOVE R1 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["createElement"]
  LOADK R5 K9 ["Frame"]
  DUPTABLE R6 K13 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K10 ["BackgroundTransparency"]
  GETIMPORT R7 K16 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 80
  CALL R7 4 1
  SETTABLEKS R7 R6 K11 ["Size"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K17 ["props"]
  GETTABLEKS R7 R8 K12 ["LayoutOrder"]
  SETTABLEKS R7 R6 K12 ["LayoutOrder"]
  DUPTABLE R7 K29 [{"Padding", "Layout", "ClientVersion", "ServerVersion", "PlaceVersion", "Divider", "PlayerScriptStatus", "Environment", "Divider2", "CoreScriptVersion", "VersionWatcher"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  LOADK R9 K30 ["UIPadding"]
  DUPTABLE R10 K34 [{"PaddingTop", "PaddingLeft", "PaddingBottom"}]
  GETIMPORT R11 K36 [UDim.new]
  LOADN R12 0
  LOADN R13 14
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["PaddingTop"]
  GETIMPORT R11 K36 [UDim.new]
  LOADN R12 0
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["PaddingLeft"]
  GETIMPORT R11 K36 [UDim.new]
  LOADN R12 0
  LOADN R13 14
  CALL R11 2 1
  SETTABLEKS R11 R10 K33 ["PaddingBottom"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K18 ["Padding"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  LOADK R9 K37 ["UIListLayout"]
  DUPTABLE R10 K39 [{"SortOrder", "Padding"}]
  GETIMPORT R11 K41 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K38 ["SortOrder"]
  GETIMPORT R11 K36 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["Padding"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K19 ["Layout"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K45 [{"themeKey", "fontKey", "Text", "LayoutOrder", "Size"}]
  LOADK R11 K46 ["TextDefault"]
  SETTABLEKS R11 R10 K42 ["themeKey"]
  LOADK R11 K47 ["Footer"]
  SETTABLEKS R11 R10 K43 ["fontKey"]
  SETTABLEKS R1 R10 K44 ["Text"]
  LOADN R11 1
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 232
  LOADN R14 0
  LOADN R15 14
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["ClientVersion"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K45 [{"themeKey", "fontKey", "Text", "LayoutOrder", "Size"}]
  LOADK R11 K46 ["TextDefault"]
  SETTABLEKS R11 R10 K42 ["themeKey"]
  LOADK R11 K47 ["Footer"]
  SETTABLEKS R11 R10 K43 ["fontKey"]
  GETUPVAL R12 4
  JUMPIFNOT R12 [+3]
  GETTABLEKS R11 R0 K48 ["serverVersion"]
  JUMPIF R11 [+1]
  LOADK R11 K49 [""]
  SETTABLEKS R11 R10 K44 ["Text"]
  LOADN R11 2
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 232
  LOADN R14 0
  LOADN R15 14
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  NEWTABLE R11 0 1
  GETUPVAL R13 4
  NOT R12 R13
  JUMPIFNOT R12 [+24]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K50 ["App"]
  GETTABLEKS R14 R15 K51 ["Loading"]
  GETTABLEKS R13 R14 K52 ["ShimmerPanel"]
  DUPTABLE R14 K54 [{"Size", "shimmerSpeed"}]
  GETIMPORT R15 K16 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K11 ["Size"]
  LOADN R15 2
  SETTABLEKS R15 R14 K53 ["shimmerSpeed"]
  CALL R12 2 1
  SETLIST R11 R12 1 [1]
  CALL R8 3 1
  SETTABLEKS R8 R7 K21 ["ServerVersion"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K45 [{"themeKey", "fontKey", "Text", "LayoutOrder", "Size"}]
  LOADK R11 K46 ["TextDefault"]
  SETTABLEKS R11 R10 K42 ["themeKey"]
  LOADK R11 K47 ["Footer"]
  SETTABLEKS R11 R10 K43 ["fontKey"]
  GETTABLEKS R11 R0 K55 ["placeVersion"]
  SETTABLEKS R11 R10 K44 ["Text"]
  LOADN R11 3
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 232
  LOADN R14 0
  LOADN R15 14
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K22 ["PlaceVersion"]
  GETUPVAL R9 6
  JUMPIF R9 [+2]
  GETUPVAL R8 7
  JUMPIFNOT R8 [+18]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 8
  DUPTABLE R10 K56 [{"Size", "LayoutOrder"}]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  LOADN R11 4
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K23 ["Divider"]
  GETUPVAL R8 7
  JUMPIFNOT R8 [+31]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K45 [{"themeKey", "fontKey", "Text", "LayoutOrder", "Size"}]
  LOADK R11 K46 ["TextDefault"]
  SETTABLEKS R11 R10 K42 ["themeKey"]
  LOADK R11 K47 ["Footer"]
  SETTABLEKS R11 R10 K43 ["fontKey"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K57 ["state"]
  GETTABLEKS R11 R12 K58 ["playerScriptStatus"]
  SETTABLEKS R11 R10 K44 ["Text"]
  LOADN R11 5
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 232
  LOADN R14 0
  LOADN R15 14
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K24 ["PlayerScriptStatus"]
  GETUPVAL R8 6
  JUMPIFNOT R8 [+35]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K45 [{"themeKey", "fontKey", "Text", "LayoutOrder", "Size"}]
  LOADK R11 K46 ["TextDefault"]
  SETTABLEKS R11 R10 K42 ["themeKey"]
  LOADK R11 K47 ["Footer"]
  SETTABLEKS R11 R10 K43 ["fontKey"]
  LOADK R11 K59 ["Base URL: %s"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K57 ["state"]
  GETTABLEKS R13 R14 K60 ["baseUrl"]
  NAMECALL R11 R11 K5 ["format"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K44 ["Text"]
  LOADN R11 6
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 232
  LOADN R14 0
  LOADN R15 14
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K25 ["Environment"]
  GETUPVAL R8 9
  JUMPIFNOT R8 [+18]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 8
  DUPTABLE R10 K56 [{"Size", "LayoutOrder"}]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  LOADN R11 7
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K26 ["Divider2"]
  GETUPVAL R8 9
  JUMPIFNOT R8 [+28]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K45 [{"themeKey", "fontKey", "Text", "LayoutOrder", "Size"}]
  LOADK R11 K46 ["TextDefault"]
  SETTABLEKS R11 R10 K42 ["themeKey"]
  LOADK R11 K47 ["Footer"]
  SETTABLEKS R11 R10 K43 ["fontKey"]
  GETTABLEKS R11 R0 K61 ["coreScriptVersion"]
  SETTABLEKS R11 R10 K44 ["Text"]
  LOADN R11 8
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 232
  LOADN R14 0
  LOADN R15 14
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K27 ["CoreScriptVersion"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 10
  DUPTABLE R10 K64 [{"event", "callback"}]
  GETIMPORT R11 K66 [game]
  LOADK R13 K22 ["PlaceVersion"]
  NAMECALL R11 R11 K67 ["GetPropertyChangedSignal"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K62 ["event"]
  NEWCLOSURE R11 P1
  CAPTURE UPVAL U2
  SETTABLEKS R11 R10 K63 ["callback"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K28 ["VersionWatcher"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["serverVersion"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K2 ["latestPlaceVersion"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R5 R0 K0 ["state"]
  GETTABLEKS R4 R5 K3 ["baseUrl"]
  LOADK R6 K4 ["www.roblox.com"]
  NAMECALL R4 R4 K5 ["find"]
  CALL R4 2 1
  NOT R3 R4
  MOVE R4 R3
  JUMPIF R4 [+4]
  GETTABLEKS R5 R0 K0 ["state"]
  GETTABLEKS R4 R5 K6 ["isAdmin"]
  GETUPVAL R5 0
  DUPTABLE R6 K10 [{"clientVersion", "serverVersion", "placeVersion", "coreScriptVersion"}]
  NEWTABLE R7 1 1
  LOADK R8 K11 ["CoreScripts.InGameMenu.GameSettings.ClientVersion"]
  SETLIST R7 R8 1 [1]
  GETTABLEKS R10 R0 K0 ["state"]
  GETTABLEKS R9 R10 K7 ["clientVersion"]
  SETTABLEKS R9 R7 K12 ["CLIENT_VERSION"]
  SETTABLEKS R7 R6 K7 ["clientVersion"]
  NEWTABLE R7 1 1
  LOADK R8 K13 ["CoreScripts.InGameMenu.GameSettings.ServerVersion"]
  SETLIST R7 R8 1 [1]
  GETTABLEKS R10 R0 K0 ["state"]
  GETTABLEKS R9 R10 K1 ["serverVersion"]
  SETTABLEKS R9 R7 K14 ["SERVER_VERSION"]
  SETTABLEKS R7 R6 K1 ["serverVersion"]
  NEWTABLE R7 2 1
  JUMPIFNOT R2 [+2]
  LOADK R8 K15 ["CoreScripts.InGameMenu.GameSettings.PlaceVersionWithLatest"]
  JUMP [+1]
  LOADK R8 K16 ["CoreScripts.InGameMenu.GameSettings.PlaceVersion"]
  SETLIST R7 R8 1 [1]
  GETTABLEKS R10 R0 K0 ["state"]
  GETTABLEKS R9 R10 K8 ["placeVersion"]
  SETTABLEKS R9 R7 K17 ["PLACE_VERSION"]
  GETTABLEKS R10 R0 K0 ["state"]
  GETTABLEKS R9 R10 K2 ["latestPlaceVersion"]
  SETTABLEKS R9 R7 K18 ["LATEST_PLACE_VERSION"]
  SETTABLEKS R7 R6 K8 ["placeVersion"]
  GETUPVAL R8 1
  JUMPIFNOT R8 [+12]
  NEWTABLE R7 1 1
  LOADK R8 K19 ["CoreScripts.InGameMenu.GameSettings.ClientCoreScriptVersion"]
  SETLIST R7 R8 1 [1]
  GETTABLEKS R10 R0 K0 ["state"]
  GETTABLEKS R9 R10 K9 ["coreScriptVersion"]
  SETTABLEKS R9 R7 K20 ["CLIENT_CORESCRIPT_VERSION"]
  JUMPIF R7 [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K9 ["coreScriptVersion"]
  CALL R5 1 1
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U7
  CALL R5 1 -1
  RETURN R5 -1

PROTO_7:
  GETUPVAL R0 0
  LOADK R2 K0 ["GetServerVersion"]
  LOADK R3 K1 [∞]
  NAMECALL R0 R0 K2 ["WaitForChild"]
  CALL R0 3 1
  NAMECALL R1 R0 K3 ["InvokeServer"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["mounted"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R2 1
  DUPTABLE R4 K6 [{"serverVersion"}]
  SETTABLEKS R1 R4 K5 ["serverVersion"]
  NAMECALL R2 R2 K7 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  GETIMPORT R2 K2 [string.format]
  LOADK R3 K3 ["assets/%d/versions"]
  GETIMPORT R5 K5 [game]
  GETTABLEKS R4 R5 K6 ["PlaceId"]
  CALL R2 2 -1
  NAMECALL R0 R0 K7 ["GetAsync"]
  CALL R0 -1 1
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K8 ["JSONDecode"]
  CALL R1 2 1
  GETTABLEN R3 R1 1
  GETTABLEKS R2 R3 K9 ["VersionNumber"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K10 ["mounted"]
  JUMPIFNOT R3 [+7]
  GETUPVAL R3 2
  DUPTABLE R5 K12 [{"latestPlaceVersion"}]
  SETTABLEKS R2 R5 K11 ["latestPlaceVersion"]
  NAMECALL R3 R3 K13 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["IsPlayerAdminAsync"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["LocalPlayer"]
  CALL R0 1 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["mounted"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 2
  DUPTABLE R3 K4 [{"isAdmin"}]
  SETTABLEKS R0 R3 K3 ["isAdmin"]
  NAMECALL R1 R1 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["mounted"]
  GETIMPORT R1 K3 [coroutine.wrap]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R1 1 1
  CALL R1 0 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIF R1 [+8]
  GETIMPORT R1 K3 [coroutine.wrap]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CALL R1 1 1
  CALL R1 0 0
  GETIMPORT R1 K3 [coroutine.wrap]
  NEWCLOSURE R2 P2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CALL R1 1 1
  CALL R1 0 0
  RETURN R0 0

PROTO_12:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["mounted"]
  GETTABLEKS R1 R0 K1 ["playerScriptsAddedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K1 ["playerScriptsAddedConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RbxAnalyticsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ContentProvider"]
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
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["HttpRbxApiService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K8 ["HttpService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K9 ["Players"]
  NAMECALL R6 R6 K3 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K10 ["RobloxReplicatedStorage"]
  NAMECALL R7 R7 K3 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K11 ["RunService"]
  NAMECALL R8 R8 K3 ["GetService"]
  CALL R8 2 1
  GETIMPORT R9 K1 [game]
  LOADK R11 K12 ["StarterPlayer"]
  NAMECALL R9 R9 K3 ["GetService"]
  CALL R9 2 1
  LOADK R12 K13 ["RobloxGui"]
  NAMECALL R10 R2 K14 ["WaitForChild"]
  CALL R10 2 1
  GETIMPORT R11 K16 [require]
  GETTABLEKS R13 R3 K17 ["Packages"]
  GETTABLEKS R12 R13 K18 ["InGameMenuDependencies"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K19 ["Roact"]
  GETTABLEKS R13 R11 K20 ["t"]
  GETTABLEKS R14 R11 K21 ["UIBlox"]
  GETIMPORT R15 K16 [require]
  GETTABLEKS R18 R2 K13 ["RobloxGui"]
  GETTABLEKS R17 R18 K22 ["Modules"]
  GETTABLEKS R16 R17 K23 ["PlayerPermissionsModule"]
  CALL R15 1 1
  GETIMPORT R19 K25 [script]
  GETTABLEKS R18 R19 K26 ["Parent"]
  GETTABLEKS R17 R18 K26 ["Parent"]
  GETTABLEKS R16 R17 K26 ["Parent"]
  GETIMPORT R17 K16 [require]
  GETTABLEKS R19 R16 K27 ["Resources"]
  GETTABLEKS R18 R19 K28 ["Constants"]
  CALL R17 1 1
  GETIMPORT R18 K16 [require]
  GETTABLEKS R20 R16 K29 ["Components"]
  GETTABLEKS R19 R20 K30 ["Divider"]
  CALL R18 1 1
  GETIMPORT R19 K16 [require]
  GETTABLEKS R21 R16 K29 ["Components"]
  GETTABLEKS R20 R21 K31 ["ThemedTextLabel"]
  CALL R19 1 1
  GETIMPORT R20 K16 [require]
  GETTABLEKS R22 R16 K32 ["Utility"]
  GETTABLEKS R21 R22 K33 ["ExternalEventConnection"]
  CALL R20 1 1
  GETIMPORT R21 K16 [require]
  GETTABLEKS R23 R16 K34 ["Localization"]
  GETTABLEKS R22 R23 K35 ["withLocalization"]
  CALL R21 1 1
  GETIMPORT R22 K1 [game]
  LOADK R24 K36 ["CoreScriptVersionEnabled"]
  NAMECALL R22 R22 K37 ["GetEngineFeature"]
  CALL R22 2 1
  GETIMPORT R23 K16 [require]
  GETTABLEKS R26 R10 K22 ["Modules"]
  GETTABLEKS R25 R26 K38 ["Flags"]
  GETTABLEKS R24 R25 K39 ["GetFFlagNewEventIngestPlayerScriptsDimensions"]
  CALL R23 1 1
  GETIMPORT R24 K16 [require]
  GETTABLEKS R27 R10 K22 ["Modules"]
  GETTABLEKS R26 R27 K38 ["Flags"]
  GETTABLEKS R25 R26 K40 ["GetFFlagRemoveAssetVersionEndpoint"]
  CALL R24 1 1
  GETTABLEKS R25 R12 K41 ["PureComponent"]
  LOADK R27 K42 ["VersionReporter"]
  NAMECALL R25 R25 K43 ["extend"]
  CALL R25 2 1
  GETTABLEKS R26 R13 K44 ["strictInterface"]
  DUPTABLE R27 K46 [{"LayoutOrder"}]
  GETTABLEKS R28 R13 K47 ["integer"]
  SETTABLEKS R28 R27 K45 ["LayoutOrder"]
  CALL R26 1 1
  SETTABLEKS R26 R25 K48 ["validateProps"]
  DUPCLOSURE R26 K49 [PROTO_0]
  CAPTURE VAL R17
  CAPTURE VAL R0
  CAPTURE VAL R23
  DUPCLOSURE R27 K50 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R26
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R27 R25 K51 ["init"]
  DUPCLOSURE R27 K52 [PROTO_6]
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R19
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R20
  SETTABLEKS R27 R25 K53 ["render"]
  DUPCLOSURE R27 K54 [PROTO_11]
  CAPTURE VAL R7
  CAPTURE VAL R24
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R15
  CAPTURE VAL R6
  SETTABLEKS R27 R25 K55 ["didMount"]
  DUPCLOSURE R27 K56 [PROTO_12]
  SETTABLEKS R27 R25 K57 ["willUnmount"]
  RETURN R25 1
