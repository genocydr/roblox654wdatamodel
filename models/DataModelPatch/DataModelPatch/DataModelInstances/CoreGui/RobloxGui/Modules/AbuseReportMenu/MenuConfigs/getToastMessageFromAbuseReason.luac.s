PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ChatGeneric"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Cheating"]
  JUMPIFNOTEQ R0 R3 [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Cheating"]
  JUMP [+22]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Username"]
  JUMPIFNOTEQ R0 R3 [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["BadUserName"]
  JUMP [+13]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Links"]
  JUMPIFEQ R0 R3 [+6]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["InappropriateContentAbuseReason"]
  JUMPIFNOTEQ R0 R3 [+4]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["Place"]
  JUMPIFNOT R1 [+3]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["ReportAnythingGeneric"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["ReportSuccessToast"]
  GETTABLEKS R3 R1 K9 ["PlayerAbuseTypes"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
