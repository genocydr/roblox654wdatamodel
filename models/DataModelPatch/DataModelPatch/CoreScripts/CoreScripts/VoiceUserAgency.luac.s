PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["VoiceUserAgencyPlaceIds"]
  NAMECALL R0 R0 K1 ["GetItem"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["JSONDecode"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [pcall]
  DUPCLOSURE R1 K2 [PROTO_0]
  CAPTURE UPVAL U0
  CALL R0 1 2
  JUMPIFNOT R0 [+8]
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CALL R2 1 2
  JUMPIFNOT R2 [+1]
  RETURN R3 1
  NEWTABLE R2 0 0
  RETURN R2 1

PROTO_3:
  GETUPVAL R0 0
  CALL R0 0 1
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R6 1
  JUMPIFNOTEQ R4 R6 [+20]
  LOADNIL R6
  SETTABLE R6 R0 R4
  GETUPVAL R6 2
  LOADK R8 K0 ["VoiceUserAgencyPlaceIds"]
  GETUPVAL R9 3
  MOVE R11 R0
  NAMECALL R9 R9 K1 ["JSONEncode"]
  CALL R9 2 -1
  NAMECALL R6 R6 K2 ["SetItem"]
  CALL R6 -1 0
  GETUPVAL R6 2
  NAMECALL R6 R6 K3 ["Flush"]
  CALL R6 1 0
  LOADB R6 1
  SETUPVAL R6 4
  RETURN R0 0
  FORGLOOP R1 2 [-23]
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  CALL R0 1 2
  JUMPIF R0 [+5]
  GETUPVAL R2 5
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["trace"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  CALL R0 0 1
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R6 1
  JUMPIFNOTEQ R4 R6 [+20]
  LOADNIL R6
  SETTABLE R6 R0 R4
  GETUPVAL R6 2
  LOADK R8 K0 ["VoiceUserAgencyPlaceIds"]
  GETUPVAL R9 3
  MOVE R11 R0
  NAMECALL R9 R9 K1 ["JSONEncode"]
  CALL R9 2 -1
  NAMECALL R6 R6 K2 ["SetItem"]
  CALL R6 -1 0
  GETUPVAL R6 2
  NAMECALL R6 R6 K3 ["Flush"]
  CALL R6 1 0
  LOADB R6 1
  SETUPVAL R6 4
  RETURN R0 0
  FORGLOOP R1 2 [-23]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+19]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U1
  CALL R1 1 2
  JUMPIF R1 [+24]
  GETUPVAL R3 6
  MOVE R5 R2
  NAMECALL R3 R3 K2 ["trace"]
  CALL R3 2 0
  RETURN R0 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U1
  CALL R1 1 2
  JUMPIF R1 [+5]
  GETUPVAL R3 6
  MOVE R5 R2
  NAMECALL R3 R3 K2 ["trace"]
  CALL R3 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  CALL R0 1 2
  JUMPIF R0 [+5]
  GETUPVAL R2 5
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["trace"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["muteAllChanged"]
  GETTABLEKS R0 R1 K1 ["Event"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  NAMECALL R0 R0 K2 ["Connect"]
  CALL R0 2 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+15]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["mutedNonFriends"]
  GETTABLEKS R0 R1 K1 ["Event"]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  NAMECALL R0 R0 K2 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  NAMECALL R3 R0 K0 ["Destroy"]
  CALL R3 1 0
  JUMPIFNOT R1 [+18]
  GETUPVAL R3 0
  CALL R3 0 1
  GETUPVAL R4 1
  SETTABLE R2 R3 R4
  GETUPVAL R4 2
  LOADK R6 K1 ["VoiceUserAgencyPlaceIds"]
  GETUPVAL R7 3
  MOVE R9 R3
  NAMECALL R7 R7 K2 ["JSONEncode"]
  CALL R7 2 -1
  NAMECALL R4 R4 K3 ["SetItem"]
  CALL R4 -1 0
  GETUPVAL R4 2
  NAMECALL R4 R4 K4 ["Flush"]
  CALL R4 1 0
  GETUPVAL R3 4
  JUMPIFNOT R3 [+33]
  GETUPVAL R3 5
  LOADK R5 K5 ["client"]
  LOADK R6 K6 ["voiceChat"]
  LOADK R7 K7 ["SelectJoinWithVoice"]
  DUPTABLE R8 K13 [{"userId", "voiceSessionId", "voiceExperienceId", "isMuteAll", "isRememberSetting"}]
  GETUPVAL R9 6
  SETTABLEKS R9 R8 K8 ["userId"]
  GETUPVAL R9 7
  NAMECALL R9 R9 K14 ["getService"]
  CALL R9 1 1
  NAMECALL R9 R9 K15 ["GetSessionId"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K9 ["voiceSessionId"]
  GETUPVAL R9 7
  NAMECALL R9 R9 K14 ["getService"]
  CALL R9 1 1
  NAMECALL R9 R9 K16 ["GetVoiceExperienceId"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K10 ["voiceExperienceId"]
  SETTABLEKS R2 R8 K11 ["isMuteAll"]
  SETTABLEKS R1 R8 K12 ["isRememberSetting"]
  NAMECALL R3 R3 K17 ["SendEventDeferred"]
  CALL R3 5 0
  GETUPVAL R3 8
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETUPVAL R3 7
  MOVE R5 R2
  NAMECALL R3 R3 K18 ["FireUserAgencySelectedEvent"]
  CALL R3 2 0
  GETUPVAL R3 9
  CALL R3 0 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R2 1
  CALL R2 0 -1
  NAMECALL R0 R0 K0 ["GetLayerData"]
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_11:
  GETUPVAL R0 0
  CALL R0 0 1
  GETIMPORT R1 K1 [pairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETUPVAL R6 1
  JUMPIFNOTEQ R4 R6 [+4]
  JUMPIFEQKNIL R5 [+2]
  RETURN R5 1
  FORGLOOP R1 2 [-7]
  RETURN R0 0

PROTO_12:
  LOADB R0 1
  SETUPVAL R0 0
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["VOICE_CONTEXT_TYPE"]
  GETTABLEKS R3 R4 K1 ["USER_AGENCY"]
  NAMECALL R0 R0 K2 ["MuteAll"]
  CALL R0 3 0
  GETUPVAL R0 3
  GETUPVAL R1 4
  GETUPVAL R2 5
  GETUPVAL R3 0
  CALL R0 3 0
  RETURN R0 0

PROTO_13:
  LOADB R0 0
  SETUPVAL R0 0
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["VOICE_CONTEXT_TYPE"]
  GETTABLEKS R3 R4 K1 ["USER_AGENCY"]
  NAMECALL R0 R0 K2 ["MuteAll"]
  CALL R0 3 0
  GETUPVAL R0 3
  GETUPVAL R1 4
  GETUPVAL R2 5
  GETUPVAL R3 0
  CALL R0 3 0
  RETURN R0 0

PROTO_14:
  GETIMPORT R1 K3 [Enum.PlaybackState.Completed]
  JUMPIFNOTEQ R0 R1 [+6]
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  CALL R1 3 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Visible"]
  NOT R1 R2
  SETTABLEKS R1 R0 K0 ["Visible"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Visible"]
  SETUPVAL R0 1
  GETUPVAL R0 2
  NAMECALL R0 R0 K1 ["Pause"]
  CALL R0 1 0
  GETUPVAL R0 3
  LOADK R2 K2 ["client"]
  LOADK R3 K3 ["voiceChat"]
  LOADK R4 K4 ["RememberJoinWithVoice"]
  DUPTABLE R5 K9 [{"userId", "voiceSessionId", "voiceExperienceId", "shouldRememberStatus"}]
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K5 ["userId"]
  GETUPVAL R6 5
  NAMECALL R6 R6 K10 ["getService"]
  CALL R6 1 1
  NAMECALL R6 R6 K11 ["GetSessionId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K6 ["voiceSessionId"]
  GETUPVAL R6 5
  NAMECALL R6 R6 K10 ["getService"]
  CALL R6 1 1
  NAMECALL R6 R6 K12 ["GetVoiceExperienceId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["voiceExperienceId"]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K8 ["shouldRememberStatus"]
  NAMECALL R0 R0 K13 ["SendEventDeferred"]
  CALL R0 5 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  LOADK R2 K0 ["client"]
  LOADK R3 K1 ["voiceChat"]
  LOADK R4 K2 ["ShowJoinWithVoice"]
  DUPTABLE R5 K6 [{"userId", "voiceSessionId", "voiceExperienceId"}]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K3 ["userId"]
  GETUPVAL R6 2
  NAMECALL R6 R6 K7 ["getService"]
  CALL R6 1 1
  NAMECALL R6 R6 K8 ["GetSessionId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K4 ["voiceSessionId"]
  GETUPVAL R6 2
  NAMECALL R6 R6 K7 ["getService"]
  CALL R6 1 1
  NAMECALL R6 R6 K9 ["GetVoiceExperienceId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K5 ["voiceExperienceId"]
  NAMECALL R0 R0 K10 ["SendEventDeferred"]
  CALL R0 5 0
  GETUPVAL R0 3
  NAMECALL R0 R0 K11 ["Play"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  LOADB R0 0
  LOADB R1 0
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+17]
  GETIMPORT R2 K1 [pcall]
  DUPCLOSURE R3 K2 [PROTO_10]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R2 1 2
  JUMPIF R2 [+2]
  CLOSEUPVALS R0
  RETURN R0 0
  JUMPIF R3 [+2]
  CLOSEUPVALS R0
  RETURN R0 0
  GETTABLEKS R4 R3 K3 ["VoiceUserAgencyEnabled"]
  JUMPIF R4 [+2]
  CLOSEUPVALS R0
  RETURN R0 0
  GETIMPORT R2 K1 [pcall]
  DUPCLOSURE R3 K4 [PROTO_11]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R2 1 2
  JUMPIF R2 [+7]
  GETUPVAL R4 5
  MOVE R6 R3
  NAMECALL R4 R4 K5 ["trace"]
  CALL R4 2 0
  CLOSEUPVALS R0
  RETURN R0 0
  JUMPIFEQKNIL R3 [+54]
  GETUPVAL R4 6
  MOVE R6 R3
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K6 ["VOICE_CONTEXT_TYPE"]
  GETTABLEKS R7 R8 K7 ["USER_AGENCY"]
  NAMECALL R4 R4 K8 ["MuteAll"]
  CALL R4 3 0
  GETUPVAL R4 8
  CALL R4 0 1
  JUMPIFNOT R4 [+5]
  GETUPVAL R4 6
  MOVE R6 R3
  NAMECALL R4 R4 K9 ["FireUserAgencySelectedEvent"]
  CALL R4 2 0
  GETUPVAL R4 9
  CALL R4 0 0
  GETUPVAL R4 10
  LOADK R6 K10 ["client"]
  LOADK R7 K11 ["voiceChat"]
  LOADK R8 K12 ["JoinWithVoice"]
  DUPTABLE R9 K17 [{"userId", "voiceSessionId", "voiceExperienceId", "isMutedAll"}]
  GETUPVAL R10 11
  SETTABLEKS R10 R9 K13 ["userId"]
  GETUPVAL R10 6
  NAMECALL R10 R10 K18 ["getService"]
  CALL R10 1 1
  NAMECALL R10 R10 K19 ["GetSessionId"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K14 ["voiceSessionId"]
  GETUPVAL R10 6
  NAMECALL R10 R10 K18 ["getService"]
  CALL R10 1 1
  NAMECALL R10 R10 K20 ["GetVoiceExperienceId"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K15 ["voiceExperienceId"]
  SETTABLEKS R3 R9 K16 ["isMutedAll"]
  NAMECALL R4 R4 K21 ["SendEventDeferred"]
  CALL R4 5 0
  CLOSEUPVALS R0
  RETURN R0 0
  GETIMPORT R4 K24 [Instance.new]
  LOADK R5 K25 ["ScreenGui"]
  CALL R4 1 1
  LOADK R5 K26 ["VoiceUserAgency"]
  SETTABLEKS R5 R4 K27 ["Name"]
  LOADB R5 0
  SETTABLEKS R5 R4 K28 ["ResetOnSpawn"]
  LOADN R5 255
  SETTABLEKS R5 R4 K29 ["DisplayOrder"]
  GETIMPORT R5 K33 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R5 R4 K31 ["ZIndexBehavior"]
  GETUPVAL R5 12
  SETTABLEKS R5 R4 K34 ["Parent"]
  GETUPVAL R5 13
  LOADK R6 K35 ["TextButton"]
  CALL R5 1 1
  NEWTABLE R6 16 2
  LOADK R9 K36 ["MuteAllButton"]
  SETTABLEKS R9 R6 K27 ["Name"]
  LOADN R9 0
  SETTABLEKS R9 R6 K37 ["BorderSizePixel"]
  GETIMPORT R9 K39 [UDim2.new]
  LOADK R10 K40 [0.5]
  LOADN R11 250
  LOADN R12 0
  LOADN R13 36
  CALL R9 4 1
  SETTABLEKS R9 R6 K41 ["Size"]
  GETUPVAL R10 14
  GETTABLEKS R9 R10 K42 ["default"]
  NAMECALL R9 R9 K43 ["getDefault"]
  CALL R9 1 1
  SETTABLEKS R9 R6 K44 ["Font"]
  GETUPVAL R9 15
  LOADK R11 K45 ["Feature.SettingsHub.Prompt.VoiceUserAgency.JoinMuted"]
  NAMECALL R9 R9 K46 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R6 K47 ["Text"]
  LOADN R9 16
  SETTABLEKS R9 R6 K48 ["TextSize"]
  GETIMPORT R9 K51 [Color3.fromRGB]
  LOADN R10 57
  LOADN R11 59
  LOADN R12 61
  CALL R9 3 1
  SETTABLEKS R9 R6 K52 ["BackgroundColor3"]
  GETIMPORT R9 K51 [Color3.fromRGB]
  LOADN R10 178
  LOADN R11 178
  LOADN R12 178
  CALL R9 3 1
  SETTABLEKS R9 R6 K53 ["TextColor3"]
  LOADN R9 1
  SETTABLEKS R9 R6 K54 ["LayoutOrder"]
  GETUPVAL R7 13
  LOADK R8 K55 ["UICorner"]
  CALL R7 1 1
  DUPTABLE R8 K57 [{"CornerRadius"}]
  GETIMPORT R9 K59 [UDim.new]
  LOADN R10 0
  LOADN R11 8
  CALL R9 2 1
  SETTABLEKS R9 R8 K56 ["CornerRadius"]
  CALL R7 1 1
  GETUPVAL R8 13
  LOADK R9 K60 ["UIStroke"]
  CALL R8 1 1
  DUPTABLE R9 K64 [{"Thickness", "ApplyStrokeMode", "Color"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K61 ["Thickness"]
  GETIMPORT R10 K66 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R10 R9 K62 ["ApplyStrokeMode"]
  GETIMPORT R10 K51 [Color3.fromRGB]
  LOADN R11 178
  LOADN R12 178
  LOADN R13 178
  CALL R10 3 1
  SETTABLEKS R10 R9 K63 ["Color"]
  CALL R8 1 -1
  SETLIST R6 R7 -1 [1]
  CALL R5 1 1
  GETTABLEKS R6 R5 K67 ["Activated"]
  NEWCLOSURE R8 P2
  CAPTURE REF R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U16
  CAPTURE VAL R4
  CAPTURE REF R1
  NAMECALL R6 R6 K68 ["Connect"]
  CALL R6 2 0
  GETUPVAL R6 13
  LOADK R7 K35 ["TextButton"]
  CALL R6 1 1
  NEWTABLE R7 16 1
  LOADK R9 K69 ["UnmuteAllButton"]
  SETTABLEKS R9 R7 K27 ["Name"]
  LOADN R9 0
  SETTABLEKS R9 R7 K37 ["BorderSizePixel"]
  GETIMPORT R9 K39 [UDim2.new]
  LOADK R10 K40 [0.5]
  LOADN R11 250
  LOADN R12 0
  LOADN R13 36
  CALL R9 4 1
  SETTABLEKS R9 R7 K41 ["Size"]
  GETUPVAL R10 14
  GETTABLEKS R9 R10 K42 ["default"]
  NAMECALL R9 R9 K43 ["getDefault"]
  CALL R9 1 1
  SETTABLEKS R9 R7 K44 ["Font"]
  GETUPVAL R9 15
  LOADK R11 K70 ["Feature.SettingsHub.Prompt.VoiceUserAgency.JoinUnmuted"]
  NAMECALL R9 R9 K46 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R7 K47 ["Text"]
  LOADN R9 16
  SETTABLEKS R9 R7 K48 ["TextSize"]
  GETIMPORT R9 K51 [Color3.fromRGB]
  LOADN R10 255
  LOADN R11 255
  LOADN R12 255
  CALL R9 3 1
  SETTABLEKS R9 R7 K52 ["BackgroundColor3"]
  GETIMPORT R9 K51 [Color3.fromRGB]
  LOADN R10 57
  LOADN R11 59
  LOADN R12 61
  CALL R9 3 1
  SETTABLEKS R9 R7 K53 ["TextColor3"]
  LOADN R9 2
  SETTABLEKS R9 R7 K54 ["LayoutOrder"]
  GETUPVAL R8 13
  LOADK R9 K55 ["UICorner"]
  CALL R8 1 1
  DUPTABLE R9 K57 [{"CornerRadius"}]
  GETIMPORT R10 K59 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K56 ["CornerRadius"]
  CALL R8 1 -1
  SETLIST R7 R8 -1 [1]
  CALL R6 1 1
  GETTABLEKS R7 R6 K67 ["Activated"]
  NEWCLOSURE R9 P3
  CAPTURE REF R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U16
  CAPTURE VAL R4
  CAPTURE REF R1
  NAMECALL R7 R7 K68 ["Connect"]
  CALL R7 2 0
  GETUPVAL R7 13
  LOADK R8 K71 ["Frame"]
  CALL R7 1 1
  DUPTABLE R8 K73 [{"Name", "BorderSizePixel", "Size", "BackgroundColor3", "BackgroundTransparency"}]
  LOADK R9 K74 ["TimerBar"]
  SETTABLEKS R9 R8 K27 ["Name"]
  LOADN R9 0
  SETTABLEKS R9 R8 K37 ["BorderSizePixel"]
  GETIMPORT R9 K39 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K41 ["Size"]
  GETIMPORT R9 K51 [Color3.fromRGB]
  LOADN R10 255
  LOADN R11 255
  LOADN R12 255
  CALL R9 3 1
  SETTABLEKS R9 R8 K52 ["BackgroundColor3"]
  LOADN R9 0
  SETTABLEKS R9 R8 K72 ["BackgroundTransparency"]
  CALL R7 1 1
  NEWTABLE R8 1 0
  GETIMPORT R9 K76 [UDim2.fromScale]
  LOADN R10 1
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K41 ["Size"]
  GETIMPORT R9 K78 [TweenInfo.new]
  GETUPVAL R10 17
  GETIMPORT R11 K81 [Enum.EasingStyle.Sine]
  CALL R9 2 1
  GETUPVAL R10 18
  MOVE R12 R7
  MOVE R13 R9
  MOVE R14 R8
  NAMECALL R10 R10 K82 ["Create"]
  CALL R10 4 1
  GETTABLEKS R11 R10 K83 ["Completed"]
  NEWCLOSURE R13 P4
  CAPTURE UPVAL U16
  CAPTURE VAL R4
  CAPTURE REF R1
  CAPTURE REF R0
  NAMECALL R11 R11 K68 ["Connect"]
  CALL R11 2 0
  GETUPVAL R11 13
  LOADK R12 K84 ["ImageLabel"]
  CALL R11 1 1
  DUPTABLE R12 K88 [{"Size", "BackgroundTransparency", "Image", "ImageRectOffset", "ImageRectSize"}]
  GETIMPORT R13 K39 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K41 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K72 ["BackgroundTransparency"]
  GETUPVAL R15 19
  GETTABLEKS R14 R15 K89 ["icons/status/success_small"]
  GETTABLEKS R13 R14 K85 ["Image"]
  SETTABLEKS R13 R12 K85 ["Image"]
  GETUPVAL R15 19
  GETTABLEKS R14 R15 K89 ["icons/status/success_small"]
  GETTABLEKS R13 R14 K86 ["ImageRectOffset"]
  SETTABLEKS R13 R12 K86 ["ImageRectOffset"]
  GETUPVAL R15 19
  GETTABLEKS R14 R15 K89 ["icons/status/success_small"]
  GETTABLEKS R13 R14 K87 ["ImageRectSize"]
  SETTABLEKS R13 R12 K87 ["ImageRectSize"]
  CALL R11 1 1
  GETUPVAL R12 13
  LOADK R13 K90 ["ImageButton"]
  CALL R12 1 1
  DUPTABLE R13 K88 [{"Size", "BackgroundTransparency", "Image", "ImageRectOffset", "ImageRectSize"}]
  GETIMPORT R14 K39 [UDim2.new]
  LOADN R15 0
  LOADN R16 14
  LOADN R17 0
  LOADN R18 14
  CALL R14 4 1
  SETTABLEKS R14 R13 K41 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K72 ["BackgroundTransparency"]
  GETUPVAL R16 19
  GETTABLEKS R15 R16 K91 ["squircles/hollow"]
  GETTABLEKS R14 R15 K85 ["Image"]
  SETTABLEKS R14 R13 K85 ["Image"]
  GETUPVAL R16 19
  GETTABLEKS R15 R16 K91 ["squircles/hollow"]
  GETTABLEKS R14 R15 K86 ["ImageRectOffset"]
  SETTABLEKS R14 R13 K86 ["ImageRectOffset"]
  GETUPVAL R16 19
  GETTABLEKS R15 R16 K91 ["squircles/hollow"]
  GETTABLEKS R14 R15 K87 ["ImageRectSize"]
  SETTABLEKS R14 R13 K87 ["ImageRectSize"]
  CALL R12 1 1
  LOADB R13 0
  SETTABLEKS R13 R11 K92 ["Visible"]
  SETTABLEKS R12 R11 K34 ["Parent"]
  GETTABLEKS R13 R12 K67 ["Activated"]
  NEWCLOSURE R15 P5
  CAPTURE VAL R11
  CAPTURE REF R1
  CAPTURE VAL R10
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U6
  NAMECALL R13 R13 K68 ["Connect"]
  CALL R13 2 0
  GETUPVAL R13 13
  LOADK R14 K93 ["TextLabel"]
  CALL R13 1 1
  DUPTABLE R14 K96 [{"Name", "Font", "Text", "TextColor3", "TextSize", "TextWrapped", "Size", "BackgroundTransparency", "TextTransparency", "LayoutOrder"}]
  LOADK R15 K97 ["CheckboxTextLabel"]
  SETTABLEKS R15 R14 K27 ["Name"]
  GETUPVAL R16 14
  GETTABLEKS R15 R16 K42 ["default"]
  NAMECALL R15 R15 K43 ["getDefault"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K44 ["Font"]
  GETUPVAL R15 20
  SETTABLEKS R15 R14 K47 ["Text"]
  GETIMPORT R15 K51 [Color3.fromRGB]
  LOADN R16 190
  LOADN R17 190
  LOADN R18 190
  CALL R15 3 1
  SETTABLEKS R15 R14 K53 ["TextColor3"]
  LOADN R15 16
  SETTABLEKS R15 R14 K48 ["TextSize"]
  LOADB R15 1
  SETTABLEKS R15 R14 K94 ["TextWrapped"]
  GETIMPORT R15 K39 [UDim2.new]
  LOADN R16 0
  LOADN R17 94
  LOADN R18 0
  LOADN R19 24
  CALL R15 4 1
  SETTABLEKS R15 R14 K41 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K72 ["BackgroundTransparency"]
  LOADN R15 0
  SETTABLEKS R15 R14 K95 ["TextTransparency"]
  LOADN R15 2
  SETTABLEKS R15 R14 K54 ["LayoutOrder"]
  CALL R13 1 1
  GETUPVAL R14 21
  GETUPVAL R16 20
  LOADN R17 16
  GETUPVAL R19 14
  GETTABLEKS R18 R19 K42 ["default"]
  NAMECALL R18 R18 K43 ["getDefault"]
  CALL R18 1 1
  GETIMPORT R19 K99 [Vector2.new]
  LOADN R20 94
  LOADN R21 24
  CALL R19 2 -1
  NAMECALL R14 R14 K100 ["GetTextSize"]
  CALL R14 -1 1
  GETIMPORT R15 K39 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R18 R14 K102 ["X"]
  ADDK R17 R18 K101 [10]
  LOADN R18 0
  LOADN R19 24
  CALL R15 4 1
  SETTABLEKS R15 R13 K41 ["Size"]
  GETUPVAL R15 13
  LOADK R16 K71 ["Frame"]
  CALL R15 1 1
  NEWTABLE R16 8 9
  LOADK R26 K103 ["VoiceUserAgencyFrame"]
  SETTABLEKS R26 R16 K27 ["Name"]
  GETIMPORT R26 K99 [Vector2.new]
  LOADK R27 K40 [0.5]
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R16 K104 ["AnchorPoint"]
  GETIMPORT R26 K39 [UDim2.new]
  LOADK R27 K105 [0.9]
  LOADN R28 0
  LOADN R29 1
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R16 K41 ["Size"]
  GETIMPORT R26 K39 [UDim2.new]
  LOADK R27 K40 [0.5]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 4
  CALL R26 4 1
  SETTABLEKS R26 R16 K106 ["Position"]
  GETIMPORT R26 K51 [Color3.fromRGB]
  LOADN R27 57
  LOADN R28 59
  LOADN R29 61
  CALL R26 3 1
  SETTABLEKS R26 R16 K52 ["BackgroundColor3"]
  LOADN R26 0
  SETTABLEKS R26 R16 K37 ["BorderSizePixel"]
  GETUPVAL R17 13
  LOADK R18 K55 ["UICorner"]
  CALL R17 1 1
  DUPTABLE R18 K57 [{"CornerRadius"}]
  GETIMPORT R19 K59 [UDim.new]
  LOADN R20 0
  LOADN R21 8
  CALL R19 2 1
  SETTABLEKS R19 R18 K56 ["CornerRadius"]
  CALL R17 1 1
  GETUPVAL R18 13
  LOADK R19 K107 ["UISizeConstraint"]
  CALL R18 1 1
  DUPTABLE R19 K109 [{"MaxSize"}]
  GETIMPORT R20 K99 [Vector2.new]
  LOADN R21 144
  LOADN R22 216
  CALL R20 2 1
  SETTABLEKS R20 R19 K108 ["MaxSize"]
  CALL R18 1 1
  GETUPVAL R19 13
  LOADK R20 K110 ["UIPadding"]
  CALL R19 1 1
  DUPTABLE R20 K115 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R21 K59 [UDim.new]
  LOADN R22 0
  LOADN R23 24
  CALL R21 2 1
  SETTABLEKS R21 R20 K111 ["PaddingTop"]
  GETIMPORT R21 K59 [UDim.new]
  LOADN R22 0
  LOADN R23 24
  CALL R21 2 1
  SETTABLEKS R21 R20 K112 ["PaddingLeft"]
  GETIMPORT R21 K59 [UDim.new]
  LOADN R22 0
  LOADN R23 24
  CALL R21 2 1
  SETTABLEKS R21 R20 K113 ["PaddingRight"]
  GETIMPORT R21 K59 [UDim.new]
  LOADN R22 0
  LOADN R23 24
  CALL R21 2 1
  SETTABLEKS R21 R20 K114 ["PaddingBottom"]
  CALL R19 1 1
  GETUPVAL R20 13
  LOADK R21 K116 ["UIListLayout"]
  CALL R20 1 1
  DUPTABLE R21 K119 [{"HorizontalAlignment", "SortOrder"}]
  GETIMPORT R22 K121 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R22 R21 K117 ["HorizontalAlignment"]
  GETIMPORT R22 K122 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K118 ["SortOrder"]
  CALL R20 1 1
  GETUPVAL R21 13
  LOADK R22 K93 ["TextLabel"]
  CALL R21 1 1
  DUPTABLE R22 K123 [{"Name", "Font", "Text", "TextSize", "TextWrapped", "Size", "BackgroundTransparency", "TextColor3", "TextTransparency", "LayoutOrder"}]
  LOADK R23 K124 ["Title"]
  SETTABLEKS R23 R22 K27 ["Name"]
  GETUPVAL R24 14
  GETTABLEKS R23 R24 K42 ["default"]
  NAMECALL R23 R23 K125 ["getBold"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K44 ["Font"]
  GETUPVAL R23 15
  LOADK R25 K126 ["Feature.SettingsHub.Prompt.VoiceUserAgency.JoinUnmuted.Title"]
  NAMECALL R23 R23 K46 ["FormatByKey"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K47 ["Text"]
  LOADN R23 20
  SETTABLEKS R23 R22 K48 ["TextSize"]
  LOADB R23 1
  SETTABLEKS R23 R22 K94 ["TextWrapped"]
  GETIMPORT R23 K39 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 22
  CALL R23 4 1
  SETTABLEKS R23 R22 K41 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K72 ["BackgroundTransparency"]
  GETIMPORT R23 K51 [Color3.fromRGB]
  LOADN R24 255
  LOADN R25 255
  LOADN R26 255
  CALL R23 3 1
  SETTABLEKS R23 R22 K53 ["TextColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K95 ["TextTransparency"]
  LOADN R23 1
  SETTABLEKS R23 R22 K54 ["LayoutOrder"]
  CALL R21 1 1
  GETUPVAL R22 13
  LOADK R23 K93 ["TextLabel"]
  CALL R22 1 1
  DUPTABLE R23 K96 [{"Name", "Font", "Text", "TextColor3", "TextSize", "TextWrapped", "Size", "BackgroundTransparency", "TextTransparency", "LayoutOrder"}]
  LOADK R24 K127 ["Lower"]
  SETTABLEKS R24 R23 K27 ["Name"]
  GETUPVAL R25 14
  GETTABLEKS R24 R25 K42 ["default"]
  NAMECALL R24 R24 K43 ["getDefault"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K44 ["Font"]
  GETUPVAL R25 22
  JUMPIFNOT R25 [+6]
  GETUPVAL R24 15
  LOADK R26 K128 ["Feature.SettingsHub.Prompt.VoiceUserAgency.JoinUnmuted.Description"]
  NAMECALL R24 R24 K46 ["FormatByKey"]
  CALL R24 2 1
  JUMPIF R24 [+5]
  GETUPVAL R24 15
  LOADK R26 K129 ["Feature.SettingsHub.VoiceUserAgency.JoinUnmuted.Description"]
  NAMECALL R24 R24 K46 ["FormatByKey"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K47 ["Text"]
  GETIMPORT R24 K51 [Color3.fromRGB]
  LOADN R25 190
  LOADN R26 190
  LOADN R27 190
  CALL R24 3 1
  SETTABLEKS R24 R23 K53 ["TextColor3"]
  LOADN R24 16
  SETTABLEKS R24 R23 K48 ["TextSize"]
  LOADB R24 1
  SETTABLEKS R24 R23 K94 ["TextWrapped"]
  GETIMPORT R24 K39 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 60
  CALL R24 4 1
  SETTABLEKS R24 R23 K41 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K72 ["BackgroundTransparency"]
  LOADN R24 0
  SETTABLEKS R24 R23 K95 ["TextTransparency"]
  LOADN R24 2
  SETTABLEKS R24 R23 K54 ["LayoutOrder"]
  CALL R22 1 1
  GETUPVAL R23 13
  LOADK R24 K71 ["Frame"]
  CALL R23 1 1
  NEWTABLE R24 8 1
  LOADK R26 K130 ["TimerFrame"]
  SETTABLEKS R26 R24 K27 ["Name"]
  LOADN R26 0
  SETTABLEKS R26 R24 K37 ["BorderSizePixel"]
  GETIMPORT R26 K51 [Color3.fromRGB]
  LOADN R27 0
  LOADN R28 0
  LOADN R29 0
  CALL R26 3 1
  SETTABLEKS R26 R24 K52 ["BackgroundColor3"]
  GETIMPORT R26 K39 [UDim2.new]
  LOADN R27 1
  LOADN R28 48
  LOADN R29 0
  LOADN R30 3
  CALL R26 4 1
  SETTABLEKS R26 R24 K41 ["Size"]
  LOADN R26 0
  SETTABLEKS R26 R24 K72 ["BackgroundTransparency"]
  LOADN R26 3
  SETTABLEKS R26 R24 K54 ["LayoutOrder"]
  MOVE R25 R7
  SETLIST R24 R25 1 [1]
  CALL R23 1 1
  GETUPVAL R24 13
  LOADK R25 K71 ["Frame"]
  CALL R24 1 1
  NEWTABLE R25 8 3
  LOADK R29 K131 ["ButtonsContainer"]
  SETTABLEKS R29 R25 K27 ["Name"]
  LOADN R29 0
  SETTABLEKS R29 R25 K37 ["BorderSizePixel"]
  GETIMPORT R29 K39 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  LOADN R33 62
  CALL R29 4 1
  SETTABLEKS R29 R25 K41 ["Size"]
  LOADN R29 1
  SETTABLEKS R29 R25 K72 ["BackgroundTransparency"]
  LOADN R29 4
  SETTABLEKS R29 R25 K54 ["LayoutOrder"]
  GETUPVAL R26 13
  LOADK R27 K116 ["UIListLayout"]
  CALL R26 1 1
  DUPTABLE R27 K135 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R28 K137 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K132 ["FillDirection"]
  GETIMPORT R28 K121 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R28 R27 K117 ["HorizontalAlignment"]
  GETIMPORT R28 K138 [Enum.VerticalAlignment.Center]
  SETTABLEKS R28 R27 K133 ["VerticalAlignment"]
  GETIMPORT R28 K122 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K118 ["SortOrder"]
  GETIMPORT R28 K59 [UDim.new]
  LOADN R29 0
  LOADN R30 12
  CALL R28 2 1
  SETTABLEKS R28 R27 K134 ["Padding"]
  CALL R26 1 1
  MOVE R27 R6
  MOVE R28 R5
  SETLIST R25 R26 3 [1]
  CALL R24 1 1
  GETUPVAL R25 13
  LOADK R26 K71 ["Frame"]
  CALL R25 1 1
  NEWTABLE R26 8 3
  LOADK R30 K139 ["CheckboxContainer"]
  SETTABLEKS R30 R26 K27 ["Name"]
  LOADN R30 0
  SETTABLEKS R30 R26 K37 ["BorderSizePixel"]
  GETIMPORT R30 K39 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  LOADN R34 28
  CALL R30 4 1
  SETTABLEKS R30 R26 K41 ["Size"]
  LOADN R30 1
  SETTABLEKS R30 R26 K72 ["BackgroundTransparency"]
  LOADN R30 5
  SETTABLEKS R30 R26 K54 ["LayoutOrder"]
  GETUPVAL R27 13
  LOADK R28 K116 ["UIListLayout"]
  CALL R27 1 1
  DUPTABLE R28 K135 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R29 K137 [Enum.FillDirection.Horizontal]
  SETTABLEKS R29 R28 K132 ["FillDirection"]
  GETIMPORT R29 K121 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R29 R28 K117 ["HorizontalAlignment"]
  GETIMPORT R29 K138 [Enum.VerticalAlignment.Center]
  SETTABLEKS R29 R28 K133 ["VerticalAlignment"]
  GETIMPORT R29 K122 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K118 ["SortOrder"]
  GETIMPORT R29 K59 [UDim.new]
  LOADN R30 0
  LOADN R31 8
  CALL R29 2 1
  SETTABLEKS R29 R28 K134 ["Padding"]
  CALL R27 1 1
  MOVE R28 R12
  MOVE R29 R13
  SETLIST R26 R27 3 [1]
  CALL R25 1 -1
  SETLIST R16 R17 -1 [1]
  CALL R15 1 1
  SETTABLEKS R4 R15 K34 ["Parent"]
  GETIMPORT R16 K142 [task.delay]
  GETUPVAL R17 23
  NEWCLOSURE R18 P6
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U6
  CAPTURE VAL R10
  CALL R16 2 0
  CLOSEUPVALS R0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R0 0
  LOADK R2 K0 ["VoiceChatServiceManager did not initialize for VoiceUserAgency"]
  NAMECALL R0 R0 K1 ["trace"]
  CALL R0 2 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["asyncInit"]
  CALL R0 1 1
  DUPCLOSURE R2 K1 [PROTO_18]
  CAPTURE UPVAL U1
  NAMECALL R0 R0 K2 ["andThen"]
  CALL R0 2 1
  DUPCLOSURE R2 K3 [PROTO_19]
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K4 ["catch"]
  CALL R0 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RbxAnalyticsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["AppStorageService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CorePackages"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["HttpService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K8 ["Players"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K9 ["TextService"]
  NAMECALL R6 R6 K3 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K10 ["TweenService"]
  NAMECALL R7 R7 K3 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R10 R3 K13 ["Packages"]
  GETTABLEKS R9 R10 K14 ["InGameMenuDependencies"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K15 ["UIBlox"]
  GETTABLEKS R12 R9 K16 ["App"]
  GETTABLEKS R11 R12 K17 ["ImageSet"]
  GETTABLEKS R10 R11 K18 ["Images"]
  GETTABLEKS R12 R2 K19 ["RobloxGui"]
  GETTABLEKS R11 R12 K20 ["Modules"]
  GETIMPORT R13 K12 [require]
  GETTABLEKS R16 R3 K21 ["Workspace"]
  GETTABLEKS R15 R16 K13 ["Packages"]
  GETTABLEKS R14 R15 K22 ["AppCommonLib"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K23 ["Create"]
  GETIMPORT R13 K12 [require]
  GETTABLEKS R15 R11 K24 ["Common"]
  GETTABLEKS R14 R15 K25 ["IXPServiceWrapper"]
  CALL R13 1 1
  GETIMPORT R15 K12 [require]
  GETTABLEKS R18 R3 K21 ["Workspace"]
  GETTABLEKS R17 R18 K13 ["Packages"]
  GETTABLEKS R16 R17 K26 ["CoreScriptsInitializer"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K27 ["CoreLogger"]
  GETIMPORT R17 K29 [script]
  GETTABLEKS R16 R17 K30 ["Name"]
  NAMECALL R14 R14 K31 ["new"]
  CALL R14 2 1
  GETIMPORT R15 K12 [require]
  GETTABLEKS R16 R11 K32 ["RobloxTranslator"]
  CALL R15 1 1
  GETIMPORT R17 K12 [require]
  GETTABLEKS R19 R11 K33 ["VoiceChat"]
  GETTABLEKS R18 R19 K34 ["VoiceChatServiceManager"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K35 ["default"]
  GETIMPORT R17 K12 [require]
  GETTABLEKS R19 R11 K33 ["VoiceChat"]
  GETTABLEKS R18 R19 K36 ["Constants"]
  CALL R17 1 1
  GETIMPORT R19 K12 [require]
  GETTABLEKS R22 R3 K21 ["Workspace"]
  GETTABLEKS R21 R22 K13 ["Packages"]
  GETTABLEKS R20 R21 K37 ["Style"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K38 ["AppFonts"]
  GETIMPORT R19 K12 [require]
  GETTABLEKS R21 R11 K39 ["Flags"]
  GETTABLEKS R20 R21 K40 ["GetFFlagVoiceUserAgencyEnableIXP"]
  CALL R19 1 1
  GETIMPORT R20 K12 [require]
  GETTABLEKS R22 R11 K39 ["Flags"]
  GETTABLEKS R21 R22 K41 ["GetFStringVoiceUserAgencyIXPLayerName"]
  CALL R20 1 1
  GETIMPORT R21 K1 [game]
  LOADK R23 K42 ["VoiceUserAgencyAlertInitTimeOffset"]
  LOADN R24 5
  NAMECALL R21 R21 K43 ["DefineFastInt"]
  CALL R21 3 1
  GETIMPORT R22 K1 [game]
  LOADK R24 K44 ["VoiceUserAgencyAlertStartTimeOffset"]
  LOADN R25 3
  NAMECALL R22 R22 K43 ["DefineFastInt"]
  CALL R22 3 1
  GETIMPORT R23 K1 [game]
  LOADK R25 K45 ["VoiceUserAgencyAlertTimerDuration"]
  LOADN R26 7
  NAMECALL R23 R23 K43 ["DefineFastInt"]
  CALL R23 3 1
  GETIMPORT R24 K12 [require]
  GETTABLEKS R26 R11 K39 ["Flags"]
  GETTABLEKS R25 R26 K46 ["FFlagMuteNonFriendsEvent"]
  CALL R24 1 1
  GETIMPORT R25 K12 [require]
  GETTABLEKS R28 R11 K47 ["Settings"]
  GETTABLEKS R27 R28 K39 ["Flags"]
  GETTABLEKS R26 R27 K48 ["GetFFlagShowMuteToggles"]
  CALL R25 1 1
  GETIMPORT R26 K1 [game]
  LOADK R28 K49 ["VoiceUserAgencyAddMuteDecisionAnalytics"]
  LOADB R29 0
  NAMECALL R26 R26 K50 ["DefineFastFlag"]
  CALL R26 3 1
  GETIMPORT R27 K1 [game]
  LOADK R29 K51 ["VoiceUserAgencyAdjustDescriptionText"]
  LOADB R30 0
  NAMECALL R27 R27 K50 ["DefineFastFlag"]
  CALL R27 3 1
  LOADK R30 K52 ["Feature.SettingsHub.Prompt.VoiceUserAgency.Remember"]
  NAMECALL R28 R15 K53 ["FormatByKey"]
  CALL R28 2 1
  GETIMPORT R31 K1 [game]
  GETTABLEKS R30 R31 K54 ["PlaceId"]
  FASTCALL1 TOSTRING R30 [+2]
  GETIMPORT R29 K56 [tostring]
  CALL R29 1 1
  GETTABLEKS R31 R5 K57 ["LocalPlayer"]
  GETTABLEKS R30 R31 K58 ["UserId"]
  DUPCLOSURE R31 K59 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R4
  LOADB R32 0
  NEWCLOSURE R33 P1
  CAPTURE REF R32
  CAPTURE VAL R31
  CAPTURE VAL R29
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R14
  NEWCLOSURE R34 P2
  CAPTURE VAL R16
  CAPTURE VAL R24
  CAPTURE REF R32
  CAPTURE VAL R31
  CAPTURE VAL R29
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R14
  DUPCLOSURE R35 K60 [PROTO_9]
  CAPTURE VAL R31
  CAPTURE VAL R29
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R26
  CAPTURE VAL R0
  CAPTURE VAL R30
  CAPTURE VAL R16
  CAPTURE VAL R25
  CAPTURE VAL R34
  DUPCLOSURE R36 K61 [PROTO_17]
  CAPTURE VAL R19
  CAPTURE VAL R13
  CAPTURE VAL R20
  CAPTURE VAL R31
  CAPTURE VAL R29
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R25
  CAPTURE VAL R34
  CAPTURE VAL R0
  CAPTURE VAL R30
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R35
  CAPTURE VAL R23
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R28
  CAPTURE VAL R6
  CAPTURE VAL R27
  CAPTURE VAL R22
  GETIMPORT R37 K64 [task.delay]
  MOVE R38 R21
  DUPCLOSURE R39 K65 [PROTO_20]
  CAPTURE VAL R16
  CAPTURE VAL R36
  CAPTURE VAL R14
  CALL R37 2 0
  CLOSEUPVALS R32
  RETURN R0 0
