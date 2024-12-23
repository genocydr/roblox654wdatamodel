PROTO_0:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_INEXT R2
  LENGTH R8 R1
  ADDK R7 R8 K2 [1]
  NEWTABLE R8 0 2
  GETTABLEKS R9 R6 K3 ["X"]
  GETTABLEKS R10 R6 K4 ["Y"]
  SETLIST R8 R9 2 [1]
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [inext] [-12]
  RETURN R1 1

PROTO_1:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  LENGTH R8 R1
  ADDK R7 R8 K2 [1]
  DUPTABLE R8 K9 [{"assetId", "distance", "boundingBox", "adUnitName", "encryptedAdTrackingData", "encryptionMetadata"}]
  GETTABLEKS R9 R6 K3 ["assetId"]
  SETTABLEKS R9 R8 K3 ["assetId"]
  GETTABLEKS R9 R6 K4 ["distance"]
  SETTABLEKS R9 R8 K4 ["distance"]
  DUPTABLE R9 K14 [{"minX", "minY", "maxX", "maxY"}]
  GETTABLEKS R12 R6 K5 ["boundingBox"]
  GETTABLEKS R11 R12 K15 ["min"]
  GETTABLEKS R10 R11 K16 ["X"]
  SETTABLEKS R10 R9 K10 ["minX"]
  GETTABLEKS R12 R6 K5 ["boundingBox"]
  GETTABLEKS R11 R12 K15 ["min"]
  GETTABLEKS R10 R11 K17 ["Y"]
  SETTABLEKS R10 R9 K11 ["minY"]
  GETTABLEKS R12 R6 K5 ["boundingBox"]
  GETTABLEKS R11 R12 K18 ["max"]
  GETTABLEKS R10 R11 K16 ["X"]
  SETTABLEKS R10 R9 K12 ["maxX"]
  GETTABLEKS R12 R6 K5 ["boundingBox"]
  GETTABLEKS R11 R12 K18 ["max"]
  GETTABLEKS R10 R11 K17 ["Y"]
  SETTABLEKS R10 R9 K13 ["maxY"]
  SETTABLEKS R9 R8 K5 ["boundingBox"]
  GETTABLEKS R9 R6 K6 ["adUnitName"]
  SETTABLEKS R9 R8 K6 ["adUnitName"]
  GETTABLEKS R9 R6 K7 ["encryptedAdTrackingData"]
  SETTABLEKS R9 R8 K7 ["encryptedAdTrackingData"]
  GETTABLEKS R9 R6 K8 ["encryptionMetadata"]
  SETTABLEKS R9 R8 K8 ["encryptionMetadata"]
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-60]
  RETURN R1 1

