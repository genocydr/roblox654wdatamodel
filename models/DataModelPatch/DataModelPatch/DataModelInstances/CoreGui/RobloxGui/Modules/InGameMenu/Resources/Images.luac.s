PROTO_0:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["%q is not a valid member of Images"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K4 [tostring]
  CALL R5 1 1
  NAMECALL R3 R3 K5 ["format"]
  CALL R3 2 1
  LOADN R4 2
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Workspace"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["ArgCheck"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K10 [script]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K12 ["GetImageSetData"]
  CALL R2 1 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K13 ["GuiService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  NAMECALL R4 R3 K14 ["GetResolutionScale"]
  CALL R4 1 1
  MOVE R5 R2
  MOVE R6 R4
  CALL R5 1 1
  NEWTABLE R6 0 0
  GETIMPORT R7 K16 [pairs]
  MOVE R8 R5
  CALL R7 1 3
  FORGPREP_NEXT R7
  GETTABLEKS R12 R1 K17 ["isType"]
  MOVE R13 R11
  LOADK R14 K18 ["table"]
  LOADK R15 K19 ["value"]
  CALL R12 3 0
  NEWTABLE R12 1 0
  GETIMPORT R13 K16 [pairs]
  MOVE R14 R11
  CALL R13 1 3
  FORGPREP_NEXT R13
  JUMPIFNOTEQKS R16 K20 ["ImageSet"] [+9]
  GETIMPORT R18 K23 [string.format]
  LOADK R19 K24 ["rbxasset://textures/ui/ImageSet/%s.png"]
  MOVE R20 R17
  CALL R18 2 1
  SETTABLEKS R18 R12 K25 ["Image"]
  JUMP [+1]
  SETTABLE R17 R12 R16
  FORGLOOP R13 2 [-12]
  SETTABLE R12 R6 R10
  FORGLOOP R7 2 [-28]
  DUPTABLE R9 K27 [{"__index"}]
  DUPCLOSURE R10 K28 [PROTO_0]
  SETTABLEKS R10 R9 K26 ["__index"]
  FASTCALL2 SETMETATABLE R6 R9 [+4]
  MOVE R8 R6
  GETIMPORT R7 K30 [setmetatable]
  CALL R7 2 0
  RETURN R6 1