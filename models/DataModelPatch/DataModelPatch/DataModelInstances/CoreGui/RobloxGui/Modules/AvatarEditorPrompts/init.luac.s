PROTO_0:
  NEWTABLE R1 4 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["propValidation"]
  JUMPIFNOT R1 [+8]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["setGlobalConfig"]
  DUPTABLE R2 K4 [{"propValidation"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["propValidation"]
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["elementTracing"]
  JUMPIFNOT R1 [+8]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["setGlobalConfig"]
  DUPTABLE R2 K6 [{"elementTracing"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K5 ["elementTracing"]
  CALL R1 1 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K7 ["Store"]
  GETTABLEKS R1 R2 K8 ["new"]
  GETUPVAL R2 4
  LOADNIL R3
  NEWTABLE R4 0 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K9 ["thunkMiddleware"]
  SETLIST R4 R5 1 [1]
  CALL R1 3 1
  SETTABLEKS R1 R0 K10 ["store"]
  GETTABLEKS R1 R0 K10 ["store"]
  GETUPVAL R3 5
  NAMECALL R1 R1 K11 ["dispatch"]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K12 ["createElement"]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K13 ["StoreProvider"]
  DUPTABLE R3 K14 [{"store"}]
  GETTABLEKS R4 R0 K10 ["store"]
  SETTABLEKS R4 R3 K10 ["store"]
  DUPTABLE R4 K16 [{"PolicyProvider"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K12 ["createElement"]
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K17 ["Provider"]
  DUPTABLE R7 K19 [{"policy"}]
  NEWTABLE R8 0 1
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K20 ["Mapper"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K18 ["policy"]
  DUPTABLE R8 K22 [{"ThemeProvider"}]
  GETUPVAL R9 8
  DUPTABLE R10 K24 [{"AvatarEditorPromptsApp"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 9
  CALL R11 1 1
  SETTABLEKS R11 R10 K23 ["AvatarEditorPromptsApp"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K21 ["ThemeProvider"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K15 ["PolicyProvider"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K25 ["root"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K26 ["mount"]
  GETTABLEKS R2 R0 K25 ["root"]
  GETUPVAL R3 10
  LOADK R4 K27 ["AvatarEditorPrompts"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K28 ["element"]
  GETUPVAL R1 11
  GETTABLEKS R2 R0 K10 ["store"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K29 ["serviceConnections"]
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
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R2 K9 ["Modules"]
  GETTABLEKS R5 R6 K10 ["Common"]
  GETTABLEKS R4 R5 K11 ["renderWithCoreScriptsStyleProvider"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K12 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Rodux"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K12 ["Packages"]
  GETTABLEKS R7 R8 K15 ["RoactRodux"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R0 K12 ["Packages"]
  GETTABLEKS R8 R9 K16 ["UIBlox"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETIMPORT R11 K18 [script]
  GETTABLEKS R10 R11 K19 ["Components"]
  GETTABLEKS R9 R10 K20 ["AvatarEditorPromptsApp"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETIMPORT R11 K18 [script]
  GETTABLEKS R10 R11 K21 ["Reducer"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETIMPORT R13 K18 [script]
  GETTABLEKS R12 R13 K22 ["Thunks"]
  GETTABLEKS R11 R12 K23 ["GetGameName"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETIMPORT R13 K18 [script]
  GETTABLEKS R12 R13 K24 ["AvatarEditorPromptsPolicy"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETIMPORT R14 K18 [script]
  GETTABLEKS R13 R14 K25 ["RoactGlobalConfig"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETIMPORT R15 K18 [script]
  GETTABLEKS R14 R15 K26 ["ConnectAvatarEditorServiceEvents"]
  CALL R13 1 1
  NEWTABLE R14 2 0
  SETTABLEKS R14 R14 K27 ["__index"]
  DUPCLOSURE R15 K28 [PROTO_0]
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R13
  SETTABLEKS R15 R14 K29 ["new"]
  GETTABLEKS R15 R14 K29 ["new"]
  CALL R15 0 -1
  RETURN R15 -1
