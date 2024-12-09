PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["propValidation"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["setGlobalConfig"]
  DUPTABLE R1 K2 [{"propValidation"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["propValidation"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["elementTracing"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["setGlobalConfig"]
  DUPTABLE R1 K4 [{"elementTracing"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K3 ["elementTracing"]
  CALL R0 1 0
  NEWTABLE R0 0 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["thunkMiddleware"]
  SETLIST R0 R1 1 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["logStore"]
  JUMPIFNOT R1 [+9]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K7 ["loggerMiddleware"]
  FASTCALL2 TABLE_INSERT R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K10 [table.insert]
  CALL R1 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K11 ["Store"]
  GETTABLEKS R1 R2 K12 ["new"]
  GETUPVAL R2 3
  LOADNIL R3
  MOVE R4 R0
  CALL R1 3 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["createElement"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K14 ["StoreProvider"]
  DUPTABLE R4 K16 [{"store"}]
  SETTABLEKS R1 R4 K15 ["store"]
  DUPTABLE R5 K18 [{"LocalizationProvider"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K13 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K20 [{"localization"}]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K12 ["new"]
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K21 ["RobloxLocaleId"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K19 ["localization"]
  DUPTABLE R9 K23 [{"Feedback"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K13 ["createElement"]
  GETUPVAL R11 8
  CALL R10 1 1
  SETTABLEKS R10 R9 K22 ["Feedback"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K17 ["LocalizationProvider"]
  CALL R2 3 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K24 ["mount"]
  MOVE R4 R2
  GETUPVAL R5 9
  LOADK R6 K22 ["Feedback"]
  CALL R3 3 0
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
  LOADK R4 K5 ["LocalizationService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R1 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R1 K8 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Rodux"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R1 K8 ["Packages"]
  GETTABLEKS R6 R7 K11 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R10 R1 K12 ["Workspace"]
  GETTABLEKS R9 R10 K8 ["Packages"]
  GETTABLEKS R8 R9 K13 ["InExperienceLocales"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K14 ["Localization"]
  GETIMPORT R8 K7 [require]
  GETTABLEKS R11 R1 K12 ["Workspace"]
  GETTABLEKS R10 R11 K8 ["Packages"]
  GETTABLEKS R9 R10 K14 ["Localization"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K15 ["LocalizationProvider"]
  GETIMPORT R8 K7 [require]
  GETIMPORT R10 K17 [script]
  GETTABLEKS R9 R10 K18 ["GlobalConfig"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETIMPORT R11 K17 [script]
  GETTABLEKS R10 R11 K19 ["Reducers"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETIMPORT R13 K17 [script]
  GETTABLEKS R12 R13 K20 ["Components"]
  GETTABLEKS R11 R12 K21 ["FeedbackApp"]
  CALL R10 1 1
  DUPTABLE R11 K23 [{"initialize"}]
  DUPCLOSURE R12 K24 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K22 ["initialize"]
  RETURN R11 1
