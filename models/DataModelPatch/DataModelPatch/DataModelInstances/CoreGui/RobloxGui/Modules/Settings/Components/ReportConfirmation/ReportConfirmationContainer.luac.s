PROTO_0:
  RETURN R0 0

PROTO_1:
  MOVE R2 R0
  GETUPVAL R3 0
  GETUPVAL R5 1
  NAMECALL R3 R3 K0 ["IsPlayerBlockedByUserId"]
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"absoluteWidth"}]
  GETTABLEKS R4 R0 K2 ["X"]
  SETTABLEKS R4 R3 K0 ["absoluteWidth"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"muteFlipped"}]
  SETTABLEKS R0 R3 K0 ["muteFlipped"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"blockFlipped"}]
  SETTABLEKS R0 R3 K0 ["blockFlipped"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["blockFlipped"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K2 ["muteFlipped"]
  JUMPIFNOT R0 [+33]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K3 ["targetInitiallyBlocked"]
  JUMPIF R2 [+27]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["props"]
  GETTABLEKS R2 R3 K5 ["blockingUtility"]
  GETUPVAL R4 1
  NAMECALL R2 R2 K6 ["BlockPlayerAsync"]
  CALL R2 2 1
  JUMPIFNOT R2 [+53]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K7 ["blockingAnalytics"]
  LOADK R5 K8 ["SettingsHub"]
  LOADK R6 K9 ["blockUser"]
  DUPTABLE R7 K11 [{"blockeeUserId"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K12 ["UserId"]
  SETTABLEKS R8 R7 K10 ["blockeeUserId"]
  NAMECALL R3 R3 K13 ["action"]
  CALL R3 4 0
  JUMP [+36]
  JUMPIF R0 [+35]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K3 ["targetInitiallyBlocked"]
  JUMPIFNOT R2 [+29]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+26]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["props"]
  GETTABLEKS R2 R3 K5 ["blockingUtility"]
  GETUPVAL R4 1
  NAMECALL R2 R2 K14 ["UnblockPlayerAsync"]
  CALL R2 2 1
  JUMPIFNOT R2 [+16]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K7 ["blockingAnalytics"]
  LOADK R5 K8 ["SettingsHub"]
  LOADK R6 K15 ["unblockUser"]
  DUPTABLE R7 K11 [{"blockeeUserId"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K12 ["UserId"]
  SETTABLEKS R8 R7 K10 ["blockeeUserId"]
  NAMECALL R3 R3 K13 ["action"]
  CALL R3 4 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["props"]
  GETTABLEKS R4 R5 K16 ["voiceChatServiceManager"]
  GETTABLEKS R3 R4 K17 ["participants"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K12 ["UserId"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K19 [tostring]
  CALL R4 1 1
  GETTABLE R2 R3 R4
  JUMPIFNOT R1 [+45]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["state"]
  GETTABLEKS R3 R4 K20 ["targetInitiallyVoiceMuted"]
  JUMPIF R3 [+39]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K5 ["blockingUtility"]
  GETUPVAL R5 1
  NAMECALL R3 R3 K21 ["MutePlayer"]
  CALL R3 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K22 ["reportAbuseAnalytics"]
  LOADK R5 K23 ["muteUser"]
  NAMECALL R3 R3 K24 ["reportEventAndIncrement"]
  CALL R3 2 0
  JUMPIFNOT R2 [+68]
  GETTABLEKS R3 R2 K25 ["isMutedLocally"]
  JUMPIF R3 [+65]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K16 ["voiceChatServiceManager"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K12 ["UserId"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K26 ["VOICE_CONTEXT_TYPE"]
  GETTABLEKS R6 R7 K27 ["REPORT_MENU"]
  NAMECALL R3 R3 K28 ["ToggleMutePlayer"]
  CALL R3 3 0
  JUMP [+48]
  JUMPIF R1 [+47]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["state"]
  GETTABLEKS R3 R4 K20 ["targetInitiallyVoiceMuted"]
  JUMPIFNOT R3 [+41]
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+38]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K5 ["blockingUtility"]
  GETUPVAL R5 1
  NAMECALL R3 R3 K29 ["UnmutePlayer"]
  CALL R3 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K22 ["reportAbuseAnalytics"]
  LOADK R5 K30 ["unmuteUser"]
  NAMECALL R3 R3 K24 ["reportEventAndIncrement"]
  CALL R3 2 0
  JUMPIFNOT R2 [+19]
  GETTABLEKS R3 R2 K25 ["isMutedLocally"]
  JUMPIFNOT R3 [+16]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K16 ["voiceChatServiceManager"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K12 ["UserId"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K26 ["VOICE_CONTEXT_TYPE"]
  GETTABLEKS R6 R7 K27 ["REPORT_MENU"]
  NAMECALL R3 R3 K28 ["ToggleMutePlayer"]
  CALL R3 3 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K31 ["closeMenu"]
  CALL R3 0 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  DUPTABLE R4 K2 [{"blockFlipped", "muteFlipped"}]
  SETTABLEKS R0 R4 K0 ["blockFlipped"]
  SETTABLEKS R1 R4 K1 ["muteFlipped"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  JUMPIF R0 [+1]
  JUMPIFNOT R1 [+14]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["state"]
  GETTABLEKS R2 R3 K5 ["targetInitiallyVoiceMuted"]
  JUMPIFNOTEQ R1 R2 [+13]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["state"]
  GETTABLEKS R2 R3 K6 ["targetInitiallyBlocked"]
  JUMPIFNOTEQ R0 R2 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["processMuteAndBlocking"]
  CALL R2 0 0
  RETURN R0 0
  GETUPVAL R2 0
  DUPTABLE R4 K9 [{"currentPage"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["ConfirmAction"]
  SETTABLEKS R5 R4 K8 ["currentPage"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["processMuteAndBlocking"]
  CALL R0 0 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"currentPage"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["SelectActions"]
  SETTABLEKS R3 R2 K0 ["currentPage"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"targetInitiallyBlocked", "blockFlipped"}]
  SETTABLEKS R0 R3 K0 ["targetInitiallyBlocked"]
  SETTABLEKS R0 R3 K1 ["blockFlipped"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["player"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["voiceChatServiceManager"]
  GETTABLEKS R2 R3 K3 ["participants"]
  DUPTABLE R5 K5 [{"absoluteWidth"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K4 ["absoluteWidth"]
  NAMECALL R3 R0 K6 ["setState"]
  CALL R3 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K7 ["onSizeChanged"]
  JUMPIFNOT R3 [+9]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K7 ["onSizeChanged"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K8 ["Connect"]
  CALL R3 2 0
  GETTABLEKS R5 R1 K9 ["UserId"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K11 [tostring]
  CALL R4 1 1
  GETTABLE R3 R2 R4
  GETTABLEKS R5 R1 K12 ["DisplayName"]
  LOADK R6 K13 ["(@"]
  GETTABLEKS R7 R1 K14 ["Name"]
  LOADK R8 K15 [")"]
  CONCAT R4 R5 R8
  SETTABLEKS R4 R0 K16 ["userFullName"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K17 ["onMuteCheckboxActivated"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K18 ["onBlockCheckboxActivated"]
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R4 R0 K19 ["processMuteAndBlocking"]
  NEWCLOSURE R4 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R4 R0 K20 ["onActionSelectionDoneActivated"]
  NEWCLOSURE R4 P5
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K21 ["onYesOrNoConfirmation"]
  NEWCLOSURE R4 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R4 R0 K22 ["onYesOrNoCancel"]
  DUPTABLE R6 K24 [{"currentPage"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K25 ["SelectActions"]
  SETTABLEKS R7 R6 K23 ["currentPage"]
  NAMECALL R4 R0 K6 ["setState"]
  CALL R4 2 0
  JUMPIFNOT R3 [+13]
  DUPTABLE R6 K28 [{"targetInitiallyVoiceMuted", "muteFlipped"}]
  GETTABLEKS R7 R3 K29 ["isMutedLocally"]
  SETTABLEKS R7 R6 K26 ["targetInitiallyVoiceMuted"]
  GETTABLEKS R7 R3 K29 ["isMutedLocally"]
  SETTABLEKS R7 R6 K27 ["muteFlipped"]
  NAMECALL R4 R0 K6 ["setState"]
  CALL R4 2 0
  JUMP [+10]
  DUPTABLE R6 K28 [{"targetInitiallyVoiceMuted", "muteFlipped"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K26 ["targetInitiallyVoiceMuted"]
  LOADB R7 0
  SETTABLEKS R7 R6 K27 ["muteFlipped"]
  NAMECALL R4 R0 K6 ["setState"]
  CALL R4 2 0
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K30 ["blockingUtility"]
  GETTABLEKS R6 R1 K9 ["UserId"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K31 ["new"]
  NEWCLOSURE R8 P7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CALL R7 1 1
  MOVE R4 R7
  NEWCLOSURE R6 P8
  CAPTURE VAL R0
  NAMECALL R4 R4 K32 ["andThen"]
  CALL R4 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["currentPage"]
  LOADK R2 K2 [1.3]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["props"]
  GETTABLEKS R3 R4 K4 ["onSizeChanged"]
  JUMPIFNOT R3 [+16]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["state"]
  GETTABLEKS R3 R4 K5 ["absoluteWidth"]
  LOADN R4 32
  JUMPIFNOTLE R4 R3 [+3]
  LOADK R2 K2 [1.3]
  JUMP [+6]
  LOADN R4 88
  JUMPIFNOTLT R4 R3 [+3]
  LOADN R2 1
  JUMP [+1]
  DIVK R2 R3 K6 [600]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["state"]
  GETTABLEKS R4 R5 K7 ["muteFlipped"]
  JUMPIFEQKNIL R4 [+7]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["state"]
  GETTABLEKS R3 R4 K7 ["muteFlipped"]
  JUMP [+1]
  LOADB R3 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["state"]
  GETTABLEKS R5 R6 K8 ["blockFlipped"]
  JUMPIFEQKNIL R5 [+7]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["state"]
  GETTABLEKS R4 R5 K8 ["blockFlipped"]
  JUMP [+1]
  LOADB R4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K24 [{"titleText", "subtitleText", "instructionText", "muteText", "blockText", "doneText", "showVoiceMuting", "isVoiceMuted", "isBlocked", "onMuteCheckboxActivated", "onBlockCheckboxActivated", "onDoneActivated", "uiScale", "ZIndex"}]
  GETUPVAL R8 3
  LOADK R10 K25 ["Feature.SettingsHub.Heading.Report.ThanksForReport"]
  NAMECALL R8 R8 K26 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["titleText"]
  GETUPVAL R8 3
  LOADK R10 K27 ["Feature.SettingsHub.ReportSubmitted.ThankYou"]
  NAMECALL R8 R8 K26 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["subtitleText"]
  GETUPVAL R8 3
  LOADK R10 K28 ["Feature.SettingsHub.Label.Report.OtherActionsHeader"]
  NAMECALL R8 R8 K26 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["instructionText"]
  GETUPVAL R8 3
  LOADK R10 K29 ["Feature.SettingsHub.ReportSubmitted.MutePlayer"]
  DUPTABLE R11 K31 [{"Player"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K32 ["userFullName"]
  SETTABLEKS R12 R11 K30 ["Player"]
  NAMECALL R8 R8 K26 ["FormatByKey"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K13 ["muteText"]
  GETUPVAL R8 3
  LOADK R10 K33 ["Feature.SettingsHub.ReportSubmitted.BlockPlayer"]
  DUPTABLE R11 K31 [{"Player"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K32 ["userFullName"]
  SETTABLEKS R12 R11 K30 ["Player"]
  NAMECALL R8 R8 K26 ["FormatByKey"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K14 ["blockText"]
  GETUPVAL R8 3
  LOADK R10 K34 ["Feature.SettingsHub.Action.Report.Done"]
  NAMECALL R8 R8 K26 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["doneText"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["props"]
  GETTABLEKS R8 R9 K35 ["isVoiceReport"]
  SETTABLEKS R8 R7 K16 ["showVoiceMuting"]
  MOVE R8 R3
  JUMPIF R8 [+5]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["state"]
  GETTABLEKS R8 R9 K36 ["targetInitiallyVoiceMuted"]
  SETTABLEKS R8 R7 K17 ["isVoiceMuted"]
  MOVE R8 R4
  JUMPIF R8 [+5]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["state"]
  GETTABLEKS R8 R9 K37 ["targetInitiallyBlocked"]
  SETTABLEKS R8 R7 K18 ["isBlocked"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K19 ["onMuteCheckboxActivated"]
  SETTABLEKS R8 R7 K19 ["onMuteCheckboxActivated"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K20 ["onBlockCheckboxActivated"]
  SETTABLEKS R8 R7 K20 ["onBlockCheckboxActivated"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K38 ["onActionSelectionDoneActivated"]
  SETTABLEKS R8 R7 K21 ["onDoneActivated"]
  SETTABLEKS R2 R7 K22 ["uiScale"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["props"]
  GETTABLEKS R8 R9 K23 ["ZIndex"]
  SETTABLEKS R8 R7 K23 ["ZIndex"]
  CALL R5 2 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K50 [{"mutedTitleText", "blockedTitleText", "mutedAndBlockedTitleText", "mutedSubtitleText", "blockedSubtitleText", "mutedAndBlockedSubtitleText", "cancelText", "confirmText", "isMuted", "isBlocked", "onCancelActivated", "onConfirmActivated", "uiScale", "ZIndex"}]
  GETUPVAL R9 3
  LOADK R11 K29 ["Feature.SettingsHub.ReportSubmitted.MutePlayer"]
  DUPTABLE R12 K31 [{"Player"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K32 ["userFullName"]
  SETTABLEKS R13 R12 K30 ["Player"]
  NAMECALL R9 R9 K26 ["FormatByKey"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K39 ["mutedTitleText"]
  GETUPVAL R9 3
  LOADK R11 K33 ["Feature.SettingsHub.ReportSubmitted.BlockPlayer"]
  DUPTABLE R12 K31 [{"Player"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K32 ["userFullName"]
  SETTABLEKS R13 R12 K30 ["Player"]
  NAMECALL R9 R9 K26 ["FormatByKey"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K40 ["blockedTitleText"]
  GETUPVAL R9 3
  LOADK R11 K51 ["Feature.SettingsHub.ReportSubmitted.Label.MuteAndBlockPlayer"]
  DUPTABLE R12 K53 [{"DisplayName"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K32 ["userFullName"]
  SETTABLEKS R13 R12 K52 ["DisplayName"]
  NAMECALL R9 R9 K26 ["FormatByKey"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K41 ["mutedAndBlockedTitleText"]
  GETUPVAL R9 3
  LOADK R11 K54 ["Feature.SettingsHub.ReportSubmitted.MutedSubtitleText"]
  DUPTABLE R12 K31 [{"Player"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K32 ["userFullName"]
  SETTABLEKS R13 R12 K30 ["Player"]
  NAMECALL R9 R9 K26 ["FormatByKey"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K42 ["mutedSubtitleText"]
  GETUPVAL R9 3
  LOADK R11 K55 ["Feature.SettingsHub.ReportSubmitted.BlockedSubtitleText"]
  DUPTABLE R12 K31 [{"Player"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K32 ["userFullName"]
  SETTABLEKS R13 R12 K30 ["Player"]
  NAMECALL R9 R9 K26 ["FormatByKey"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K43 ["blockedSubtitleText"]
  GETUPVAL R9 3
  LOADK R11 K56 ["Feature.SettingsHub.ReportSubmitted.Label.MuteAndBlockWarning"]
  DUPTABLE R12 K31 [{"Player"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K32 ["userFullName"]
  SETTABLEKS R13 R12 K30 ["Player"]
  NAMECALL R9 R9 K26 ["FormatByKey"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K44 ["mutedAndBlockedSubtitleText"]
  GETUPVAL R9 3
  LOADK R11 K57 ["InGame.InspectMenu.Action.Cancel"]
  NAMECALL R9 R9 K26 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K45 ["cancelText"]
  GETUPVAL R9 3
  LOADK R11 K58 ["InGame.InspectMenu.Action.Confirm"]
  NAMECALL R9 R9 K26 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K46 ["confirmText"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["state"]
  GETTABLEKS R9 R10 K7 ["muteFlipped"]
  SETTABLEKS R9 R8 K47 ["isMuted"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["state"]
  GETTABLEKS R9 R10 K8 ["blockFlipped"]
  SETTABLEKS R9 R8 K18 ["isBlocked"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K59 ["onYesOrNoCancel"]
  SETTABLEKS R9 R8 K48 ["onCancelActivated"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K60 ["onYesOrNoConfirmation"]
  SETTABLEKS R9 R8 K49 ["onConfirmActivated"]
  SETTABLEKS R2 R8 K22 ["uiScale"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["props"]
  GETTABLEKS R9 R10 K23 ["ZIndex"]
  SETTABLEKS R9 R8 K23 ["ZIndex"]
  CALL R6 2 1
  LOADNIL R7
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K61 ["SelectActions"]
  JUMPIFNOTEQ R1 R8 [+3]
  MOVE R7 R5
  RETURN R7 1
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K62 ["ConfirmAction"]
  JUMPIFNOTEQ R1 R8 [+2]
  MOVE R7 R6
  RETURN R7 1

PROTO_13:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["RobloxGui"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["CorePackages"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R2 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R2 K9 ["Packages"]
  GETTABLEKS R5 R6 K11 ["t"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R2 K9 ["Packages"]
  GETTABLEKS R6 R7 K12 ["Promise"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R2 K9 ["Packages"]
  GETTABLEKS R7 R8 K13 ["enumerate"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R2 K9 ["Packages"]
  GETTABLEKS R8 R9 K14 ["UIBlox"]
  CALL R7 1 1
  GETTABLEKS R10 R7 K15 ["Core"]
  GETTABLEKS R9 R10 K16 ["Style"]
  GETTABLEKS R8 R9 K17 ["withStyle"]
  GETIMPORT R9 K8 [require]
  GETTABLEKS R11 R1 K18 ["Modules"]
  GETTABLEKS R10 R11 K19 ["BlockingUtility"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R1 K18 ["Modules"]
  GETTABLEKS R11 R12 K20 ["RobloxTranslator"]
  CALL R10 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K18 ["Modules"]
  GETTABLEKS R14 R15 K21 ["VoiceChat"]
  GETTABLEKS R13 R14 K22 ["VoiceChatServiceManager"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K23 ["default"]
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K18 ["Modules"]
  GETTABLEKS R14 R15 K21 ["VoiceChat"]
  GETTABLEKS R13 R14 K24 ["Constants"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R1 K18 ["Modules"]
  GETTABLEKS R15 R16 K25 ["Flags"]
  GETTABLEKS R14 R15 K26 ["GetFFlagVoiceARUnblockingUnmutingEnabled"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETIMPORT R17 K28 [script]
  GETTABLEKS R16 R17 K29 ["Parent"]
  GETTABLEKS R15 R16 K30 ["ReportActionSelection"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETIMPORT R18 K28 [script]
  GETTABLEKS R17 R18 K29 ["Parent"]
  GETTABLEKS R16 R17 K31 ["ReportActionAreYouSure"]
  CALL R15 1 1
  MOVE R16 R6
  LOADK R17 K32 ["ReportPages"]
  NEWTABLE R18 2 0
  LOADN R19 1
  SETTABLEKS R19 R18 K33 ["SelectActions"]
  LOADN R19 2
  SETTABLEKS R19 R18 K34 ["ConfirmAction"]
  CALL R16 2 1
  GETTABLEKS R17 R3 K35 ["PureComponent"]
  LOADK R19 K36 ["ReportConfirmationContainer"]
  NAMECALL R17 R17 K37 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K38 [PROTO_0]
  DUPTABLE R19 K43 [{"blockingUtility", "voiceChatServiceManager", "isVoiceReport", "closeMenu"}]
  SETTABLEKS R9 R19 K39 ["blockingUtility"]
  SETTABLEKS R11 R19 K40 ["voiceChatServiceManager"]
  LOADB R20 0
  SETTABLEKS R20 R19 K41 ["isVoiceReport"]
  SETTABLEKS R18 R19 K42 ["closeMenu"]
  SETTABLEKS R19 R17 K44 ["defaultProps"]
  GETTABLEKS R19 R4 K45 ["interface"]
  DUPTABLE R20 K49 [{"player", "isVoiceReport", "closeMenu", "blockingAnalytics", "reportAbuseAnalytics"}]
  GETTABLEKS R21 R4 K50 ["strictInterface"]
  DUPTABLE R22 K54 [{"UserId", "Name", "DisplayName"}]
  GETTABLEKS R23 R4 K55 ["number"]
  SETTABLEKS R23 R22 K51 ["UserId"]
  GETTABLEKS R23 R4 K56 ["string"]
  SETTABLEKS R23 R22 K52 ["Name"]
  GETTABLEKS R23 R4 K56 ["string"]
  SETTABLEKS R23 R22 K53 ["DisplayName"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K46 ["player"]
  GETTABLEKS R21 R4 K57 ["boolean"]
  SETTABLEKS R21 R20 K41 ["isVoiceReport"]
  GETTABLEKS R21 R4 K58 ["callback"]
  SETTABLEKS R21 R20 K42 ["closeMenu"]
  GETTABLEKS R21 R4 K59 ["optional"]
  GETTABLEKS R22 R4 K60 ["table"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K47 ["blockingAnalytics"]
  GETTABLEKS R21 R4 K59 ["optional"]
  GETTABLEKS R22 R4 K60 ["table"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K48 ["reportAbuseAnalytics"]
  CALL R19 1 1
  SETTABLEKS R19 R17 K61 ["validateProps"]
  DUPCLOSURE R19 K62 [PROTO_2]
  CAPTURE VAL R5
  DUPCLOSURE R20 K63 [PROTO_11]
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R5
  SETTABLEKS R20 R17 K64 ["init"]
  DUPCLOSURE R20 K65 [PROTO_13]
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLEKS R20 R17 K66 ["render"]
  RETURN R17 1
