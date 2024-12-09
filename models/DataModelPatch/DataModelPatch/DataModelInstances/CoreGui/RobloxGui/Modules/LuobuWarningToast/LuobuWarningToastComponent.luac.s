PROTO_0:
  GETUPVAL R0 0
  NEWTABLE R2 0 1
  GETUPVAL R3 1
  SETLIST R2 R3 1 [1]
  NAMECALL R0 R0 K0 ["PreloadAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["icons/status/alert"]
  GETTABLEKS R0 R1 K1 ["Image"]
  GETIMPORT R1 K3 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  GETUPVAL R1 2
  DUPTABLE R3 K5 [{"isLoaded"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["isLoaded"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R0 K3 [{"iconImage", "iconColorStyle", "toastTitle"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["icons/status/alert"]
  SETTABLEKS R1 R0 K0 ["iconImage"]
  DUPTABLE R1 K7 [{"Color", "Transparency"}]
  GETIMPORT R2 K10 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K5 ["Color"]
  LOADN R2 0
  SETTABLEKS R2 R1 K6 ["Transparency"]
  SETTABLEKS R1 R0 K1 ["iconColorStyle"]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K2 ["toastTitle"]
  RETURN R0 1

PROTO_3:
  DUPTABLE R1 K1 [{"isLoaded"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isLoaded"]
  SETTABLEKS R1 R0 K2 ["state"]
  GETIMPORT R1 K5 [task.spawn]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  DUPCLOSURE R1 K6 [PROTO_2]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K7 ["getToastContent"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["isLoaded"]
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createElement"]
  LOADK R2 K3 ["ScreenGui"]
  DUPTABLE R3 K9 [{"AutoLocalize", "DisplayOrder", "IgnoreGuiInset", "OnTopOfCoreBlur", "ZIndexBehavior"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["AutoLocalize"]
  LOADN R4 9
  SETTABLEKS R4 R3 K5 ["DisplayOrder"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["IgnoreGuiInset"]
  LOADB R4 1
  SETTABLEKS R4 R3 K7 ["OnTopOfCoreBlur"]
  GETIMPORT R4 K12 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R4 R3 K8 ["ZIndexBehavior"]
  DUPTABLE R4 K14 [{"Content"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["createElement"]
  LOADK R6 K15 ["Frame"]
  DUPTABLE R7 K18 [{"BackgroundTransparency", "Size"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K16 ["BackgroundTransparency"]
  GETIMPORT R8 K21 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K17 ["Size"]
  DUPTABLE R8 K23 [{"WarningToast"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K27 [{"duration", "show", "toastContent"}]
  LOADN R12 5
  SETTABLEKS R12 R11 K24 ["duration"]
  LOADB R12 1
  SETTABLEKS R12 R11 K25 ["show"]
  GETTABLEKS R12 R0 K28 ["getToastContent"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K26 ["toastContent"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K22 ["WarningToast"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K13 ["Content"]
  CALL R1 3 1
  GETUPVAL R2 2
  DUPTABLE R3 K30 [{"RobloxCaptureNotificationGui"}]
  SETTABLEKS R1 R3 K29 ["RobloxCaptureNotificationGui"]
  CALL R2 1 -1
  RETURN R2 -1

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
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETTABLEKS R6 R3 K10 ["App"]
  GETTABLEKS R5 R6 K11 ["ImageSet"]
  GETTABLEKS R4 R5 K12 ["Images"]
  GETTABLEKS R7 R3 K10 ["App"]
  GETTABLEKS R6 R7 K13 ["Dialog"]
  GETTABLEKS R5 R6 K14 ["Toast"]
  LOADK R8 K15 ["RobloxGui"]
  NAMECALL R6 R1 K16 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R6 K17 ["Modules"]
  GETTABLEKS R8 R9 K18 ["RobloxTranslator"]
  CALL R7 1 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K19 ["ContentProvider"]
  NAMECALL R8 R8 K3 ["GetService"]
  CALL R8 2 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R6 K17 ["Modules"]
  GETTABLEKS R11 R12 K20 ["Common"]
  GETTABLEKS R10 R11 K21 ["renderWithCoreScriptsStyleProvider"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K22 ["PureComponent"]
  LOADK R12 K23 ["LuobuWarningToastComponent"]
  NAMECALL R10 R10 K24 ["extend"]
  CALL R10 2 1
  LOADK R13 K25 ["InGame.CommonUI.Message.LuobuGameJoinWarning"]
  NAMECALL R11 R7 K26 ["FormatByKey"]
  CALL R11 2 1
  DUPCLOSURE R12 K27 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R11
  SETTABLEKS R12 R10 K28 ["init"]
  DUPCLOSURE R12 K29 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R12 R10 K30 ["render"]
  RETURN R10 1
