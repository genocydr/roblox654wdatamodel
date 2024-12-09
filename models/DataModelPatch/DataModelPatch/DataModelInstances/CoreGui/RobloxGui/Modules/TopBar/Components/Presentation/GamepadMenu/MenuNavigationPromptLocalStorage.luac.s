PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["GamepadMenuVirtualCursorPromptShown"]
  NAMECALL R1 R1 K1 ["GetItem"]
  CALL R1 2 1
  JUMPIFEQKS R1 K2 ["false"] [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_1:
  GETIMPORT R0 K1 [pcall]
  DUPCLOSURE R1 K2 [PROTO_0]
  CAPTURE UPVAL U0
  CALL R0 1 2
  JUMPIF R0 [+2]
  LOADB R2 0
  RETURN R2 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["GamepadMenuVirtualCursorPromptShown"]
  LOADK R3 K1 ["true"]
  NAMECALL R0 R0 K2 ["SetItem"]
  CALL R0 3 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K1 [pcall]
  DUPCLOSURE R1 K2 [PROTO_2]
  CAPTURE UPVAL U0
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AppStorageService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_1]
  CAPTURE VAL R0
  DUPCLOSURE R2 K5 [PROTO_3]
  CAPTURE VAL R0
  DUPTABLE R3 K8 [{"getShouldShowMenuNavigationPrompt", "setMenuNavigationPromptShown"}]
  SETTABLEKS R1 R3 K6 ["getShouldShowMenuNavigationPrompt"]
  SETTABLEKS R2 R3 K7 ["setMenuNavigationPromptShown"]
  RETURN R3 1
