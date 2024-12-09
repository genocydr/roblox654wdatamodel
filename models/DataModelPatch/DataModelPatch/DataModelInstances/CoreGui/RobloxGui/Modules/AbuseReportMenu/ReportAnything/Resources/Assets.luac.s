MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["UIBlox"]
  CALL R1 1 1
  GETTABLEKS R4 R1 K8 ["App"]
  GETTABLEKS R3 R4 K9 ["ImageSet"]
  GETTABLEKS R2 R3 K10 ["Images"]
  GETTABLEKS R5 R1 K8 ["App"]
  GETTABLEKS R4 R5 K9 ["ImageSet"]
  GETTABLEKS R3 R4 K11 ["getIconSize"]
  GETTABLEKS R7 R1 K8 ["App"]
  GETTABLEKS R6 R7 K9 ["ImageSet"]
  GETTABLEKS R5 R6 K12 ["Enum"]
  GETTABLEKS R4 R5 K13 ["IconSize"]
  DUPTABLE R5 K14 [{"Images"}]
  DUPTABLE R6 K21 [{"MuteIcon", "BlockIcon", "VoiceChatIcon", "TextChatIcon", "OtherIcon", "RoundedRect"}]
  DUPTABLE R7 K24 [{"Size", "Image"}]
  GETIMPORT R8 K27 [UDim2.fromOffset]
  MOVE R9 R3
  GETTABLEKS R10 R4 K28 ["Medium"]
  CALL R9 1 1
  MOVE R10 R3
  GETTABLEKS R11 R4 K28 ["Medium"]
  CALL R10 1 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K22 ["Size"]
  LOADK R8 K29 ["rbxasset://textures/ui/VoiceChat/SpeakerLight/Unmuted0.png"]
  SETTABLEKS R8 R7 K23 ["Image"]
  SETTABLEKS R7 R6 K15 ["MuteIcon"]
  DUPTABLE R7 K24 [{"Size", "Image"}]
  GETIMPORT R8 K27 [UDim2.fromOffset]
  MOVE R9 R3
  GETTABLEKS R10 R4 K28 ["Medium"]
  CALL R9 1 1
  MOVE R10 R3
  GETTABLEKS R11 R4 K28 ["Medium"]
  CALL R10 1 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K22 ["Size"]
  GETTABLEKS R8 R2 K30 ["icons/actions/block"]
  SETTABLEKS R8 R7 K23 ["Image"]
  SETTABLEKS R7 R6 K16 ["BlockIcon"]
  DUPTABLE R7 K24 [{"Size", "Image"}]
  GETIMPORT R8 K27 [UDim2.fromOffset]
  MOVE R9 R3
  GETTABLEKS R10 R4 K28 ["Medium"]
  CALL R9 1 1
  MOVE R10 R3
  GETTABLEKS R11 R4 K28 ["Medium"]
  CALL R10 1 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K22 ["Size"]
  LOADK R8 K29 ["rbxasset://textures/ui/VoiceChat/SpeakerLight/Unmuted0.png"]
  SETTABLEKS R8 R7 K23 ["Image"]
  SETTABLEKS R7 R6 K17 ["VoiceChatIcon"]
  DUPTABLE R7 K24 [{"Size", "Image"}]
  GETIMPORT R8 K27 [UDim2.fromOffset]
  MOVE R9 R3
  GETTABLEKS R10 R4 K28 ["Medium"]
  CALL R9 1 1
  MOVE R10 R3
  GETTABLEKS R11 R4 K28 ["Medium"]
  CALL R10 1 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K22 ["Size"]
  LOADK R8 K31 ["rbxasset://textures/ui/TopBar/chatOff.png"]
  SETTABLEKS R8 R7 K23 ["Image"]
  SETTABLEKS R7 R6 K18 ["TextChatIcon"]
  DUPTABLE R7 K24 [{"Size", "Image"}]
  GETIMPORT R8 K27 [UDim2.fromOffset]
  MOVE R9 R3
  GETTABLEKS R10 R4 K28 ["Medium"]
  CALL R9 1 1
  MOVE R10 R3
  GETTABLEKS R11 R4 K28 ["Medium"]
  CALL R10 1 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K22 ["Size"]
  GETTABLEKS R8 R2 K32 ["icons/menu/help"]
  SETTABLEKS R8 R7 K23 ["Image"]
  SETTABLEKS R7 R6 K19 ["OtherIcon"]
  DUPTABLE R7 K35 [{"ScaleType", "SliceCenter", "Image"}]
  GETIMPORT R8 K37 [Enum.ScaleType.Slice]
  SETTABLEKS R8 R7 K33 ["ScaleType"]
  GETIMPORT R8 K40 [Rect.new]
  LOADN R9 8
  LOADN R10 8
  LOADN R11 9
  LOADN R12 9
  CALL R8 4 1
  SETTABLEKS R8 R7 K34 ["SliceCenter"]
  GETTABLEKS R8 R2 K41 ["component_assets/circle_17"]
  SETTABLEKS R8 R7 K23 ["Image"]
  SETTABLEKS R7 R6 K20 ["RoundedRect"]
  SETTABLEKS R6 R5 K10 ["Images"]
  RETURN R5 1
