PROTO_0:
  SETUPVAL R1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  RETURN R1 1

PROTO_2:
  SETUPVAL R1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  LOADNIL R0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["ReportAnythingScreenshot"]
  NAMECALL R1 R1 K3 ["GetEngineFeature"]
  CALL R1 2 1
  JUMPIFNOT R1 [+13]
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["SafetyService"]
  NAMECALL R1 R1 K5 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K6 ["ScreenshotContentReady"]
  NEWCLOSURE R4 P0
  CAPTURE REF R0
  NAMECALL R2 R2 K7 ["Connect"]
  CALL R2 2 0
  NEWTABLE R1 4 0
  SETTABLEKS R1 R1 K8 ["__index"]
  NEWCLOSURE R2 P1
  CAPTURE REF R0
  SETTABLEKS R2 R1 K9 ["GetScreenshotContentId"]
  NEWCLOSURE R2 P2
  CAPTURE REF R0
  SETTABLEKS R2 R1 K10 ["SetScreenshotContentId"]
  CLOSEUPVALS R0
  RETURN R1 1
