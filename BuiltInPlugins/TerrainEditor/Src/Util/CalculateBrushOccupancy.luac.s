PROTO_0:
  SUB R4 R1 R0
  GETUPVAL R5 0
  DIV R3 R4 R5
  LOADN R4 0
  LOADN R5 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K2 [math.clamp]
  CALL R2 3 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Resources"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["VoxelResolution"]
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
