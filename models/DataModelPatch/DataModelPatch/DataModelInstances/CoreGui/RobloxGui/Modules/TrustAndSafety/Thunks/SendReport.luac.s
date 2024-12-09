PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  CALL R2 2 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  CALL R2 2 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETUPVAL R2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["ReportType"]
  GETTABLEKS R3 R4 K2 ["Player"]
  JUMPIFNOTEQ R2 R3 [+36]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["submitUserAbuseReport"]
  DUPTABLE R3 K10 [{"reportCategory", "abusingPlayer", "reason", "comment", "beginningTimestamp", "sortedUserIds"}]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K4 ["reportCategory"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K5 ["abusingPlayer"]
  GETUPVAL R4 5
  SETTABLEKS R4 R3 K6 ["reason"]
  GETUPVAL R4 6
  SETTABLEKS R4 R3 K7 ["comment"]
  GETTABLEKS R5 R1 K11 ["report"]
  GETTABLEKS R4 R5 K8 ["beginningTimestamp"]
  SETTABLEKS R4 R3 K8 ["beginningTimestamp"]
  GETTABLEKS R5 R1 K11 ["report"]
  GETTABLEKS R4 R5 K9 ["sortedUserIds"]
  SETTABLEKS R4 R3 K9 ["sortedUserIds"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["ReportType"]
  GETTABLEKS R3 R4 K12 ["Place"]
  JUMPIFNOTEQ R2 R3 [+40]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K13 ["submitPlaceAbuseReport"]
  DUPTABLE R3 K17 [{"placeId", "placeName", "placeDescription", "reason", "comment"}]
  GETIMPORT R5 K19 [game]
  GETTABLEKS R4 R5 K20 ["PlaceId"]
  SETTABLEKS R4 R3 K14 ["placeId"]
  GETTABLEKS R5 R1 K21 ["placeInfo"]
  GETTABLEKS R4 R5 K22 ["name"]
  SETTABLEKS R4 R3 K15 ["placeName"]
  GETTABLEKS R5 R1 K21 ["placeInfo"]
  GETTABLEKS R4 R5 K23 ["description"]
  SETTABLEKS R4 R3 K16 ["placeDescription"]
  GETUPVAL R4 5
  SETTABLEKS R4 R3 K6 ["reason"]
  GETUPVAL R4 6
  SETTABLEKS R4 R3 K7 ["comment"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CALL R2 2 0
  GETUPVAL R4 11
  CALL R4 0 -1
  NAMECALL R2 R0 K24 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE UPVAL U4
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R2 K9 ["Modules"]
  GETTABLEKS R5 R6 K10 ["VoiceChat"]
  GETTABLEKS R4 R5 K11 ["ReportAbuseLogic"]
  CALL R3 1 1
  GETIMPORT R6 K13 [script]
  GETTABLEKS R5 R6 K14 ["Parent"]
  GETTABLEKS R4 R5 K14 ["Parent"]
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R4 K15 ["Resources"]
  GETTABLEKS R6 R7 K16 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R4 K17 ["Actions"]
  GETTABLEKS R7 R8 K18 ["ShowToast"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R4 K17 ["Actions"]
  GETTABLEKS R8 R9 K19 ["OpenReportSentDialog"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R4 K17 ["Actions"]
  GETTABLEKS R9 R10 K20 ["EndReportFlow"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R11 R4 K21 ["Utility"]
  GETTABLEKS R10 R11 K22 ["ReportManager"]
  CALL R9 1 1
  DUPCLOSURE R10 K23 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  RETURN R10 1