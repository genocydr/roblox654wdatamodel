PROTO_0:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["PageOpen"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["PageOpen"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["CreateNewPage"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K1 ["TabHeader"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["GAMESETTINGS"]
  GETTABLEKS R3 R4 K3 ["TAB_HEADER"]
  GETTABLEKS R2 R3 K4 ["NAME"]
  SETTABLEKS R2 R1 K5 ["Name"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["Images"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["GAMESETTINGS"]
  GETTABLEKS R4 R5 K3 ["TAB_HEADER"]
  GETTABLEKS R3 R4 K7 ["ICON"]
  GETTABLE R1 R2 R3
  GETTABLEKS R4 R0 K1 ["TabHeader"]
  GETTABLEKS R3 R4 K8 ["TabLabel"]
  GETTABLEKS R2 R3 K9 ["Icon"]
  GETTABLEKS R3 R1 K10 ["ImageRectOffset"]
  SETTABLEKS R3 R2 K10 ["ImageRectOffset"]
  GETTABLEKS R4 R0 K1 ["TabHeader"]
  GETTABLEKS R3 R4 K8 ["TabLabel"]
  GETTABLEKS R2 R3 K9 ["Icon"]
  GETTABLEKS R3 R1 K11 ["ImageRectSize"]
  SETTABLEKS R3 R2 K11 ["ImageRectSize"]
  GETTABLEKS R4 R0 K1 ["TabHeader"]
  GETTABLEKS R3 R4 K8 ["TabLabel"]
  GETTABLEKS R2 R3 K9 ["Icon"]
  GETTABLEKS R3 R1 K12 ["Image"]
  SETTABLEKS R3 R2 K12 ["Image"]
  GETTABLEKS R4 R0 K1 ["TabHeader"]
  GETTABLEKS R3 R4 K8 ["TabLabel"]
  GETTABLEKS R2 R3 K13 ["Title"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["GAMESETTINGS"]
  GETTABLEKS R4 R5 K3 ["TAB_HEADER"]
  GETTABLEKS R3 R4 K14 ["TEXT"]
  SETTABLEKS R3 R2 K15 ["Text"]
  GETTABLEKS R2 R0 K16 ["Page"]
  NAMECALL R2 R2 K17 ["ClearAllChildren"]
  CALL R2 1 0
  LOADB R2 0
  SETTABLEKS R2 R0 K18 ["PageOpen"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K19 ["OpenSettingsPage"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K20 ["CloseSettingsPage"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K21 ["createElement"]
  GETUPVAL R3 4
  DUPTABLE R4 K24 [{"theme", "device"}]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K25 ["Enums"]
  GETTABLEKS R6 R7 K26 ["Theme"]
  GETTABLEKS R5 R6 K27 ["Dark"]
  SETTABLEKS R5 R4 K22 ["theme"]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K28 ["getDeviceType"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K23 ["device"]
  DUPTABLE R5 K30 [{"Child"}]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K21 ["createElement"]
  GETUPVAL R7 7
  DUPTABLE R8 K33 [{"service", "pageId"}]
  GETUPVAL R9 8
  SETTABLEKS R9 R8 K31 ["service"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["GAMESETTINGS"]
  GETTABLEKS R9 R10 K34 ["PAGE_ID"]
  SETTABLEKS R9 R8 K32 ["pageId"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K29 ["Child"]
  CALL R2 3 1
  GETUPVAL R4 9
  GETTABLEKS R3 R4 K35 ["createRoot"]
  GETTABLEKS R4 R0 K16 ["Page"]
  CALL R3 1 1
  MOVE R6 R2
  NAMECALL R4 R3 K36 ["render"]
  CALL R4 2 0
  RETURN R0 1

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
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R0 K6 ["WaitForChild"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K7 ["Modules"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R3 K10 ["Settings"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["FFlagRefactorInExpGameSettings"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R3 K10 ["Settings"]
  GETTABLEKS R6 R7 K13 ["Integrations"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K14 ["Utils"]
  GETTABLEKS R7 R5 K15 ["Constants"]
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R1 K16 ["Packages"]
  GETTABLEKS R9 R10 K17 ["React"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R1 K16 ["Packages"]
  GETTABLEKS R10 R11 K18 ["ReactRoblox"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R3 K10 ["Settings"]
  GETTABLEKS R12 R13 K19 ["Resources"]
  GETTABLEKS R11 R12 K20 ["SharedSettingsService"]
  CALL R10 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R1 K21 ["Workspace"]
  GETTABLEKS R14 R15 K16 ["Packages"]
  GETTABLEKS R13 R14 K22 ["SettingReactView"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K22 ["SettingReactView"]
  GETIMPORT R12 K9 [require]
  GETTABLEKS R14 R3 K10 ["Settings"]
  GETTABLEKS R13 R14 K23 ["SettingsPageFactory"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R2 K7 ["Modules"]
  GETTABLEKS R15 R16 K10 ["Settings"]
  GETTABLEKS R14 R15 K24 ["Theme"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R1 K16 ["Packages"]
  GETTABLEKS R15 R16 K25 ["Foundation"]
  CALL R14 1 1
  GETTABLEKS R15 R14 K26 ["FoundationProvider"]
  DUPCLOSURE R16 K27 [PROTO_2]
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R9
  MOVE R17 R4
  CALL R17 0 1
  JUMPIFNOT R17 [+3]
  MOVE R17 R16
  CALL R17 0 1
  RETURN R17 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R20 R3 K10 ["Settings"]
  GETTABLEKS R19 R20 K28 ["Pages"]
  GETTABLEKS R18 R19 K29 ["GameSettings"]
  CALL R17 1 -1
  RETURN R17 -1
