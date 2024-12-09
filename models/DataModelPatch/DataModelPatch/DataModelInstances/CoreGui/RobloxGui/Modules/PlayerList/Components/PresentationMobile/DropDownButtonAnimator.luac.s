PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateCurrentButtonPosition"]
  GETIMPORT R2 K3 [UDim2.new]
  MOVE R3 R0
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["animatingRight"]
  JUMPIFNOT R1 [+12]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["updateLastButtonPosition"]
  GETIMPORT R2 K3 [UDim2.new]
  ADDK R3 R0 K6 [1]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  CALL R2 4 -1
  CALL R1 -1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["updateLastButtonPosition"]
  GETIMPORT R2 K3 [UDim2.new]
  SUBK R3 R0 K6 [1]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  CALL R2 4 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  JUMPIFNOTEQKN R0 K0 [0] [+21]
  GETUPVAL R1 0
  DUPTABLE R3 K4 [{"lastButtonProps", "onDeclineCalled", "onActivatedCalled"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["None"]
  SETTABLEKS R4 R3 K1 ["lastButtonProps"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["None"]
  SETTABLEKS R4 R3 K2 ["onDeclineCalled"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["None"]
  SETTABLEKS R4 R3 K3 ["onActivatedCalled"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"overlayPercentage"}]
  SETTABLEKS R0 R3 K0 ["overlayPercentage"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  JUMPIFNOTEQKN R0 K0 [1] [+13]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["positionMotor"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["spring"]
  LOADN R4 0
  GETUPVAL R5 2
  CALL R3 2 -1
  NAMECALL R1 R1 K3 ["setGoal"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K4 [{"lastButtonProps", "onDeclineCalled", "onActivatedCalled", "overlayPercentage"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["lastButtonProps"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["onDeclineCalled"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["onActivatedCalled"]
  LOADN R2 0
  SETTABLEKS R2 R1 K3 ["overlayPercentage"]
  SETTABLEKS R1 R0 K5 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["createBinding"]
  GETIMPORT R2 K9 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  CALL R2 4 -1
  CALL R1 -1 2
  SETTABLEKS R1 R0 K10 ["currentButtonPosition"]
  SETTABLEKS R2 R0 K11 ["updateCurrentButtonPosition"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["createBinding"]
  GETIMPORT R2 K9 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  CALL R2 4 -1
  CALL R1 -1 2
  SETTABLEKS R1 R0 K12 ["lastButtonPosition"]
  SETTABLEKS R2 R0 K13 ["updateLastButtonPosition"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K14 ["createSingleMotor"]
  LOADN R2 0
  CALL R1 1 1
  SETTABLEKS R1 R0 K15 ["positionMotor"]
  GETTABLEKS R1 R0 K15 ["positionMotor"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K16 ["onStep"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K15 ["positionMotor"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K17 ["onComplete"]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K14 ["createSingleMotor"]
  LOADN R2 0
  CALL R1 1 1
  SETTABLEKS R1 R0 K18 ["overlayMotor"]
  GETTABLEKS R1 R0 K18 ["overlayMotor"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  NAMECALL R1 R1 K16 ["onStep"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K18 ["overlayMotor"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K17 ["onComplete"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"onActivatedCalled", "onDeclineCalled"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["onActivatedCalled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["onDeclineCalled"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K4 ["onActivated"]
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"onActivatedCalled", "onDeclineCalled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["onActivatedCalled"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["onDeclineCalled"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K4 ["onDecline"]
  CALL R0 0 0
  RETURN R0 0

PROTO_7:
  NEWTABLE R3 16 0
  GETTABLEKS R4 R1 K0 ["text"]
  SETTABLEKS R4 R3 K0 ["text"]
  GETTABLEKS R4 R1 K1 ["icon"]
  SETTABLEKS R4 R3 K1 ["icon"]
  GETTABLEKS R4 R1 K2 ["lastButton"]
  SETTABLEKS R4 R3 K2 ["lastButton"]
  GETTABLEKS R4 R1 K3 ["forceShowOptions"]
  SETTABLEKS R4 R3 K3 ["forceShowOptions"]
  GETTABLEKS R4 R1 K4 ["onDismiss"]
  SETTABLEKS R4 R3 K4 ["onDismiss"]
  GETTABLEKS R6 R0 K5 ["state"]
  GETTABLEKS R5 R6 K6 ["lastButtonProps"]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+20]
  JUMPIFNOT R2 [+51]
  GETTABLEKS R6 R0 K5 ["state"]
  GETTABLEKS R5 R6 K7 ["onActivatedCalled"]
  SETTABLEKS R5 R3 K8 ["animatingAccept"]
  GETTABLEKS R6 R0 K5 ["state"]
  GETTABLEKS R5 R6 K9 ["onDeclineCalled"]
  SETTABLEKS R5 R3 K10 ["animatingDecline"]
  GETTABLEKS R6 R0 K5 ["state"]
  GETTABLEKS R5 R6 K11 ["overlayPercentage"]
  SETTABLEKS R5 R3 K12 ["animatingPercentage"]
  RETURN R3 1
  GETTABLEKS R5 R1 K13 ["onActivated"]
  JUMPIFNOT R5 [+14]
  GETTABLEKS R5 R1 K14 ["onDecline"]
  JUMPIF R5 [+5]
  GETTABLEKS R6 R0 K15 ["props"]
  GETTABLEKS R5 R6 K3 ["forceShowOptions"]
  JUMPIFNOT R5 [+6]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R5 R3 K13 ["onActivated"]
  JUMP [+7]
  GETTABLEKS R5 R1 K13 ["onActivated"]
  JUMPIFNOT R5 [+4]
  GETTABLEKS R5 R1 K13 ["onActivated"]
  SETTABLEKS R5 R3 K13 ["onActivated"]
  GETTABLEKS R5 R1 K14 ["onDecline"]
  JUMPIFNOT R5 [+5]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R5 R3 K14 ["onDecline"]
  RETURN R3 1

PROTO_8:
  NEWTABLE R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["Frame"]
  DUPTABLE R4 K5 [{"Size", "Position", "BackgroundTransparency"}]
  GETIMPORT R5 K8 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K2 ["Size"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["currentButtonPosition"]
  SETTABLEKS R5 R4 K3 ["Position"]
  LOADN R5 1
  SETTABLEKS R5 R4 K4 ["BackgroundTransparency"]
  DUPTABLE R5 K11 [{"DropDownButton"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 2
  GETUPVAL R8 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["props"]
  NAMECALL R8 R8 K13 ["getButtonProps"]
  CALL R8 2 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K10 ["DropDownButton"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K14 ["CurrentButtonContainer"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K15 ["state"]
  GETTABLEKS R2 R3 K16 ["lastButtonProps"]
  JUMPIFNOT R2 [+43]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["Frame"]
  DUPTABLE R4 K5 [{"Size", "Position", "BackgroundTransparency"}]
  GETIMPORT R5 K8 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K2 ["Size"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K17 ["lastButtonPosition"]
  SETTABLEKS R5 R4 K3 ["Position"]
  LOADN R5 1
  SETTABLEKS R5 R4 K4 ["BackgroundTransparency"]
  DUPTABLE R5 K11 [{"DropDownButton"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 2
  GETUPVAL R8 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K15 ["state"]
  GETTABLEKS R10 R11 K16 ["lastButtonProps"]
  LOADB R11 1
  NAMECALL R8 R8 K13 ["getButtonProps"]
  CALL R8 3 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K10 ["DropDownButton"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K18 ["LastButtonContainer"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["Frame"]
  DUPTABLE R4 K22 [{"Visible", "ZIndex", "Size", "BackgroundTransparency", "LayoutOrder"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K12 ["props"]
  GETTABLEKS R5 R6 K23 ["contentVisible"]
  SETTABLEKS R5 R4 K19 ["Visible"]
  LOADN R5 2
  SETTABLEKS R5 R4 K20 ["ZIndex"]
  GETIMPORT R5 K8 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  GETTABLEKS R9 R0 K24 ["DropDownButtonSizeY"]
  CALL R5 4 1
  SETTABLEKS R5 R4 K2 ["Size"]
  LOADN R5 1
  SETTABLEKS R5 R4 K4 ["BackgroundTransparency"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K12 ["props"]
  GETTABLEKS R5 R6 K25 ["layoutOrder"]
  SETTABLEKS R5 R4 K21 ["LayoutOrder"]
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CALL R1 1 -1
  RETURN R1 -1

PROTO_10:
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["text"]
  GETTABLEKS R5 R1 K1 ["text"]
  JUMPIFNOTEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADB R4 1
  GETTABLEKS R5 R1 K2 ["onDecline"]
  JUMPIFNOTEQKNIL R5 [+5]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["forceShowOptions"]
  GETTABLEKS R6 R0 K4 ["state"]
  GETTABLEKS R5 R6 K5 ["onDeclineCalled"]
  JUMPIF R5 [+4]
  GETTABLEKS R6 R0 K4 ["state"]
  GETTABLEKS R5 R6 K6 ["onActivatedCalled"]
  JUMPIFNOT R3 [+78]
  JUMPIFNOT R4 [+77]
  JUMPIFNOT R5 [+76]
  GETTABLEKS R7 R0 K4 ["state"]
  GETTABLEKS R6 R7 K6 ["onActivatedCalled"]
  JUMPIFNOT R6 [+19]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K3 ["forceShowOptions"]
  JUMPIF R6 [+14]
  LOADB R6 1
  SETTABLEKS R6 R0 K7 ["animatingRight"]
  GETTABLEKS R6 R0 K8 ["positionMotor"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["instant"]
  LOADN R9 255
  CALL R8 1 -1
  NAMECALL R6 R6 K10 ["setGoal"]
  CALL R6 -1 0
  JUMP [+13]
  LOADB R6 0
  SETTABLEKS R6 R0 K7 ["animatingRight"]
  GETTABLEKS R6 R0 K8 ["positionMotor"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["instant"]
  LOADN R9 1
  CALL R8 1 -1
  NAMECALL R6 R6 K10 ["setGoal"]
  CALL R6 -1 0
  GETTABLEKS R6 R0 K11 ["overlayMotor"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["instant"]
  LOADN R9 0
  CALL R8 1 -1
  NAMECALL R6 R6 K10 ["setGoal"]
  CALL R6 -1 0
  GETTABLEKS R6 R0 K8 ["positionMotor"]
  LOADN R8 0
  NAMECALL R6 R6 K12 ["step"]
  CALL R6 2 0
  GETTABLEKS R6 R0 K11 ["overlayMotor"]
  LOADN R8 0
  NAMECALL R6 R6 K12 ["step"]
  CALL R6 2 0
  DUPTABLE R8 K14 [{"lastButtonProps"}]
  SETTABLEKS R1 R8 K13 ["lastButtonProps"]
  NAMECALL R6 R0 K15 ["setState"]
  CALL R6 2 0
  GETTABLEKS R6 R0 K11 ["overlayMotor"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K16 ["spring"]
  LOADN R9 1
  GETUPVAL R10 1
  CALL R8 2 -1
  NAMECALL R6 R6 K10 ["setGoal"]
  CALL R6 -1 0
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K17 ["selectedPlayer"]
  GETTABLEKS R7 R1 K17 ["selectedPlayer"]
  JUMPIFEQ R6 R7 [+42]
  GETTABLEKS R6 R0 K8 ["positionMotor"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["instant"]
  LOADN R9 0
  CALL R8 1 -1
  NAMECALL R6 R6 K10 ["setGoal"]
  CALL R6 -1 0
  GETTABLEKS R6 R0 K11 ["overlayMotor"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["instant"]
  LOADN R9 0
  CALL R8 1 -1
  NAMECALL R6 R6 K10 ["setGoal"]
  CALL R6 -1 0
  GETTABLEKS R6 R0 K8 ["positionMotor"]
  LOADN R8 0
  NAMECALL R6 R6 K12 ["step"]
  CALL R6 2 0
  GETTABLEKS R6 R0 K11 ["overlayMotor"]
  LOADN R8 0
  NAMECALL R6 R6 K12 ["step"]
  CALL R6 2 0
  DUPTABLE R8 K14 [{"lastButtonProps"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K18 ["None"]
  SETTABLEKS R9 R8 K13 ["lastButtonProps"]
  NAMECALL R6 R0 K15 ["setState"]
  CALL R6 2 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["positionMotor"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["positionMotor"]
  GETTABLEKS R1 R0 K2 ["overlayMotor"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["overlayMotor"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["t"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Otter"]
  CALL R3 1 1
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Parent"]
  GETTABLEKS R5 R4 K13 ["Connection"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K14 ["LayoutValues"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K15 ["WithLayoutValues"]
  GETIMPORT R8 K5 [require]
  GETIMPORT R11 K11 [script]
  GETTABLEKS R10 R11 K12 ["Parent"]
  GETTABLEKS R9 R10 K16 ["DropDownButton"]
  CALL R8 1 1
  DUPTABLE R9 K19 [{"dampingRatio", "frequency"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K17 ["dampingRatio"]
  LOADN R10 4
  SETTABLEKS R10 R9 K18 ["frequency"]
  DUPTABLE R10 K19 [{"dampingRatio", "frequency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K17 ["dampingRatio"]
  LOADN R11 4
  SETTABLEKS R11 R10 K18 ["frequency"]
  GETTABLEKS R11 R1 K20 ["PureComponent"]
  LOADK R13 K21 ["DropDownAnimator"]
  NAMECALL R11 R11 K22 ["extend"]
  CALL R11 2 1
  GETTABLEKS R12 R2 K23 ["strictInterface"]
  DUPTABLE R13 K34 [{"text", "icon", "lastButton", "layoutOrder", "onActivated", "forceShowOptions", "selectedPlayer", "onDecline", "onDismiss", "contentVisible"}]
  GETTABLEKS R14 R2 K35 ["string"]
  SETTABLEKS R14 R13 K24 ["text"]
  GETTABLEKS R14 R2 K36 ["union"]
  GETTABLEKS R15 R2 K35 ["string"]
  GETTABLEKS R16 R2 K37 ["table"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["icon"]
  GETTABLEKS R14 R2 K38 ["boolean"]
  SETTABLEKS R14 R13 K26 ["lastButton"]
  GETTABLEKS R14 R2 K39 ["integer"]
  SETTABLEKS R14 R13 K27 ["layoutOrder"]
  GETTABLEKS R14 R2 K40 ["callback"]
  SETTABLEKS R14 R13 K28 ["onActivated"]
  GETTABLEKS R14 R2 K38 ["boolean"]
  SETTABLEKS R14 R13 K29 ["forceShowOptions"]
  GETTABLEKS R14 R2 K41 ["optional"]
  GETTABLEKS R15 R2 K42 ["instanceIsA"]
  LOADK R16 K43 ["Player"]
  CALL R15 1 -1
  CALL R14 -1 1
  SETTABLEKS R14 R13 K30 ["selectedPlayer"]
  GETTABLEKS R14 R2 K41 ["optional"]
  GETTABLEKS R15 R2 K40 ["callback"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K31 ["onDecline"]
  GETTABLEKS R14 R2 K41 ["optional"]
  GETTABLEKS R15 R2 K40 ["callback"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K32 ["onDismiss"]
  GETTABLEKS R14 R2 K38 ["boolean"]
  SETTABLEKS R14 R13 K33 ["contentVisible"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K44 ["validateProps"]
  DUPCLOSURE R12 K45 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K46 ["init"]
  DUPCLOSURE R12 K47 [PROTO_7]
  SETTABLEKS R12 R11 K48 ["getButtonProps"]
  DUPCLOSURE R12 K49 [PROTO_9]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K50 ["render"]
  DUPCLOSURE R12 K51 [PROTO_10]
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K52 ["didUpdate"]
  DUPCLOSURE R12 K53 [PROTO_11]
  SETTABLEKS R12 R11 K54 ["willUnmount"]
  RETURN R11 1
