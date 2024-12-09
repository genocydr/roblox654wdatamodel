PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["icons/actions/friends/friendAdd"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["icons/actions/friends/friendRemove"]
  GETIMPORT R3 K5 [Enum.FriendStatus.Friend]
  JUMPIFNOTEQ R0 R3 [+8]
  GETUPVAL R3 1
  LOADK R5 K6 ["PlayerDropDown.Unfriend"]
  NAMECALL R3 R3 K7 ["FormatByKey"]
  CALL R3 2 1
  MOVE R4 R2
  RETURN R3 2
  GETIMPORT R3 K9 [Enum.FriendStatus.Unknown]
  JUMPIFEQ R0 R3 [+5]
  GETIMPORT R3 K11 [Enum.FriendStatus.NotFriend]
  JUMPIFNOTEQ R0 R3 [+8]
  GETUPVAL R3 1
  LOADK R5 K12 ["PlayerDropDown.FriendRequest"]
  NAMECALL R3 R3 K7 ["FormatByKey"]
  CALL R3 2 1
  MOVE R4 R1
  RETURN R3 2
  GETIMPORT R3 K14 [Enum.FriendStatus.FriendRequestSent]
  JUMPIFNOTEQ R0 R3 [+8]
  GETUPVAL R3 1
  LOADK R5 K15 ["PlayerDropDown.CancelRequest"]
  NAMECALL R3 R3 K7 ["FormatByKey"]
  CALL R3 2 1
  MOVE R4 R1
  RETURN R3 2
  GETIMPORT R3 K17 [Enum.FriendStatus.FriendRequestReceived]
  JUMPIFNOTEQ R0 R3 [+8]
  GETUPVAL R3 1
  LOADK R5 K18 ["PlayerDropDown.Accept"]
  NAMECALL R3 R3 K7 ["FormatByKey"]
  CALL R3 2 1
  MOVE R4 R1
  RETURN R3 2
  GETUPVAL R3 1
  LOADK R5 K19 ["PlayerDropDown.Friend Request"]
  NAMECALL R3 R3 K7 ["FormatByKey"]
  CALL R3 2 1
  MOVE R4 R1
  RETURN R3 2

PROTO_1:
  DUPTABLE R1 K1 [{"unfriendConfirm"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["unfriendConfirm"]
  SETTABLEKS R1 R0 K2 ["state"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"unfriendConfirm"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["unfriendConfirm"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["friendStatus"]
  GETIMPORT R1 K4 [Enum.FriendStatus.Friend]
  JUMPIFNOTEQ R0 R1 [+7]
  GETUPVAL R0 1
  GETUPVAL R2 2
  NAMECALL R0 R0 K5 ["RevokeFriendship"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["friendStatus"]
  GETIMPORT R1 K7 [Enum.FriendStatus.Unknown]
  JUMPIFEQ R0 R1 [+8]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["friendStatus"]
  GETIMPORT R1 K9 [Enum.FriendStatus.NotFriend]
  JUMPIFNOTEQ R0 R1 [+10]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K10 ["props"]
  GETTABLEKS R0 R1 K11 ["requestFriendship"]
  GETUPVAL R1 2
  LOADB R2 0
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["friendStatus"]
  GETIMPORT R1 K13 [Enum.FriendStatus.FriendRequestSent]
  JUMPIFNOTEQ R0 R1 [+19]
  GETUPVAL R0 4
  LOADK R2 K14 ["PlayerDropDown-RevokeFriendship"]
  NAMECALL R0 R0 K15 ["ReportCounter"]
  CALL R0 2 0
  GETUPVAL R0 4
  LOADK R2 K16 ["Game"]
  LOADK R3 K5 ["RevokeFriendship"]
  LOADK R4 K17 ["PlayerDropDown"]
  NAMECALL R0 R0 K18 ["TrackEvent"]
  CALL R0 4 0
  GETUPVAL R0 1
  GETUPVAL R2 2
  NAMECALL R0 R0 K5 ["RevokeFriendship"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["friendStatus"]
  GETIMPORT R1 K20 [Enum.FriendStatus.FriendRequestReceived]
  JUMPIFNOTEQ R0 R1 [+21]
  GETUPVAL R0 4
  LOADK R2 K21 ["PlayerDropDown-RequestFriendship"]
  NAMECALL R0 R0 K15 ["ReportCounter"]
  CALL R0 2 0
  GETUPVAL R0 4
  LOADK R2 K16 ["Game"]
  LOADK R3 K22 ["RequestFriendship"]
  LOADK R4 K17 ["PlayerDropDown"]
  NAMECALL R0 R0 K18 ["TrackEvent"]
  CALL R0 4 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K10 ["props"]
  GETTABLEKS R0 R1 K11 ["requestFriendship"]
  GETUPVAL R1 2
  LOADB R2 1
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["RevokeFriendship"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"unfriendConfirm"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["unfriendConfirm"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["playerRelationship"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["selectedPlayer"]
  LOADNIL R3
  GETTABLEKS R4 R1 K3 ["friendStatus"]
  GETIMPORT R5 K7 [Enum.FriendStatus.Friend]
  JUMPIFNOTEQ R4 R5 [+9]
  GETTABLEKS R5 R0 K8 ["state"]
  GETTABLEKS R4 R5 K9 ["unfriendConfirm"]
  JUMPIF R4 [+3]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  JUMP [+6]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  LOADNIL R4
  GETTABLEKS R5 R1 K3 ["friendStatus"]
  GETIMPORT R6 K11 [Enum.FriendStatus.FriendRequestReceived]
  JUMPIFNOTEQ R5 R6 [+4]
  NEWCLOSURE R4 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  LOADNIL R5
  GETTABLEKS R7 R0 K8 ["state"]
  GETTABLEKS R6 R7 K9 ["unfriendConfirm"]
  JUMPIFNOT R6 [+2]
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  GETUPVAL R6 2
  GETTABLEKS R7 R1 K3 ["friendStatus"]
  CALL R6 1 2
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K12 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K22 [{"layoutOrder", "text", "icon", "lastButton", "onActivated", "forceShowOptions", "selectedPlayer", "onDecline", "onDismiss", "contentVisible"}]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K13 ["layoutOrder"]
  SETTABLEKS R11 R10 K13 ["layoutOrder"]
  SETTABLEKS R6 R10 K14 ["text"]
  SETTABLEKS R7 R10 K15 ["icon"]
  LOADB R11 0
  SETTABLEKS R11 R10 K16 ["lastButton"]
  SETTABLEKS R3 R10 K17 ["onActivated"]
  GETTABLEKS R12 R0 K8 ["state"]
  GETTABLEKS R11 R12 K9 ["unfriendConfirm"]
  SETTABLEKS R11 R10 K18 ["forceShowOptions"]
  SETTABLEKS R2 R10 K2 ["selectedPlayer"]
  SETTABLEKS R4 R10 K19 ["onDecline"]
  SETTABLEKS R5 R10 K20 ["onDismiss"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K21 ["contentVisible"]
  SETTABLEKS R11 R10 K21 ["contentVisible"]
  CALL R8 2 -1
  RETURN R8 -1

PROTO_7:
  GETTABLEKS R4 R1 K0 ["playerRelationship"]
  GETTABLEKS R3 R4 K1 ["friendStatus"]
  GETTABLEKS R6 R0 K2 ["props"]
  GETTABLEKS R5 R6 K0 ["playerRelationship"]
  GETTABLEKS R4 R5 K1 ["friendStatus"]
  JUMPIFEQ R3 R4 [+8]
  DUPTABLE R5 K4 [{"unfriendConfirm"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K3 ["unfriendConfirm"]
  NAMECALL R3 R0 K5 ["setState"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K6 ["selectedPlayer"]
  GETTABLEKS R5 R0 K2 ["props"]
  GETTABLEKS R4 R5 K6 ["selectedPlayer"]
  JUMPIFNOTEQ R3 R4 [+9]
  GETTABLEKS R3 R1 K7 ["dropDownOpen"]
  GETTABLEKS R5 R0 K2 ["props"]
  GETTABLEKS R4 R5 K7 ["dropDownOpen"]
  JUMPIFEQ R3 R4 [+8]
  DUPTABLE R5 K4 [{"unfriendConfirm"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K3 ["unfriendConfirm"]
  NAMECALL R3 R0 K5 ["setState"]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["RbxAnalyticsService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K9 ["Packages"]
  GETTABLEKS R6 R7 K11 ["t"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K9 ["Packages"]
  GETTABLEKS R7 R8 K12 ["UIBlox"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETIMPORT R10 K14 [script]
  GETTABLEKS R9 R10 K15 ["Parent"]
  GETTABLEKS R8 R9 K16 ["DropDownButtonAnimator"]
  CALL R7 1 1
  GETTABLEKS R10 R6 K17 ["App"]
  GETTABLEKS R9 R10 K18 ["ImageSet"]
  GETTABLEKS R8 R9 K19 ["Images"]
  LOADK R11 K20 ["RobloxGui"]
  NAMECALL R9 R2 K21 ["WaitForChild"]
  CALL R9 2 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R9 K22 ["Modules"]
  GETTABLEKS R11 R12 K23 ["RobloxTranslator"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K24 ["LocalPlayer"]
  GETTABLEKS R12 R4 K25 ["PureComponent"]
  LOADK R14 K26 ["FriendDropDownButton"]
  NAMECALL R12 R12 K27 ["extend"]
  CALL R12 2 1
  GETTABLEKS R13 R5 K28 ["strictInterface"]
  DUPTABLE R14 K35 [{"layoutOrder", "playerRelationship", "selectedPlayer", "dropDownOpen", "requestFriendship", "contentVisible"}]
  GETTABLEKS R15 R5 K36 ["integer"]
  SETTABLEKS R15 R14 K29 ["layoutOrder"]
  GETTABLEKS R15 R5 K28 ["strictInterface"]
  DUPTABLE R16 K41 [{"isBlocked", "friendStatus", "isFollowing", "isFollower"}]
  GETTABLEKS R17 R5 K42 ["boolean"]
  SETTABLEKS R17 R16 K37 ["isBlocked"]
  GETTABLEKS R17 R5 K43 ["enum"]
  GETIMPORT R18 K46 [Enum.FriendStatus]
  CALL R17 1 1
  SETTABLEKS R17 R16 K38 ["friendStatus"]
  GETTABLEKS R17 R5 K42 ["boolean"]
  SETTABLEKS R17 R16 K39 ["isFollowing"]
  GETTABLEKS R17 R5 K42 ["boolean"]
  SETTABLEKS R17 R16 K40 ["isFollower"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K30 ["playerRelationship"]
  GETTABLEKS R15 R5 K47 ["optional"]
  GETTABLEKS R16 R5 K48 ["instanceIsA"]
  LOADK R17 K49 ["Player"]
  CALL R16 1 -1
  CALL R15 -1 1
  SETTABLEKS R15 R14 K31 ["selectedPlayer"]
  GETTABLEKS R15 R5 K42 ["boolean"]
  SETTABLEKS R15 R14 K32 ["dropDownOpen"]
  GETTABLEKS R15 R5 K50 ["callback"]
  SETTABLEKS R15 R14 K33 ["requestFriendship"]
  GETTABLEKS R15 R5 K42 ["boolean"]
  SETTABLEKS R15 R14 K34 ["contentVisible"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K51 ["validateProps"]
  DUPCLOSURE R13 K52 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R10
  DUPCLOSURE R14 K53 [PROTO_1]
  SETTABLEKS R14 R12 K54 ["init"]
  DUPCLOSURE R14 K55 [PROTO_6]
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R14 R12 K56 ["render"]
  DUPCLOSURE R14 K57 [PROTO_7]
  SETTABLEKS R14 R12 K58 ["didUpdate"]
  RETURN R12 1
