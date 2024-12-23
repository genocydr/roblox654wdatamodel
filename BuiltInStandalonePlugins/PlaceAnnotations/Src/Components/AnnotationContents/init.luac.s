PROTO_0:
  GETIMPORT R2 K2 [DateTime.fromUnixTimestamp]
  MOVE R3 R0
  CALL R2 1 1
  LOADK R5 K3 ["LT MMM D"]
  MOVE R6 R1
  NAMECALL R3 R2 K4 ["FormatLocalTime"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["InProgress"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Success"]
  JUMPIFNOTEQ R2 R3 [+7]
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["None"]
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R3 1
  GETUPVAL R4 3
  MOVE R5 R1
  CALL R4 1 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Annotation"]
  GETTABLEKS R0 R1 K1 ["Parent"]
  JUMPIFNOT R0 [+53]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Annotation"]
  GETTABLEKS R0 R1 K1 ["Parent"]
  LOADK R2 K0 ["Annotation"]
  NAMECALL R0 R0 K2 ["IsA"]
  CALL R0 2 1
  JUMPIFNOT R0 [+43]
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Annotation"]
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K3 ["InProgress"]
  JUMP [+3]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["None"]
  CALL R0 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Annotation"]
  GETTABLEKS R0 R1 K5 ["RequestInitiated"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  NAMECALL R0 R0 K6 ["Connect"]
  CALL R0 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Annotation"]
  GETTABLEKS R1 R2 K7 ["RequestCompleted"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  NAMECALL R1 R1 K6 ["Connect"]
  CALL R1 2 1
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1
  DUPCLOSURE R0 K8 [PROTO_4]
  RETURN R0 1

PROTO_6:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AnnotationsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["Annotation"]
  NAMECALL R1 R0 K5 ["DeleteAnnotation"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R3 1
  NAMECALL R3 R3 K1 ["use"]
  CALL R3 1 1
  GETUPVAL R4 2
  NAMECALL R4 R4 K1 ["use"]
  CALL R4 1 1
  GETTABLEKS R7 R0 K2 ["Annotation"]
  GETTABLEKS R6 R7 K3 ["AuthorId"]
  NAMECALL R4 R4 K4 ["getUsername"]
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useState"]
  GETUPVAL R7 3
  GETTABLEKS R8 R0 K2 ["Annotation"]
  CALL R7 1 1
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K5 ["InProgress"]
  JUMP [+3]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K6 ["None"]
  CALL R5 1 2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["useEffect"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  NEWTABLE R9 0 1
  GETTABLEKS R10 R0 K2 ["Annotation"]
  SETLIST R9 R10 1 [1]
  CALL R7 2 0
  NEWTABLE R7 0 1
  GETTABLEKS R10 R0 K2 ["Annotation"]
  GETTABLEKS R9 R10 K8 ["Parent"]
  JUMPIFNOT R9 [+47]
  GETTABLEKS R10 R0 K2 ["Annotation"]
  GETTABLEKS R9 R10 K8 ["Parent"]
  LOADK R11 K2 ["Annotation"]
  NAMECALL R9 R9 K9 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+38]
  GETTABLEKS R10 R0 K2 ["Annotation"]
  GETTABLEKS R9 R10 K3 ["AuthorId"]
  GETUPVAL R10 7
  NAMECALL R10 R10 K10 ["GetUserId"]
  CALL R10 1 1
  JUMPIFNOTEQ R9 R10 [+29]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["createElement"]
  LOADK R9 K12 ["TextButton"]
  NEWTABLE R10 4 0
  LOADK R13 K13 ["Dropdown"]
  LOADK R14 K14 ["Delete"]
  NAMECALL R11 R3 K15 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K16 ["Text"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K17 ["Event"]
  GETTABLEKS R11 R12 K18 ["Activated"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R0
  SETTABLE R12 R10 R11
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K19 ["Tag"]
  LOADK R12 K20 ["Component-DropdownItem Delete"]
  SETTABLE R12 R10 R11
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETLIST R7 R8 1 [1]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["createElement"]
  LOADK R9 K21 ["Frame"]
  NEWTABLE R10 4 0
  GETTABLEKS R11 R0 K22 ["LayoutOrder"]
  SETTABLEKS R11 R10 K22 ["LayoutOrder"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K17 ["Event"]
  GETTABLEKS R11 R12 K23 ["MouseEnter"]
  NEWCLOSURE R12 P2
  CAPTURE VAL R2
  SETTABLE R12 R10 R11
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K17 ["Event"]
  GETTABLEKS R11 R12 K24 ["MouseLeave"]
  NEWCLOSURE R12 P3
  CAPTURE VAL R2
  SETTABLE R12 R10 R11
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K19 ["Tag"]
  LOADK R12 K25 ["Component-AnnotationContents X-RowM"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K28 [{"Avatar", "TextColumn"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["createElement"]
  LOADK R13 K29 ["ImageLabel"]
  NEWTABLE R14 4 0
  LOADK R16 K30 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
  GETTABLEKS R19 R0 K2 ["Annotation"]
  GETTABLEKS R18 R19 K3 ["AuthorId"]
  NAMECALL R16 R16 K31 ["format"]
  CALL R16 2 1
  MOVE R15 R16
  SETTABLEKS R15 R14 K32 ["Image"]
  LOADN R15 0
  SETTABLEKS R15 R14 K22 ["LayoutOrder"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K19 ["Tag"]
  LOADK R16 K33 ["Component-Avatar"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K26 ["Avatar"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["createElement"]
  LOADK R13 K21 ["Frame"]
  NEWTABLE R14 2 0
  LOADN R15 1
  SETTABLEKS R15 R14 K22 ["LayoutOrder"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K19 ["Tag"]
  LOADK R16 K34 ["X-ColumnM"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K38 [{"UsernameRow", "Contents", "ErrorAlert"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  LOADK R17 K21 ["Frame"]
  DUPTABLE R18 K39 [{"LayoutOrder"}]
  LOADN R19 0
  SETTABLEKS R19 R18 K22 ["LayoutOrder"]
  DUPTABLE R19 K42 [{"LeftAligned", "MoreIcon"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K11 ["createElement"]
  LOADK R21 K21 ["Frame"]
  NEWTABLE R22 1 0
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K19 ["Tag"]
  LOADK R24 K43 ["X-RowM X-Middle"]
  SETTABLE R24 R22 R23
  DUPTABLE R23 K46 [{"Username", "CreationTime"}]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K11 ["createElement"]
  LOADK R25 K47 ["TextLabel"]
  NEWTABLE R26 4 0
  SETTABLEKS R4 R26 K16 ["Text"]
  LOADN R27 0
  SETTABLEKS R27 R26 K22 ["LayoutOrder"]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K19 ["Tag"]
  GETUPVAL R30 4
  GETTABLEKS R29 R30 K5 ["InProgress"]
  JUMPIFNOTEQ R5 R29 [+3]
  LOADK R28 K48 ["Disabled"]
  JUMP [+1]
  LOADNIL R28
  SETTABLE R28 R26 R27
  CALL R24 2 1
  SETTABLEKS R24 R23 K44 ["Username"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K11 ["createElement"]
  LOADK R25 K47 ["TextLabel"]
  NEWTABLE R26 4 0
  GETTABLEKS R29 R0 K2 ["Annotation"]
  GETTABLEKS R28 R29 K49 ["CreationTimeUnix"]
  NAMECALL R29 R3 K50 ["getLocale"]
  CALL R29 1 1
  GETIMPORT R30 K53 [DateTime.fromUnixTimestamp]
  MOVE R31 R28
  CALL R30 1 1
  LOADK R33 K54 ["LT MMM D"]
  MOVE R34 R29
  NAMECALL R31 R30 K55 ["FormatLocalTime"]
  CALL R31 3 1
  MOVE R27 R31
  SETTABLEKS R27 R26 K16 ["Text"]
  LOADN R27 1
  SETTABLEKS R27 R26 K22 ["LayoutOrder"]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K19 ["Tag"]
  GETUPVAL R30 4
  GETTABLEKS R29 R30 K5 ["InProgress"]
  JUMPIFNOTEQ R5 R29 [+3]
  LOADK R28 K48 ["Disabled"]
  JUMP [+1]
  LOADNIL R28
  SETTABLE R28 R26 R27
  CALL R24 2 1
  SETTABLEKS R24 R23 K45 ["CreationTime"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K40 ["LeftAligned"]
  LENGTH R21 R7
  JUMPIFEQKN R21 K56 [0] [+20]
  JUMPIFNOT R1 [+18]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K11 ["createElement"]
  GETUPVAL R21 8
  DUPTABLE R22 K58 [{"DropdownItems", "Disabled"}]
  SETTABLEKS R7 R22 K57 ["DropdownItems"]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K5 ["InProgress"]
  JUMPIFEQ R5 R24 [+2]
  LOADB R23 0 +1
  LOADB R23 1
  SETTABLEKS R23 R22 K48 ["Disabled"]
  CALL R20 2 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K41 ["MoreIcon"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K35 ["UsernameRow"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  LOADK R17 K47 ["TextLabel"]
  NEWTABLE R18 4 0
  LOADN R19 1
  SETTABLEKS R19 R18 K22 ["LayoutOrder"]
  GETTABLEKS R20 R0 K2 ["Annotation"]
  GETTABLEKS R19 R20 K36 ["Contents"]
  SETTABLEKS R19 R18 K16 ["Text"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K19 ["Tag"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K5 ["InProgress"]
  JUMPIFNOTEQ R5 R21 [+3]
  LOADK R20 K48 ["Disabled"]
  JUMP [+1]
  LOADNIL R20
  SETTABLE R20 R18 R19
  CALL R16 2 1
  SETTABLEKS R16 R15 K36 ["Contents"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K6 ["None"]
  JUMPIFEQ R5 R17 [+34]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K5 ["InProgress"]
  JUMPIFEQ R5 R17 [+29]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 9
  DUPTABLE R18 K60 [{"Message", "LayoutOrder"}]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K61 ["ErrorDeleting"]
  JUMPIFNOTEQ R5 R20 [+7]
  LOADK R21 K62 ["Error"]
  LOADK R22 K63 ["DeleteReply"]
  NAMECALL R19 R3 K15 ["getText"]
  CALL R19 3 1
  JUMP [+5]
  LOADK R21 K62 ["Error"]
  LOADK R22 K64 ["Unknown"]
  NAMECALL R19 R3 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K59 ["Message"]
  LOADN R19 2
  SETTABLEKS R19 R18 K22 ["LayoutOrder"]
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K37 ["ErrorAlert"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K27 ["TextColumn"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K11 ["ContextServices"]
  GETTABLEKS R5 R4 K12 ["Localization"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["AnnotationRequestUtils"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K15 ["HasRequests"]
  GETTABLEKS R8 R6 K16 ["RequestErrorToUIRequestStatus"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K17 ["Components"]
  GETTABLEKS R10 R11 K18 ["DropdownButton"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K17 ["Components"]
  GETTABLEKS R11 R12 K19 ["ErrorAlert"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K9 ["Src"]
  GETTABLEKS R13 R14 K20 ["Contexts"]
  GETTABLEKS R12 R13 K21 ["UsernameContext"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K9 ["Src"]
  GETTABLEKS R14 R15 K22 ["Enums"]
  GETTABLEKS R13 R14 K23 ["UIRequestStatus"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K9 ["Src"]
  GETTABLEKS R15 R16 K22 ["Enums"]
  GETTABLEKS R14 R15 K24 ["AnnotationRequestType"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K9 ["Src"]
  GETTABLEKS R16 R17 K22 ["Enums"]
  GETTABLEKS R15 R16 K25 ["AnnotationRequestResult"]
  CALL R14 1 1
  GETIMPORT R15 K27 [game]
  LOADK R17 K28 ["StudioService"]
  NAMECALL R15 R15 K29 ["GetService"]
  CALL R15 2 1
  DUPCLOSURE R16 K30 [PROTO_0]
  DUPCLOSURE R17 K31 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R10
  RETURN R17 1
