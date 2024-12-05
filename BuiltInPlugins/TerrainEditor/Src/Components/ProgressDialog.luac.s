PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Pause"]
  JUMPIFNOTEQ R0 R1 [+10]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["OnPause"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["OnPause"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Resume"]
  JUMPIFNOTEQ R0 R1 [+10]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["OnResume"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["OnResume"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["Cancel"]
  JUMPIFNOTEQ R0 R1 [+9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["OnCancel"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["OnCancel"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  LOADK R3 K0 ["ProgressDialog"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  NEWTABLE R4 0 0
  GETTABLEKS R5 R0 K3 ["OnPause"]
  JUMPIFNOT R5 [+49]
  GETTABLEKS R5 R0 K4 ["OnResume"]
  JUMPIFNOT R5 [+46]
  GETTABLEKS R5 R0 K5 ["Paused"]
  JUMPIFNOT R5 [+22]
  DUPTABLE R7 K8 [{"Key", "Text"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K9 ["Resume"]
  SETTABLEKS R8 R7 K6 ["Key"]
  LOADK R10 K10 ["Dialog"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["Resume"]
  NAMECALL R8 R2 K11 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Text"]
  FASTCALL2 TABLE_INSERT R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K14 [table.insert]
  CALL R5 2 0
  JUMP [+21]
  DUPTABLE R7 K8 [{"Key", "Text"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K15 ["Pause"]
  SETTABLEKS R8 R7 K6 ["Key"]
  LOADK R10 K10 ["Dialog"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K15 ["Pause"]
  NAMECALL R8 R2 K11 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Text"]
  FASTCALL2 TABLE_INSERT R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K14 [table.insert]
  CALL R5 2 0
  GETTABLEKS R5 R0 K16 ["OnCancel"]
  JUMPIFNOT R5 [+21]
  DUPTABLE R7 K8 [{"Key", "Text"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K17 ["Cancel"]
  SETTABLEKS R8 R7 K6 ["Key"]
  LOADK R10 K10 ["Dialog"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K17 ["Cancel"]
  NAMECALL R8 R2 K11 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Text"]
  FASTCALL2 TABLE_INSERT R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K14 [table.insert]
  CALL R5 2 0
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K18 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K26 [{"Enabled", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
  GETTABLEKS R8 R0 K19 ["Enabled"]
  SETTABLEKS R8 R7 K19 ["Enabled"]
  LOADB R8 0
  SETTABLEKS R8 R7 K20 ["Modal"]
  GETTABLEKS R8 R0 K21 ["Title"]
  SETTABLEKS R8 R7 K21 ["Title"]
  GETTABLEKS R8 R1 K22 ["MinContentSize"]
  SETTABLEKS R8 R7 K22 ["MinContentSize"]
  SETTABLEKS R4 R7 K23 ["Buttons"]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K24 ["OnButtonPressed"]
  GETTABLEKS R8 R0 K25 ["OnClose"]
  SETTABLEKS R8 R7 K25 ["OnClose"]
  DUPTABLE R8 K28 [{"Contents"}]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K18 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K33 [{"Layout", "Padding", "Size", "Spacing"}]
  GETIMPORT R12 K37 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K29 ["Layout"]
  GETTABLEKS R12 R1 K30 ["Padding"]
  SETTABLEKS R12 R11 K30 ["Padding"]
  GETIMPORT R12 K40 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K31 ["Size"]
  GETTABLEKS R12 R1 K32 ["Spacing"]
  SETTABLEKS R12 R11 K32 ["Spacing"]
  DUPTABLE R12 K44 [{"Description", "Progress", "Time"}]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K18 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K46 [{"LayoutOrder", "Size", "Text"}]
  NAMECALL R16 R3 K47 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K45 ["LayoutOrder"]
  GETIMPORT R16 K48 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETTABLEKS R20 R1 K49 ["DescriptionHeight"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K31 ["Size"]
  GETTABLEKS R16 R0 K41 ["Description"]
  SETTABLEKS R16 R15 K7 ["Text"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K41 ["Description"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K18 ["createElement"]
  GETUPVAL R14 8
  DUPTABLE R15 K50 [{"LayoutOrder", "Progress", "Size"}]
  NAMECALL R16 R3 K47 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K45 ["LayoutOrder"]
  GETTABLEKS R16 R0 K42 ["Progress"]
  SETTABLEKS R16 R15 K42 ["Progress"]
  GETIMPORT R16 K48 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETTABLEKS R20 R1 K51 ["ProgressHeight"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K31 ["Size"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K42 ["Progress"]
  GETTABLEKS R14 R0 K52 ["TimeRemaining"]
  JUMPIFNOT R14 [+37]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K18 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K46 [{"LayoutOrder", "Size", "Text"}]
  NAMECALL R16 R3 K47 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K45 ["LayoutOrder"]
  GETIMPORT R16 K48 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETTABLEKS R20 R1 K49 ["DescriptionHeight"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K31 ["Size"]
  LOADK R18 K10 ["Dialog"]
  LOADK R19 K52 ["TimeRemaining"]
  DUPTABLE R20 K53 [{"Time"}]
  GETUPVAL R21 9
  GETTABLEKS R22 R0 K52 ["TimeRemaining"]
  MOVE R23 R2
  CALL R21 2 1
  SETTABLEKS R21 R20 K43 ["Time"]
  NAMECALL R16 R2 K11 ["getText"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K7 ["Text"]
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K43 ["Time"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K27 ["Contents"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["ContextServices"]
  GETTABLEKS R3 R4 K10 ["Localization"]
  GETTABLEKS R5 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R5 K11 ["Stylizer"]
  GETTABLEKS R5 R2 K12 ["UI"]
  GETTABLEKS R6 R5 K13 ["Pane"]
  GETTABLEKS R7 R5 K14 ["LoadingBar"]
  GETTABLEKS R8 R5 K15 ["StyledDialog"]
  GETTABLEKS R9 R5 K16 ["TextLabel"]
  GETTABLEKS R11 R2 K17 ["Util"]
  GETTABLEKS R10 R11 K18 ["LayoutOrderIterator"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K19 ["Src"]
  GETTABLEKS R13 R14 K20 ["Hooks"]
  GETTABLEKS R12 R13 K21 ["useOperation"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K19 ["Src"]
  GETTABLEKS R14 R15 K17 ["Util"]
  GETTABLEKS R13 R14 K22 ["FormatTimeRemaining"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R0 K19 ["Src"]
  GETTABLEKS R14 R15 K23 ["Types"]
  CALL R13 1 1
  GETTABLEKS R14 R13 K24 ["DialogOption"]
  DUPCLOSURE R15 K25 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R12
  RETURN R15 1