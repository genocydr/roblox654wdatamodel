PROTO_0:
  GETTABLEKS R1 R0 K0 ["AbsoluteSize"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["middleContentRef"]
  NAMECALL R2 R2 K2 ["getValue"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["middleContentRef"]
  NAMECALL R4 R4 K2 ["getValue"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K3 ["Y"]
  GETTABLEKS R4 R1 K3 ["Y"]
  SUB R3 R4 R2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["props"]
  GETTABLEKS R7 R8 K6 ["screenSize"]
  GETTABLEKS R6 R7 K3 ["Y"]
  SUBK R5 R6 K4 [60]
  SUB R4 R5 R3
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["middleContentRef"]
  NAMECALL R8 R8 K2 ["getValue"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K0 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K8 ["X"]
  SUBK R5 R6 K7 [20]
  JUMPIFNOTLT R5 R4 [+2]
  MOVE R4 R5
  JUMPIFEQ R2 R4 [+12]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["updateContentSize"]
  GETIMPORT R7 K12 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  MOVE R11 R4
  CALL R7 4 -1
  CALL R6 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"getConformedDescriptionFailed"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["getConformedDescriptionFailed"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K3 ["getConformedHumanoidDescription"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["mounted"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["middleContentRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createBinding"]
  GETIMPORT R2 K6 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADN R5 0
  LOADN R6 200
  CALL R2 4 -1
  CALL R1 -1 2
  SETTABLEKS R1 R0 K7 ["contentSize"]
  SETTABLEKS R2 R0 K8 ["updateContentSize"]
  DUPTABLE R3 K11 [{"conformedHumanoidDescription", "getConformedDescriptionFailed"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["conformedHumanoidDescription"]
  LOADB R4 0
  SETTABLEKS R4 R3 K10 ["getConformedDescriptionFailed"]
  NAMECALL R1 R0 K12 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onAlertSizeChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["retryLoadDescription"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["conformedHumanoidDescription"]
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K2 ["getConformedDescriptionFailed"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  LOADK R4 K4 ["Frame"]
  NEWTABLE R5 4 0
  LOADN R6 1
  SETTABLEKS R6 R5 K5 ["BackgroundTransparency"]
  GETTABLEKS R6 R0 K6 ["contentSize"]
  SETTABLEKS R6 R5 K7 ["Size"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["Ref"]
  GETTABLEKS R7 R0 K9 ["middleContentRef"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K11 [{"HumanoidViewport"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K16 [{"humanoidDescription", "loadingFailed", "retryLoadDescription", "rigType"}]
  SETTABLEKS R1 R9 K12 ["humanoidDescription"]
  SETTABLEKS R2 R9 K13 ["loadingFailed"]
  GETTABLEKS R10 R0 K14 ["retryLoadDescription"]
  SETTABLEKS R10 R9 K14 ["retryLoadDescription"]
  GETTABLEKS R11 R0 K17 ["props"]
  GETTABLEKS R10 R11 K15 ["rigType"]
  SETTABLEKS R10 R9 K15 ["rigType"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K10 ["HumanoidViewport"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["renderAlertMiddleContent"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"title", "bodyText", "buttonStackInfo", "position", "screenSize", "middleContent", "onAbsoluteSizeChanged", "isMiddleContentFocusable"}]
  GETTABLEKS R5 R0 K10 ["props"]
  GETTABLEKS R4 R5 K1 ["title"]
  SETTABLEKS R4 R3 K1 ["title"]
  GETTABLEKS R5 R0 K10 ["props"]
  GETTABLEKS R4 R5 K2 ["bodyText"]
  SETTABLEKS R4 R3 K2 ["bodyText"]
  GETTABLEKS R5 R0 K10 ["props"]
  GETTABLEKS R4 R5 K3 ["buttonStackInfo"]
  SETTABLEKS R4 R3 K3 ["buttonStackInfo"]
  GETIMPORT R4 K13 [UDim2.fromScale]
  LOADK R5 K14 [0.5]
  LOADK R6 K14 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["position"]
  GETTABLEKS R5 R0 K10 ["props"]
  GETTABLEKS R4 R5 K5 ["screenSize"]
  SETTABLEKS R4 R3 K5 ["screenSize"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K6 ["middleContent"]
  GETTABLEKS R4 R0 K15 ["onAlertSizeChanged"]
  SETTABLEKS R4 R3 K7 ["onAbsoluteSizeChanged"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["isMiddleContentFocusable"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["mounted"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"conformedHumanoidDescription"}]
  SETTABLEKS R0 R3 K1 ["conformedHumanoidDescription"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["mounted"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"getConformedDescriptionFailed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["getConformedDescriptionFailed"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  MOVE R3 R1
  LOADB R4 1
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K0 ["andThen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_9:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["mounted"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["humanoidDescription"]
  NAMECALL R1 R0 K3 ["getConformedHumanoidDescription"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R3 R1 K0 ["humanoidDescription"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K0 ["humanoidDescription"]
  JUMPIFEQ R3 R4 [+20]
  DUPTABLE R5 K4 [{"conformedHumanoidDescription", "getConformedDescriptionFailed"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["None"]
  SETTABLEKS R6 R5 K2 ["conformedHumanoidDescription"]
  LOADB R6 0
  SETTABLEKS R6 R5 K3 ["getConformedDescriptionFailed"]
  NAMECALL R3 R0 K6 ["setState"]
  CALL R3 2 0
  GETTABLEKS R6 R0 K1 ["props"]
  GETTABLEKS R5 R6 K0 ["humanoidDescription"]
  NAMECALL R3 R0 K7 ["getConformedHumanoidDescription"]
  CALL R3 2 0
  RETURN R0 0

PROTO_11:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["mounted"]
  RETURN R0 0

PROTO_12:
  DUPTABLE R1 K1 [{"screenSize"}]
  GETTABLEKS R2 R0 K0 ["screenSize"]
  SETTABLEKS R2 R1 K0 ["screenSize"]
  RETURN R1 1

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
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["t"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["UIBlox"]
  CALL R4 1 1
  GETTABLEKS R8 R4 K11 ["App"]
  GETTABLEKS R7 R8 K12 ["Dialog"]
  GETTABLEKS R6 R7 K13 ["Alert"]
  GETTABLEKS R5 R6 K14 ["InteractiveAlert"]
  GETIMPORT R8 K16 [script]
  GETTABLEKS R7 R8 K17 ["Parent"]
  GETTABLEKS R6 R7 K17 ["Parent"]
  GETTABLEKS R7 R6 K17 ["Parent"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K18 ["HumanoidViewport"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K19 ["GetConformedHumanoidDescription"]
  CALL R9 1 1
  GETTABLEKS R10 R1 K20 ["PureComponent"]
  LOADK R12 K21 ["PromptWithAvatarViewport"]
  NAMECALL R10 R10 K22 ["extend"]
  CALL R10 2 1
  GETTABLEKS R11 R3 K23 ["strictInterface"]
  DUPTABLE R12 K30 [{"humanoidDescription", "rigType", "title", "bodyText", "buttonStackInfo", "screenSize"}]
  GETTABLEKS R13 R3 K31 ["instanceOf"]
  LOADK R14 K32 ["HumanoidDescription"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K24 ["humanoidDescription"]
  GETTABLEKS R13 R3 K33 ["enum"]
  GETIMPORT R14 K36 [Enum.HumanoidRigType]
  CALL R13 1 1
  SETTABLEKS R13 R12 K25 ["rigType"]
  GETTABLEKS R13 R3 K37 ["string"]
  SETTABLEKS R13 R12 K26 ["title"]
  GETTABLEKS R13 R3 K38 ["optional"]
  GETTABLEKS R14 R3 K37 ["string"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K27 ["bodyText"]
  GETTABLEKS R13 R3 K39 ["table"]
  SETTABLEKS R13 R12 K28 ["buttonStackInfo"]
  GETTABLEKS R13 R3 K40 ["Vector2"]
  SETTABLEKS R13 R12 K29 ["screenSize"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K41 ["validateProps"]
  DUPCLOSURE R11 K42 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K43 ["init"]
  DUPCLOSURE R11 K44 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K45 ["renderAlertMiddleContent"]
  DUPCLOSURE R11 K46 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K47 ["render"]
  DUPCLOSURE R11 K48 [PROTO_8]
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K49 ["getConformedHumanoidDescription"]
  DUPCLOSURE R11 K50 [PROTO_9]
  SETTABLEKS R11 R10 K51 ["didMount"]
  DUPCLOSURE R11 K52 [PROTO_10]
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K53 ["didUpdate"]
  DUPCLOSURE R11 K54 [PROTO_11]
  SETTABLEKS R11 R10 K55 ["willUnmount"]
  DUPCLOSURE R11 K56 [PROTO_12]
  GETTABLEKS R12 R2 K57 ["connect"]
  MOVE R13 R11
  LOADNIL R14
  CALL R12 2 1
  MOVE R13 R10
  CALL R12 1 1
  MOVE R10 R12
  RETURN R10 1
