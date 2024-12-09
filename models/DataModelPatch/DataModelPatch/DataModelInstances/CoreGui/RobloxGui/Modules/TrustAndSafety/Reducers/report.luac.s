PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K9 [{"history", "currentPage", "targetPlayer", "reportType", "identifiedAvatars", "selectedAvatars", "screenshotAnnotationPoints"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K2 ["history"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["Page"]
  GETTABLEKS R5 R6 K11 ["None"]
  SETTABLEKS R5 R4 K3 ["currentPage"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["None"]
  SETTABLEKS R5 R4 K4 ["targetPlayer"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K12 ["ReportType"]
  GETTABLEKS R5 R6 K13 ["Any"]
  SETTABLEKS R5 R4 K5 ["reportType"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K6 ["identifiedAvatars"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K7 ["selectedAvatars"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K8 ["screenshotAnnotationPoints"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  DUPTABLE R2 K4 [{"reportCategory", "beginningTimestamp", "sortedUserIds", "history"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["Category"]
  GETTABLEKS R3 R4 K6 ["None"]
  SETTABLEKS R3 R2 K0 ["reportCategory"]
  GETIMPORT R3 K8 [workspace]
  NAMECALL R3 R3 K9 ["GetServerTimeNow"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["beginningTimestamp"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K2 ["sortedUserIds"]
  NEWTABLE R3 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["Page"]
  GETTABLEKS R4 R5 K6 ["None"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K3 ["history"]
  GETTABLEKS R3 R1 K11 ["reportType"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["ReportType"]
  GETTABLEKS R4 R5 K13 ["Place"]
  JUMPIFNOTEQ R3 R4 [+31]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["Dictionary"]
  GETTABLEKS R3 R4 K15 ["join"]
  MOVE R4 R0
  MOVE R5 R2
  DUPTABLE R6 K19 [{"reportType", "beginningReportType", "currentPage", "targetPlayer"}]
  GETTABLEKS R7 R1 K11 ["reportType"]
  SETTABLEKS R7 R6 K11 ["reportType"]
  GETTABLEKS R7 R1 K11 ["reportType"]
  SETTABLEKS R7 R6 K16 ["beginningReportType"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K10 ["Page"]
  GETTABLEKS R7 R8 K20 ["ReportForm"]
  SETTABLEKS R7 R6 K17 ["currentPage"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["None"]
  SETTABLEKS R7 R6 K18 ["targetPlayer"]
  CALL R3 3 -1
  RETURN R3 -1
  GETTABLEKS R3 R1 K11 ["reportType"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["ReportType"]
  GETTABLEKS R4 R5 K21 ["Player"]
  JUMPIFNOTEQ R3 R4 [+39]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["Dictionary"]
  GETTABLEKS R3 R4 K15 ["join"]
  MOVE R4 R0
  MOVE R5 R2
  DUPTABLE R6 K22 [{"reportType", "beginningReportType", "targetPlayer", "currentPage"}]
  GETTABLEKS R7 R1 K11 ["reportType"]
  SETTABLEKS R7 R6 K11 ["reportType"]
  GETTABLEKS R7 R1 K11 ["reportType"]
  SETTABLEKS R7 R6 K16 ["beginningReportType"]
  GETTABLEKS R7 R1 K18 ["targetPlayer"]
  SETTABLEKS R7 R6 K18 ["targetPlayer"]
  GETTABLEKS R8 R0 K23 ["voiceReportingFlowEnabled"]
  JUMPIFNOT R8 [+6]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K10 ["Page"]
  GETTABLEKS R7 R8 K5 ["Category"]
  JUMP [+5]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K10 ["Page"]
  GETTABLEKS R7 R8 K20 ["ReportForm"]
  SETTABLEKS R7 R6 K17 ["currentPage"]
  CALL R3 3 -1
  RETURN R3 -1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["Dictionary"]
  GETTABLEKS R3 R4 K15 ["join"]
  MOVE R4 R0
  MOVE R5 R2
  DUPTABLE R6 K22 [{"reportType", "beginningReportType", "targetPlayer", "currentPage"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K12 ["ReportType"]
  GETTABLEKS R7 R8 K24 ["Any"]
  SETTABLEKS R7 R6 K11 ["reportType"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K12 ["ReportType"]
  GETTABLEKS R7 R8 K24 ["Any"]
  SETTABLEKS R7 R6 K16 ["beginningReportType"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["None"]
  SETTABLEKS R7 R6 K18 ["targetPlayer"]
  GETTABLEKS R8 R0 K23 ["voiceReportingFlowEnabled"]
  JUMPIFNOT R8 [+6]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K10 ["Page"]
  GETTABLEKS R7 R8 K5 ["Category"]
  JUMP [+5]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K10 ["Page"]
  GETTABLEKS R7 R8 K25 ["Listing"]
  SETTABLEKS R7 R6 K17 ["currentPage"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["history"]
  GETTABLEKS R5 R0 K0 ["history"]
  LENGTH R4 R5
  GETTABLE R2 R3 R4
  JUMPIF R2 [+2]
  GETTABLEKS R2 R0 K1 ["currentPage"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["List"]
  GETTABLEKS R3 R4 K3 ["removeIndex"]
  GETTABLEKS R4 R0 K0 ["history"]
  GETTABLEKS R6 R0 K0 ["history"]
  LENGTH R5 R6
  CALL R3 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["Dictionary"]
  GETTABLEKS R4 R5 K5 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K6 [{"history", "currentPage"}]
  SETTABLEKS R3 R6 K0 ["history"]
  SETTABLEKS R2 R6 K1 ["currentPage"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R3 R1 K0 ["reportCategory"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["Category"]
  GETTABLEKS R4 R5 K2 ["Experience"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R4 R0 K3 ["beginningReportType"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["ReportType"]
  GETTABLEKS R5 R6 K5 ["Player"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Page"]
  GETTABLEKS R4 R5 K7 ["Listing"]
  GETTABLEKS R5 R0 K8 ["reportType"]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+19]
  JUMPIFNOT R2 [+11]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["Page"]
  GETTABLEKS R4 R6 K9 ["ScreenshotDialog"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["ReportType"]
  GETTABLEKS R5 R6 K10 ["Place"]
  JUMP [+20]
  JUMPIFNOT R3 [+19]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["Page"]
  GETTABLEKS R4 R6 K11 ["ReportForm"]
  JUMP [+13]
  OR R6 R2 R3
  JUMPIFNOT R6 [+11]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["Page"]
  GETTABLEKS R4 R7 K11 ["ReportForm"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["ReportType"]
  GETTABLEKS R5 R7 K10 ["Place"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K12 ["List"]
  GETTABLEKS R6 R7 K13 ["join"]
  GETTABLEKS R7 R0 K14 ["history"]
  NEWTABLE R8 0 1
  GETTABLEKS R9 R0 K15 ["currentPage"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K16 ["Dictionary"]
  GETTABLEKS R7 R8 K13 ["join"]
  MOVE R8 R0
  DUPTABLE R9 K17 [{"history", "currentPage", "reportType", "reportCategory"}]
  SETTABLEKS R6 R9 K14 ["history"]
  SETTABLEKS R4 R9 K15 ["currentPage"]
  SETTABLEKS R5 R9 K8 ["reportType"]
  GETTABLEKS R10 R1 K0 ["reportCategory"]
  SETTABLEKS R10 R9 K0 ["reportCategory"]
  CALL R7 2 -1
  RETURN R7 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["List"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETTABLEKS R3 R0 K2 ["history"]
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K3 ["currentPage"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Dictionary"]
  GETTABLEKS R3 R4 K1 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K8 [{"sortedUserIds", "history", "currentPage", "reportType", "targetPlayer"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["List"]
  GETTABLEKS R6 R7 K1 ["join"]
  GETTABLEKS R7 R1 K5 ["sortedUserIds"]
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["sortedUserIds"]
  SETTABLEKS R2 R5 K2 ["history"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["Page"]
  GETTABLEKS R6 R7 K10 ["ReportForm"]
  SETTABLEKS R6 R5 K3 ["currentPage"]
  GETTABLEKS R6 R1 K6 ["reportType"]
  SETTABLEKS R6 R5 K6 ["reportType"]
  GETTABLEKS R6 R1 K7 ["targetPlayer"]
  JUMPIF R6 [+3]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["None"]
  SETTABLEKS R6 R5 K7 ["targetPlayer"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["List"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETTABLEKS R3 R0 K2 ["history"]
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K3 ["currentPage"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["Page"]
  GETTABLEKS R3 R4 K5 ["ReportForm"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Dictionary"]
  GETTABLEKS R4 R5 K1 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K8 [{"history", "currentPage", "screenshotAnnotationPoints"}]
  SETTABLEKS R2 R6 K2 ["history"]
  SETTABLEKS R3 R6 K3 ["currentPage"]
  GETTABLEKS R7 R1 K9 ["annotationPoints"]
  SETTABLEKS R7 R6 K7 ["screenshotAnnotationPoints"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"isReportMenuOpen"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["isReportMenuOpen"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"isReportMenuOpen"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K2 ["isReportMenuOpen"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"currentPage", "reportType", "targetPlayer"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["Page"]
  GETTABLEKS R5 R6 K7 ["ReportSent"]
  SETTABLEKS R5 R4 K2 ["currentPage"]
  GETTABLEKS R5 R1 K3 ["reportType"]
  SETTABLEKS R5 R4 K3 ["reportType"]
  GETTABLEKS R5 R1 K4 ["targetPlayer"]
  JUMPIF R5 [+3]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["None"]
  SETTABLEKS R5 R4 K4 ["targetPlayer"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"voiceReportingFlowEnabled"}]
  GETTABLEKS R5 R1 K4 ["enable"]
  SETTABLEKS R5 R4 K2 ["voiceReportingFlowEnabled"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"identifiedAvatars", "screenshotAnnotationPoints"}]
  GETTABLEKS R5 R1 K2 ["identifiedAvatars"]
  SETTABLEKS R5 R4 K2 ["identifiedAvatars"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K3 ["screenshotAnnotationPoints"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selectedAvatars"}]
  GETTABLEKS R5 R1 K2 ["selectedAvatars"]
  SETTABLEKS R5 R4 K2 ["selectedAvatars"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R5 K10 [script]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Parent"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R3 K12 ["Actions"]
  GETTABLEKS R5 R6 K13 ["OpenReportMenu"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R3 K12 ["Actions"]
  GETTABLEKS R6 R7 K14 ["CloseReportMenu"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R3 K12 ["Actions"]
  GETTABLEKS R7 R8 K15 ["OpenReportDialog"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R3 K12 ["Actions"]
  GETTABLEKS R8 R9 K16 ["OpenCategoryMenu"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R3 K12 ["Actions"]
  GETTABLEKS R9 R10 K17 ["SelectReportCategory"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R3 K12 ["Actions"]
  GETTABLEKS R10 R11 K18 ["OpenReportSentDialog"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R3 K12 ["Actions"]
  GETTABLEKS R11 R12 K19 ["CloseReportSentDialog"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R3 K12 ["Actions"]
  GETTABLEKS R12 R13 K20 ["SelectReportListing"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R3 K12 ["Actions"]
  GETTABLEKS R13 R14 K21 ["SetVoiceReportingFlow"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R3 K12 ["Actions"]
  GETTABLEKS R14 R15 K22 ["SetIdentifiedAvatars"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R3 K12 ["Actions"]
  GETTABLEKS R15 R16 K23 ["SetSelectedAvatars"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R3 K12 ["Actions"]
  GETTABLEKS R16 R17 K24 ["BeginReportFlow"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R3 K12 ["Actions"]
  GETTABLEKS R17 R18 K25 ["EndReportFlow"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R19 R3 K12 ["Actions"]
  GETTABLEKS R18 R19 K26 ["ScreenshotAnnotated"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R20 R3 K12 ["Actions"]
  GETTABLEKS R19 R20 K27 ["NavigateBack"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R21 R3 K28 ["Resources"]
  GETTABLEKS R20 R21 K29 ["Constants"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R3 K30 ["Flags"]
  GETTABLEKS R21 R22 K31 ["GetFFlagReportAnythingScreenshot"]
  CALL R20 1 1
  GETTABLEKS R21 R2 K32 ["createReducer"]
  DUPTABLE R22 K45 [{"currentPage", "history", "voiceReportingFlowEnabled", "reportType", "beginningReportType", "reportCategory", "targetPlayer", "beginningTimestamp", "sortedUserIds", "screenshotAnnotationPoints", "identifiedAvatars", "selectedAvatars"}]
  GETTABLEKS R24 R19 K46 ["Page"]
  GETTABLEKS R23 R24 K47 ["None"]
  SETTABLEKS R23 R22 K33 ["currentPage"]
  NEWTABLE R23 0 0
  SETTABLEKS R23 R22 K34 ["history"]
  LOADB R23 1
  SETTABLEKS R23 R22 K35 ["voiceReportingFlowEnabled"]
  GETTABLEKS R24 R19 K48 ["ReportType"]
  GETTABLEKS R23 R24 K49 ["Any"]
  SETTABLEKS R23 R22 K36 ["reportType"]
  GETTABLEKS R24 R19 K48 ["ReportType"]
  GETTABLEKS R23 R24 K49 ["Any"]
  SETTABLEKS R23 R22 K37 ["beginningReportType"]
  GETTABLEKS R24 R19 K50 ["Category"]
  GETTABLEKS R23 R24 K47 ["None"]
  SETTABLEKS R23 R22 K38 ["reportCategory"]
  LOADNIL R23
  SETTABLEKS R23 R22 K39 ["targetPlayer"]
  LOADN R23 0
  SETTABLEKS R23 R22 K40 ["beginningTimestamp"]
  NEWTABLE R23 0 0
  SETTABLEKS R23 R22 K41 ["sortedUserIds"]
  NEWTABLE R23 0 0
  SETTABLEKS R23 R22 K42 ["screenshotAnnotationPoints"]
  NEWTABLE R23 0 0
  SETTABLEKS R23 R22 K43 ["identifiedAvatars"]
  NEWTABLE R23 0 0
  SETTABLEKS R23 R22 K44 ["selectedAvatars"]
  NEWTABLE R23 16 0
  GETTABLEKS R24 R16 K51 ["name"]
  DUPCLOSURE R25 K52 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R19
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R15 K51 ["name"]
  DUPCLOSURE R25 K53 [PROTO_1]
  CAPTURE VAL R19
  CAPTURE VAL R1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R18 K51 ["name"]
  DUPCLOSURE R25 K54 [PROTO_2]
  CAPTURE VAL R1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R8 K51 ["name"]
  DUPCLOSURE R25 K55 [PROTO_3]
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R11 K51 ["name"]
  DUPCLOSURE R25 K56 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R19
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R17 K51 ["name"]
  DUPCLOSURE R25 K57 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R19
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R4 K51 ["name"]
  DUPCLOSURE R25 K58 [PROTO_6]
  CAPTURE VAL R1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R5 K51 ["name"]
  DUPCLOSURE R25 K59 [PROTO_7]
  CAPTURE VAL R1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R9 K51 ["name"]
  DUPCLOSURE R25 K60 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R19
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R12 K51 ["name"]
  DUPCLOSURE R25 K61 [PROTO_9]
  CAPTURE VAL R1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R13 K51 ["name"]
  DUPCLOSURE R25 K62 [PROTO_10]
  CAPTURE VAL R1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R14 K51 ["name"]
  DUPCLOSURE R25 K63 [PROTO_11]
  CAPTURE VAL R1
  SETTABLE R25 R23 R24
  CALL R21 2 -1
  RETURN R21 -1
