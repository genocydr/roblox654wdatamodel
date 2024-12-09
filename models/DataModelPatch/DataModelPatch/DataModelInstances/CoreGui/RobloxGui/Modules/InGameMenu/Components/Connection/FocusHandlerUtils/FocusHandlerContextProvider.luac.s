PROTO_0:
  DUPTABLE R1 K2 [{"candidateHandlerId", "currentHandlerId"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["candidateHandlerId"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["currentHandlerId"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K4 ["previousSelections"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["currentHandlerId"]
  JUMPIFNOTEQKNIL R1 [+6]
  DUPTABLE R1 K1 [{"currentHandlerId"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["currentHandlerId"]
  RETURN R1 1
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["currentHandlerId"]
  JUMPIFEQ R1 R2 [+6]
  DUPTABLE R1 K3 [{"candidateHandlerId"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K2 ["candidateHandlerId"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_2:
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  NAMECALL R2 R0 K0 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["currentHandlerId"]
  GETUPVAL R2 0
  JUMPIFNOTEQ R1 R2 [+37]
  LOADNIL R1
  GETUPVAL R2 1
  JUMPIF R2 [+3]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["SelectedCoreObject"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["previousSelections"]
  GETUPVAL R3 0
  SETTABLE R1 R2 R3
  LOADNIL R2
  GETTABLEKS R3 R0 K3 ["candidateHandlerId"]
  JUMPIFEQKNIL R3 [+13]
  DUPTABLE R3 K4 [{"currentHandlerId", "candidateHandlerId"}]
  GETTABLEKS R4 R0 K3 ["candidateHandlerId"]
  SETTABLEKS R4 R3 K0 ["currentHandlerId"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K5 ["None"]
  SETTABLEKS R4 R3 K3 ["candidateHandlerId"]
  MOVE R2 R3
  RETURN R2 1
  DUPTABLE R3 K6 [{"currentHandlerId"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K5 ["None"]
  SETTABLEKS R4 R3 K0 ["currentHandlerId"]
  MOVE R2 R3
  RETURN R2 1
  LOADNIL R1
  RETURN R1 1

PROTO_4:
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R3 R0 K0 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["previousSelections"]
  LOADNIL R3
  SETTABLE R3 R2 R1
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["requestFocusForHandlerId"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["forgetLastSelectionForHandlerId"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["blurCurrentFocusHandler"]
  CALL R2 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Provider"]
  DUPTABLE R3 K3 [{"value"}]
  DUPTABLE R4 K10 [{"currentHandlerId", "candidateHandlerId", "previousSelections", "requestFocusForHandlerId", "forgetLastSelectionForHandlerId", "blurCurrentFocusHandler"}]
  GETTABLEKS R6 R0 K11 ["state"]
  GETTABLEKS R5 R6 K4 ["currentHandlerId"]
  SETTABLEKS R5 R4 K4 ["currentHandlerId"]
  GETTABLEKS R6 R0 K11 ["state"]
  GETTABLEKS R5 R6 K5 ["candidateHandlerId"]
  SETTABLEKS R5 R4 K5 ["candidateHandlerId"]
  GETTABLEKS R5 R0 K6 ["previousSelections"]
  SETTABLEKS R5 R4 K6 ["previousSelections"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K7 ["requestFocusForHandlerId"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K8 ["forgetLastSelectionForHandlerId"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K9 ["blurCurrentFocusHandler"]
  SETTABLEKS R4 R3 K2 ["value"]
  GETTABLEKS R5 R0 K12 ["props"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["Children"]
  GETTABLE R4 R5 R6
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["InGameMenuDependencies"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Roact"]
  GETIMPORT R4 K6 [require]
  GETIMPORT R7 K11 [script]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETTABLEKS R5 R6 K13 ["FocusHandlerContext"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K14 ["PureComponent"]
  LOADK R7 K15 ["FocusHandlerContextProvider"]
  NAMECALL R5 R5 K16 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K17 [PROTO_0]
  SETTABLEKS R6 R5 K18 ["init"]
  DUPCLOSURE R6 K19 [PROTO_2]
  SETTABLEKS R6 R5 K20 ["requestFocusForHandlerId"]
  DUPCLOSURE R6 K21 [PROTO_4]
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K22 ["blurCurrentFocusHandler"]
  DUPCLOSURE R6 K23 [PROTO_5]
  SETTABLEKS R6 R5 K24 ["forgetLastSelectionForHandlerId"]
  DUPCLOSURE R6 K25 [PROTO_9]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K26 ["render"]
  RETURN R5 1
