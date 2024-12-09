MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"VoiceAnalytics"}]
  DUPTABLE R1 K8 [{"UnmutePlayer", "MutePlayer", "UnmuteSelf", "MuteSelf", "UnmuteAll", "MuteAll"}]
  LOADK R2 K9 ["unmute_player"]
  SETTABLEKS R2 R1 K2 ["UnmutePlayer"]
  LOADK R2 K10 ["mute_player"]
  SETTABLEKS R2 R1 K3 ["MutePlayer"]
  LOADK R2 K11 ["unmute_self"]
  SETTABLEKS R2 R1 K4 ["UnmuteSelf"]
  LOADK R2 K12 ["mute_self"]
  SETTABLEKS R2 R1 K5 ["MuteSelf"]
  LOADK R2 K13 ["unmute_all"]
  SETTABLEKS R2 R1 K6 ["UnmuteAll"]
  LOADK R2 K14 ["mute_all"]
  SETTABLEKS R2 R1 K7 ["MuteAll"]
  SETTABLEKS R1 R0 K0 ["VoiceAnalytics"]
  RETURN R0 1
