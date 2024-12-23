PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 1
  RETURN R0 1
  LOADB R0 0
  RETURN R0 1

PROTO_1:
  JUMPIFNOT R0 [+10]
  GETTABLE R3 R0 R1
  JUMPIFNOT R3 [+8]
  GETTABLE R3 R0 R1
  MOVE R5 R2
  NAMECALL R3 R3 K0 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  GETTABLE R3 R0 R1
  RETURN R3 1
  LOADNIL R3
  RETURN R3 1

PROTO_2:
  PREPVARARGS 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ChatWindow"]
  JUMPIFNOT R2 [+10]
  GETTABLE R3 R2 R0
  JUMPIFNOT R3 [+8]
  GETTABLE R3 R2 R0
  LOADK R5 K1 ["BindableEvent"]
  NAMECALL R3 R3 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  GETTABLE R1 R2 R0
  JUMP [+1]
  LOADNIL R1
  JUMPIFNOT R1 [+6]
  GETVARARGS R4 -1
  NAMECALL R2 R1 K3 ["Fire"]
  CALL R2 -1 0
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_3:
  PREPVARARGS 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ChatWindow"]
  JUMPIFNOT R2 [+10]
  GETTABLE R3 R2 R0
  JUMPIFNOT R3 [+8]
  GETTABLE R3 R2 R0
  LOADK R5 K1 ["BindableFunction"]
  NAMECALL R3 R3 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  GETTABLE R1 R2 R0
  JUMP [+1]
  LOADNIL R1
  JUMPIFNOT R1 [+5]
  LOADB R2 1
  NAMECALL R3 R1 K3 ["Invoke"]
  CALL R3 1 -1
  RETURN R2 -1
  LOADB R2 0
  LOADNIL R3
  RETURN R2 2

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["GetCore"]
  GETUPVAL R3 1
  JUMPIFNOT R2 [+10]
  GETTABLE R4 R2 R3
  JUMPIFNOT R4 [+8]
  GETTABLE R4 R2 R3
  LOADK R6 K1 ["BindableFunction"]
  NAMECALL R4 R4 K2 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+2]
  GETTABLE R1 R2 R3
  JUMP [+1]
  LOADNIL R1
  LOADNIL R2
  JUMPIFNOT R1 [+5]
  MOVE R5 R0
  NAMECALL R3 R1 K3 ["Invoke"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["RegisterGetCore"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Visible"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["Visible"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+2]
  GETUPVAL R1 2
  JUMP [+1]
  LOADB R1 0
  JUMPIF R1 [+13]
  GETUPVAL R1 3
  LOADK R2 K1 ["ToggleVisibility"]
  CALL R1 1 1
  JUMPIF R1 [+9]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["VisibilityStateChanged"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Visible"]
  NAMECALL R2 R2 K3 ["fire"]
  CALL R2 2 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K4 ["ChromeVisibilityStateChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Visible"]
  NAMECALL R1 R1 K3 ["fire"]
  CALL R1 2 0
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K5 ["Events"]
  GETTABLEKS R1 R2 K6 ["ChatTopBarButtonActivated"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Visible"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K0 ["Visible"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+9]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["ChromeVisibilityStateChanged"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Visible"]
  NAMECALL R2 R2 K2 ["fire"]
  CALL R2 2 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["Events"]
  GETTABLEKS R2 R3 K4 ["ChatTopBarButtonActivated"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Visible"]
  CALL R2 1 0
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+2]
  GETUPVAL R2 4
  JUMP [+1]
  LOADB R2 0
  JUMPIFNOT R2 [+5]
  GETUPVAL R2 5
  LOADK R3 K5 ["SetVisible"]
  LOADB R4 0
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R2 5
  LOADK R3 K5 ["SetVisible"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Visible"]
  CALL R2 2 1
  JUMPIF R2 [+9]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["VisibilityStateChanged"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["Visible"]
  NAMECALL R3 R3 K2 ["fire"]
  CALL R3 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  LOADK R2 K0 ["FocusChatBar"]
  CALL R1 1 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["Events"]
  GETTABLEKS R1 R2 K2 ["ChatTopBarFocusActivated"]
  CALL R1 0 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  LOADK R3 K0 ["EnterWhisperState"]
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R1 0
  LOADK R2 K0 ["GetVisibility"]
  CALL R1 1 2
  JUMPIFNOT R1 [+1]
  RETURN R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Visible"]
  RETURN R3 1

PROTO_11:
  GETUPVAL R1 0
  LOADK R2 K0 ["GetMessageCount"]
  CALL R1 1 2
  JUMPIFNOT R1 [+1]
  RETURN R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["MessageCount"]
  RETURN R3 1

PROTO_12:
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K0 ["TopbarEnabled"]
  GETUPVAL R2 1
  LOADK R3 K1 ["TopbarEnabledChanged"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["TopbarEnabled"]
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  LOADK R3 K0 ["IsFocused"]
  MOVE R4 R1
  CALL R2 2 2
  JUMPIFNOT R2 [+1]
  RETURN R3 1
  LOADB R4 0
  RETURN R4 1

PROTO_14:
  GETUPVAL R1 0
  RETURN R1 1

PROTO_15:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+2]
  GETUPVAL R2 1
  NOT R1 R2
  RETURN R1 1

PROTO_16:
  GETUPVAL R2 0
  JUMPIF R2 [+1]
  GETUPVAL R2 1
  NOT R1 R2
  RETURN R1 1

PROTO_17:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R1 1
  SETUPVAL R1 0
  GETTABLEKS R1 R0 K0 ["BubbleChatEnabled"]
  GETTABLEKS R2 R0 K1 ["ClassicChatEnabled"]
  FASTCALL1 TYPE R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K3 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K4 ["boolean"] [+2]
  SETUPVAL R1 1
  FASTCALL1 TYPE R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K3 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K4 ["boolean"] [+2]
  SETUPVAL R2 2
  GETUPVAL R3 2
  JUMPIF R3 [+8]
  GETUPVAL R3 1
  JUMPIF R3 [+6]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["ChatDisabled"]
  NAMECALL R3 R3 K6 ["fire"]
  CALL R3 1 0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+8]
  GETUPVAL R3 2
  JUMPIF R3 [+6]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K7 ["BubbleChatOnlySet"]
  NAMECALL R3 R3 K6 ["fire"]
  CALL R3 1 0
  RETURN R0 0

PROTO_18:
  GETIMPORT R2 K3 [Enum.CoreGuiType.All]
  JUMPIFEQ R0 R2 [+5]
  GETIMPORT R2 K5 [Enum.CoreGuiType.Chat]
  JUMPIFNOTEQ R0 R2 [+10]
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K6 ["CoreGuiEnabled"]
  GETUPVAL R2 1
  LOADK R3 K6 ["CoreGuiEnabled"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["CoreGuiEnabled"]
  CALL R2 2 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["MenuIsOpen"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+2]
  GETUPVAL R2 2
  JUMP [+1]
  LOADB R2 0
  JUMPIF R2 [+5]
  GETUPVAL R2 3
  LOADK R3 K1 ["SpecialKeyPressed"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["SetCore"]
  GETUPVAL R3 1
  JUMPIFNOT R2 [+10]
  GETTABLE R4 R2 R3
  JUMPIFNOT R4 [+8]
  GETTABLE R4 R2 R3
  LOADK R6 K1 ["BindableEvent"]
  NAMECALL R4 R4 K2 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+2]
  GETTABLE R1 R2 R3
  JUMP [+1]
  LOADNIL R1
  JUMPIFNOT R1 [+5]
  MOVE R4 R0
  NAMECALL R2 R1 K3 ["Fire"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R3 2
  GETUPVAL R4 1
  GETTABLE R2 R3 R4
  JUMPIFNOTEQKNIL R2 [+6]
  GETUPVAL R2 2
  GETUPVAL R3 1
  NEWTABLE R4 0 0
  SETTABLE R4 R2 R3
  GETUPVAL R4 2
  GETUPVAL R5 1
  GETTABLE R3 R4 R5
  FASTCALL2 TABLE_INSERT R3 R0 [+4]
  MOVE R4 R0
  GETIMPORT R2 K6 [table.insert]
  CALL R2 2 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K0 ["RegisterSetCore"]
  CALL R1 3 0
  RETURN R0 0

PROTO_22:
  PREPVARARGS 0
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["fire"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ChatWindow"]
  GETUPVAL R3 1
  JUMPIFNOT R3 [+10]
  GETTABLE R4 R3 R0
  JUMPIFNOT R4 [+8]
  GETTABLE R4 R3 R0
  LOADK R6 K1 ["BindableEvent"]
  NAMECALL R4 R4 K2 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+2]
  GETTABLE R2 R3 R0
  JUMP [+1]
  LOADNIL R2
  SETTABLE R2 R1 R0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ChatWindow"]
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+19]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ChatWindow"]
  GETTABLE R2 R3 R0
  GETTABLEKS R1 R2 K3 ["Event"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  NAMECALL R1 R1 K4 ["connect"]
  CALL R1 2 1
  GETUPVAL R3 3
  FASTCALL2 TABLE_INSERT R3 R1 [+4]
  MOVE R4 R1
  GETIMPORT R2 K7 [table.insert]
  CALL R2 2 0
  RETURN R0 0

PROTO_24:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  MOVE R3 R0
  NAMECALL R1 R1 K4 ["Chat"]
  CALL R1 2 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+10]
  GETTABLE R3 R2 R0
  JUMPIFNOT R3 [+8]
  GETTABLE R3 R2 R0
  LOADK R5 K0 ["BindableEvent"]
  NAMECALL R3 R3 K1 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  GETTABLE R1 R2 R0
  JUMP [+1]
  LOADNIL R1
  JUMPIFNOT R1 [+22]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["SetCore"]
  SETTABLE R1 R2 R0
  GETUPVAL R3 2
  GETTABLE R2 R3 R0
  JUMPIFNOT R2 [+15]
  GETIMPORT R2 K4 [pairs]
  GETUPVAL R5 2
  GETTABLE R3 R5 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  MOVE R9 R6
  NAMECALL R7 R1 K5 ["Fire"]
  CALL R7 2 0
  FORGLOOP R2 2 [-5]
  GETUPVAL R2 2
  LOADNIL R3
  SETTABLE R3 R2 R0
  RETURN R0 0

PROTO_26:
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["table"] [+408]
  GETTABLEKS R1 R0 K3 ["ChatWindow"]
  GETTABLEKS R2 R0 K4 ["SetCore"]
  GETTABLEKS R3 R0 K5 ["GetCore"]
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K2 ["table"] [+272]
  GETIMPORT R4 K7 [pairs]
  GETUPVAL R5 0
  CALL R4 1 3
  FORGPREP_NEXT R4
  NAMECALL R9 R8 K8 ["disconnect"]
  CALL R9 1 0
  FORGLOOP R4 2 [-4]
  GETTABLEKS R5 R1 K9 ["ChatTypes"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K2 ["table"] [+6]
  GETGLOBAL R4 K10 ["SetInitialChatTypes"]
  GETTABLEKS R5 R1 K9 ["ChatTypes"]
  CALL R4 1 0
  NEWTABLE R4 0 0
  SETUPVAL R4 0
  GETUPVAL R4 1
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K3 ["ChatWindow"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["ChatWindow"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R6 R1 K11 ["ToggleVisibility"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R1 K11 ["ToggleVisibility"]
  LOADK R8 K12 ["BindableEvent"]
  NAMECALL R6 R6 K13 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K11 ["ToggleVisibility"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K11 ["ToggleVisibility"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["ChatWindow"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R6 R1 K14 ["SetVisible"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R1 K14 ["SetVisible"]
  LOADK R8 K12 ["BindableEvent"]
  NAMECALL R6 R6 K13 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K14 ["SetVisible"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K14 ["SetVisible"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["ChatWindow"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R6 R1 K15 ["FocusChatBar"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R1 K15 ["FocusChatBar"]
  LOADK R8 K12 ["BindableEvent"]
  NAMECALL R6 R6 K13 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K15 ["FocusChatBar"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K15 ["FocusChatBar"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["ChatWindow"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R6 R1 K16 ["EnterWhisperState"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R1 K16 ["EnterWhisperState"]
  LOADK R8 K12 ["BindableEvent"]
  NAMECALL R6 R6 K13 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K16 ["EnterWhisperState"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K16 ["EnterWhisperState"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["ChatWindow"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R6 R1 K17 ["TopbarEnabledChanged"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R1 K17 ["TopbarEnabledChanged"]
  LOADK R8 K12 ["BindableEvent"]
  NAMECALL R6 R6 K13 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K17 ["TopbarEnabledChanged"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K17 ["TopbarEnabledChanged"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["ChatWindow"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R6 R1 K18 ["IsFocused"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R1 K18 ["IsFocused"]
  LOADK R8 K19 ["BindableFunction"]
  NAMECALL R6 R6 K13 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K18 ["IsFocused"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K18 ["IsFocused"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["ChatWindow"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R6 R1 K20 ["SpecialKeyPressed"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R1 K20 ["SpecialKeyPressed"]
  LOADK R8 K12 ["BindableEvent"]
  NAMECALL R6 R6 K13 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K20 ["SpecialKeyPressed"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K20 ["SpecialKeyPressed"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U0
  MOVE R5 R4
  LOADK R6 K21 ["ChatBarFocusChanged"]
  CALL R5 1 0
  MOVE R5 R4
  LOADK R6 K22 ["VisibilityStateChanged"]
  CALL R5 1 0
  MOVE R5 R4
  LOADK R6 K23 ["MessagesChanged"]
  CALL R5 1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["ChatWindow"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R7 R1 K24 ["MessagePosted"]
  JUMPIFNOT R7 [+10]
  GETTABLEKS R7 R1 K24 ["MessagePosted"]
  LOADK R9 K12 ["BindableEvent"]
  NAMECALL R7 R7 K13 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R6 R1 K24 ["MessagePosted"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K24 ["MessagePosted"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["ChatWindow"]
  GETTABLEKS R5 R6 K24 ["MessagePosted"]
  JUMPIFNOT R5 [+18]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["ChatWindow"]
  GETTABLEKS R6 R7 K24 ["MessagePosted"]
  GETTABLEKS R5 R6 K25 ["Event"]
  DUPCLOSURE R7 K26 [PROTO_24]
  NAMECALL R5 R5 K27 ["connect"]
  CALL R5 2 1
  GETUPVAL R7 0
  FASTCALL2 TABLE_INSERT R7 R5 [+4]
  MOVE R8 R5
  GETIMPORT R6 K29 [table.insert]
  CALL R6 2 0
  GETUPVAL R5 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K30 ["Visible"]
  NAMECALL R5 R5 K14 ["SetVisible"]
  CALL R5 2 0
  GETUPVAL R5 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K31 ["TopbarEnabled"]
  NAMECALL R5 R5 K17 ["TopbarEnabledChanged"]
  CALL R5 2 0
  JUMPIFNOT R1 [+13]
  GETTABLEKS R6 R1 K32 ["CoreGuiEnabled"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R1 K32 ["CoreGuiEnabled"]
  LOADK R8 K12 ["BindableEvent"]
  NAMECALL R6 R6 K13 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K32 ["CoreGuiEnabled"]
  JUMP [+1]
  LOADNIL R5
  JUMPIFNOT R5 [+16]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["ChatWindow"]
  SETTABLEKS R5 R6 K32 ["CoreGuiEnabled"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K32 ["CoreGuiEnabled"]
  NAMECALL R6 R5 K33 ["Fire"]
  CALL R6 2 0
  JUMP [+4]
  GETIMPORT R4 K35 [error]
  LOADK R5 K36 ["Table 'ChatWindow' must be provided!"]
  CALL R4 1 0
  FASTCALL1 TYPE R2 [+3]
  MOVE R5 R2
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K2 ["table"] [+95]
  FASTCALL1 TYPE R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K2 ["table"] [+88]
  GETUPVAL R4 1
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K4 ["SetCore"]
  GETUPVAL R4 1
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K5 ["GetCore"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  MOVE R5 R4
  LOADK R6 K37 ["ChatMakeSystemMessage"]
  CALL R5 1 0
  MOVE R5 R4
  LOADK R6 K38 ["ChatWindowPosition"]
  CALL R5 1 0
  MOVE R5 R4
  LOADK R6 K39 ["ChatWindowSize"]
  CALL R5 1 0
  MOVE R5 R4
  LOADK R6 K40 ["ChatBarDisabled"]
  CALL R5 1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["GetCore"]
  JUMPIFNOT R3 [+13]
  GETTABLEKS R7 R3 K38 ["ChatWindowPosition"]
  JUMPIFNOT R7 [+10]
  GETTABLEKS R7 R3 K38 ["ChatWindowPosition"]
  LOADK R9 K19 ["BindableFunction"]
  NAMECALL R7 R7 K13 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R6 R3 K38 ["ChatWindowPosition"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K38 ["ChatWindowPosition"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["GetCore"]
  JUMPIFNOT R3 [+13]
  GETTABLEKS R7 R3 K39 ["ChatWindowSize"]
  JUMPIFNOT R7 [+10]
  GETTABLEKS R7 R3 K39 ["ChatWindowSize"]
  LOADK R9 K19 ["BindableFunction"]
  NAMECALL R7 R7 K13 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R6 R3 K39 ["ChatWindowSize"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K39 ["ChatWindowSize"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["GetCore"]
  JUMPIFNOT R3 [+13]
  GETTABLEKS R7 R3 K40 ["ChatBarDisabled"]
  JUMPIFNOT R7 [+10]
  GETTABLEKS R7 R3 K40 ["ChatBarDisabled"]
  LOADK R9 K19 ["BindableFunction"]
  NAMECALL R7 R7 K13 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R6 R3 K40 ["ChatBarDisabled"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K40 ["ChatBarDisabled"]
  RETURN R0 0
  FASTCALL1 TYPE R2 [+3]
  MOVE R5 R2
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K41 ["nil"] [+8]
  FASTCALL1 TYPE R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K41 ["nil"] [+5]
  GETIMPORT R4 K35 [error]
  LOADK R5 K42 ["Both 'SetCore' and 'GetCore' must be tables if provided!"]
  CALL R4 1 0
  RETURN R0 0

PROTO_27:
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K1 ["FocusChatHotKeyActivated"] [+6]
  GETUPVAL R1 0
  LOADB R3 1
  NAMECALL R1 R1 K2 ["SetVisible"]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["RobloxGui"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["StarterGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["GuiService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["Players"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["TextChatService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETTABLEKS R7 R5 K10 ["ChatVersion"]
  GETIMPORT R8 K13 [Enum.ChatVersion.LegacyChatService]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  LOADB R7 0
  GETTABLEKS R8 R4 K14 ["ClassicChat"]
  GETTABLEKS R9 R4 K15 ["BubbleChat"]
  GETIMPORT R10 K17 [require]
  GETTABLEKS R12 R1 K18 ["Modules"]
  GETTABLEKS R11 R12 K19 ["ChatUtil"]
  CALL R10 1 1
  GETIMPORT R11 K1 [game]
  LOADK R13 K20 ["CorePackages"]
  NAMECALL R11 R11 K3 ["GetService"]
  CALL R11 2 1
  GETIMPORT R12 K17 [require]
  GETTABLEKS R15 R11 K21 ["Workspace"]
  GETTABLEKS R14 R15 K22 ["Packages"]
  GETTABLEKS R13 R14 K23 ["ExpChat"]
  CALL R12 1 1
  GETIMPORT R13 K17 [require]
  GETTABLEKS R16 R11 K21 ["Workspace"]
  GETTABLEKS R15 R16 K22 ["Packages"]
  GETTABLEKS R14 R15 K24 ["SharedFlags"]
  CALL R13 1 1
  GETTABLEKS R14 R13 K25 ["GetFFlagReenableTextChatForTenFootInterfaces"]
  GETTABLEKS R15 R13 K26 ["getFFlagExpChatAlwaysRunTCS"]
  DUPCLOSURE R16 K27 [PROTO_0]
  CAPTURE VAL R15
  CAPTURE VAL R6
  NEWTABLE R17 32 0
  DUPTABLE R18 K32 [{"Visible", "MessageCount", "TopbarEnabled", "CoreGuiEnabled"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K28 ["Visible"]
  LOADN R19 0
  SETTABLEKS R19 R18 K29 ["MessageCount"]
  LOADB R19 1
  SETTABLEKS R19 R18 K30 ["TopbarEnabled"]
  LOADB R19 1
  SETTABLEKS R19 R18 K31 ["CoreGuiEnabled"]
  NEWTABLE R19 4 0
  LOADNIL R20
  SETTABLEKS R20 R19 K33 ["ChatWindow"]
  LOADNIL R20
  SETTABLEKS R20 R19 K34 ["GetCore"]
  LOADNIL R20
  SETTABLEKS R20 R19 K35 ["SetCore"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 0
  DUPCLOSURE R22 K36 [PROTO_1]
  DUPCLOSURE R23 K37 [PROTO_2]
  CAPTURE VAL R19
  DUPCLOSURE R24 K38 [PROTO_3]
  CAPTURE VAL R19
  DUPCLOSURE R25 K39 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R19
  DUPCLOSURE R26 K40 [PROTO_6]
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R23
  CAPTURE VAL R17
  CAPTURE VAL R12
  SETTABLEKS R26 R17 K41 ["ToggleVisibility"]
  DUPCLOSURE R26 K42 [PROTO_7]
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R23
  SETTABLEKS R26 R17 K43 ["SetVisible"]
  DUPCLOSURE R26 K44 [PROTO_8]
  CAPTURE VAL R23
  CAPTURE VAL R14
  CAPTURE VAL R12
  SETTABLEKS R26 R17 K45 ["FocusChatBar"]
  DUPCLOSURE R26 K46 [PROTO_9]
  CAPTURE VAL R23
  SETTABLEKS R26 R17 K47 ["EnterWhisperState"]
  DUPCLOSURE R26 K48 [PROTO_10]
  CAPTURE VAL R24
  CAPTURE VAL R18
  SETTABLEKS R26 R17 K49 ["GetVisibility"]
  DUPCLOSURE R26 K50 [PROTO_11]
  CAPTURE VAL R24
  CAPTURE VAL R18
  SETTABLEKS R26 R17 K51 ["GetMessageCount"]
  DUPCLOSURE R26 K52 [PROTO_12]
  CAPTURE VAL R18
  CAPTURE VAL R23
  SETTABLEKS R26 R17 K53 ["TopbarEnabledChanged"]
  DUPCLOSURE R26 K54 [PROTO_13]
  CAPTURE VAL R24
  SETTABLEKS R26 R17 K55 ["IsFocused"]
  NEWCLOSURE R26 P13
  CAPTURE REF R8
  SETTABLEKS R26 R17 K56 ["ClassicChatEnabled"]
  NEWCLOSURE R26 P14
  CAPTURE REF R9
  CAPTURE REF R8
  SETTABLEKS R26 R17 K57 ["IsBubbleChatOnly"]
  NEWCLOSURE R26 P15
  CAPTURE REF R9
  CAPTURE REF R8
  SETTABLEKS R26 R17 K58 ["IsDisabled"]
  NEWCLOSURE R26 P16
  CAPTURE REF R7
  CAPTURE REF R9
  CAPTURE REF R8
  CAPTURE VAL R17
  SETGLOBAL R26 K59 ["SetInitialChatTypes"]
  GETTABLEKS R26 R10 K60 ["Signal"]
  CALL R26 0 1
  SETTABLEKS R26 R17 K61 ["ChatBarFocusChanged"]
  GETTABLEKS R26 R10 K60 ["Signal"]
  CALL R26 0 1
  SETTABLEKS R26 R17 K62 ["VisibilityStateChanged"]
  MOVE R26 R15
  CALL R26 0 1
  JUMPIFNOT R26 [+5]
  GETTABLEKS R26 R10 K60 ["Signal"]
  CALL R26 0 1
  SETTABLEKS R26 R17 K63 ["ChromeVisibilityStateChanged"]
  GETTABLEKS R26 R10 K60 ["Signal"]
  CALL R26 0 1
  SETTABLEKS R26 R17 K64 ["MessagesChanged"]
  GETTABLEKS R26 R10 K60 ["Signal"]
  CALL R26 0 1
  SETTABLEKS R26 R17 K65 ["BubbleChatOnlySet"]
  GETTABLEKS R26 R10 K60 ["Signal"]
  CALL R26 0 1
  SETTABLEKS R26 R17 K66 ["ChatDisabled"]
  GETTABLEKS R26 R2 K67 ["CoreGuiChangedSignal"]
  DUPCLOSURE R28 K68 [PROTO_18]
  CAPTURE VAL R18
  CAPTURE VAL R23
  NAMECALL R26 R26 K69 ["connect"]
  CALL R26 2 0
  GETIMPORT R28 K72 [Enum.SpecialKey.ChatHotkey]
  NAMECALL R26 R3 K73 ["AddSpecialKey"]
  CALL R26 2 0
  GETTABLEKS R26 R3 K74 ["SpecialKeyPressed"]
  DUPCLOSURE R28 K75 [PROTO_19]
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R23
  NAMECALL R26 R26 K69 ["connect"]
  CALL R26 2 0
  DUPCLOSURE R26 K76 [PROTO_21]
  CAPTURE VAL R2
  CAPTURE VAL R19
  CAPTURE VAL R21
  SETGLOBAL R26 K77 ["DoConnectSetCore"]
  GETGLOBAL R26 K77 ["DoConnectSetCore"]
  LOADK R27 K78 ["ChatMakeSystemMessage"]
  CALL R26 1 0
  GETGLOBAL R26 K77 ["DoConnectSetCore"]
  LOADK R27 K79 ["ChatWindowPosition"]
  CALL R26 1 0
  GETGLOBAL R26 K77 ["DoConnectSetCore"]
  LOADK R27 K80 ["ChatWindowSize"]
  CALL R26 1 0
  GETGLOBAL R26 K77 ["DoConnectSetCore"]
  LOADK R27 K81 ["ChatBarDisabled"]
  CALL R26 1 0
  LOADK R28 K79 ["ChatWindowPosition"]
  LOADK R30 K79 ["ChatWindowPosition"]
  NEWCLOSURE R29 P20
  CAPTURE VAL R19
  CAPTURE VAL R30
  NAMECALL R26 R2 K82 ["RegisterGetCore"]
  CALL R26 3 0
  LOADK R28 K80 ["ChatWindowSize"]
  LOADK R30 K80 ["ChatWindowSize"]
  NEWCLOSURE R29 P20
  CAPTURE VAL R19
  CAPTURE VAL R30
  NAMECALL R26 R2 K82 ["RegisterGetCore"]
  CALL R26 3 0
  LOADK R28 K81 ["ChatBarDisabled"]
  LOADK R30 K81 ["ChatBarDisabled"]
  NEWCLOSURE R29 P20
  CAPTURE VAL R19
  CAPTURE VAL R30
  NAMECALL R26 R2 K82 ["RegisterGetCore"]
  CALL R26 3 0
  NEWCLOSURE R26 P21
  CAPTURE REF R20
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R21
  GETTABLEKS R27 R12 K83 ["listenToDispatch"]
  DUPCLOSURE R28 K84 [PROTO_27]
  CAPTURE VAL R17
  CALL R27 1 0
  LOADK R29 K85 ["CoreGuiChatConnections"]
  MOVE R30 R26
  NAMECALL R27 R2 K86 ["RegisterSetCore"]
  CALL R27 3 0
  CLOSEUPVALS R20
  CLOSEUPVALS R7
  RETURN R17 1
