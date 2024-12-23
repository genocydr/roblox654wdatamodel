PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["GameplayPaused"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["Enabled"]
  JUMPIFNOT R0 [+2]
  GETUPVAL R1 2
  NOT R0 R1
  LOADB R1 0
  SETUPVAL R1 2
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 3
  NAMECALL R1 R1 K2 ["Show"]
  CALL R1 1 0
  JUMP [+4]
  GETUPVAL R1 3
  NAMECALL R1 R1 K3 ["Hide"]
  CALL R1 1 0
  GETUPVAL R1 4
  JUMPIFNOT R1 [+3]
  GETUPVAL R1 5
  SETTABLEKS R0 R1 K4 ["Active"]
  GETUPVAL R1 6
  MOVE R3 R0
  NAMECALL R1 R1 K5 ["SetRobloxGuiFocused"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["boolean"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Specified argument 'enabled' must be of type boolean"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["Enabled"]
  JUMPIFNOTEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K6 ["Enabled"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["GameplayPaused"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["Enabled"]
  JUMPIFNOT R1 [+2]
  GETUPVAL R2 2
  NOT R1 R2
  LOADB R2 0
  SETUPVAL R2 2
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 3
  NAMECALL R2 R2 K8 ["Show"]
  CALL R2 1 0
  JUMP [+4]
  GETUPVAL R2 3
  NAMECALL R2 R2 K9 ["Hide"]
  CALL R2 1 0
  GETUPVAL R2 4
  JUMPIFNOT R2 [+3]
  GETUPVAL R2 5
  SETTABLEKS R1 R2 K10 ["Active"]
  GETUPVAL R2 6
  MOVE R4 R1
  NAMECALL R2 R2 K11 ["SetRobloxGuiFocused"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["StarterGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["RunService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["GuiService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K8 ["CorePackages"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETTABLEKS R6 R1 K9 ["RobloxGui"]
  GETTABLEKS R7 R6 K10 ["Modules"]
  GETTABLEKS R8 R0 K11 ["LocalPlayer"]
  JUMPIF R8 [+6]
  GETIMPORT R9 K13 [wait]
  CALL R9 0 0
  GETTABLEKS R8 R0 K11 ["LocalPlayer"]
  JUMPBACK [-7]
  GETIMPORT R9 K15 [require]
  GETTABLEKS R10 R7 K16 ["NetworkPauseNotification"]
  CALL R9 1 1
  GETIMPORT R11 K15 [require]
  GETTABLEKS R14 R5 K17 ["Workspace"]
  GETTABLEKS R13 R14 K18 ["Packages"]
  GETTABLEKS R12 R13 K19 ["AppCommonLib"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K20 ["Create"]
  GETIMPORT R11 K1 [game]
  LOADK R13 K21 ["GameplayPausePausesInteraction"]
  LOADB R14 0
  NAMECALL R11 R11 K22 ["DefineFastFlag"]
  CALL R11 3 1
  LOADB R12 1
  GETTABLEKS R13 R9 K23 ["new"]
  CALL R13 0 1
  MOVE R14 R11
  JUMPIFNOT R14 [+23]
  MOVE R14 R10
  LOADK R15 K24 ["Frame"]
  CALL R14 1 1
  DUPTABLE R15 K29 [{"Name", "Size", "BackgroundTransparency", "Active"}]
  LOADK R16 K30 ["Container"]
  SETTABLEKS R16 R15 K25 ["Name"]
  GETIMPORT R16 K32 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K26 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K27 ["BackgroundTransparency"]
  LOADB R16 0
  SETTABLEKS R16 R15 K28 ["Active"]
  CALL R14 1 1
  MOVE R15 R10
  LOADK R16 K33 ["ScreenGui"]
  CALL R15 1 1
  NEWTABLE R16 8 1
  LOADK R18 K34 ["RobloxNetworkPauseNotification"]
  SETTABLEKS R18 R16 K25 ["Name"]
  LOADB R18 1
  SETTABLEKS R18 R16 K35 ["OnTopOfCoreBlur"]
  LOADN R18 8
  SETTABLEKS R18 R16 K36 ["DisplayOrder"]
  SETTABLEKS R1 R16 K37 ["Parent"]
  SETTABLEKS R11 R16 K38 ["IgnoreGuiInset"]
  LOADB R18 0
  SETTABLEKS R18 R16 K39 ["AutoLocalize"]
  MOVE R17 R14
  SETLIST R16 R17 1 [1]
  CALL R15 1 1
  NEWCLOSURE R16 P0
  CAPTURE REF R8
  CAPTURE VAL R15
  CAPTURE REF R12
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R3
  LOADK R19 K40 ["GameplayPaused"]
  NAMECALL R17 R8 K41 ["GetPropertyChangedSignal"]
  CALL R17 2 1
  MOVE R19 R16
  NAMECALL R17 R17 K42 ["Connect"]
  CALL R17 2 0
  NEWCLOSURE R17 P1
  CAPTURE VAL R15
  CAPTURE REF R8
  CAPTURE REF R12
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R3
  JUMPIFNOT R11 [+5]
  MOVE R20 R14
  NAMECALL R18 R13 K43 ["SetParent"]
  CALL R18 2 0
  JUMP [+4]
  MOVE R20 R15
  NAMECALL R18 R13 K43 ["SetParent"]
  CALL R18 2 0
  GETTABLEKS R18 R4 K44 ["NetworkPausedEnabledChanged"]
  MOVE R20 R17
  NAMECALL R18 R18 K42 ["Connect"]
  CALL R18 2 0
  CLOSEUPVALS R8
  RETURN R0 0
