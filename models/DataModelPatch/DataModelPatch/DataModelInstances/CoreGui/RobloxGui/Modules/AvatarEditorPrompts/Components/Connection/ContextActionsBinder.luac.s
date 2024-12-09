PROTO_0:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["actionsBound"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["MenuIsOpen"]
  JUMPIFNOT R3 [+3]
  GETIMPORT R3 K4 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETIMPORT R3 K7 [Enum.UserInputState.Begin]
  JUMPIFEQ R1 R3 [+4]
  GETIMPORT R3 K4 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["props"]
  GETTABLEKS R3 R4 K9 ["closeOpenPrompt"]
  CALL R3 0 0
  GETIMPORT R3 K11 [Enum.ContextActionResult.Sink]
  RETURN R3 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["actionsBound"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["actionsBound"]
  GETUPVAL R1 0
  LOADK R3 K1 ["CloseAvatarEditorPrompt"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  LOADB R5 0
  GETIMPORT R6 K5 [Enum.KeyCode.Escape]
  NAMECALL R1 R1 K6 ["BindCoreAction"]
  CALL R1 5 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["actionsBound"]
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["actionsBound"]
  GETUPVAL R1 0
  LOADK R3 K1 ["CloseAvatarEditorPrompt"]
  NAMECALL R1 R1 K2 ["UnbindCoreAction"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["promptOpen"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K2 ["bindActions"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  LOADNIL R1
  RETURN R1 1

PROTO_6:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["promptOpen"]
  GETTABLEKS R4 R1 K1 ["promptOpen"]
  JUMPIFEQ R3 R4 [+13]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["promptOpen"]
  JUMPIFNOT R3 [+4]
  NAMECALL R3 R0 K2 ["bindActions"]
  CALL R3 1 0
  RETURN R0 0
  NAMECALL R3 R0 K3 ["unbindActions"]
  CALL R3 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["actionsBound"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K1 ["unbindActions"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K1 [{"promptOpen"}]
  GETTABLEKS R4 R0 K2 ["promptInfo"]
  GETTABLEKS R3 R4 K3 ["promptType"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["promptOpen"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_10:
  DUPTABLE R1 K1 [{"closeOpenPrompt"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["closeOpenPrompt"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ContextActionService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["GuiService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R0 K8 ["Packages"]
  GETTABLEKS R6 R7 K11 ["t"]
  CALL R5 1 1
  GETIMPORT R7 K13 [script]
  GETTABLEKS R6 R7 K14 ["Parent"]
  GETTABLEKS R7 R6 K14 ["Parent"]
  GETTABLEKS R8 R7 K14 ["Parent"]
  GETIMPORT R9 K7 [require]
  GETTABLEKS R11 R8 K15 ["Thunks"]
  GETTABLEKS R10 R11 K16 ["CloseOpenPrompt"]
  CALL R9 1 1
  GETTABLEKS R10 R3 K17 ["PureComponent"]
  LOADK R12 K18 ["ContextActionsBinder"]
  NAMECALL R10 R10 K19 ["extend"]
  CALL R10 2 1
  GETTABLEKS R11 R5 K20 ["strictInterface"]
  DUPTABLE R12 K23 [{"promptOpen", "closeOpenPrompt"}]
  GETTABLEKS R13 R5 K24 ["boolean"]
  SETTABLEKS R13 R12 K21 ["promptOpen"]
  GETTABLEKS R13 R5 K25 ["callback"]
  SETTABLEKS R13 R12 K22 ["closeOpenPrompt"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K26 ["validateProps"]
  DUPCLOSURE R11 K27 [PROTO_0]
  SETTABLEKS R11 R10 K28 ["init"]
  DUPCLOSURE R11 K29 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K30 ["bindActions"]
  DUPCLOSURE R11 K31 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K32 ["unbindActions"]
  DUPCLOSURE R11 K33 [PROTO_4]
  SETTABLEKS R11 R10 K34 ["didMount"]
  DUPCLOSURE R11 K35 [PROTO_5]
  SETTABLEKS R11 R10 K36 ["render"]
  DUPCLOSURE R11 K37 [PROTO_6]
  SETTABLEKS R11 R10 K38 ["didUpdate"]
  DUPCLOSURE R11 K39 [PROTO_7]
  SETTABLEKS R11 R10 K40 ["willUnmount"]
  DUPCLOSURE R11 K41 [PROTO_8]
  DUPCLOSURE R12 K42 [PROTO_10]
  CAPTURE VAL R9
  GETTABLEKS R13 R4 K43 ["connect"]
  MOVE R14 R11
  MOVE R15 R12
  CALL R13 2 1
  MOVE R14 R10
  CALL R13 1 -1
  RETURN R13 -1