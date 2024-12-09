MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"ThrottleUpdateEventName"}]
  LOADK R1 K2 ["AvatarChatThrottleUpdateEvent"]
  SETTABLEKS R1 R0 K0 ["ThrottleUpdateEventName"]
  RETURN R0 1
