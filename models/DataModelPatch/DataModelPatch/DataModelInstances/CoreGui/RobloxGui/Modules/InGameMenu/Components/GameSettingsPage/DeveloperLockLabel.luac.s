PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K10 [{"themeKey", "fontKey", "TextTransparency", "Text", "Size", "Position", "AnchorPoint", "TextXAlignment", "TextYAlignment"}]
  LOADK R4 K11 ["TextDefault"]
  SETTABLEKS R4 R3 K1 ["themeKey"]
  LOADK R4 K12 ["CaptionBody"]
  SETTABLEKS R4 R3 K2 ["fontKey"]
  LOADK R4 K13 [0.5]
  SETTABLEKS R4 R3 K3 ["TextTransparency"]
  GETTABLEKS R4 R0 K14 ["lockedText"]
  SETTABLEKS R4 R3 K4 ["Text"]
  GETIMPORT R4 K17 [UDim2.new]
  LOADN R5 1
  LOADN R6 184
  LOADK R7 K18 [0.25]
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K5 ["Size"]
  GETIMPORT R4 K17 [UDim2.new]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K6 ["Position"]
  GETIMPORT R4 K20 [Vector2.new]
  LOADN R5 0
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["AnchorPoint"]
  GETIMPORT R4 K23 [Enum.TextXAlignment.Left]
  SETTABLEKS R4 R3 K8 ["TextXAlignment"]
  GETIMPORT R4 K25 [Enum.TextYAlignment.Bottom]
  SETTABLEKS R4 R3 K9 ["TextYAlignment"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["propValidation"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 -1 0
  GETUPVAL R1 2
  DUPTABLE R2 K4 [{"lockedText"}]
  LOADK R3 K5 ["CoreScripts.InGameMenu.GameSettings.LockedByDeveloper"]
  SETTABLEKS R3 R2 K3 ["lockedText"]
  CALL R1 1 1
  DUPCLOSURE R2 K6 [PROTO_0]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETTABLEKS R3 R1 K9 ["t"]
  GETIMPORT R7 K11 [script]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Parent"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K13 ["GlobalConfig"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R4 K14 ["Localization"]
  GETTABLEKS R7 R8 K15 ["withLocalization"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R4 K16 ["Components"]
  GETTABLEKS R8 R9 K17 ["ThemedTextLabel"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K18 ["strictInterface"]
  DUPTABLE R9 K22 [{"Position", "Size", "AnchorPoint"}]
  GETTABLEKS R10 R3 K23 ["UDim2"]
  SETTABLEKS R10 R9 K19 ["Position"]
  GETTABLEKS R10 R3 K23 ["UDim2"]
  SETTABLEKS R10 R9 K20 ["Size"]
  GETTABLEKS R10 R3 K24 ["Vector2"]
  SETTABLEKS R10 R9 K21 ["AnchorPoint"]
  CALL R8 1 1
  DUPCLOSURE R9 K25 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R7
  RETURN R9 1
