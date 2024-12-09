MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"CallHistory", "FriendList"}]
  LOADK R1 K0 ["CallHistory"]
  SETTABLEKS R1 R0 K0 ["CallHistory"]
  LOADK R1 K1 ["FriendList"]
  SETTABLEKS R1 R0 K1 ["FriendList"]
  RETURN R0 1
