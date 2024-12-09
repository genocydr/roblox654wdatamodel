MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"PromptSidePadding", "ViewportLightColor", "ViewportLightAmbient", "ViewportLightDirection", "ItemCardWidthLandscape", "ItemCardWidthPortrait"}]
  LOADN R1 24
  SETTABLEKS R1 R0 K0 ["PromptSidePadding"]
  GETIMPORT R1 K9 [Color3.fromRGB]
  LOADN R2 240
  LOADN R3 240
  LOADN R4 240
  CALL R1 3 1
  SETTABLEKS R1 R0 K1 ["ViewportLightColor"]
  GETIMPORT R1 K9 [Color3.fromRGB]
  LOADN R2 160
  LOADN R3 160
  LOADN R4 160
  CALL R1 3 1
  SETTABLEKS R1 R0 K2 ["ViewportLightAmbient"]
  LOADK R1 K10 [{9.5, -12, 7.5}]
  SETTABLEKS R1 R0 K3 ["ViewportLightDirection"]
  LOADN R1 150
  SETTABLEKS R1 R0 K4 ["ItemCardWidthLandscape"]
  LOADN R1 100
  SETTABLEKS R1 R0 K5 ["ItemCardWidthPortrait"]
  RETURN R0 1
