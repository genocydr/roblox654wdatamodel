PROTO_0:
  GETUPVAL R3 0
  LOADK R5 K0 ["Fetching: {}"]
  GETIMPORT R6 K3 [string.format]
  LOADK R7 K4 ["[ requestMethod = %q, url = %q ]"]
  MOVE R8 R1
  MOVE R9 R0
  CALL R6 3 -1
  NAMECALL R3 R3 K5 ["info"]
  CALL R3 -1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["requestFunctions"]
  GETTABLEKS R3 R4 K7 ["HttpRbxApi"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R2 0
  LOADK R4 K0 ["Returned: {}"]
  GETIMPORT R5 K3 [string.format]
  LOADK R6 K4 ["[ requestMethod = %q, url = %q, statusCode = %s, body = %s ]"]
  GETTABLEKS R7 R1 K5 ["requestMethod"]
  GETTABLEKS R8 R1 K6 ["url"]
  GETTABLEKS R9 R0 K7 ["StatusCode"]
  GETTABLEKS R10 R0 K8 ["Body"]
  CALL R5 5 -1
  NAMECALL R2 R2 K9 ["debug"]
  CALL R2 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["LuaSocialLibrariesDeps"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Lumberyak"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["httpRequest"]
  GETTABLEKS R5 R2 K10 ["Logger"]
  GETTABLEKS R4 R5 K11 ["new"]
  LOADNIL R5
  LOADK R6 K12 ["ContactList"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K13 ["ContactListHttpRetryCount"]
  LOADN R8 3
  NAMECALL R5 R5 K14 ["DefineFastInt"]
  CALL R5 3 1
  LOADK R8 K15 ["ContactList Networking"]
  NAMECALL R6 R4 K11 ["new"]
  CALL R6 2 1
  GETTABLEKS R7 R3 K16 ["config"]
  DUPTABLE R8 K20 [{"requestFunction", "postRequestFunction", "maxRetryCount"}]
  DUPCLOSURE R9 K21 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K17 ["requestFunction"]
  DUPCLOSURE R9 K22 [PROTO_1]
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K18 ["postRequestFunction"]
  SETTABLEKS R5 R8 K19 ["maxRetryCount"]
  CALL R7 1 1
  GETTABLEKS R9 R1 K23 ["RoduxNetworking"]
  GETTABLEKS R8 R9 K16 ["config"]
  DUPTABLE R9 K26 [{"keyPath", "networkImpl"}]
  LOADK R10 K27 ["NetworkStatus"]
  SETTABLEKS R10 R9 K24 ["keyPath"]
  SETTABLEKS R7 R9 K25 ["networkImpl"]
  CALL R8 1 1
  DUPTABLE R9 K42 [{"Hooks", "NetworkingCall", "RoduxCall", "RoduxFriends", "RoduxPresence", "RoduxUsers", "RoduxNetworking", "NetworkingPresence", "NetworkingFriends", "NetworkingUsers", "SocialLibraries", "UIBlox", "enumerate", "getStandardSizeAvatarHeadShotRbxthumb", "teleportToRootPlace"}]
  DUPTABLE R10 K48 [{"dependencyArray", "useDispatch", "useSelector", "usePrevious", "useLocalization"}]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K49 ["Workspace"]
  GETTABLEKS R15 R16 K6 ["Packages"]
  GETTABLEKS R14 R15 K50 ["RoactUtils"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K28 ["Hooks"]
  GETTABLEKS R11 R12 K43 ["dependencyArray"]
  SETTABLEKS R11 R10 K43 ["dependencyArray"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K49 ["Workspace"]
  GETTABLEKS R16 R17 K6 ["Packages"]
  GETTABLEKS R15 R16 K50 ["RoactUtils"]
  CALL R14 1 1
  GETTABLEKS R13 R14 K28 ["Hooks"]
  GETTABLEKS R12 R13 K51 ["RoactRodux"]
  GETTABLEKS R11 R12 K44 ["useDispatch"]
  SETTABLEKS R11 R10 K44 ["useDispatch"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K49 ["Workspace"]
  GETTABLEKS R16 R17 K6 ["Packages"]
  GETTABLEKS R15 R16 K50 ["RoactUtils"]
  CALL R14 1 1
  GETTABLEKS R13 R14 K28 ["Hooks"]
  GETTABLEKS R12 R13 K51 ["RoactRodux"]
  GETTABLEKS R11 R12 K45 ["useSelector"]
  SETTABLEKS R11 R10 K45 ["useSelector"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K49 ["Workspace"]
  GETTABLEKS R15 R16 K6 ["Packages"]
  GETTABLEKS R14 R15 K50 ["RoactUtils"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K28 ["Hooks"]
  GETTABLEKS R11 R12 K46 ["usePrevious"]
  SETTABLEKS R11 R10 K46 ["usePrevious"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K49 ["Workspace"]
  GETTABLEKS R15 R16 K6 ["Packages"]
  GETTABLEKS R14 R15 K52 ["Localization"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K28 ["Hooks"]
  GETTABLEKS R11 R12 K47 ["useLocalization"]
  SETTABLEKS R11 R10 K47 ["useLocalization"]
  SETTABLEKS R10 R9 K28 ["Hooks"]
  GETTABLEKS R11 R1 K29 ["NetworkingCall"]
  GETTABLEKS R10 R11 K16 ["config"]
  DUPTABLE R11 K55 [{"roduxNetworking", "useMockedResponse"}]
  SETTABLEKS R8 R11 K53 ["roduxNetworking"]
  LOADB R12 1
  SETTABLEKS R12 R11 K54 ["useMockedResponse"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K29 ["NetworkingCall"]
  GETTABLEKS R11 R1 K30 ["RoduxCall"]
  GETTABLEKS R10 R11 K16 ["config"]
  DUPTABLE R11 K56 [{"keyPath"}]
  LOADK R12 K57 ["Call"]
  SETTABLEKS R12 R11 K24 ["keyPath"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K30 ["RoduxCall"]
  GETTABLEKS R11 R1 K31 ["RoduxFriends"]
  GETTABLEKS R10 R11 K16 ["config"]
  DUPTABLE R11 K56 [{"keyPath"}]
  LOADK R12 K58 ["Friends"]
  SETTABLEKS R12 R11 K24 ["keyPath"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K31 ["RoduxFriends"]
  GETTABLEKS R11 R1 K32 ["RoduxPresence"]
  GETTABLEKS R10 R11 K16 ["config"]
  DUPTABLE R11 K56 [{"keyPath"}]
  LOADK R12 K59 ["Presence"]
  SETTABLEKS R12 R11 K24 ["keyPath"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K32 ["RoduxPresence"]
  GETTABLEKS R11 R1 K33 ["RoduxUsers"]
  GETTABLEKS R10 R11 K16 ["config"]
  DUPTABLE R11 K56 [{"keyPath"}]
  LOADK R12 K60 ["Users"]
  SETTABLEKS R12 R11 K24 ["keyPath"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K33 ["RoduxUsers"]
  SETTABLEKS R8 R9 K23 ["RoduxNetworking"]
  GETTABLEKS R11 R1 K34 ["NetworkingPresence"]
  GETTABLEKS R10 R11 K16 ["config"]
  DUPTABLE R11 K61 [{"roduxNetworking"}]
  SETTABLEKS R8 R11 K53 ["roduxNetworking"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K34 ["NetworkingPresence"]
  GETTABLEKS R11 R1 K35 ["NetworkingFriends"]
  GETTABLEKS R10 R11 K16 ["config"]
  DUPTABLE R11 K61 [{"roduxNetworking"}]
  SETTABLEKS R8 R11 K53 ["roduxNetworking"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K35 ["NetworkingFriends"]
  GETTABLEKS R11 R1 K36 ["NetworkingUsers"]
  GETTABLEKS R10 R11 K16 ["config"]
  DUPTABLE R11 K61 [{"roduxNetworking"}]
  SETTABLEKS R8 R11 K53 ["roduxNetworking"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K36 ["NetworkingUsers"]
  GETTABLEKS R11 R1 K37 ["SocialLibraries"]
  GETTABLEKS R10 R11 K16 ["config"]
  NEWTABLE R11 0 0
  CALL R10 1 1
  SETTABLEKS R10 R9 K37 ["SocialLibraries"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K6 ["Packages"]
  GETTABLEKS R11 R12 K38 ["UIBlox"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K38 ["UIBlox"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K6 ["Packages"]
  GETTABLEKS R11 R12 K39 ["enumerate"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K39 ["enumerate"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K49 ["Workspace"]
  GETTABLEKS R14 R15 K6 ["Packages"]
  GETTABLEKS R13 R14 K62 ["UserLib"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K63 ["Utils"]
  GETTABLEKS R10 R11 K40 ["getStandardSizeAvatarHeadShotRbxthumb"]
  SETTABLEKS R10 R9 K40 ["getStandardSizeAvatarHeadShotRbxthumb"]
  GETIMPORT R10 K5 [require]
  GETIMPORT R13 K65 [script]
  GETTABLEKS R12 R13 K66 ["Parent"]
  GETTABLEKS R11 R12 K41 ["teleportToRootPlace"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K41 ["teleportToRootPlace"]
  RETURN R9 1