PROTO_2:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  LENGTH R8 R1
  ADDK R7 R8 K2 [1]
  DUPTABLE R8 K8 [{"userId", "distance", "boundingBox", "hitRate", "convexHull"}]
  FASTCALL1 TOSTRING R5 [+3]
  MOVE R10 R5
  GETIMPORT R9 K10 [tostring]
  CALL R9 1 1
  SETTABLEKS R9 R8 K3 ["userId"]
  GETTABLEKS R9 R6 K4 ["distance"]
  SETTABLEKS R9 R8 K4 ["distance"]
  DUPTABLE R9 K15 [{"minX", "minY", "maxX", "maxY"}]
  GETTABLEKS R12 R6 K5 ["boundingBox"]
  GETTABLEKS R11 R12 K16 ["min"]
  GETTABLEKS R10 R11 K17 ["X"]
  SETTABLEKS R10 R9 K11 ["minX"]
  GETTABLEKS R12 R6 K5 ["boundingBox"]
  GETTABLEKS R11 R12 K16 ["min"]
  GETTABLEKS R10 R11 K18 ["Y"]
  SETTABLEKS R10 R9 K12 ["minY"]
  GETTABLEKS R12 R6 K5 ["boundingBox"]
  GETTABLEKS R11 R12 K19 ["max"]
  GETTABLEKS R10 R11 K17 ["X"]
  SETTABLEKS R10 R9 K13 ["maxX"]
  GETTABLEKS R12 R6 K5 ["boundingBox"]
  GETTABLEKS R11 R12 K19 ["max"]
  GETTABLEKS R10 R11 K18 ["Y"]
  SETTABLEKS R10 R9 K14 ["maxY"]
  SETTABLEKS R9 R8 K5 ["boundingBox"]
  GETTABLEKS R9 R6 K6 ["hitRate"]
  SETTABLEKS R9 R8 K6 ["hitRate"]
  GETUPVAL R9 0
  GETTABLEKS R10 R6 K7 ["convexHull"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K7 ["convexHull"]
  SETTABLE R8 R1 R7
  GETTABLEKS R7 R6 K20 ["pointProcessingStats"]
  JUMPIFEQKNIL R7 [+29]
  LENGTH R8 R1
  GETTABLE R7 R1 R8
  NEWTABLE R8 0 4
  GETTABLEKS R11 R6 K20 ["pointProcessingStats"]
  GETTABLEKS R10 R11 K21 ["wasSkipped"]
  JUMPIFNOT R10 [+2]
  LOADN R9 1
  JUMP [+1]
  LOADN R9 0
  GETTABLEKS R11 R6 K20 ["pointProcessingStats"]
  GETTABLEKS R10 R11 K22 ["total"]
  GETTABLEKS R12 R6 K20 ["pointProcessingStats"]
  GETTABLEKS R11 R12 K23 ["offScreenDiscardCount"]
  GETTABLEKS R13 R6 K20 ["pointProcessingStats"]
  GETTABLEKS R12 R13 K24 ["tooCloseDiscardCount"]
  SETLIST R8 R9 4 [1]
  SETTABLEKS R8 R7 K20 ["pointProcessingStats"]
  FORGLOOP R2 2 [-93]
  RETURN R1 1

PROTO_3:
  LOADB R1 0
  GETIMPORT R2 K1 [pairs]
  GETUPVAL R5 0
  GETTABLEKS R3 R5 K2 ["identifiedAvatars"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  LOADB R1 1
  JUMP [+2]
  FORGLOOP R2 2 [-3]
  LOADB R2 0
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+11]
  GETIMPORT R3 K1 [pairs]
  GETUPVAL R6 0
  GETTABLEKS R4 R6 K3 ["identifiedAds"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  LOADB R2 1
  JUMP [+2]
  FORGLOOP R3 2 [-3]
  JUMPIFNOT R1 [+23]
  GETTABLEKS R3 R0 K4 ["tags"]
  DUPTABLE R4 K6 [{"valueList"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K8 [{"data"}]
  GETUPVAL R7 2
  GETUPVAL R9 3
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["identifiedAvatars"]
  CALL R9 1 1
  NAMECALL R7 R7 K9 ["JSONEncode"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["data"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K5 ["valueList"]
  SETTABLEKS R4 R3 K10 ["IDENTIFIED_AVATARS"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["avatarIDStats"]
  JUMPIFNOT R3 [+21]
  GETTABLEKS R3 R0 K4 ["tags"]
  DUPTABLE R4 K6 [{"valueList"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K8 [{"data"}]
  GETUPVAL R7 2
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["avatarIDStats"]
  NAMECALL R7 R7 K9 ["JSONEncode"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["data"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K5 ["valueList"]
  SETTABLEKS R4 R3 K12 ["AVATAR_ID_STATS"]
  JUMPIFNOT R2 [+26]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+23]
  GETTABLEKS R3 R0 K4 ["tags"]
  DUPTABLE R4 K6 [{"valueList"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K8 [{"data"}]
  GETUPVAL R7 2
  GETUPVAL R9 4
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["identifiedAds"]
  CALL R9 1 1
  NAMECALL R7 R7 K9 ["JSONEncode"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["data"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K5 ["valueList"]
  SETTABLEKS R4 R3 K13 ["IDENTIFIED_ADS"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K14 ["adIDStats"]
  JUMPIFNOT R3 [+24]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+21]
  GETTABLEKS R3 R0 K4 ["tags"]
  DUPTABLE R4 K6 [{"valueList"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K8 [{"data"}]
  GETUPVAL R7 2
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K14 ["adIDStats"]
  NAMECALL R7 R7 K9 ["JSONEncode"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["data"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K5 ["valueList"]
  SETTABLEKS R4 R3 K15 ["AD_ID_STATS"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K16 ["screenshotId"]
  LENGTH R3 R4
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+18]
  GETTABLEKS R3 R0 K4 ["tags"]
  DUPTABLE R4 K6 [{"valueList"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K8 [{"data"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K16 ["screenshotId"]
  SETTABLEKS R7 R6 K7 ["data"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K5 ["valueList"]
  SETTABLEKS R4 R3 K17 ["SCREENSHOT_ID"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K18 ["annotationPoints"]
  LENGTH R3 R4
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+24]
  GETTABLEKS R3 R0 K4 ["tags"]
  DUPTABLE R4 K6 [{"valueList"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K8 [{"data"}]
  GETUPVAL R7 2
  GETUPVAL R9 5
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K18 ["annotationPoints"]
  CALL R9 1 1
  NAMECALL R7 R7 K9 ["JSONEncode"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["data"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K5 ["valueList"]
  SETTABLEKS R4 R3 K19 ["RA_ANNOTATION_POINTS"]
  GETTABLEKS R3 R0 K4 ["tags"]
  DUPTABLE R4 K6 [{"valueList"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K8 [{"data"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K20 ["annotationOptionSeen"]
  FASTCALL1 TOSTRING R8 [+2]
  GETIMPORT R7 K22 [tostring]
  CALL R7 1 1
  SETTABLEKS R7 R6 K7 ["data"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K5 ["valueList"]
  SETTABLEKS R4 R3 K23 ["RA_ANNOTATION_OPTION_SEEN"]
  GETTABLEKS R3 R0 K4 ["tags"]
  DUPTABLE R4 K6 [{"valueList"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K8 [{"data"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K24 ["annotationPageSeen"]
  FASTCALL1 TOSTRING R8 [+2]
  GETIMPORT R7 K22 [tostring]
  CALL R7 1 1
  SETTABLEKS R7 R6 K7 ["data"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K5 ["valueList"]
  SETTABLEKS R4 R3 K25 ["RA_ANNOTATION_PAGE_SEEN"]
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"tags"}]
  DUPTABLE R2 K10 [{"ENTRY_POINT", "SUBMITTER_USER_ID", "REPORTED_ABUSE_CATEGORY", "PLACE_ID", "REPORTER_COMMENT", "REPORTED_ABUSE_VECTOR", "IN_EXP_MENU_ENTRY_POINT", "VARIANT"}]
  DUPTABLE R3 K12 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K14 [{"data"}]
  LOADK R6 K15 ["in-experience"]
  SETTABLEKS R6 R5 K13 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K11 ["valueList"]
  SETTABLEKS R3 R2 K2 ["ENTRY_POINT"]
  DUPTABLE R3 K12 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K14 [{"data"}]
  GETTABLEKS R7 R0 K16 ["localUserId"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K18 [tostring]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K11 ["valueList"]
  SETTABLEKS R3 R2 K3 ["SUBMITTER_USER_ID"]
  DUPTABLE R3 K12 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K14 [{"data"}]
  GETTABLEKS R6 R0 K19 ["abuseReason"]
  SETTABLEKS R6 R5 K13 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K11 ["valueList"]
  SETTABLEKS R3 R2 K4 ["REPORTED_ABUSE_CATEGORY"]
  DUPTABLE R3 K12 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K14 [{"data"}]
  GETTABLEKS R7 R0 K20 ["placeId"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K18 [tostring]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K11 ["valueList"]
  SETTABLEKS R3 R2 K5 ["PLACE_ID"]
  DUPTABLE R3 K12 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K14 [{"data"}]
  GETTABLEKS R6 R0 K21 ["abuseComment"]
  SETTABLEKS R6 R5 K13 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K11 ["valueList"]
  SETTABLEKS R3 R2 K6 ["REPORTER_COMMENT"]
  DUPTABLE R3 K12 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K14 [{"data"}]
  LOADK R6 K22 ["place"]
  SETTABLEKS R6 R5 K13 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K11 ["valueList"]
  SETTABLEKS R3 R2 K7 ["REPORTED_ABUSE_VECTOR"]
  DUPTABLE R3 K12 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K14 [{"data"}]
  GETTABLEKS R6 R0 K23 ["menuEntryPoint"]
  SETTABLEKS R6 R5 K13 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K11 ["valueList"]
  SETTABLEKS R3 R2 K8 ["IN_EXP_MENU_ENTRY_POINT"]
  DUPTABLE R3 K12 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K14 [{"data"}]
  GETTABLEKS R6 R0 K24 ["variant"]
  JUMPIF R6 [+5]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K25 ["Variant"]
  GETTABLEKS R6 R7 K26 ["CS"]
  SETTABLEKS R6 R5 K13 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K11 ["valueList"]
  SETTABLEKS R3 R2 K9 ["VARIANT"]
  SETTABLEKS R2 R1 K0 ["tags"]
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K27 ["selectedAds"]
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+27]
  GETUPVAL R2 3
  CALL R2 0 1
  JUMPIFNOT R2 [+23]
  GETTABLEKS R2 R1 K0 ["tags"]
  DUPTABLE R3 K12 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K14 [{"data"}]
  GETUPVAL R6 4
  GETUPVAL R8 5
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K27 ["selectedAds"]
  CALL R8 1 1
  NAMECALL R6 R6 K28 ["JSONEncode"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K11 ["valueList"]
  SETTABLEKS R3 R2 K29 ["REPORT_TARGET_ADS"]
  GETUPVAL R2 4
  MOVE R4 R1
  NAMECALL R2 R2 K28 ["JSONEncode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  DUPTABLE R1 K1 [{"tags"}]
  DUPTABLE R2 K9 [{"ENTRY_POINT", "SUBMITTER_USER_ID", "REPORTED_ABUSE_CATEGORY", "REPORTER_COMMENT", "REPORTED_ABUSE_VECTOR", "IN_EXP_MENU_ENTRY_POINT", "VARIANT"}]
  DUPTABLE R3 K11 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K13 [{"data"}]
  LOADK R6 K14 ["in-experience"]
  SETTABLEKS R6 R5 K12 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K10 ["valueList"]
  SETTABLEKS R3 R2 K2 ["ENTRY_POINT"]
  DUPTABLE R3 K11 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K13 [{"data"}]
  GETTABLEKS R7 R0 K15 ["localUserId"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K17 [tostring]
  CALL R6 1 1
  SETTABLEKS R6 R5 K12 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K10 ["valueList"]
  SETTABLEKS R3 R2 K3 ["SUBMITTER_USER_ID"]
  DUPTABLE R3 K11 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K13 [{"data"}]
  GETTABLEKS R6 R0 K18 ["abuseReason"]
  SETTABLEKS R6 R5 K12 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K10 ["valueList"]
  SETTABLEKS R3 R2 K4 ["REPORTED_ABUSE_CATEGORY"]
  DUPTABLE R3 K11 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K13 [{"data"}]
  GETTABLEKS R6 R0 K19 ["abuseComment"]
  SETTABLEKS R6 R5 K12 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K10 ["valueList"]
  SETTABLEKS R3 R2 K5 ["REPORTER_COMMENT"]
  DUPTABLE R3 K11 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K13 [{"data"}]
  LOADK R6 K20 ["avatar"]
  SETTABLEKS R6 R5 K12 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K10 ["valueList"]
  SETTABLEKS R3 R2 K6 ["REPORTED_ABUSE_VECTOR"]
  DUPTABLE R3 K11 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K13 [{"data"}]
  GETTABLEKS R6 R0 K21 ["menuEntryPoint"]
  SETTABLEKS R6 R5 K12 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K10 ["valueList"]
  SETTABLEKS R3 R2 K7 ["IN_EXP_MENU_ENTRY_POINT"]
  DUPTABLE R3 K11 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K13 [{"data"}]
  GETTABLEKS R6 R0 K22 ["variant"]
  JUMPIF R6 [+5]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K23 ["Variant"]
  GETTABLEKS R6 R7 K24 ["Unknown"]
  SETTABLEKS R6 R5 K12 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K10 ["valueList"]
  SETTABLEKS R3 R2 K8 ["VARIANT"]
  SETTABLEKS R2 R1 K0 ["tags"]
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K25 ["selectedAbusers"]
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+158]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K25 ["selectedAbusers"]
  GETTABLEN R4 R5 1
  GETTABLEKS R3 R4 K26 ["UserId"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K17 [tostring]
  CALL R2 1 1
  NEWTABLE R3 0 0
  GETIMPORT R4 K28 [ipairs]
  GETUPVAL R7 2
  GETTABLEKS R5 R7 K25 ["selectedAbusers"]
  CALL R4 1 3
  FORGPREP_INEXT R4
  LENGTH R10 R3
  ADDK R9 R10 K29 [1]
  GETTABLEKS R11 R8 K26 ["UserId"]
  FASTCALL1 TOSTRING R11 [+2]
  GETIMPORT R10 K17 [tostring]
  CALL R10 1 1
  SETTABLE R10 R3 R9
  FORGLOOP R4 2 [inext] [-10]
  GETUPVAL R4 3
  CALL R4 0 1
  JUMPIFNOT R4 [+85]
  GETUPVAL R4 4
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K25 ["selectedAbusers"]
  GETTABLEN R6 R7 1
  GETTABLEKS R5 R6 K26 ["UserId"]
  CALL R4 1 2
  GETTABLEKS R6 R1 K0 ["tags"]
  DUPTABLE R7 K11 [{"valueList"}]
  NEWTABLE R8 0 1
  DUPTABLE R9 K13 [{"data"}]
  GETUPVAL R10 5
  MOVE R12 R4
  NAMECALL R10 R10 K30 ["JSONEncode"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["data"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K10 ["valueList"]
  SETTABLEKS R7 R6 K31 ["REPORT_TARGET_HUMANOID_DESCRIPTION"]
  GETTABLEKS R6 R1 K0 ["tags"]
  DUPTABLE R7 K11 [{"valueList"}]
  NEWTABLE R8 0 1
  DUPTABLE R9 K13 [{"data"}]
  SETTABLEKS R5 R9 K12 ["data"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K10 ["valueList"]
  SETTABLEKS R7 R6 K32 ["REPORT_TARGET_HUMANOID_DESCRIPTION_STATUS"]
  NEWTABLE R6 0 0
  GETIMPORT R7 K28 [ipairs]
  GETUPVAL R10 2
  GETTABLEKS R8 R10 K25 ["selectedAbusers"]
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETUPVAL R12 4
  GETTABLEKS R13 R11 K26 ["UserId"]
  CALL R12 1 2
  MOVE R4 R12
  MOVE R5 R13
  LENGTH R13 R6
  ADDK R12 R13 K29 [1]
  DUPTABLE R13 K35 [{"humanoidDescription", "outputMessage"}]
  SETTABLEKS R4 R13 K33 ["humanoidDescription"]
  SETTABLEKS R5 R13 K34 ["outputMessage"]
  SETTABLE R13 R6 R12
  FORGLOOP R7 2 [inext] [-15]
  GETTABLEKS R7 R1 K0 ["tags"]
  DUPTABLE R8 K11 [{"valueList"}]
  NEWTABLE R9 0 1
  DUPTABLE R10 K13 [{"data"}]
  GETUPVAL R11 5
  MOVE R13 R6
  NAMECALL R11 R11 K30 ["JSONEncode"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K12 ["data"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K10 ["valueList"]
  SETTABLEKS R8 R7 K36 ["RA_ALL_ANNOTATED_HUMANOID_DESCRIPTIONS"]
  GETTABLEKS R4 R1 K0 ["tags"]
  DUPTABLE R5 K11 [{"valueList"}]
  NEWTABLE R6 0 1
  DUPTABLE R7 K13 [{"data"}]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R9 R2
  GETIMPORT R8 K17 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K12 ["data"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K10 ["valueList"]
  SETTABLEKS R5 R4 K37 ["REPORT_TARGET_USER_ID"]
  GETTABLEKS R4 R1 K0 ["tags"]
  DUPTABLE R5 K11 [{"valueList"}]
  NEWTABLE R6 0 1
  DUPTABLE R7 K13 [{"data"}]
  GETUPVAL R8 5
  MOVE R10 R3
  NAMECALL R8 R8 K30 ["JSONEncode"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["data"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K10 ["valueList"]
  SETTABLEKS R5 R4 K38 ["RA_ALL_ANNOTATED_USER_IDS"]
  JUMP [+63]
  GETTABLEKS R2 R0 K39 ["formSelectedAbuserUserId"]
  JUMPIFNOT R2 [+60]
  GETUPVAL R2 3
  CALL R2 0 1
  JUMPIFNOT R2 [+37]
  GETUPVAL R2 4
  GETTABLEKS R3 R0 K39 ["formSelectedAbuserUserId"]
  CALL R2 1 2
  GETTABLEKS R4 R1 K0 ["tags"]
  DUPTABLE R5 K11 [{"valueList"}]
  NEWTABLE R6 0 1
  DUPTABLE R7 K13 [{"data"}]
  GETUPVAL R8 5
  MOVE R10 R2
  NAMECALL R8 R8 K30 ["JSONEncode"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["data"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K10 ["valueList"]
  SETTABLEKS R5 R4 K31 ["REPORT_TARGET_HUMANOID_DESCRIPTION"]
  GETTABLEKS R4 R1 K0 ["tags"]
  DUPTABLE R5 K11 [{"valueList"}]
  NEWTABLE R6 0 1
  DUPTABLE R7 K13 [{"data"}]
  SETTABLEKS R3 R7 K12 ["data"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K10 ["valueList"]
  SETTABLEKS R5 R4 K32 ["REPORT_TARGET_HUMANOID_DESCRIPTION_STATUS"]
  GETTABLEKS R2 R1 K0 ["tags"]
  DUPTABLE R3 K11 [{"valueList"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K13 [{"data"}]
  GETTABLEKS R7 R0 K39 ["formSelectedAbuserUserId"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K17 [tostring]
  CALL R6 1 1
  SETTABLEKS R6 R5 K12 ["data"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K10 ["valueList"]
  SETTABLEKS R3 R2 K37 ["REPORT_TARGET_USER_ID"]
  GETUPVAL R2 5
  MOVE R4 R1
  NAMECALL R2 R2 K30 ["JSONEncode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  NEWTABLE R0 0 0
  NEWTABLE R1 0 0
  NEWTABLE R2 0 0
  NEWTABLE R3 0 0
  GETIMPORT R4 K1 [ipairs]
  GETUPVAL R7 0
  GETTABLEKS R5 R7 K2 ["annotationPoints"]
  CALL R4 1 3
  FORGPREP_INEXT R4
  LOADK R9 K3 [∞]
  LOADNIL R10
  NEWTABLE R11 0 0
  GETUPVAL R12 1
  CALL R12 0 1
  JUMPIFNOT R12 [+17]
  GETUPVAL R12 2
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["identifiedAvatars"]
  MOVE R14 R8
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K5 ["annotationCircleRadius"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["screenSizeWidth"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K7 ["screenSizeHeight"]
  CALL R12 5 1
  MOVE R11 R12
  JUMP [+7]
  GETUPVAL R12 3
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["identifiedAvatars"]
  MOVE R14 R8
  CALL R12 2 1
  MOVE R11 R12
  GETIMPORT R12 K9 [pairs]
  MOVE R13 R11
  CALL R12 1 3
  FORGPREP_NEXT R12
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K4 ["identifiedAvatars"]
  GETTABLE R18 R19 R15
  GETTABLEKS R17 R18 K10 ["distance"]
  JUMPIFNOTLT R17 R9 [+3]
  MOVE R9 R17
  MOVE R10 R15
  FORGLOOP R12 2 [-11]
  LOADNIL R12
  GETUPVAL R13 4
  CALL R13 0 1
  JUMPIFNOT R13 [+24]
  GETUPVAL R13 5
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K11 ["identifiedAds"]
  MOVE R15 R8
  CALL R13 2 1
  LOADK R9 K3 [∞]
  GETIMPORT R14 K9 [pairs]
  MOVE R15 R13
  CALL R14 1 3
  FORGPREP_NEXT R14
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K11 ["identifiedAds"]
  GETTABLE R20 R21 R17
  GETTABLEKS R19 R20 K10 ["distance"]
  JUMPIFNOTLT R19 R9 [+3]
  MOVE R9 R19
  MOVE R12 R17
  FORGLOOP R14 2 [-11]
  JUMPIFEQKNIL R10 [+15]
  GETTABLE R13 R0 R10
  JUMPIF R13 [+12]
  LOADB R13 1
  SETTABLE R13 R0 R10
  LENGTH R14 R2
  ADDK R13 R14 K12 [1]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K4 ["identifiedAvatars"]
  GETTABLE R15 R16 R10
  GETTABLEKS R14 R15 K13 ["player"]
  SETTABLE R14 R2 R13
  JUMP [+16]
  GETUPVAL R13 4
  CALL R13 0 1
  JUMPIFNOT R13 [+13]
  JUMPIFEQKNIL R12 [+12]
  GETTABLE R13 R1 R12
  JUMPIF R13 [+9]
  LOADB R13 1
  SETTABLE R13 R1 R12
  LENGTH R14 R3
  ADDK R13 R14 K12 [1]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K11 ["identifiedAds"]
  GETTABLE R14 R15 R12
  SETTABLE R14 R3 R13
  FORGLOOP R4 2 [inext] [-109]
  GETUPVAL R4 0
  SETTABLEKS R2 R4 K14 ["selectedAbusers"]
  GETUPVAL R4 0
  SETTABLEKS R3 R4 K15 ["selectedAds"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["annotationCircleRadius"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["annotationCircleRadius"]
  RETURN R0 1

PROTO_9:
  GETUPVAL R2 0
  SETTABLEKS R0 R2 K0 ["screenSizeWidth"]
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K1 ["screenSizeHeight"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["screenshotId"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["identifiedAds"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["identifiedAds"]
  RETURN R0 1

PROTO_13:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["identifiedAvatars"]
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["identifiedAvatars"]
  RETURN R0 1

PROTO_15:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["avatarIDStats"]
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["adIDStats"]
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["screenshotContentId"]
  GETUPVAL R1 0
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["annotationPoints"]
  GETUPVAL R1 0
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["selectedAbusers"]
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["screenshotContentId"]
  RETURN R0 1

PROTO_19:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["annotationPoints"]
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["annotationOptionSeen"]
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["annotationPageSeen"]
  GETUPVAL R1 1
  CALL R1 0 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["selectedAbusers"]
  RETURN R0 1

PROTO_21:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["selectedAds"]
  RETURN R0 1

PROTO_22:
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["annotationPoints"]
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["selectedAbusers"]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K2 ["selectedAds"]
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K3 ["annotationOptionSeen"]
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["annotationPageSeen"]
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["annotationPoints"]
  RETURN R0 1

PROTO_24:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["annotationOptionSeen"]
  RETURN R0 0

PROTO_25:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["annotationOptionSeen"]
  RETURN R0 1

PROTO_26:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["annotationPageSeen"]
  RETURN R0 0

PROTO_27:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["annotationPageSeen"]
  RETURN R0 1

PROTO_28:
  DUPTABLE R0 K14 [{"annotationCircleRadius", "screenSizeWidth", "screenSizeHeight", "screenshotId", "identifiedAvatars", "avatarIDStats", "identifiedAds", "adIDStats", "screenshotContentId", "annotationPoints", "annotationOptionSeen", "annotationPageSeen", "selectedAbusers", "selectedAds"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["annotationCircleRadius"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["screenSizeWidth"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["screenSizeHeight"]
  LOADK R1 K15 [""]
  SETTABLEKS R1 R0 K3 ["screenshotId"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K4 ["identifiedAvatars"]
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["avatarIDStats"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K6 ["identifiedAds"]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["adIDStats"]
  LOADK R1 K15 [""]
  SETTABLEKS R1 R0 K8 ["screenshotContentId"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K9 ["annotationPoints"]
  LOADB R1 0
  SETTABLEKS R1 R0 K10 ["annotationOptionSeen"]
  LOADB R1 0
  SETTABLEKS R1 R0 K11 ["annotationPageSeen"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K12 ["selectedAbusers"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K13 ["selectedAds"]
  SETUPVAL R0 0
  RETURN R0 0

PROTO_29:
  DUPTABLE R0 K4 [{"finalAnnotationOptionSeen", "finalAnnotationPageSeen", "finalAnnotationCount", "finalAnnotatedAvatarsCount"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["annotationOptionSeen"]
  SETTABLEKS R1 R0 K0 ["finalAnnotationOptionSeen"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["annotationPageSeen"]
  SETTABLEKS R1 R0 K1 ["finalAnnotationPageSeen"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["annotationPoints"]
  LENGTH R1 R2
  SETTABLEKS R1 R0 K2 ["finalAnnotationCount"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["selectedAbusers"]
  LENGTH R1 R2
  SETTABLEKS R1 R0 K3 ["finalAnnotatedAvatarsCount"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Workspace"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["TnSAvatarIdentification"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K9 ["TnSAdIdentification"]
  CALL R2 1 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K10 ["HttpService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R5 R1 K11 ["AvatarIdentification"]
  GETTABLEKS R4 R5 K12 ["getAvatarsForPoint"]
  GETTABLEKS R6 R1 K11 ["AvatarIdentification"]
  GETTABLEKS R5 R6 K13 ["getAvatarsForRegion"]
  GETTABLEKS R7 R2 K14 ["AdIdentification"]
  GETTABLEKS R6 R7 K15 ["getAdsForPoint"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Workspace"]
  GETTABLEKS R10 R11 K7 ["Packages"]
  GETTABLEKS R9 R10 K16 ["SharedFlags"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K17 ["GetFFlagReportAnythingEnableAdReport"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Workspace"]
  GETTABLEKS R11 R12 K7 ["Packages"]
  GETTABLEKS R10 R11 K16 ["SharedFlags"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K18 ["GetFFlagGetHumanoidDescription"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Workspace"]
  GETTABLEKS R12 R13 K7 ["Packages"]
  GETTABLEKS R11 R12 K16 ["SharedFlags"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K19 ["GetFFlagRAEnableCircleRegion"]
  GETIMPORT R11 K5 [require]
  GETIMPORT R14 K21 [script]
  GETTABLEKS R13 R14 K22 ["Parent"]
  GETTABLEKS R12 R13 K23 ["GetHumanoidDescription"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K24 ["getHumanoidDescription"]
  DUPTABLE R11 K39 [{"annotationCircleRadius", "screenSizeWidth", "screenSizeHeight", "screenshotId", "identifiedAvatars", "avatarIDStats", "identifiedAds", "adIDStats", "screenshotContentId", "annotationPoints", "annotationOptionSeen", "annotationPageSeen", "selectedAbusers", "selectedAds"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K25 ["annotationCircleRadius"]
  LOADN R12 0
  SETTABLEKS R12 R11 K26 ["screenSizeWidth"]
  LOADN R12 0
  SETTABLEKS R12 R11 K27 ["screenSizeHeight"]
  LOADK R12 K40 [""]
  SETTABLEKS R12 R11 K28 ["screenshotId"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K29 ["identifiedAvatars"]
  LOADNIL R12
  SETTABLEKS R12 R11 K30 ["avatarIDStats"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K31 ["identifiedAds"]
  LOADNIL R12
  SETTABLEKS R12 R11 K32 ["adIDStats"]
  LOADK R12 K40 [""]
  SETTABLEKS R12 R11 K33 ["screenshotContentId"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K34 ["annotationPoints"]
  LOADB R12 0
  SETTABLEKS R12 R11 K35 ["annotationOptionSeen"]
  LOADB R12 0
  SETTABLEKS R12 R11 K36 ["annotationPageSeen"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K37 ["selectedAbusers"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K38 ["selectedAds"]
  DUPTABLE R12 K42 [{"Variant"}]
  DUPTABLE R13 K49 [{"CS", "Sampling", "E1", "E2", "E3", "Unknown"}]
  LOADK R14 K50 ["ra/cs"]
  SETTABLEKS R14 R13 K43 ["CS"]
  LOADK R14 K51 ["ra/sampling"]
  SETTABLEKS R14 R13 K44 ["Sampling"]
  LOADK R14 K52 ["ra/e1"]
  SETTABLEKS R14 R13 K45 ["E1"]
  LOADK R14 K53 ["ra/e2"]
  SETTABLEKS R14 R13 K46 ["E2"]
  LOADK R14 K54 ["ra/e3"]
  SETTABLEKS R14 R13 K47 ["E3"]
  LOADK R14 K55 ["ra/unknown"]
  SETTABLEKS R14 R13 K48 ["Unknown"]
  SETTABLEKS R13 R12 K41 ["Variant"]
  DUPCLOSURE R13 K56 [PROTO_0]
  DUPCLOSURE R14 K57 [PROTO_1]
  DUPCLOSURE R15 K58 [PROTO_2]
  CAPTURE VAL R13
  NEWCLOSURE R16 P3
  CAPTURE REF R11
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R13
  NEWCLOSURE R17 P4
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE REF R11
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R14
  NEWCLOSURE R18 P5
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE REF R11
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R3
  NEWCLOSURE R19 P6
  CAPTURE REF R11
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R6
  DUPTABLE R20 K85 [{"setAnnotationCircleRadius", "getAnnotationCircleRadius", "setAspectRatioDimensions", "setScreenshotId", "setIdentifiedAds", "getIdentifiedAds", "setIdentifiedAvatars", "getIdentifiedAvatars", "setAvatarIDStats", "setAdIDStats", "setScreenshotContentId", "getScreenshotContentId", "setAnnotationPoints", "getSelectedAbusers", "getSelectedAds", "clearAnnotationPoints", "getAnnotationPoints", "setAnnotationOptionSeen", "getAnnotationOptionSeen", "setAnnotationPageSeen", "getAnnotationPageSeen", "buildExperienceReportRequest", "buildOtherReportRequest", "clear", "getAnalyticsParameters", "Constants"}]
  NEWCLOSURE R21 P7
  CAPTURE REF R11
  SETTABLEKS R21 R20 K59 ["setAnnotationCircleRadius"]
  NEWCLOSURE R21 P8
  CAPTURE REF R11
  SETTABLEKS R21 R20 K60 ["getAnnotationCircleRadius"]
  NEWCLOSURE R21 P9
  CAPTURE REF R11
  SETTABLEKS R21 R20 K61 ["setAspectRatioDimensions"]
  NEWCLOSURE R21 P10
  CAPTURE REF R11
  SETTABLEKS R21 R20 K62 ["setScreenshotId"]
  NEWCLOSURE R21 P11
  CAPTURE REF R11
  SETTABLEKS R21 R20 K63 ["setIdentifiedAds"]
  NEWCLOSURE R21 P12
  CAPTURE REF R11
  SETTABLEKS R21 R20 K64 ["getIdentifiedAds"]
  NEWCLOSURE R21 P13
  CAPTURE REF R11
  SETTABLEKS R21 R20 K65 ["setIdentifiedAvatars"]
  NEWCLOSURE R21 P14
  CAPTURE REF R11
  SETTABLEKS R21 R20 K66 ["getIdentifiedAvatars"]
  NEWCLOSURE R21 P15
  CAPTURE REF R11
  SETTABLEKS R21 R20 K67 ["setAvatarIDStats"]
  NEWCLOSURE R21 P16
  CAPTURE REF R11
  SETTABLEKS R21 R20 K68 ["setAdIDStats"]
  NEWCLOSURE R21 P17
  CAPTURE REF R11
  SETTABLEKS R21 R20 K69 ["setScreenshotContentId"]
  NEWCLOSURE R21 P18
  CAPTURE REF R11
  SETTABLEKS R21 R20 K70 ["getScreenshotContentId"]
  NEWCLOSURE R21 P19
  CAPTURE REF R11
  CAPTURE VAL R19
  SETTABLEKS R21 R20 K71 ["setAnnotationPoints"]
  NEWCLOSURE R21 P20
  CAPTURE REF R11
  SETTABLEKS R21 R20 K72 ["getSelectedAbusers"]
  NEWCLOSURE R21 P21
  CAPTURE REF R11
  SETTABLEKS R21 R20 K73 ["getSelectedAds"]
  NEWCLOSURE R21 P22
  CAPTURE REF R11
  CAPTURE VAL R7
  SETTABLEKS R21 R20 K74 ["clearAnnotationPoints"]
  NEWCLOSURE R21 P23
  CAPTURE REF R11
  SETTABLEKS R21 R20 K75 ["getAnnotationPoints"]
  NEWCLOSURE R21 P24
  CAPTURE REF R11
  SETTABLEKS R21 R20 K76 ["setAnnotationOptionSeen"]
  NEWCLOSURE R21 P25
  CAPTURE REF R11
  SETTABLEKS R21 R20 K77 ["getAnnotationOptionSeen"]
  NEWCLOSURE R21 P26
  CAPTURE REF R11
  SETTABLEKS R21 R20 K78 ["setAnnotationPageSeen"]
  NEWCLOSURE R21 P27
  CAPTURE REF R11
  SETTABLEKS R21 R20 K79 ["getAnnotationPageSeen"]
  SETTABLEKS R17 R20 K80 ["buildExperienceReportRequest"]
  SETTABLEKS R18 R20 K81 ["buildOtherReportRequest"]
  NEWCLOSURE R21 P28
  CAPTURE REF R11
  SETTABLEKS R21 R20 K82 ["clear"]
  NEWCLOSURE R21 P29
  CAPTURE REF R11
  SETTABLEKS R21 R20 K83 ["getAnalyticsParameters"]
  SETTABLEKS R12 R20 K84 ["Constants"]
  CLOSEUPVALS R11
  RETURN R20 1
