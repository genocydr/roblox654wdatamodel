PROTO_0:
  GETTABLEKS R2 R1 K0 ["gameName"]
  RETURN R2 1

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
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  LOADK R5 K9 ["RobloxGui"]
  NAMECALL R3 R1 K10 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R3 K11 ["Modules"]
  GETTABLEKS R5 R6 K12 ["RobloxTranslator"]
  CALL R4 1 1
  GETIMPORT R8 K14 [script]
  GETTABLEKS R7 R8 K15 ["Parent"]
  GETTABLEKS R6 R7 K15 ["Parent"]
  GETTABLEKS R5 R6 K16 ["Actions"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R5 K17 ["GameNameFetched"]
  CALL R6 1 1
  LOADK R9 K18 ["CoreScripts.AvatarEditorPrompts.GameNamePlaceHolder"]
  NAMECALL R7 R4 K19 ["FormatByKey"]
  CALL R7 2 1
  GETTABLEKS R8 R2 K20 ["createReducer"]
  MOVE R9 R7
  NEWTABLE R10 1 0
  GETTABLEKS R11 R6 K21 ["name"]
  DUPCLOSURE R12 K22 [PROTO_0]
  SETTABLE R12 R10 R11
  CALL R8 2 -1
  RETURN R8 -1
