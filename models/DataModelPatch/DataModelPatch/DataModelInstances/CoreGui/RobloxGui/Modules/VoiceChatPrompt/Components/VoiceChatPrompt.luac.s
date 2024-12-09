PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["ScreenGui"]
  DUPTABLE R3 K7 [{"AutoLocalize", "DisplayOrder", "IgnoreGuiInset", "OnTopOfCoreBlur", "ZIndexBehavior"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["AutoLocalize"]
  LOADN R4 9
  SETTABLEKS R4 R3 K3 ["DisplayOrder"]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["IgnoreGuiInset"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["OnTopOfCoreBlur"]
  GETIMPORT R4 K10 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R4 R3 K6 ["ZIndexBehavior"]
  DUPTABLE R4 K12 [{"PolicyProvider"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K13 ["Provider"]
  DUPTABLE R7 K15 [{"policy"}]
  NEWTABLE R8 0 1
  GETTABLEKS R10 R0 K16 ["props"]
  GETTABLEKS R9 R10 K17 ["policyMapper"]
  JUMPIF R9 [+3]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K18 ["Mapper"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K14 ["policy"]
  DUPTABLE R8 K20 [{"Content"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 2
  GETTABLEKS R11 R0 K16 ["props"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K19 ["Content"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K11 ["PolicyProvider"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["t"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R9 K10 [script]
  GETTABLEKS R8 R9 K11 ["Parent"]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K12 ["InGameMenu"]
  GETTABLEKS R4 R5 K13 ["InGameMenuPolicy"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K10 [script]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K14 ["VoiceChatPromptFrame"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K15 ["PureComponent"]
  LOADK R7 K16 ["VoiceChatPrompt"]
  NAMECALL R5 R5 K17 ["extend"]
  CALL R5 2 1
  GETTABLEKS R6 R2 K18 ["strictInterface"]
  DUPTABLE R7 K30 [{"promptSignal", "errorText", "bannedUntil", "onContinueFunc", "onPrimaryActivated", "onSecondaryActivated", "onReadyForSignal", "Analytics", "VoiceChatServiceManager", "policyMapper", "settingsAppAvailable"}]
  GETTABLEKS R8 R2 K31 ["optional"]
  GETTABLEKS R9 R2 K32 ["RBXScriptSignal"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K19 ["promptSignal"]
  GETTABLEKS R8 R2 K31 ["optional"]
  GETTABLEKS R9 R2 K33 ["string"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K20 ["errorText"]
  GETTABLEKS R8 R2 K31 ["optional"]
  GETTABLEKS R9 R2 K33 ["string"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K21 ["bannedUntil"]
  GETTABLEKS R8 R2 K31 ["optional"]
  GETTABLEKS R9 R2 K34 ["callback"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K22 ["onContinueFunc"]
  GETTABLEKS R8 R2 K31 ["optional"]
  GETTABLEKS R9 R2 K34 ["callback"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K23 ["onPrimaryActivated"]
  GETTABLEKS R8 R2 K31 ["optional"]
  GETTABLEKS R9 R2 K34 ["callback"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K24 ["onSecondaryActivated"]
  GETTABLEKS R8 R2 K31 ["optional"]
  GETTABLEKS R9 R2 K34 ["callback"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K25 ["onReadyForSignal"]
  GETTABLEKS R8 R2 K31 ["optional"]
  GETTABLEKS R9 R2 K35 ["table"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K26 ["Analytics"]
  GETTABLEKS R8 R2 K31 ["optional"]
  GETTABLEKS R9 R2 K35 ["table"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K27 ["VoiceChatServiceManager"]
  GETTABLEKS R8 R2 K31 ["optional"]
  GETTABLEKS R9 R2 K34 ["callback"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K28 ["policyMapper"]
  GETTABLEKS R8 R2 K31 ["optional"]
  GETTABLEKS R9 R2 K36 ["boolean"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K29 ["settingsAppAvailable"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K37 ["validateProps"]
  DUPCLOSURE R6 K38 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K39 ["render"]
  RETURN R5 1
