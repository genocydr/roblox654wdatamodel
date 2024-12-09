PROTO_0:
  GETUPVAL R2 0
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Only use Team Create Status with FFlagLuaStartPageTeamCreateStatus on"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K4 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K5 ["table"] [+12]
  LOADK R2 K6 ["Expected table, got %*"]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K4 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K7 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K8 ["id"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K8 ["id"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K4 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["number"] [+13]
  LOADK R2 K10 ["\"id\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K8 ["id"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K4 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K7 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K11 ["isEnabled"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K11 ["isEnabled"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K4 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K12 ["boolean"] [+13]
  LOADK R2 K13 ["\"isEnabled\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K11 ["isEnabled"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K4 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K7 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFFlagLuaStartPageTeamCreateStatus"]
  CALL R1 1 1
  CALL R1 0 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  DUPTABLE R3 K11 [{"validate"}]
  SETTABLEKS R2 R3 K10 ["validate"]
  RETURN R3 1
