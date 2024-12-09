MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Enums"]
  GETTABLEKS R2 R3 K6 ["PlatformEnum"]
  CALL R1 1 1
  NEWTABLE R2 1 0
  GETTABLEKS R3 R1 K7 ["QuestVR"]
  DUPTABLE R4 K17 [{"FirstPersonToggleEvent", "MoveToGoalEvent", "HapticFeedbackEvent", "HapticFeedbackTwiceEvent", "SoundFeedbackEvent", "JumpEvent", "PerspectiveTooltipEvent", "MovementTooltipEvent", "LeaveGameIconHighlightEvent"}]
  LOADK R5 K8 ["FirstPersonToggleEvent"]
  SETTABLEKS R5 R4 K8 ["FirstPersonToggleEvent"]
  LOADK R5 K9 ["MoveToGoalEvent"]
  SETTABLEKS R5 R4 K9 ["MoveToGoalEvent"]
  LOADK R5 K10 ["HapticFeedbackEvent"]
  SETTABLEKS R5 R4 K10 ["HapticFeedbackEvent"]
  LOADK R5 K11 ["HapticFeedbackTwiceEvent"]
  SETTABLEKS R5 R4 K11 ["HapticFeedbackTwiceEvent"]
  LOADK R5 K12 ["SoundFeedbackEvent"]
  SETTABLEKS R5 R4 K12 ["SoundFeedbackEvent"]
  LOADK R5 K13 ["JumpEvent"]
  SETTABLEKS R5 R4 K13 ["JumpEvent"]
  LOADK R5 K14 ["PerspectiveTooltipEvent"]
  SETTABLEKS R5 R4 K14 ["PerspectiveTooltipEvent"]
  LOADK R5 K15 ["MovementTooltipEvent"]
  SETTABLEKS R5 R4 K15 ["MovementTooltipEvent"]
  LOADK R5 K16 ["LeaveGameIconHighlightEvent"]
  SETTABLEKS R5 R4 K16 ["LeaveGameIconHighlightEvent"]
  SETTABLE R4 R2 R3
  RETURN R2 1
