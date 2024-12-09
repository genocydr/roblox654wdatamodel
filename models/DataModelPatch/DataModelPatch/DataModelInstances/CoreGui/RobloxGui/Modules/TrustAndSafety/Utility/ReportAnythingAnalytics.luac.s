PROTO_0:
  DUPTABLE R0 K7 [{"annotationOptionSeenCount", "annotationPageSeenCount", "annotationPlaceCount", "annotationUndoCount", "annotationRedoCount", "abandonedForRetake", "isPortraitMode"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["annotationOptionSeenCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["annotationPageSeenCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["annotationPlaceCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K3 ["annotationUndoCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["annotationRedoCount"]
  LOADB R1 0
  SETTABLEKS R1 R0 K5 ["abandonedForRetake"]
  LOADB R1 0
  SETTABLEKS R1 R0 K6 ["isPortraitMode"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  JUMPIF R0 [+6]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["new"]
  GETUPVAL R1 2
  CALL R0 1 1
  SETUPVAL R0 0
  GETUPVAL R0 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["annotationOptionSeenCount"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["annotationOptionSeenCount"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["annotationPageSeenCount"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["annotationPageSeenCount"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["annotationPlaceCount"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["annotationPlaceCount"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["annotationUndoCount"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["annotationUndoCount"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["annotationRedoCount"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["annotationRedoCount"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["abandonedForRetake"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["isPortraitMode"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K3 [{"duration"}]
  GETTABLEKS R5 R0 K2 ["duration"]
  MULK R4 R5 K4 [1000000]
  SETTABLEKS R4 R3 K2 ["duration"]
  CALL R1 2 1
  GETUPVAL R3 1
  JUMPIF R3 [+6]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["new"]
  GETUPVAL R4 3
  CALL R3 1 1
  SETUPVAL R3 1
  GETUPVAL R2 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K6 ["Context"]
  GETTABLEKS R4 R5 K7 ["LegacyMenu"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K8 ["EventType"]
  GETTABLEKS R5 R6 K9 ["AvatarsIdentified"]
  MOVE R6 R1
  NAMECALL R2 R2 K10 ["sendEventDeferred"]
  CALL R2 4 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R0 K7 [{"annotationOptionSeenCount", "annotationPageSeenCount", "annotationPlaceCount", "annotationUndoCount", "annotationRedoCount", "abandonedForRetake", "isPortraitMode"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["annotationOptionSeenCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["annotationPageSeenCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["annotationPlaceCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K3 ["annotationUndoCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["annotationRedoCount"]
  LOADB R1 0
  SETTABLEKS R1 R0 K5 ["abandonedForRetake"]
  LOADB R1 0
  SETTABLEKS R1 R0 K6 ["isPortraitMode"]
  SETUPVAL R0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["EventIngestService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K9 ["Workspace"]
  GETTABLEKS R5 R6 K7 ["Packages"]
  GETTABLEKS R4 R5 K10 ["TnSAvatarIdentification"]
  CALL R3 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K9 ["Workspace"]
  GETTABLEKS R8 R9 K7 ["Packages"]
  GETTABLEKS R7 R8 K11 ["Analytics"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K12 ["AnalyticsReporters"]
  GETTABLEKS R4 R5 K13 ["EventIngest"]
  DUPTABLE R5 K16 [{"EventType", "Context"}]
  DUPTABLE R6 K18 [{"AvatarsIdentified"}]
  LOADK R7 K19 ["ReportAnythingAvatarsIdentified"]
  SETTABLEKS R7 R6 K17 ["AvatarsIdentified"]
  SETTABLEKS R6 R5 K14 ["EventType"]
  DUPTABLE R6 K21 [{"LegacyMenu"}]
  LOADK R7 K22 ["ReportAbuseLegacyMenu"]
  SETTABLEKS R7 R6 K20 ["LegacyMenu"]
  SETTABLEKS R6 R5 K15 ["Context"]
  DUPCLOSURE R6 K23 [PROTO_0]
  DUPTABLE R7 K31 [{"annotationOptionSeenCount", "annotationPageSeenCount", "annotationPlaceCount", "annotationUndoCount", "annotationRedoCount", "abandonedForRetake", "isPortraitMode"}]
  LOADN R8 0
  SETTABLEKS R8 R7 K24 ["annotationOptionSeenCount"]
  LOADN R8 0
  SETTABLEKS R8 R7 K25 ["annotationPageSeenCount"]
  LOADN R8 0
  SETTABLEKS R8 R7 K26 ["annotationPlaceCount"]
  LOADN R8 0
  SETTABLEKS R8 R7 K27 ["annotationUndoCount"]
  LOADN R8 0
  SETTABLEKS R8 R7 K28 ["annotationRedoCount"]
  LOADB R8 0
  SETTABLEKS R8 R7 K29 ["abandonedForRetake"]
  LOADB R8 0
  SETTABLEKS R8 R7 K30 ["isPortraitMode"]
  LOADNIL R8
  NEWCLOSURE R9 P1
  CAPTURE REF R8
  CAPTURE VAL R4
  CAPTURE VAL R1
  DUPTABLE R10 K42 [{"incrementAnnotationOptionSeen", "incrementAnnotationPageSeen", "incrementAnnotationPlace", "incrementAnnotationUndo", "incrementAnnotationRedo", "setAbandonedForRetake", "setIsPortraitMode", "getAccumulatedParameters", "emitAvatarsIdentifiedStats", "clear"}]
  NEWCLOSURE R11 P2
  CAPTURE REF R7
  SETTABLEKS R11 R10 K32 ["incrementAnnotationOptionSeen"]
  NEWCLOSURE R11 P3
  CAPTURE REF R7
  SETTABLEKS R11 R10 K33 ["incrementAnnotationPageSeen"]
  NEWCLOSURE R11 P4
  CAPTURE REF R7
  SETTABLEKS R11 R10 K34 ["incrementAnnotationPlace"]
  NEWCLOSURE R11 P5
  CAPTURE REF R7
  SETTABLEKS R11 R10 K35 ["incrementAnnotationUndo"]
  NEWCLOSURE R11 P6
  CAPTURE REF R7
  SETTABLEKS R11 R10 K36 ["incrementAnnotationRedo"]
  NEWCLOSURE R11 P7
  CAPTURE REF R7
  SETTABLEKS R11 R10 K37 ["setAbandonedForRetake"]
  NEWCLOSURE R11 P8
  CAPTURE REF R7
  SETTABLEKS R11 R10 K38 ["setIsPortraitMode"]
  NEWCLOSURE R11 P9
  CAPTURE REF R7
  SETTABLEKS R11 R10 K39 ["getAccumulatedParameters"]
  NEWCLOSURE R11 P10
  CAPTURE VAL R2
  CAPTURE REF R8
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K40 ["emitAvatarsIdentifiedStats"]
  NEWCLOSURE R11 P11
  CAPTURE REF R7
  SETTABLEKS R11 R10 K41 ["clear"]
  CLOSEUPVALS R7
  RETURN R10 1
