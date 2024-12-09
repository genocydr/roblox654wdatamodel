PROTO_0:
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

PROTO_1:
  GETIMPORT R1 K1 [spawn]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  GETVARARGS R1 -1
  SETLIST R0 R1 -1 [1]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_3:
  JUMPIFNOT R0 [+72]
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["BlockPlayerAsync"]
  CALL R1 2 1
  JUMPIF R1 [+66]
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["IsCurrentlyPrompting"]
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K3 [wait]
  CALL R2 0 0
  JUMPBACK [-9]
  GETUPVAL R2 2
  DUPTABLE R4 K13 [{"WindowTitle", "MainText", "ConfirmationText", "CancelActive", "Image", "ImageConsoleVR", "FetchImageFunction", "FetchImageFunctionConsoleVR", "StripeColor"}]
  LOADK R5 K14 ["Error Blocking User"]
  SETTABLEKS R5 R4 K4 ["WindowTitle"]
  GETIMPORT R5 K17 [string.format]
  LOADK R6 K18 ["An error occurred while blocking %s. Please try again later."]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K19 ["Name"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["MainText"]
  LOADK R5 K20 ["Okay"]
  SETTABLEKS R5 R4 K6 ["ConfirmationText"]
  LOADB R5 0
  SETTABLEKS R5 R4 K7 ["CancelActive"]
  LOADK R5 K21 [""]
  SETTABLEKS R5 R4 K8 ["Image"]
  LOADK R5 K21 [""]
  SETTABLEKS R5 R4 K9 ["ImageConsoleVR"]
  GETGLOBAL R5 K22 ["createFetchImageFunction"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K23 ["UserId"]
  GETUPVAL R7 3
  GETUPVAL R8 4
  CALL R5 3 1
  SETTABLEKS R5 R4 K10 ["FetchImageFunction"]
  GETGLOBAL R5 K22 ["createFetchImageFunction"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K23 ["UserId"]
  GETUPVAL R7 5
  GETUPVAL R8 6
  CALL R5 3 1
  SETTABLEKS R5 R4 K11 ["FetchImageFunctionConsoleVR"]
  GETIMPORT R5 K26 [Color3.fromRGB]
  LOADN R6 183
  LOADN R7 34
  LOADN R8 54
  CALL R5 3 1
  SETTABLEKS R5 R4 K12 ["StripeColor"]
  NAMECALL R2 R2 K27 ["CreatePrompt"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["UserId"]
  NAMECALL R1 R1 K1 ["IsPlayerBlockedByUserId"]
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  GETUPVAL R2 1
  DUPTABLE R4 K12 [{"WindowTitle", "MainText", "ConfirmationText", "CancelText", "CancelActive", "Image", "ImageConsoleVR", "FetchImageFunction", "FetchImageFunctionConsoleVR", "PromptCompletedCallback"}]
  LOADK R5 K13 ["Confirm Block"]
  SETTABLEKS R5 R4 K2 ["WindowTitle"]
  GETIMPORT R5 K16 [string.format]
  LOADK R6 K17 ["Are you sure you want to block %s?"]
  GETTABLEKS R7 R0 K18 ["Name"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["MainText"]
  LOADK R5 K19 ["Block"]
  SETTABLEKS R5 R4 K4 ["ConfirmationText"]
  LOADK R5 K20 ["Cancel"]
  SETTABLEKS R5 R4 K5 ["CancelText"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["CancelActive"]
  LOADK R5 K21 [""]
  SETTABLEKS R5 R4 K7 ["Image"]
  LOADK R5 K21 [""]
  SETTABLEKS R5 R4 K8 ["ImageConsoleVR"]
  GETGLOBAL R5 K22 ["createFetchImageFunction"]
  GETTABLEKS R6 R0 K0 ["UserId"]
  GETUPVAL R7 2
  GETUPVAL R8 3
  CALL R5 3 1
  SETTABLEKS R5 R4 K9 ["FetchImageFunction"]
  GETGLOBAL R5 K22 ["createFetchImageFunction"]
  GETTABLEKS R6 R0 K0 ["UserId"]
  GETUPVAL R7 4
  GETUPVAL R8 5
  CALL R5 3 1
  SETTABLEKS R5 R4 K10 ["FetchImageFunctionConsoleVR"]
  SETTABLEKS R1 R4 K11 ["PromptCompletedCallback"]
  NAMECALL R2 R2 K23 ["CreatePrompt"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["UserId"]
  LOADN R2 0
  JUMPIFNOTLT R1 R2 [+5]
  GETIMPORT R1 K2 [error]
  LOADK R2 K3 ["PromptBlockPlayer can not be called for guests!"]
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
  LOADK R2 K9 ["PromptBlockPlayer can not be called on guests!"]
  CALL R1 1 0
  GETUPVAL R1 0
  JUMPIFNOTEQ R0 R1 [+5]
  GETIMPORT R1 K2 [error]
  LOADK R2 K10 ["PromptBlockPlayer: A user can not block themselves!"]
  CALL R1 1 0
  GETGLOBAL R1 K11 ["DoPromptBlockPlayer"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETIMPORT R1 K2 [error]
  LOADK R2 K12 ["Invalid argument to PromptBlockPlayer"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  JUMPIFNOT R0 [+69]
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["UnblockPlayerAsync"]
  CALL R1 2 1
  JUMPIF R1 [+63]
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["IsCurrentlyPrompting"]
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K3 [wait]
  CALL R2 0 0
  JUMPBACK [-9]
  GETUPVAL R2 2
  DUPTABLE R4 K12 [{"WindowTitle", "MainText", "ConfirmationText", "Image", "ImageConsoleVR", "FetchImageFunction", "FetchImageFunctionConsoleVR", "StripeColor"}]
  LOADK R5 K13 ["Error Unblocking User"]
  SETTABLEKS R5 R4 K4 ["WindowTitle"]
  GETIMPORT R5 K16 [string.format]
  LOADK R6 K17 ["An error occurred while unblocking %s. Please try again later."]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K18 ["Name"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["MainText"]
  LOADK R5 K19 ["Okay"]
  SETTABLEKS R5 R4 K6 ["ConfirmationText"]
  LOADK R5 K20 [""]
  SETTABLEKS R5 R4 K7 ["Image"]
  LOADK R5 K20 [""]
  SETTABLEKS R5 R4 K8 ["ImageConsoleVR"]
  GETGLOBAL R5 K21 ["createFetchImageFunction"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K22 ["UserId"]
  GETUPVAL R7 3
  GETUPVAL R8 4
  CALL R5 3 1
  SETTABLEKS R5 R4 K9 ["FetchImageFunction"]
  GETGLOBAL R5 K21 ["createFetchImageFunction"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K22 ["UserId"]
  GETUPVAL R7 5
  GETUPVAL R8 6
  CALL R5 3 1
  SETTABLEKS R5 R4 K10 ["FetchImageFunctionConsoleVR"]
  GETIMPORT R5 K25 [Color3.fromRGB]
  LOADN R6 183
  LOADN R7 34
  LOADN R8 54
  CALL R5 3 1
  SETTABLEKS R5 R4 K11 ["StripeColor"]
  NAMECALL R2 R2 K26 ["CreatePrompt"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K0 ["UserId"]
  NAMECALL R2 R2 K1 ["IsPlayerBlockedByUserId"]
  CALL R2 2 1
  NOT R1 R2
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  GETUPVAL R2 1
  DUPTABLE R4 K12 [{"WindowTitle", "MainText", "ConfirmationText", "CancelText", "CancelActive", "Image", "ImageConsoleVR", "FetchImageFunction", "FetchImageFunctionConsoleVR", "PromptCompletedCallback"}]
  LOADK R5 K13 ["Confirm Unblock"]
  SETTABLEKS R5 R4 K2 ["WindowTitle"]
  GETIMPORT R5 K16 [string.format]
  LOADK R6 K17 ["Would you like to unblock %s?"]
  GETTABLEKS R7 R0 K18 ["Name"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["MainText"]
  LOADK R5 K19 ["Unblock"]
  SETTABLEKS R5 R4 K4 ["ConfirmationText"]
  LOADK R5 K20 ["Cancel"]
  SETTABLEKS R5 R4 K5 ["CancelText"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["CancelActive"]
  LOADK R5 K21 [""]
  SETTABLEKS R5 R4 K7 ["Image"]
  LOADK R5 K21 [""]
  SETTABLEKS R5 R4 K8 ["ImageConsoleVR"]
  GETGLOBAL R5 K22 ["createFetchImageFunction"]
  GETTABLEKS R6 R0 K0 ["UserId"]
  GETUPVAL R7 2
  GETUPVAL R8 3
  CALL R5 3 1
  SETTABLEKS R5 R4 K9 ["FetchImageFunction"]
  GETGLOBAL R5 K22 ["createFetchImageFunction"]
  GETTABLEKS R6 R0 K0 ["UserId"]
  GETUPVAL R7 4
  GETUPVAL R8 5
  CALL R5 3 1
  SETTABLEKS R5 R4 K10 ["FetchImageFunctionConsoleVR"]
  SETTABLEKS R1 R4 K11 ["PromptCompletedCallback"]
  NAMECALL R2 R2 K23 ["CreatePrompt"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["UserId"]
  LOADN R2 0
  JUMPIFNOTLT R1 R2 [+5]
  GETIMPORT R1 K2 [error]
  LOADK R2 K3 ["PromptUnblockPlayer can not be called for guests!"]
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
  LOADK R2 K9 ["PromptUnblockPlayer can not be called on guests!"]
  CALL R1 1 0
  GETUPVAL R1 0
  JUMPIFNOTEQ R0 R1 [+5]
  GETIMPORT R1 K2 [error]
  LOADK R2 K10 ["PromptUnblockPlayer: A user can not block themselves!"]
  CALL R1 1 0
  GETGLOBAL R1 K11 ["DoPromptUnblockPlayer"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETIMPORT R1 K2 [error]
  LOADK R2 K12 ["Invalid argument to PromptUnblockPlayer"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["UserId"]
  LOADN R1 0
  JUMPIFNOTLT R0 R1 [+5]
  GETIMPORT R0 K2 [error]
  LOADK R1 K3 ["GetBlockedUserIds can not be called for guests!"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K4 ["GetBlockedUserIdsAsync"]
  CALL R0 1 -1
  RETURN R0 -1

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
  LOADK R5 K6 ["CorePackages"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R2 K7 ["RobloxGui"]
  GETTABLEKS R5 R1 K8 ["LocalPlayer"]
  JUMPIFNOTEQKNIL R5 [+9]
  GETTABLEKS R6 R1 K9 ["ChildAdded"]
  NAMECALL R6 R6 K10 ["wait"]
  CALL R6 1 0
  GETTABLEKS R5 R1 K8 ["LocalPlayer"]
  JUMPBACK [-10]
  GETTABLEKS R6 R4 K11 ["Modules"]
  GETIMPORT R7 K13 [require]
  GETTABLEKS R8 R6 K14 ["PromptCreator"]
  CALL R7 1 1
  GETIMPORT R8 K13 [require]
  GETTABLEKS R9 R6 K15 ["SocialUtil"]
  CALL R8 1 1
  GETIMPORT R9 K13 [require]
  GETTABLEKS R10 R6 K16 ["BlockingUtility"]
  CALL R9 1 1
  GETIMPORT R10 K20 [Enum.ThumbnailSize.Size150x150]
  GETIMPORT R11 K22 [Enum.ThumbnailSize.Size352x352]
  GETIMPORT R12 K25 [Enum.ThumbnailType.HeadShot]
  GETIMPORT R13 K27 [Enum.ThumbnailType.AvatarThumbnail]
  DUPCLOSURE R14 K28 [PROTO_2]
  CAPTURE VAL R8
  SETGLOBAL R14 K29 ["createFetchImageFunction"]
  DUPCLOSURE R14 K30 [PROTO_4]
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R13
  SETGLOBAL R14 K31 ["DoPromptBlockPlayer"]
  NEWCLOSURE R14 P2
  CAPTURE REF R5
  SETGLOBAL R14 K32 ["PromptBlockPlayer"]
  DUPCLOSURE R14 K33 [PROTO_7]
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R13
  SETGLOBAL R14 K34 ["DoPromptUnblockPlayer"]
  NEWCLOSURE R14 P4
  CAPTURE REF R5
  SETGLOBAL R14 K35 ["PromptUnblockPlayer"]
  NEWCLOSURE R14 P5
  CAPTURE REF R5
  CAPTURE VAL R9
  SETGLOBAL R14 K36 ["GetBlockedUserIds"]
  LOADK R16 K32 ["PromptBlockPlayer"]
  GETGLOBAL R17 K32 ["PromptBlockPlayer"]
  NAMECALL R14 R0 K37 ["RegisterSetCore"]
  CALL R14 3 0
  LOADK R16 K35 ["PromptUnblockPlayer"]
  GETGLOBAL R17 K35 ["PromptUnblockPlayer"]
  NAMECALL R14 R0 K37 ["RegisterSetCore"]
  CALL R14 3 0
  LOADK R16 K36 ["GetBlockedUserIds"]
  GETGLOBAL R17 K36 ["GetBlockedUserIds"]
  NAMECALL R14 R0 K38 ["RegisterGetCore"]
  CALL R14 3 0
  NAMECALL R14 R9 K39 ["InitBlockListAsync"]
  CALL R14 1 0
  CLOSEUPVALS R5
  RETURN R0 0
