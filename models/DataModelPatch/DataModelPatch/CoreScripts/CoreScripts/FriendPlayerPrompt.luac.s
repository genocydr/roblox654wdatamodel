PROTO_0:
  GETIMPORT R0 K1 [settings]
  CALL R0 0 1
  LOADK R2 K2 ["UseNotificationsLocalization"]
  NAMECALL R0 R0 K3 ["GetFFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 1
  GETUPVAL R2 2
  NAMECALL R0 R0 K0 ["FormatByKey"]
  CALL R0 2 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE REF R1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R2 1 0
  CLOSEUPVALS R1
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["GetPlayerImage"]
  GETUPVAL R2 1
  FASTCALL1 TABLE_UNPACK R2 [+2]
  GETIMPORT R1 K2 [unpack]
  CALL R1 1 -1
  CALL R0 -1 1
  GETUPVAL R1 2
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["Parent"]
  JUMPIFNOT R1 [+3]
  GETUPVAL R1 2
  SETTABLEKS R0 R1 K4 ["Image"]
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K1 [spawn]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  GETVARARGS R1 -1
  SETLIST R0 R1 -1 [1]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["RequestFriendship"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  LOADK R3 K0 ["FriendPlayerPrompt-RequestFriendship"]
  NAMECALL R1 R1 K1 ["ReportCounter"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K2 ["Game"]
  LOADK R4 K3 ["RequestFriendship"]
  LOADK R5 K4 ["FriendPlayerPrompt"]
  NAMECALL R1 R1 K5 ["TrackEvent"]
  CALL R1 4 0
  GETIMPORT R1 K7 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 1
  RETURN R1 1

PROTO_8:
  GETUPVAL R3 0
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Should not call AtFriendLimit when FFlagRemoveHardCodedFriendLimitPrompt is enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  GETTABLEKS R3 R0 K3 ["UserId"]
  NAMECALL R1 R1 K4 ["GetFriendCountAsync"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+3]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K5 ["MaxFriendCount"]
  CALL R2 1 1
  JUMPIFNOTLE R2 R1 [+3]
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_9:
  JUMPIFNOT R0 [+246]
  GETUPVAL R1 0
  JUMPIF R1 [+66]
  GETGLOBAL R1 K0 ["AtFriendLimit"]
  GETUPVAL R2 1
  CALL R1 1 1
  JUMPIFNOT R1 [+61]
  GETUPVAL R1 2
  NAMECALL R1 R1 K1 ["IsCurrentlyPrompting"]
  CALL R1 1 1
  JUMPIFNOT R1 [+4]
  GETIMPORT R1 K3 [wait]
  CALL R1 0 0
  JUMPBACK [-9]
  GETUPVAL R1 2
  DUPTABLE R3 K13 [{"WindowTitle", "MainText", "ConfirmationText", "CancelActive", "Image", "ImageConsoleVR", "FetchImageFunction", "FetchImageFunctionConsoleVR", "StripeColor"}]
  LOADK R4 K14 ["Friend Limit Reached"]
  SETTABLEKS R4 R3 K4 ["WindowTitle"]
  LOADK R4 K15 ["You can not send a friend request because you are at the max friend limit."]
  SETTABLEKS R4 R3 K5 ["MainText"]
  LOADK R4 K16 ["Okay"]
  SETTABLEKS R4 R3 K6 ["ConfirmationText"]
  LOADB R4 0
  SETTABLEKS R4 R3 K7 ["CancelActive"]
  LOADK R4 K17 [""]
  SETTABLEKS R4 R3 K8 ["Image"]
  LOADK R4 K17 [""]
  SETTABLEKS R4 R3 K9 ["ImageConsoleVR"]
  GETGLOBAL R4 K18 ["createFetchImageFunction"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K19 ["UserId"]
  GETUPVAL R6 4
  GETUPVAL R7 5
  CALL R4 3 1
  SETTABLEKS R4 R3 K10 ["FetchImageFunction"]
  GETGLOBAL R4 K18 ["createFetchImageFunction"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K19 ["UserId"]
  GETUPVAL R6 6
  GETUPVAL R7 7
  CALL R4 3 1
  SETTABLEKS R4 R3 K11 ["FetchImageFunctionConsoleVR"]
  GETIMPORT R4 K22 [Color3.fromRGB]
  LOADN R5 183
  LOADN R6 34
  LOADN R7 54
  CALL R4 3 1
  SETTABLEKS R4 R3 K12 ["StripeColor"]
  NAMECALL R1 R1 K23 ["CreatePrompt"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 0
  JUMPIF R1 [+84]
  GETGLOBAL R1 K0 ["AtFriendLimit"]
  GETUPVAL R2 3
  CALL R1 1 1
  JUMPIFNOT R1 [+79]
  GETIMPORT R1 K26 [string.format]
  LOADK R2 K27 ["You can not send a friend request to %s because they are at the max friend limit."]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K28 ["Name"]
  CALL R1 2 1
  GETUPVAL R2 8
  JUMPIFNOT R2 [+19]
  GETIMPORT R2 K30 [string.gsub]
  MOVE R4 R1
  GETIMPORT R5 K32 [pcall]
  LOADK R7 K33 ["FriendPlayerPrompt.promptCompletedCallback.AtFriendLimit"]
  NEWCLOSURE R6 P0
  CAPTURE REF R4
  CAPTURE UPVAL U9
  CAPTURE VAL R7
  CALL R5 1 0
  MOVE R3 R4
  CLOSEUPVALS R4
  LOADK R4 K34 ["{RBX_NAME}"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K28 ["Name"]
  CALL R2 3 1
  MOVE R1 R2
  GETUPVAL R2 2
  DUPTABLE R4 K13 [{"WindowTitle", "MainText", "ConfirmationText", "CancelActive", "Image", "ImageConsoleVR", "FetchImageFunction", "FetchImageFunctionConsoleVR", "StripeColor"}]
  LOADK R5 K35 ["Error Sending Friend Request"]
  SETTABLEKS R5 R4 K4 ["WindowTitle"]
  SETTABLEKS R1 R4 K5 ["MainText"]
  LOADK R5 K16 ["Okay"]
  SETTABLEKS R5 R4 K6 ["ConfirmationText"]
  LOADB R5 0
  SETTABLEKS R5 R4 K7 ["CancelActive"]
  LOADK R5 K17 [""]
  SETTABLEKS R5 R4 K8 ["Image"]
  LOADK R5 K17 [""]
  SETTABLEKS R5 R4 K9 ["ImageConsoleVR"]
  GETGLOBAL R5 K18 ["createFetchImageFunction"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K19 ["UserId"]
  GETUPVAL R7 4
  GETUPVAL R8 5
  CALL R5 3 1
  SETTABLEKS R5 R4 K10 ["FetchImageFunction"]
  GETGLOBAL R5 K18 ["createFetchImageFunction"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K19 ["UserId"]
  GETUPVAL R7 6
  GETUPVAL R8 7
  CALL R5 3 1
  SETTABLEKS R5 R4 K11 ["FetchImageFunctionConsoleVR"]
  GETIMPORT R5 K22 [Color3.fromRGB]
  LOADN R6 183
  LOADN R7 34
  LOADN R8 54
  CALL R5 3 1
  SETTABLEKS R5 R4 K12 ["StripeColor"]
  NAMECALL R2 R2 K23 ["CreatePrompt"]
  CALL R2 2 0
  RETURN R0 0
  GETGLOBAL R1 K36 ["SendFriendRequest"]
  GETUPVAL R2 3
  CALL R1 1 1
  JUMPIF R1 [+87]
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["IsCurrentlyPrompting"]
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K3 [wait]
  CALL R2 0 0
  JUMPBACK [-9]
  GETIMPORT R2 K26 [string.format]
  LOADK R3 K37 ["An error occurred while sending %s a friend request. Please try again later."]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K28 ["Name"]
  CALL R2 2 1
  GETUPVAL R3 8
  JUMPIFNOT R3 [+19]
  GETIMPORT R3 K30 [string.gsub]
  MOVE R5 R2
  GETIMPORT R6 K32 [pcall]
  LOADK R8 K38 ["FriendPlayerPrompt.promptCompletedCallback.UnknownError"]
  NEWCLOSURE R7 P0
  CAPTURE REF R5
  CAPTURE UPVAL U9
  CAPTURE VAL R8
  CALL R6 1 0
  MOVE R4 R5
  CLOSEUPVALS R5
  LOADK R5 K34 ["{RBX_NAME}"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K28 ["Name"]
  CALL R3 3 1
  MOVE R2 R3
  GETUPVAL R3 2
  DUPTABLE R5 K13 [{"WindowTitle", "MainText", "ConfirmationText", "CancelActive", "Image", "ImageConsoleVR", "FetchImageFunction", "FetchImageFunctionConsoleVR", "StripeColor"}]
  LOADK R6 K35 ["Error Sending Friend Request"]
  SETTABLEKS R6 R5 K4 ["WindowTitle"]
  SETTABLEKS R2 R5 K5 ["MainText"]
  LOADK R6 K16 ["Okay"]
  SETTABLEKS R6 R5 K6 ["ConfirmationText"]
  LOADB R6 0
  SETTABLEKS R6 R5 K7 ["CancelActive"]
  LOADK R6 K17 [""]
  SETTABLEKS R6 R5 K8 ["Image"]
  LOADK R6 K17 [""]
  SETTABLEKS R6 R5 K9 ["ImageConsoleVR"]
  GETGLOBAL R6 K18 ["createFetchImageFunction"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K19 ["UserId"]
  GETUPVAL R8 4
  GETUPVAL R9 5
  CALL R6 3 1
  SETTABLEKS R6 R5 K10 ["FetchImageFunction"]
  GETGLOBAL R6 K18 ["createFetchImageFunction"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K19 ["UserId"]
  GETUPVAL R8 6
  GETUPVAL R9 7
  CALL R6 3 1
  SETTABLEKS R6 R5 K11 ["FetchImageFunctionConsoleVR"]
  GETIMPORT R6 K22 [Color3.fromRGB]
  LOADN R7 183
  LOADN R8 34
  LOADN R9 54
  CALL R6 3 1
  SETTABLEKS R6 R5 K12 ["StripeColor"]
  NAMECALL R3 R3 K23 ["CreatePrompt"]
  CALL R3 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["UserId"]
  NAMECALL R1 R1 K1 ["IsFriendsWith"]
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  GETIMPORT R2 K4 [string.format]
  LOADK R3 K5 ["Would you like to send %s a Friend Request?"]
  GETTABLEKS R4 R0 K6 ["Name"]
  CALL R2 2 1
  GETUPVAL R3 7
  JUMPIFNOT R3 [+18]
  GETIMPORT R3 K8 [string.gsub]
  MOVE R5 R2
  GETIMPORT R6 K10 [pcall]
  LOADK R8 K11 ["FriendPlayerPrompt.DoPromptRequestFriendPlayer"]
  NEWCLOSURE R7 P1
  CAPTURE REF R5
  CAPTURE UPVAL U8
  CAPTURE VAL R8
  CALL R6 1 0
  MOVE R4 R5
  CLOSEUPVALS R5
  LOADK R5 K12 ["{RBX_NAME}"]
  GETTABLEKS R6 R0 K6 ["Name"]
  CALL R3 3 1
  MOVE R2 R3
  GETUPVAL R3 2
  DUPTABLE R5 K23 [{"WindowTitle", "MainText", "ConfirmationText", "CancelText", "CancelActive", "Image", "ImageConsoleVR", "FetchImageFunction", "FetchImageFunctionConsoleVR", "PromptCompletedCallback"}]
  LOADK R6 K24 ["Send Friend Request?"]
  SETTABLEKS R6 R5 K13 ["WindowTitle"]
  SETTABLEKS R2 R5 K14 ["MainText"]
  LOADK R6 K25 ["Send Request"]
  SETTABLEKS R6 R5 K15 ["ConfirmationText"]
  LOADK R6 K26 ["Cancel"]
  SETTABLEKS R6 R5 K16 ["CancelText"]
  LOADB R6 1
  SETTABLEKS R6 R5 K17 ["CancelActive"]
  LOADK R6 K27 [""]
  SETTABLEKS R6 R5 K18 ["Image"]
  LOADK R6 K27 [""]
  SETTABLEKS R6 R5 K19 ["ImageConsoleVR"]
  GETGLOBAL R6 K28 ["createFetchImageFunction"]
  GETTABLEKS R7 R0 K0 ["UserId"]
  GETUPVAL R8 3
  GETUPVAL R9 4
  CALL R6 3 1
  SETTABLEKS R6 R5 K20 ["FetchImageFunction"]
  GETGLOBAL R6 K28 ["createFetchImageFunction"]
  GETTABLEKS R7 R0 K0 ["UserId"]
  GETUPVAL R8 5
  GETUPVAL R9 6
  CALL R6 3 1
  SETTABLEKS R6 R5 K21 ["FetchImageFunctionConsoleVR"]
  SETTABLEKS R1 R5 K22 ["PromptCompletedCallback"]
  NAMECALL R3 R3 K29 ["CreatePrompt"]
  CALL R3 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["UserId"]
  LOADN R2 0
  JUMPIFNOTLT R1 R2 [+5]
  GETIMPORT R1 K2 [error]
  LOADK R2 K3 ["PromptSendFriendRequest can not be called for guests!"]
  CALL R1 1 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K5 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K6 ["Instance"] [+27]
  LOADK R3 K7 ["Player"]
  NAMECALL R1 R0 K8 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+21]
  GETTABLEKS R1 R0 K0 ["UserId"]
  LOADN R2 0
  JUMPIFNOTLT R1 R2 [+5]
  GETIMPORT R1 K2 [error]
  LOADK R2 K9 ["PromptSendFriendRequest can not be called on guests!"]
  CALL R1 1 0
  GETUPVAL R1 0
  JUMPIFNOTEQ R0 R1 [+5]
  GETIMPORT R1 K2 [error]
  LOADK R2 K10 ["PromptSendFriendRequest: A user can not friend themselves!"]
  CALL R1 1 0
  GETGLOBAL R1 K11 ["DoPromptRequestFriendPlayer"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETIMPORT R1 K2 [error]
  LOADK R2 K12 ["Invalid argument to PromptSendFriendRequest"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["RevokeFriendship"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R1 1 1
  RETURN R1 1

PROTO_14:
  JUMPIFNOT R0 [+92]
  GETGLOBAL R1 K0 ["UnFriendPlayer"]
  GETUPVAL R2 0
  CALL R1 1 1
  JUMPIF R1 [+87]
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["IsCurrentlyPrompting"]
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K3 [wait]
  CALL R2 0 0
  JUMPBACK [-9]
  GETIMPORT R2 K6 [string.format]
  LOADK R3 K7 ["An error occurred while unfriending %s. Please try again later."]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["Name"]
  CALL R2 2 1
  GETUPVAL R3 2
  JUMPIFNOT R3 [+19]
  GETIMPORT R3 K10 [string.gsub]
  MOVE R5 R2
  GETIMPORT R6 K12 [pcall]
  LOADK R8 K13 ["FriendPlayerPrompt.promptCompletedCallback.UnknownError"]
  NEWCLOSURE R7 P0
  CAPTURE REF R5
  CAPTURE UPVAL U3
  CAPTURE VAL R8
  CALL R6 1 0
  MOVE R4 R5
  CLOSEUPVALS R5
  LOADK R5 K14 ["{RBX_NAME}"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["Name"]
  CALL R3 3 1
  MOVE R2 R3
  GETUPVAL R3 1
  DUPTABLE R5 K24 [{"WindowTitle", "MainText", "ConfirmationText", "CancelActive", "Image", "ImageConsoleVR", "FetchImageFunction", "FetchImageFunctionConsoleVR", "StripeColor"}]
  LOADK R6 K25 ["Error Unfriending Person"]
  SETTABLEKS R6 R5 K15 ["WindowTitle"]
  SETTABLEKS R2 R5 K16 ["MainText"]
  LOADK R6 K26 ["Okay"]
  SETTABLEKS R6 R5 K17 ["ConfirmationText"]
  LOADB R6 0
  SETTABLEKS R6 R5 K18 ["CancelActive"]
  LOADK R6 K27 [""]
  SETTABLEKS R6 R5 K19 ["Image"]
  LOADK R6 K27 [""]
  SETTABLEKS R6 R5 K20 ["ImageConsoleVR"]
  GETGLOBAL R6 K28 ["createFetchImageFunction"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K29 ["UserId"]
  GETUPVAL R8 4
  GETUPVAL R9 5
  CALL R6 3 1
  SETTABLEKS R6 R5 K21 ["FetchImageFunction"]
  GETGLOBAL R6 K28 ["createFetchImageFunction"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K29 ["UserId"]
  GETUPVAL R8 6
  GETUPVAL R9 7
  CALL R6 3 1
  SETTABLEKS R6 R5 K22 ["FetchImageFunctionConsoleVR"]
  GETIMPORT R6 K32 [Color3.fromRGB]
  LOADN R7 183
  LOADN R8 34
  LOADN R9 54
  CALL R6 3 1
  SETTABLEKS R6 R5 K23 ["StripeColor"]
  NAMECALL R3 R3 K33 ["CreatePrompt"]
  CALL R3 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["UserId"]
  NAMECALL R1 R1 K1 ["IsFriendsWith"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  GETIMPORT R2 K4 [string.format]
  LOADK R3 K5 ["Would you like to remove %s from your friends list?"]
  GETTABLEKS R4 R0 K6 ["Name"]
  CALL R2 2 1
  GETUPVAL R3 2
  JUMPIFNOT R3 [+18]
  GETIMPORT R3 K8 [string.gsub]
  MOVE R5 R2
  GETIMPORT R6 K10 [pcall]
  LOADK R8 K11 ["FriendPlayerPrompt.DoPromptUnfriendPlayer"]
  NEWCLOSURE R7 P1
  CAPTURE REF R5
  CAPTURE UPVAL U3
  CAPTURE VAL R8
  CALL R6 1 0
  MOVE R4 R5
  CLOSEUPVALS R5
  LOADK R5 K12 ["{RBX_NAME}"]
  GETTABLEKS R6 R0 K6 ["Name"]
  CALL R3 3 1
  MOVE R2 R3
  GETUPVAL R3 1
  DUPTABLE R5 K23 [{"WindowTitle", "MainText", "ConfirmationText", "CancelText", "CancelActive", "Image", "ImageConsoleVR", "FetchImageFunction", "FetchImageFunctionConsoleVR", "PromptCompletedCallback"}]
  LOADK R6 K24 ["Unfriend Person?"]
  SETTABLEKS R6 R5 K13 ["WindowTitle"]
  SETTABLEKS R2 R5 K14 ["MainText"]
  LOADK R6 K25 ["Unfriend"]
  SETTABLEKS R6 R5 K15 ["ConfirmationText"]
  LOADK R6 K26 ["Cancel"]
  SETTABLEKS R6 R5 K16 ["CancelText"]
  LOADB R6 1
  SETTABLEKS R6 R5 K17 ["CancelActive"]
  LOADK R6 K27 [""]
  SETTABLEKS R6 R5 K18 ["Image"]
  LOADK R6 K27 [""]
  SETTABLEKS R6 R5 K19 ["ImageConsoleVR"]
  GETGLOBAL R6 K28 ["createFetchImageFunction"]
  GETTABLEKS R7 R0 K0 ["UserId"]
  GETUPVAL R8 4
  GETUPVAL R9 5
  CALL R6 3 1
  SETTABLEKS R6 R5 K20 ["FetchImageFunction"]
  GETGLOBAL R6 K28 ["createFetchImageFunction"]
  GETTABLEKS R7 R0 K0 ["UserId"]
  GETUPVAL R8 6
  GETUPVAL R9 7
  CALL R6 3 1
  SETTABLEKS R6 R5 K21 ["FetchImageFunctionConsoleVR"]
  SETTABLEKS R1 R5 K22 ["PromptCompletedCallback"]
  NAMECALL R3 R3 K29 ["CreatePrompt"]
  CALL R3 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["UserId"]
  LOADN R2 0
  JUMPIFNOTLT R1 R2 [+5]
  GETIMPORT R1 K2 [error]
  LOADK R2 K3 ["PromptUnfriend can not be called for guests!"]
  CALL R1 1 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K5 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K6 ["Instance"] [+27]
  LOADK R3 K7 ["Player"]
  NAMECALL R1 R0 K8 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+21]
  GETTABLEKS R1 R0 K0 ["UserId"]
  LOADN R2 0
  JUMPIFNOTLT R1 R2 [+5]
  GETIMPORT R1 K2 [error]
  LOADK R2 K9 ["PromptUnfriend can not be called on guests!"]
  CALL R1 1 0
  GETUPVAL R1 0
  JUMPIFNOTEQ R0 R1 [+5]
  GETIMPORT R1 K2 [error]
  LOADK R2 K10 ["PromptUnfriend: A user can not unfriend themselves!"]
  CALL R1 1 0
  GETGLOBAL R1 K11 ["DoPromptUnfriendPlayer"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETIMPORT R1 K2 [error]
  LOADK R2 K12 ["Invalid argument to PromptUnfriend"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StarterGui"]
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
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["CorePackages"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETTABLEKS R5 R2 K8 ["RobloxGui"]
  GETTABLEKS R6 R1 K9 ["LocalPlayer"]
  JUMPIFNOTEQKNIL R6 [+9]
  GETTABLEKS R7 R1 K10 ["ChildAdded"]
  NAMECALL R7 R7 K11 ["wait"]
  CALL R7 1 0
  GETTABLEKS R6 R1 K9 ["LocalPlayer"]
  JUMPBACK [-10]
  GETTABLEKS R7 R5 K12 ["Modules"]
  GETIMPORT R8 K14 [require]
  GETTABLEKS R9 R7 K15 ["PromptCreator"]
  CALL R8 1 1
  GETIMPORT R9 K14 [require]
  GETTABLEKS R10 R7 K16 ["SocialUtil"]
  CALL R9 1 1
  GETIMPORT R10 K14 [require]
  GETTABLEKS R11 R7 K17 ["FriendingUtility"]
  CALL R10 1 1
  GETIMPORT R11 K14 [require]
  GETTABLEKS R12 R7 K18 ["RobloxTranslator"]
  CALL R11 1 1
  GETIMPORT R12 K14 [require]
  GETTABLEKS R14 R7 K19 ["Common"]
  GETTABLEKS R13 R14 K20 ["LegacyThumbnailUrls"]
  CALL R12 1 1
  GETIMPORT R13 K14 [require]
  GETTABLEKS R15 R7 K21 ["Flags"]
  GETTABLEKS R14 R15 K22 ["FFlagRemoveHardCodedFriendLimitPrompt"]
  CALL R13 1 1
  GETTABLEKS R14 R12 K23 ["Thumbnail"]
  GETTABLEKS R15 R12 K24 ["Bust"]
  GETIMPORT R16 K28 [Enum.ThumbnailSize.Size150x150]
  GETIMPORT R17 K30 [Enum.ThumbnailSize.Size352x352]
  GETIMPORT R18 K33 [Enum.ThumbnailType.HeadShot]
  GETIMPORT R19 K35 [Enum.ThumbnailType.AvatarThumbnail]
  GETIMPORT R20 K37 [pcall]
  DUPCLOSURE R21 K38 [PROTO_0]
  CALL R20 1 2
  AND R22 R20 R21
  DUPCLOSURE R23 K39 [PROTO_2]
  CAPTURE VAL R11
  DUPCLOSURE R24 K40 [PROTO_5]
  CAPTURE VAL R9
  SETGLOBAL R24 K41 ["createFetchImageFunction"]
  NEWCLOSURE R24 P3
  CAPTURE VAL R3
  CAPTURE REF R6
  SETGLOBAL R24 K42 ["SendFriendRequest"]
  DUPCLOSURE R24 K43 [PROTO_8]
  CAPTURE VAL R13
  CAPTURE VAL R10
  SETGLOBAL R24 K44 ["AtFriendLimit"]
  NEWCLOSURE R24 P5
  CAPTURE REF R6
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R22
  CAPTURE VAL R11
  SETGLOBAL R24 K45 ["DoPromptRequestFriendPlayer"]
  NEWCLOSURE R24 P6
  CAPTURE REF R6
  SETGLOBAL R24 K46 ["PromptRequestFriendPlayer"]
  NEWCLOSURE R24 P7
  CAPTURE REF R6
  SETGLOBAL R24 K47 ["UnFriendPlayer"]
  NEWCLOSURE R24 P8
  CAPTURE REF R6
  CAPTURE VAL R8
  CAPTURE VAL R22
  CAPTURE VAL R11
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R19
  SETGLOBAL R24 K48 ["DoPromptUnfriendPlayer"]
  NEWCLOSURE R24 P9
  CAPTURE REF R6
  SETGLOBAL R24 K49 ["PromptUnfriendPlayer"]
  LOADK R26 K50 ["PromptSendFriendRequest"]
  GETGLOBAL R27 K46 ["PromptRequestFriendPlayer"]
  NAMECALL R24 R0 K51 ["RegisterSetCore"]
  CALL R24 3 0
  LOADK R26 K52 ["PromptUnfriend"]
  GETGLOBAL R27 K49 ["PromptUnfriendPlayer"]
  NAMECALL R24 R0 K51 ["RegisterSetCore"]
  CALL R24 3 0
  CLOSEUPVALS R6
  RETURN R0 0
