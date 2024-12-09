MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreAttributes"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 1
  JUMPIF R0 [+2]
  LOADB R0 0
  RETURN R0 1
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["LeaderstatsWithASideOfClient"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 -1
  RETURN R0 -1
