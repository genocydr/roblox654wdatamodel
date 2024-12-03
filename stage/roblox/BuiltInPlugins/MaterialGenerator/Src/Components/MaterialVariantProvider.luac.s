PROTO_0:
  GETTABLEKS R1 R0 K0 ["MaterialVariant"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  LOADNIL R5
  SETTABLEKS R5 R4 K0 ["Parent"]
  FORGLOOP R0 2 [-4]
  GETUPVAL R0 1
  JUMPIFEQKNIL R0 [+9]
  GETUPVAL R0 1
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["Parent"]
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["Destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["map"]
  GETUPVAL R1 1
  DUPCLOSURE R2 K1 [PROTO_0]
  CALL R0 2 1
  LOADNIL R1
  LENGTH R2 R0
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+28]
  GETUPVAL R2 2
  JUMPIFNOT R2 [+25]
  GETUPVAL R2 2
  JUMPIFEQKS R2 K2 [""] [+23]
  GETUPVAL R2 3
  GETUPVAL R4 2
  LOADB R5 1
  NAMECALL R2 R2 K3 ["FindFirstChild"]
  CALL R2 3 1
  MOVE R1 R2
  JUMPIF R1 [+14]
  GETIMPORT R2 K6 [Instance.new]
  LOADK R3 K7 ["Folder"]
  CALL R2 1 1
  MOVE R1 R2
  LOADB R2 0
  SETTABLEKS R2 R1 K8 ["Archivable"]
  GETUPVAL R2 3
  SETTABLEKS R2 R1 K9 ["Parent"]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K10 ["Name"]
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R7 R1
  JUMPIF R7 [+1]
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K9 ["Parent"]
  FORGLOOP R2 2 [-6]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE REF R1
  CLOSEUPVALS R1
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Expected FFlagMaterialGeneratorNewUI to be true"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["use"]
  CALL R1 0 1
  LOADK R4 K4 ["MaterialService"]
  NAMECALL R2 R1 K5 ["getServiceInstance"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K6 ["FolderName"]
  GETTABLEKS R4 R0 K7 ["Materials"]
  GETUPVAL R5 2
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  NEWTABLE R7 0 2
  MOVE R8 R3
  MOVE R9 R4
  SETLIST R7 R8 2 [1]
  CALL R5 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["MaterialFramework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["React"]
  CALL R4 1 1
  GETTABLEKS R6 R3 K11 ["Context"]
  GETTABLEKS R5 R6 K12 ["StudioServices"]
  GETTABLEKS R6 R4 K13 ["useEffect"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K5 ["Src"]
  GETTABLEKS R9 R10 K14 ["Flags"]
  GETTABLEKS R8 R9 K15 ["getFFlagMaterialGeneratorNewUI"]
  CALL R7 1 1
  DUPCLOSURE R8 K16 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R2
  SETGLOBAL R8 K17 ["MaterialVariantProvider"]
  GETGLOBAL R8 K17 ["MaterialVariantProvider"]
  RETURN R8 1