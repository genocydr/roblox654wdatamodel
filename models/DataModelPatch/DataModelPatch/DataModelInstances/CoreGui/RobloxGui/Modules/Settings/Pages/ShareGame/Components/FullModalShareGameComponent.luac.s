PROTO_0:
  NEWTABLE R0 0 0
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R4 0
  NAMECALL R4 R4 K2 ["getState"]
  CALL R4 1 1
  GETTABLEKS R2 R4 K3 ["Invites"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  FASTCALL2 TABLE_INSERT R0 R4 [+5]
  MOVE R7 R0
  MOVE R8 R4
  GETIMPORT R6 K6 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-8]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["isVisible"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["analytics"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["onAfterClosePage"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["store"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["promptMessage"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["inviteUserId"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["inviteMessageId"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K8 ["launchData"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K9 ["isLoading"]
  GETUPVAL R10 0
  CALL R10 0 1
  JUMPIFNOT R10 [+16]
  JUMPIFNOT R5 [+15]
  JUMPIF R6 [+6]
  LOADK R12 K10 ["
"]
  LOADK R13 K11 [" "]
  NAMECALL R10 R5 K12 ["gsub"]
  CALL R10 3 1
  MOVE R5 R10
  LOADK R12 K13 ["%s"]
  LOADK R13 K14 [""]
  NAMECALL R10 R5 K12 ["gsub"]
  CALL R10 3 1
  JUMPIFNOTEQKS R10 K14 [""] [+2]
  LOADNIL R5
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K15 ["createElement"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K16 ["StoreProvider"]
  DUPTABLE R12 K17 [{"store"}]
  SETTABLEKS R4 R12 K4 ["store"]
  DUPTABLE R13 K19 [{"screenGui"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K15 ["createElement"]
  LOADK R15 K20 ["ScreenGui"]
  DUPTABLE R16 K25 [{"AutoLocalize", "Enabled", "DisplayOrder", "ZIndexBehavior"}]
  LOADB R17 0
  SETTABLEKS R17 R16 K21 ["AutoLocalize"]
  SETTABLEKS R1 R16 K22 ["Enabled"]
  LOADN R17 255
  SETTABLEKS R17 R16 K23 ["DisplayOrder"]
  GETIMPORT R17 K28 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R17 R16 K24 ["ZIndexBehavior"]
  DUPTABLE R17 K31 [{"loadingIndicator", "layoutProvider"}]
  MOVE R18 R9
  JUMPIFNOT R18 [+5]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K15 ["createElement"]
  GETUPVAL R19 3
  CALL R18 1 1
  SETTABLEKS R18 R17 K29 ["loadingIndicator"]
  NOT R18 R9
  JUMPIFNOT R18 [+38]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K15 ["createElement"]
  GETUPVAL R19 4
  LOADNIL R20
  DUPTABLE R21 K33 [{"ShareGameContainer"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K15 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K35 [{"analytics", "isVisible", "skeletonComponent", "promptMessage", "inviteUserId", "inviteMessageId", "launchData", "onAfterClosePage"}]
  SETTABLEKS R2 R24 K2 ["analytics"]
  SETTABLEKS R1 R24 K1 ["isVisible"]
  JUMPIFNOT R6 [+2]
  GETUPVAL R25 6
  JUMP [+1]
  GETUPVAL R25 7
  SETTABLEKS R25 R24 K34 ["skeletonComponent"]
  SETTABLEKS R5 R24 K5 ["promptMessage"]
  SETTABLEKS R6 R24 K6 ["inviteUserId"]
  SETTABLEKS R7 R24 K7 ["inviteMessageId"]
  SETTABLEKS R8 R24 K8 ["launchData"]
  NEWCLOSURE R25 P0
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R25 R24 K3 ["onAfterClosePage"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K32 ["ShareGameContainer"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K30 ["layoutProvider"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K18 ["screenGui"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R1 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K10 ["RobloxGui"]
  GETTABLEKS R4 R5 K11 ["Modules"]
  GETIMPORT R6 K13 [script]
  GETTABLEKS R5 R6 K14 ["Parent"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R4 K15 ["Flags"]
  GETTABLEKS R7 R8 K16 ["GetFFlagExtraInviteModalStringValidation"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R5 K17 ["ShareGameContainer"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R5 K18 ["ModalShareGamePageFrame"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R10 R5 K19 ["LayoutProvider"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R5 K20 ["InviteSingleUserContainer"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R12 R5 K21 ["LoadingModal"]
  CALL R11 1 1
  GETTABLEKS R12 R2 K22 ["PureComponent"]
  LOADK R14 K23 ["FullModalShareGameComponent"]
  NAMECALL R12 R12 K24 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K25 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R8
  SETTABLEKS R13 R12 K26 ["render"]
  RETURN R12 1
