PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R0 R3 K0 ["current"]
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  NAMECALL R5 R4 K1 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [-4]
  GETIMPORT R0 K4 [table.clear]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["current"]
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLE R2 R0 R1
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETTABLEKS R2 R0 K1 ["Destroying"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R2 R2 K2 ["Connect"]
  CALL R2 2 1
  SETTABLE R2 R1 R0
  RETURN R0 0

PROTO_5:
  DUPTABLE R0 K2 [{"isLimbOriginal", "markLimbAsOriginal"}]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["isLimbOriginal"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K1 ["markLimbAsOriginal"]
  RETURN R0 1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useRef"]
  NEWTABLE R2 0 0
  CALL R1 1 1
  GETTABLEKS R4 R1 K1 ["current"]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K2 [+4]
  LOADK R4 K2 ["Luau"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["useEffect"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  NEWTABLE R4 0 0
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["useMemo"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  NEWTABLE R4 0 0
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["createElement"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["Provider"]
  DUPTABLE R5 K10 [{"value"}]
  SETTABLEKS R2 R5 K9 ["value"]
  GETTABLEKS R6 R0 K11 ["children"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["OriginalLimbContext"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1