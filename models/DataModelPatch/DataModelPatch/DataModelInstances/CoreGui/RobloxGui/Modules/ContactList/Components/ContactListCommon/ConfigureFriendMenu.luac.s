PROTO_0:
  GETTABLEKS R2 R0 K0 ["PlayerMenu"]
  GETTABLEKS R1 R2 K1 ["friend"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R3 R0 K0 ["PlayerMenu"]
  GETTABLEKS R2 R3 K1 ["friend"]
  GETTABLEKS R1 R2 K2 ["combinedName"]
  RETURN R1 1
  LOADK R1 K3 [""]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["PlayerMenu"]
  GETTABLEKS R1 R2 K1 ["friend"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R3 R0 K0 ["PlayerMenu"]
  GETTABLEKS R2 R3 K1 ["friend"]
  GETTABLEKS R1 R2 K2 ["userId"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["fireEvent"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["PhoneBookPlayerMenuBlockClicked"]
  DUPTABLE R2 K4 [{"eventTimestampMs", "friendUserId"}]
  GETIMPORT R4 K8 [os.time]
  CALL R4 0 1
  MULK R3 R4 K5 [1000]
  SETTABLEKS R3 R2 K2 ["eventTimestampMs"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K3 ["friendUserId"]
  CALL R0 2 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K9 ["initiateConfirmation"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K10 ["Block"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["fireEvent"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["PhoneBookPlayerMenuUnfriendClicked"]
  DUPTABLE R2 K4 [{"eventTimestampMs", "friendUserId"}]
  GETIMPORT R4 K8 [os.time]
  CALL R4 0 1
  MULK R3 R4 K5 [1000]
  SETTABLEKS R3 R2 K2 ["eventTimestampMs"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K3 ["friendUserId"]
  CALL R0 2 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K9 ["initiateConfirmation"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K10 ["Unfriend"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETTABLEKS R3 R2 K0 ["Theme"]
  GETUPVAL R4 2
  DUPCLOSURE R5 K1 [PROTO_0]
  CALL R4 1 1
  GETUPVAL R5 2
  DUPCLOSURE R6 K2 [PROTO_1]
  CALL R5 1 1
  GETUPVAL R6 3
  DUPTABLE R7 K5 [{"blockLabel", "unfriendLabel"}]
  NEWTABLE R8 1 1
  LOADK R9 K6 ["Feature.Call.Label.Block"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R4 R8 K7 ["combinedName"]
  SETTABLEKS R8 R7 K3 ["blockLabel"]
  NEWTABLE R8 1 1
  LOADK R9 K8 ["Feature.Call.Label.Unfriend"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R4 R8 K7 ["combinedName"]
  SETTABLEKS R8 R7 K4 ["unfriendLabel"]
  CALL R6 1 1
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K9 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K15 [{"buttonProps", "background", "width", "position", "anchorPoint"}]
  NEWTABLE R10 0 2
  DUPTABLE R11 K19 [{"icon", "text", "onActivated"}]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K20 ["icons/actions/block"]
  SETTABLEKS R12 R11 K16 ["icon"]
  GETTABLEKS R12 R6 K3 ["blockLabel"]
  SETTABLEKS R12 R11 K17 ["text"]
  NEWCLOSURE R12 P2
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  SETTABLEKS R12 R11 K18 ["onActivated"]
  DUPTABLE R12 K19 [{"icon", "text", "onActivated"}]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K21 ["icons/actions/friends/friendRemove"]
  SETTABLEKS R13 R12 K16 ["icon"]
  GETTABLEKS R13 R6 K4 ["unfriendLabel"]
  SETTABLEKS R13 R12 K17 ["text"]
  NEWCLOSURE R13 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  SETTABLEKS R13 R12 K18 ["onActivated"]
  SETLIST R10 R11 2 [1]
  SETTABLEKS R10 R9 K10 ["buttonProps"]
  GETTABLEKS R10 R3 K22 ["BackgroundUIDefault"]
  SETTABLEKS R10 R9 K11 ["background"]
  GETIMPORT R10 K25 [UDim.new]
  LOADN R11 0
  LOADN R12 96
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["width"]
  GETIMPORT R10 K27 [UDim2.new]
  LOADK R11 K28 [0.5]
  LOADN R12 0
  LOADK R13 K28 [0.5]
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K13 ["position"]
  GETIMPORT R10 K30 [Vector2.new]
  LOADK R11 K28 [0.5]
  LOADK R12 K28 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["anchorPoint"]
  CALL R7 2 -1
  RETURN R7 -1

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
  GETTABLEKS R5 R6 K11 ["Menu"]
  GETTABLEKS R4 R5 K12 ["BaseMenu"]
  GETTABLEKS R7 R3 K10 ["App"]
  GETTABLEKS R6 R7 K13 ["ImageSet"]
  GETTABLEKS R5 R6 K14 ["Images"]
  GETTABLEKS R8 R3 K15 ["Core"]
  GETTABLEKS R7 R8 K16 ["Style"]
  GETTABLEKS R6 R7 K17 ["useStyle"]
  LOADK R9 K18 ["RobloxGui"]
  NAMECALL R7 R1 K19 ["WaitForChild"]
  CALL R7 2 1
  GETTABLEKS R9 R7 K20 ["Modules"]
  GETTABLEKS R8 R9 K21 ["ContactList"]
  GETIMPORT R9 K6 [require]
  GETTABLEKS R10 R8 K22 ["dependencies"]
  CALL R9 1 1
  GETTABLEKS R11 R9 K23 ["Hooks"]
  GETTABLEKS R10 R11 K24 ["useSelector"]
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R8 K25 ["Analytics"]
  GETTABLEKS R12 R13 K26 ["useAnalytics"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R8 K25 ["Analytics"]
  GETTABLEKS R13 R14 K27 ["EventNamesEnum"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R8 K28 ["Enums"]
  GETTABLEKS R14 R15 K29 ["FriendAction"]
  CALL R13 1 1
  GETTABLEKS R15 R9 K23 ["Hooks"]
  GETTABLEKS R14 R15 K30 ["useLocalization"]
  DUPCLOSURE R15 K31 [PROTO_4]
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R13
  RETURN R15 1
