PROTO_0:
  GETTABLEKS R1 R0 K0 ["toastTitle"]
  GETTABLEKS R2 R0 K1 ["toastSubtitle"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["props"]
  GETTABLEKS R5 R6 K4 ["numFeedbackSubmissionAttempts"]
  MODK R4 R5 K2 [2]
  JUMPIFEQKN R4 K5 [0] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+8]
  GETTABLEKS R4 R0 K0 ["toastTitle"]
  LOADK R5 K6 [" "]
  CONCAT R1 R4 R5
  GETTABLEKS R4 R0 K1 ["toastSubtitle"]
  LOADK R5 K6 [" "]
  CONCAT R2 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K10 [{"duration", "toastContent"}]
  LOADN R7 3
  SETTABLEKS R7 R6 K8 ["duration"]
  DUPTABLE R7 K12 [{"iconImage", "toastTitle", "toastSubtitle"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K13 ["icons/status/success"]
  SETTABLEKS R8 R7 K11 ["iconImage"]
  SETTABLEKS R1 R7 K0 ["toastTitle"]
  SETTABLEKS R2 R7 K1 ["toastSubtitle"]
  SETTABLEKS R7 R6 K9 ["toastContent"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["numFeedbackSubmissionAttempts"]
  JUMPIFNOTEQKNIL R1 [+3]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createElement"]
  LOADK R2 K3 ["Frame"]
  DUPTABLE R3 K7 [{"BackgroundTransparency", "Size", "ZIndex"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K4 ["BackgroundTransparency"]
  GETIMPORT R4 K10 [UDim2.fromScale]
  LOADN R5 1
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Size"]
  LOADN R4 100
  SETTABLEKS R4 R3 K6 ["ZIndex"]
  DUPTABLE R4 K12 [{"Toast"}]
  GETUPVAL R5 1
  DUPTABLE R6 K15 [{"toastTitle", "toastSubtitle"}]
  LOADK R7 K16 ["CoreScripts.Feedback.SubmissionToastHeader"]
  SETTABLEKS R7 R6 K13 ["toastTitle"]
  LOADK R7 K17 ["CoreScripts.Feedback.SubmissionToastBody"]
  SETTABLEKS R7 R6 K14 ["toastSubtitle"]
  CALL R5 1 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R5 1 1
  SETTABLEKS R5 R4 K11 ["Toast"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_2:
  DUPTABLE R1 K1 [{"numFeedbackSubmissionAttempts"}]
  GETTABLEKS R3 R0 K2 ["common"]
  GETTABLEKS R2 R3 K0 ["numFeedbackSubmissionAttempts"]
  SETTABLEKS R2 R1 K0 ["numFeedbackSubmissionAttempts"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["t"]
  CALL R4 1 1
  GETTABLEKS R7 R3 K11 ["App"]
  GETTABLEKS R6 R7 K12 ["Dialog"]
  GETTABLEKS R5 R6 K13 ["Toast"]
  GETTABLEKS R8 R3 K11 ["App"]
  GETTABLEKS R7 R8 K14 ["ImageSet"]
  GETTABLEKS R6 R7 K15 ["Images"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K16 ["Workspace"]
  GETTABLEKS R10 R11 K6 ["Packages"]
  GETTABLEKS R9 R10 K17 ["Localization"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K18 ["withLocalization"]
  GETTABLEKS R8 R1 K19 ["PureComponent"]
  LOADK R10 K20 ["FeedbackSubmissionToast"]
  NAMECALL R8 R8 K21 ["extend"]
  CALL R8 2 1
  GETTABLEKS R9 R4 K22 ["strictInterface"]
  DUPTABLE R10 K24 [{"numFeedbackSubmissionAttempts"}]
  GETTABLEKS R11 R4 K25 ["optional"]
  GETTABLEKS R12 R4 K26 ["number"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K23 ["numFeedbackSubmissionAttempts"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K27 ["validateProps"]
  DUPCLOSURE R9 K28 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K29 ["render"]
  GETTABLEKS R9 R2 K30 ["connect"]
  DUPCLOSURE R10 K31 [PROTO_2]
  LOADNIL R11
  CALL R9 2 1
  MOVE R10 R8
  CALL R9 1 -1
  RETURN R9 -1
