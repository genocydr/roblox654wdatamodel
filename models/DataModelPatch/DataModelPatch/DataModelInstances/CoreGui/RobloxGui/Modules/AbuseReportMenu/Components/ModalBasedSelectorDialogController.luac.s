PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["modalSelectorHandle"]
  JUMPIFEQKNIL R0 [+12]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["unmount"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["modalSelectorHandle"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["modalSelectorHandle"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["modalSelectorScreenGui"]
  JUMPIFEQKNIL R0 [+15]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["modalSelectorFrame"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["Parent"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["modalSelectorFrame"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["modalSelectorScreenGui"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R5 0
  NAMECALL R5 R5 K0 ["GetGuiInset"]
  CALL R5 1 2
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["modalSelectorScreenGui"]
  JUMPIF R7 [+78]
  GETIMPORT R7 K4 [Instance.new]
  LOADK R8 K5 ["ScreenGui"]
  CALL R7 1 1
  LOADK R8 K6 ["ModalSelectorDialogGui"]
  SETTABLEKS R8 R7 K7 ["Name"]
  LOADN R8 7
  SETTABLEKS R8 R7 K8 ["DisplayOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["Enabled"]
  GETIMPORT R8 K13 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K11 ["ZIndexBehavior"]
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+9]
  GETUPVAL R8 3
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K14 ["AbuseReportMenuPlaceholderFrame"]
  LOADB R11 1
  NAMECALL R8 R8 K15 ["FindFirstChild"]
  CALL R8 3 1
  JUMP [+8]
  GETUPVAL R8 3
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K16 ["AbuseReportMenuRootName"]
  LOADB R11 1
  NAMECALL R8 R8 K15 ["FindFirstChild"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K17 ["Parent"]
  GETUPVAL R8 1
  SETTABLEKS R7 R8 K1 ["modalSelectorScreenGui"]
  GETIMPORT R8 K4 [Instance.new]
  LOADK R9 K18 ["Frame"]
  CALL R8 1 1
  LOADN R9 1
  SETTABLEKS R9 R8 K19 ["BackgroundTransparency"]
  GETIMPORT R9 K21 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R14 R5 K22 ["Y"]
  MINUS R13 R14
  CALL R9 4 1
  SETTABLEKS R9 R8 K23 ["Position"]
  GETIMPORT R9 K21 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  GETTABLEKS R13 R5 K22 ["Y"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K24 ["Size"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K1 ["modalSelectorScreenGui"]
  SETTABLEKS R9 R8 K17 ["Parent"]
  GETUPVAL R9 1
  SETTABLEKS R8 R9 K25 ["modalSelectorFrame"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K26 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K33 [{"isShown", "cellData", "viewportHeight", "viewportWidth", "onSelect", "onClose"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K27 ["isShown"]
  SETTABLEKS R2 R9 K28 ["cellData"]
  SETTABLEKS R0 R9 K29 ["viewportHeight"]
  SETTABLEKS R1 R9 K30 ["viewportWidth"]
  SETTABLEKS R3 R9 K31 ["onSelect"]
  SETTABLEKS R4 R9 K32 ["onClose"]
  CALL R7 2 1
  GETUPVAL R8 1
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K34 ["mount"]
  MOVE R10 R7
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K25 ["modalSelectorFrame"]
  LOADK R12 K35 ["ModalSelectorDialog"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K36 ["modalSelectorHandle"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["AbuseReportMenu"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K9 ["CorePackages"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R6 R3 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R7 R2 K14 ["Components"]
  GETTABLEKS R6 R7 K15 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R8 R2 K14 ["Components"]
  GETTABLEKS R7 R8 K16 ["ModalBaseSelectorDialog"]
  CALL R6 1 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R11 R3 K17 ["Workspace"]
  GETTABLEKS R10 R11 K12 ["Packages"]
  GETTABLEKS R9 R10 K18 ["SharedFlags"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K19 ["GetFFlagAbuseReportMenuConsoleSupportRefactor"]
  DUPTABLE R8 K23 [{"modalSelectorHandle", "modalSelectorFrame", "modalSelectorScreenGui"}]
  LOADNIL R9
  SETTABLEKS R9 R8 K20 ["modalSelectorHandle"]
  LOADNIL R9
  SETTABLEKS R9 R8 K21 ["modalSelectorFrame"]
  LOADNIL R9
  SETTABLEKS R9 R8 K22 ["modalSelectorScreenGui"]
  DUPCLOSURE R9 K24 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R4
  DUPCLOSURE R10 K25 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  DUPTABLE R11 K28 [{"mountModalSelector", "unmountModalSelector"}]
  SETTABLEKS R10 R11 K26 ["mountModalSelector"]
  SETTABLEKS R9 R11 K27 ["unmountModalSelector"]
  RETURN R11 1
