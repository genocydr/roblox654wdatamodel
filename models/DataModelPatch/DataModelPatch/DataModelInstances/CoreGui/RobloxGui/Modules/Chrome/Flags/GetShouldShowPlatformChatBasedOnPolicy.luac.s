PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+8]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["getAppFeaturePolicies"]
  CALL R1 0 1
  GETTABLEKS R0 R1 K1 ["getCanSeeChatTab"]
  CALL R0 0 1
  RETURN R0 1
  LOADB R0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["AppChatDisableInExpU13"]
  LOADB R4 0
  NAMECALL R1 R1 K5 ["DefineFastFlag"]
  CALL R1 3 1
  GETIMPORT R2 K7 [require]
  GETTABLEKS R5 R0 K8 ["Workspace"]
  GETTABLEKS R4 R5 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["UniversalAppPolicy"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
