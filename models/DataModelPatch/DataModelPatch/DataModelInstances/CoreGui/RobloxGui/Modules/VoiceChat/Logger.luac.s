PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["new"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["CoreScriptsInitializer"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["CoreLogger"]
  LOADK R4 K10 ["VoiceChatLogger"]
  NAMECALL R2 R1 K11 ["new"]
  CALL R2 2 1
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
