MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["ExperienceChat"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  LOADK R4 K6 ["bubbleChat"]
  NAMECALL R2 R1 K5 ["WaitForChild"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K7 ["ChildAdded"]
  NAMECALL R3 R3 K8 ["Wait"]
  CALL R3 1 0
  NAMECALL R4 R2 K9 ["GetChildren"]
  CALL R4 1 1
  GETTABLEN R3 R4 1
  LOADB R4 1
  SETTABLEKS R4 R3 K10 ["AlwaysOnTop"]
  RETURN R0 0
