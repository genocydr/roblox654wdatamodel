PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["toggleVisibility"]
  CALL R0 1 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["storeForLocalPlayer"]
  GETUPVAL R1 3
  CALL R1 0 1
  LOADB R2 1
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getVisible"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"integrationId", "isIconVisible", "shouldShowCustomBadge", "isSquadIndicatorEnabled"}]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K1 ["integrationId"]
  GETTABLEKS R4 R0 K6 ["visible"]
  SETTABLEKS R4 R3 K2 ["isIconVisible"]
  GETUPVAL R5 3
  NOT R4 R5
  SETTABLEKS R4 R3 K3 ["shouldShowCustomBadge"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K4 ["isSquadIndicatorEnabled"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  JUMPIFEQKN R0 K0 [0] [+2]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["notification"]
  NAMECALL R2 R2 K2 ["clear"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["notification"]
  MOVE R4 R0
  NAMECALL R2 R2 K3 ["fireCount"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["default"]
  GETTABLEKS R1 R2 K1 ["unreadCount"]
  JUMPIFNOTEQKS R0 K2 [""] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFEQKN R1 K3 [0] [+2]
  JUMPIFNOT R2 [+7]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["notification"]
  NAMECALL R3 R3 K5 ["clear"]
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["notification"]
  MOVE R5 R1
  NAMECALL R3 R3 K6 ["fireCount"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["default"]
  GETTABLEKS R2 R3 K1 ["currentSquadId"]
  JUMPIFNOTEQKS R2 K2 [""] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFEQKN R0 K3 [0] [+2]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["notification"]
  NAMECALL R2 R2 K5 ["clear"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["notification"]
  MOVE R4 R0
  NAMECALL R2 R2 K6 ["fireCount"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  JUMPIFNOTEQKN R0 K0 [0] [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["notification"]
  NAMECALL R1 R1 K2 ["clear"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["notification"]
  MOVE R3 R0
  NAMECALL R1 R1 K3 ["fireCount"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  JUMPIFNOTEQKN R0 K0 [0] [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["notification"]
  NAMECALL R1 R1 K2 ["clear"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["notification"]
  MOVE R3 R0
  NAMECALL R1 R1 K3 ["fireCount"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  JUMPIFNOT R0 [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["push"]
  GETUPVAL R2 1
  GETIMPORT R3 K4 [Enum.OverrideMouseIconBehavior.ForceShow]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["pop"]
  GETUPVAL R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  LOADB R2 0
  JUMPIFNOTEQKS R0 K0 ["connect_unibar"] [+8]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["getSquadEntrypointsEnabled"]
  CALL R2 0 1
  GETUPVAL R3 2
  DUPTABLE R5 K8 [{"id", "label", "activated", "isActivated", "components", "initialAvailability"}]
  SETTABLEKS R0 R5 K2 ["id"]
  GETUPVAL R7 3
  CALL R7 0 1
  JUMPIFNOT R7 [+7]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["getSquadEntrypointsEnabled"]
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  LOADK R6 K9 ["Feature.Squads.Label.Party"]
  JUMP [+6]
  GETUPVAL R7 4
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  LOADK R6 K10 ["Feature.Chat.Label.RobloxChat"]
  JUMP [+1]
  LOADK R6 K11 ["Feature.Chat.Label.Connect"]
  SETTABLEKS R6 R5 K3 ["label"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  SETTABLEKS R6 R5 K4 ["activated"]
  DUPCLOSURE R6 K13 [PROTO_1]
  CAPTURE UPVAL U5
  SETTABLEKS R6 R5 K5 ["isActivated"]
  DUPTABLE R6 K15 [{"Icon"}]
  NEWCLOSURE R7 P2
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K14 ["Icon"]
  SETTABLEKS R6 R5 K6 ["components"]
  SETTABLEKS R1 R5 K7 ["initialAvailability"]
  NAMECALL R3 R3 K16 ["register"]
  CALL R3 2 1
  GETUPVAL R4 11
  JUMPIFNOT R4 [+92]
  JUMPIFNOT R2 [+58]
  NEWCLOSURE R4 P3
  CAPTURE VAL R3
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K17 ["default"]
  GETTABLEKS R6 R7 K18 ["currentSquadIdSignal"]
  GETTABLEKS R5 R6 K19 ["Event"]
  NEWCLOSURE R7 P4
  CAPTURE UPVAL U5
  CAPTURE VAL R3
  NAMECALL R5 R5 K20 ["Connect"]
  CALL R5 2 0
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K17 ["default"]
  GETTABLEKS R6 R7 K21 ["unreadCountSignal"]
  GETTABLEKS R5 R6 K19 ["Event"]
  NEWCLOSURE R7 P5
  CAPTURE UPVAL U5
  CAPTURE VAL R3
  NAMECALL R5 R5 K20 ["Connect"]
  CALL R5 2 0
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K17 ["default"]
  GETTABLEKS R5 R6 K22 ["unreadCount"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K17 ["default"]
  GETTABLEKS R7 R8 K23 ["currentSquadId"]
  JUMPIFNOTEQKS R7 K24 [""] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  JUMPIFEQKN R5 K25 [0] [+2]
  JUMPIFNOT R6 [+6]
  GETTABLEKS R7 R3 K26 ["notification"]
  NAMECALL R7 R7 K27 ["clear"]
  CALL R7 1 0
  JUMP [+40]
  GETTABLEKS R7 R3 K26 ["notification"]
  MOVE R9 R5
  NAMECALL R7 R7 K28 ["fireCount"]
  CALL R7 2 0
  JUMP [+33]
  NEWCLOSURE R4 P6
  CAPTURE VAL R3
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K17 ["default"]
  GETTABLEKS R6 R7 K21 ["unreadCountSignal"]
  GETTABLEKS R5 R6 K19 ["Event"]
  NEWCLOSURE R7 P7
  CAPTURE VAL R3
  NAMECALL R5 R5 K20 ["Connect"]
  CALL R5 2 0
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K17 ["default"]
  GETTABLEKS R5 R6 K22 ["unreadCount"]
  JUMPIFNOTEQKN R5 K25 [0] [+7]
  GETTABLEKS R6 R3 K26 ["notification"]
  NAMECALL R6 R6 K27 ["clear"]
  CALL R6 1 0
  JUMP [+6]
  GETTABLEKS R6 R3 K26 ["notification"]
  MOVE R8 R5
  NAMECALL R6 R6 K28 ["fireCount"]
  CALL R6 2 0
  GETUPVAL R4 12
  JUMPIFNOT R4 [+18]
  GETUPVAL R5 13
  GETTABLEKS R4 R5 K29 ["named"]
  LOADK R5 K30 ["InExperienceRobloxConnect"]
  CALL R4 1 1
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K17 ["default"]
  GETTABLEKS R6 R7 K31 ["visibilitySignal"]
  GETTABLEKS R5 R6 K19 ["Event"]
  NEWCLOSURE R7 P8
  CAPTURE UPVAL U14
  CAPTURE VAL R4
  NAMECALL R5 R5 K20 ["Connect"]
  CALL R5 2 0
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Chrome"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R0 K12 ["Service"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K14 ["ConnectIcon"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K15 ["Workspace"]
  GETTABLEKS R7 R8 K10 ["Packages"]
  GETTABLEKS R6 R7 K16 ["AppChat"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K17 ["App"]
  GETTABLEKS R6 R7 K18 ["InExperienceAppChatModal"]
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R0 K19 ["ChromeShared"]
  GETTABLEKS R9 R10 K12 ["Service"]
  GETTABLEKS R8 R9 K20 ["LocalStore"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K21 ["Flags"]
  GETTABLEKS R9 R10 K22 ["GetFFlagAppChatInExpConnectIconEnableSquadIndicator"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R0 K21 ["Flags"]
  GETTABLEKS R10 R11 K23 ["GetFStringConnectTooltipLocalStorageKey"]
  CALL R9 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R1 K15 ["Workspace"]
  GETTABLEKS R13 R14 K10 ["Packages"]
  GETTABLEKS R12 R13 K24 ["SharedFlags"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K25 ["FFlagEnableUnibarFtuxTooltips"]
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R1 K26 ["InGameServices"]
  GETTABLEKS R12 R13 K27 ["MouseIconOverrideService"]
  CALL R11 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R1 K15 ["Workspace"]
  GETTABLEKS R15 R16 K10 ["Packages"]
  GETTABLEKS R14 R15 K28 ["AppCommonLib"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K29 ["Symbol"]
  GETIMPORT R13 K5 [game]
  LOADK R15 K30 ["AppChatInExpForceCursor"]
  LOADB R16 0
  NAMECALL R13 R13 K31 ["DefineFastFlag"]
  CALL R13 3 1
  GETIMPORT R14 K5 [game]
  LOADK R16 K32 ["AppChatInExpUseUnibarNotification"]
  LOADB R17 0
  NAMECALL R14 R14 K31 ["DefineFastFlag"]
  CALL R14 3 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R19 R1 K15 ["Workspace"]
  GETTABLEKS R18 R19 K10 ["Packages"]
  GETTABLEKS R17 R18 K33 ["SocialExperiments"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K34 ["SquadExperimentation"]
  GETIMPORT R17 K9 [require]
  GETTABLEKS R20 R1 K15 ["Workspace"]
  GETTABLEKS R19 R20 K10 ["Packages"]
  GETTABLEKS R18 R19 K24 ["SharedFlags"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K35 ["GetFFlagAppChatInExperienceRenameToRobloxChat"]
  GETIMPORT R18 K9 [require]
  GETTABLEKS R21 R1 K15 ["Workspace"]
  GETTABLEKS R20 R21 K10 ["Packages"]
  GETTABLEKS R19 R20 K24 ["SharedFlags"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K36 ["GetFFlagAppChatRebrandStringUpdates"]
  DUPCLOSURE R18 K37 [PROTO_9]
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R3
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R11
  RETURN R18 1
