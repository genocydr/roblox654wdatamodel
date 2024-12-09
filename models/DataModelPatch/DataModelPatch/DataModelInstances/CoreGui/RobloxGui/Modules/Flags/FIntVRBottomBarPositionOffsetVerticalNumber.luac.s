MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["VRBottomBarPositionOffsetVerticalNumber"]
  LOADN R3 86
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["VRBottomBarPositionOffsetVerticalNumber"]
  NAMECALL R0 R0 K4 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1
