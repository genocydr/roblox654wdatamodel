PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"localization"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["new"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["RobloxLocaleId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["localization"]
  DUPTABLE R4 K6 [{"App"}]
  SETTABLEKS R0 R4 K5 ["App"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  NEWTABLE R1 4 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["Analytics"]
  CALL R1 0 1
  DUPTABLE R2 K4 [{"fireAnalyticsEvent"}]
  GETTABLEKS R3 R1 K3 ["fireAnalyticsEvent"]
  SETTABLEKS R3 R2 K3 ["fireAnalyticsEvent"]
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["CallProtocol"]
  GETTABLEKS R4 R5 K6 ["default"]
  CALL R3 1 0
  DUPCLOSURE R3 K7 [PROTO_0]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  GETUPVAL R6 8
  GETTABLEKS R5 R6 K8 ["Store"]
  GETTABLEKS R4 R5 K9 ["new"]
  GETUPVAL R5 9
  LOADNIL R6
  NEWTABLE R7 0 1
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K10 ["thunkMiddleware"]
  SETLIST R7 R8 1 [1]
  CALL R4 3 1
  SETTABLEKS R4 R0 K11 ["store"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K12 ["createElement"]
  LOADK R5 K13 ["ScreenGui"]
  DUPTABLE R6 K18 [{"AutoLocalize", "DisplayOrder", "IgnoreGuiInset", "ZIndexBehavior"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K14 ["AutoLocalize"]
  LOADN R7 255
  SETTABLEKS R7 R6 K15 ["DisplayOrder"]
  LOADB R7 1
  SETTABLEKS R7 R6 K16 ["IgnoreGuiInset"]
  GETIMPORT R7 K21 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R7 R6 K17 ["ZIndexBehavior"]
  DUPTABLE R7 K23 [{"Content"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["createElement"]
  GETUPVAL R10 10
  GETTABLEKS R9 R10 K24 ["StoreProvider"]
  DUPTABLE R10 K25 [{"store"}]
  GETTABLEKS R11 R0 K11 ["store"]
  SETTABLEKS R11 R10 K11 ["store"]
  DUPTABLE R11 K27 [{"ThemeProvider"}]
  GETUPVAL R12 11
  DUPTABLE R13 K29 [{"ApolloProvider"}]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K12 ["createElement"]
  GETUPVAL R15 12
  DUPTABLE R16 K31 [{"client"}]
  GETUPVAL R17 13
  SETTABLEKS R17 R16 K30 ["client"]
  DUPTABLE R17 K33 [{"ContextProvider"}]
  GETUPVAL R19 14
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R20 15
  GETTABLEKS R19 R20 K34 ["Provider"]
  DUPTABLE R20 K36 [{"value"}]
  SETTABLEKS R2 R20 K35 ["value"]
  DUPTABLE R21 K38 [{"ContactListApp"}]
  MOVE R22 R3
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K12 ["createElement"]
  GETUPVAL R24 16
  CALL R23 1 -1
  CALL R22 -1 1
  SETTABLEKS R22 R21 K37 ["ContactListApp"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K32 ["ContextProvider"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K28 ["ApolloProvider"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["ThemeProvider"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K22 ["Content"]
  CALL R4 3 1
  SETTABLEKS R4 R0 K39 ["root"]
  GETUPVAL R5 14
  GETTABLEKS R4 R5 K40 ["mount"]
  GETTABLEKS R5 R0 K39 ["root"]
  GETUPVAL R6 17
  LOADK R7 K41 ["ContactList"]
  CALL R4 3 1
  SETTABLEKS R4 R0 K42 ["element"]
  RETURN R0 1

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
  LOADK R4 K5 ["LocalizationService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R5 K6 ["RobloxGui"]
  NAMECALL R3 R1 K7 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K9 [require]
  GETIMPORT R8 K11 [script]
  GETTABLEKS R7 R8 K12 ["Parent"]
  GETTABLEKS R6 R7 K13 ["Common"]
  GETTABLEKS R5 R6 K14 ["renderWithCoreScriptsStyleProvider"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K15 ["Packages"]
  GETTABLEKS R6 R7 K16 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K15 ["Packages"]
  GETTABLEKS R7 R8 K17 ["Rodux"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K15 ["Packages"]
  GETTABLEKS R8 R9 K18 ["Roact"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K15 ["Packages"]
  GETTABLEKS R9 R10 K19 ["RoactRodux"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R0 K20 ["Workspace"]
  GETTABLEKS R11 R12 K15 ["Packages"]
  GETTABLEKS R10 R11 K21 ["CallProtocol"]
  CALL R9 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R0 K20 ["Workspace"]
  GETTABLEKS R13 R14 K15 ["Packages"]
  GETTABLEKS R12 R13 K22 ["InExperienceLocales"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K23 ["Localization"]
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R0 K20 ["Workspace"]
  GETTABLEKS R14 R15 K15 ["Packages"]
  GETTABLEKS R13 R14 K23 ["Localization"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K24 ["LocalizationProvider"]
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R0 K15 ["Packages"]
  GETTABLEKS R14 R15 K25 ["ApolloClient"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K26 ["ApolloProvider"]
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R3 K27 ["Modules"]
  GETTABLEKS R14 R15 K25 ["ApolloClient"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETIMPORT R16 K11 [script]
  GETTABLEKS R15 R16 K28 ["initCall"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETIMPORT R17 K11 [script]
  GETTABLEKS R16 R17 K29 ["Reducer"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETIMPORT R19 K11 [script]
  GETTABLEKS R18 R19 K30 ["Components"]
  GETTABLEKS R17 R18 K31 ["ContactListApp"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETIMPORT R19 K11 [script]
  GETTABLEKS R18 R19 K32 ["Context"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETIMPORT R20 K11 [script]
  GETTABLEKS R19 R20 K33 ["Analytics"]
  CALL R18 1 1
  NEWTABLE R19 2 0
  SETTABLEKS R19 R19 K34 ["__index"]
  DUPCLOSURE R20 K35 [PROTO_1]
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R1
  SETTABLEKS R20 R19 K36 ["new"]
  GETTABLEKS R20 R19 K36 ["new"]
  CALL R20 0 -1
  RETURN R20 -1
