PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["isSmallTouchScreen"]
  CALL R0 0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["mobileDevice"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  AND R2 R1 R0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Chrome"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["ChromeShared"]
  GETTABLEKS R3 R4 K7 ["Service"]
  GETTABLEKS R2 R3 K8 ["ViewportUtil"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
