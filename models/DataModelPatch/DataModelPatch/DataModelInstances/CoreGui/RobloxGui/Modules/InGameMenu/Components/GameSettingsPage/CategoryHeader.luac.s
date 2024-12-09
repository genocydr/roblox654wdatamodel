PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"fontKey", "themeKey", "AnchorPoint", "Position", "Size", "Text", "TextTruncate", "TextXAlignment"}]
  LOADK R4 K10 ["Footer"]
  SETTABLEKS R4 R3 K1 ["fontKey"]
  LOADK R4 K11 ["TextEmphasis"]
  SETTABLEKS R4 R3 K2 ["themeKey"]
  GETIMPORT R4 K14 [Vector2.new]
  LOADK R5 K15 [0.5]
  LOADK R6 K15 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["AnchorPoint"]
  GETIMPORT R4 K17 [UDim2.new]
  LOADK R5 K15 [0.5]
  LOADN R6 0
  LOADK R7 K15 [0.5]
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K4 ["Position"]
  GETIMPORT R4 K17 [UDim2.new]
  LOADN R5 1
  LOADN R6 208
  LOADN R7 0
  LOADN R8 14
  CALL R4 4 1
  SETTABLEKS R4 R3 K5 ["Size"]
  GETTABLEKS R4 R0 K18 ["text"]
  SETTABLEKS R4 R3 K6 ["Text"]
  GETIMPORT R4 K21 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R4 R3 K7 ["TextTruncate"]
  GETIMPORT R4 K23 [Enum.TextXAlignment.Left]
  SETTABLEKS R4 R3 K8 ["TextXAlignment"]
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
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["createElement"]
  LOADK R2 K4 ["Frame"]
  DUPTABLE R3 K8 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K5 ["BackgroundTransparency"]
  GETTABLEKS R4 R0 K6 ["LayoutOrder"]
  SETTABLEKS R4 R3 K6 ["LayoutOrder"]
  GETIMPORT R4 K11 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 36
  CALL R4 4 1
  SETTABLEKS R4 R3 K7 ["Size"]
  DUPTABLE R4 K13 [{"Label"}]
  GETUPVAL R5 3
  DUPTABLE R6 K15 [{"text"}]
  GETTABLEKS R7 R0 K16 ["localizationKey"]
  SETTABLEKS R7 R6 K14 ["text"]
  CALL R5 1 1
  DUPCLOSURE R6 K17 [PROTO_0]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CALL R5 1 1
  SETTABLEKS R5 R4 K12 ["Label"]
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
  GETIMPORT R10 K11 [script]
  GETTABLEKS R9 R10 K12 ["Parent"]
  GETTABLEKS R8 R9 K12 ["Parent"]
  GETTABLEKS R7 R8 K14 ["ThemedTextLabel"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R4 K15 ["Localization"]
  GETTABLEKS R8 R9 K16 ["withLocalization"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K17 ["strictInterface"]
  DUPTABLE R9 K20 [{"LayoutOrder", "localizationKey"}]
  GETTABLEKS R10 R3 K21 ["integer"]
  SETTABLEKS R10 R9 K18 ["LayoutOrder"]
  GETTABLEKS R10 R3 K22 ["string"]
  SETTABLEKS R10 R9 K19 ["localizationKey"]
  CALL R8 1 1
  DUPCLOSURE R9 K23 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  RETURN R9 1
