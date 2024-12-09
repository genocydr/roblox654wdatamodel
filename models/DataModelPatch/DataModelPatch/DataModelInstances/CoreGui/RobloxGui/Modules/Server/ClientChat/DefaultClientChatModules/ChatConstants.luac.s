MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  LOADK R1 K0 ["Message"]
  SETTABLEKS R1 R0 K1 ["MessageTypeDefault"]
  LOADK R1 K2 ["System"]
  SETTABLEKS R1 R0 K3 ["MessageTypeSystem"]
  LOADK R1 K4 ["MeCommand"]
  SETTABLEKS R1 R0 K5 ["MessageTypeMeCommand"]
  LOADK R1 K6 ["Welcome"]
  SETTABLEKS R1 R0 K7 ["MessageTypeWelcome"]
  LOADK R1 K8 ["SetCore"]
  SETTABLEKS R1 R0 K9 ["MessageTypeSetCore"]
  LOADK R1 K10 ["Whisper"]
  SETTABLEKS R1 R0 K11 ["MessageTypeWhisper"]
  LOADN R1 0
  SETTABLEKS R1 R0 K12 ["MajorVersion"]
  LOADN R1 8
  SETTABLEKS R1 R0 K13 ["MinorVersion"]
  LOADK R1 K14 ["2018.05.16"]
  SETTABLEKS R1 R0 K15 ["BuildVersion"]
  LOADN R1 251
  SETTABLEKS R1 R0 K16 ["VeryLowPriority"]
  LOADN R1 0
  SETTABLEKS R1 R0 K17 ["LowPriority"]
  LOADN R1 10
  SETTABLEKS R1 R0 K18 ["StandardPriority"]
  LOADN R1 20
  SETTABLEKS R1 R0 K19 ["HighPriority"]
  LOADN R1 25
  SETTABLEKS R1 R0 K20 ["VeryHighPriority"]
  LOADK R1 K21 ["To "]
  SETTABLEKS R1 R0 K22 ["WhisperChannelPrefix"]
  RETURN R0 1
