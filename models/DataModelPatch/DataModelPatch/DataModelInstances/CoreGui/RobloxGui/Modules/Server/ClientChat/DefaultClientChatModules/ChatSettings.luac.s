PROTO_0:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_1:
  GETUPVAL R3 0
  SETTABLE R2 R3 R1
  GETUPVAL R3 1
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K0 ["Fire"]
  CALL R3 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [script]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  LOADK R5 K9 ["ChatConstants"]
  NAMECALL R3 R1 K10 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  NEWTABLE R3 64 0
  LOADB R4 0
  SETTABLEKS R4 R3 K11 ["WindowDraggable"]
  LOADB R4 0
  SETTABLEKS R4 R3 K12 ["WindowResizable"]
  LOADB R4 0
  SETTABLEKS R4 R3 K13 ["ShowChannelsBar"]
  LOADB R4 0
  SETTABLEKS R4 R3 K14 ["GamepadNavigationEnabled"]
  LOADB R4 0
  SETTABLEKS R4 R3 K15 ["AllowMeCommand"]
  LOADB R4 1
  SETTABLEKS R4 R3 K16 ["ShowUserOwnFilteredMessage"]
  LOADB R4 0
  SETTABLEKS R4 R3 K17 ["ChatOnWithTopBarOff"]
  LOADN R4 6
  SETTABLEKS R4 R3 K18 ["ScreenGuiDisplayOrder"]
  LOADB R4 1
  SETTABLEKS R4 R3 K19 ["ShowFriendJoinNotification"]
  GETTABLEKS R4 R0 K20 ["BubbleChat"]
  SETTABLEKS R4 R3 K21 ["BubbleChatEnabled"]
  GETTABLEKS R4 R0 K22 ["ClassicChat"]
  SETTABLEKS R4 R3 K23 ["ClassicChatEnabled"]
  LOADN R4 18
  SETTABLEKS R4 R3 K24 ["ChatWindowTextSize"]
  LOADN R4 18
  SETTABLEKS R4 R3 K25 ["ChatChannelsTabTextSize"]
  LOADN R4 18
  SETTABLEKS R4 R3 K26 ["ChatBarTextSize"]
  LOADN R4 14
  SETTABLEKS R4 R3 K27 ["ChatWindowTextSizePhone"]
  LOADN R4 18
  SETTABLEKS R4 R3 K28 ["ChatChannelsTabTextSizePhone"]
  LOADN R4 14
  SETTABLEKS R4 R3 K29 ["ChatBarTextSizePhone"]
  GETIMPORT R4 K33 [Enum.Font.SourceSansBold]
  SETTABLEKS R4 R3 K34 ["DefaultFont"]
  GETIMPORT R4 K33 [Enum.Font.SourceSansBold]
  SETTABLEKS R4 R3 K35 ["ChatBarFont"]
  GETIMPORT R4 K38 [Color3.new]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K39 ["BackGroundColor"]
  GETIMPORT R4 K38 [Color3.new]
  LOADN R5 1
  LOADN R6 1
  LOADN R7 1
  CALL R4 3 1
  SETTABLEKS R4 R3 K40 ["DefaultMessageColor"]
  GETIMPORT R4 K38 [Color3.new]
  LOADN R5 1
  LOADN R6 1
  LOADN R7 1
  CALL R4 3 1
  SETTABLEKS R4 R3 K41 ["DefaultNameColor"]
  GETIMPORT R4 K38 [Color3.new]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K42 ["ChatBarBackGroundColor"]
  GETIMPORT R4 K38 [Color3.new]
  LOADN R5 1
  LOADN R6 1
  LOADN R7 1
  CALL R4 3 1
  SETTABLEKS R4 R3 K43 ["ChatBarBoxColor"]
  GETIMPORT R4 K38 [Color3.new]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K44 ["ChatBarTextColor"]
  GETIMPORT R4 K38 [Color3.new]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K45 ["ChannelsTabUnselectedColor"]
  GETIMPORT R4 K38 [Color3.new]
  LOADK R5 K46 [0.117647058823529]
  LOADK R6 K46 [0.117647058823529]
  LOADK R7 K46 [0.117647058823529]
  CALL R4 3 1
  SETTABLEKS R4 R3 K47 ["ChannelsTabSelectedColor"]
  GETIMPORT R4 K49 [Color3.fromRGB]
  LOADN R5 35
  LOADN R6 76
  LOADN R7 142
  CALL R4 3 1
  SETTABLEKS R4 R3 K50 ["DefaultChannelNameColor"]
  GETIMPORT R4 K49 [Color3.fromRGB]
  LOADN R5 102
  LOADN R6 14
  LOADN R7 102
  CALL R4 3 1
  SETTABLEKS R4 R3 K51 ["WhisperChannelNameColor"]
  GETIMPORT R4 K49 [Color3.fromRGB]
  LOADN R5 245
  LOADN R6 50
  LOADN R7 50
  CALL R4 3 1
  SETTABLEKS R4 R3 K52 ["ErrorMessageTextColor"]
  GETIMPORT R4 K54 [UDim2.new]
  LOADK R5 K55 [0.3]
  LOADN R6 0
  LOADK R7 K56 [0.25]
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K57 ["MinimumWindowSize"]
  GETIMPORT R4 K54 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K58 ["MaximumWindowSize"]
  GETIMPORT R4 K54 [UDim2.new]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K59 ["DefaultWindowPosition"]
  GETIMPORT R4 K54 [UDim2.new]
  LOADK R5 K60 [0.5]
  LOADN R6 0
  LOADK R7 K60 [0.5]
  LOADN R8 24
  CALL R4 4 1
  SETTABLEKS R4 R3 K61 ["DefaultWindowSizePhone"]
  GETIMPORT R4 K54 [UDim2.new]
  LOADK R5 K62 [0.4]
  LOADN R6 0
  LOADK R7 K55 [0.3]
  LOADN R8 24
  CALL R4 4 1
  SETTABLEKS R4 R3 K63 ["DefaultWindowSizeTablet"]
  GETIMPORT R4 K54 [UDim2.new]
  LOADK R5 K55 [0.3]
  LOADN R6 0
  LOADK R7 K56 [0.25]
  LOADN R8 24
  CALL R4 4 1
  SETTABLEKS R4 R3 K64 ["DefaultWindowSizeDesktop"]
  LOADK R4 K65 [3.5]
  SETTABLEKS R4 R3 K66 ["ChatWindowBackgroundFadeOutTime"]
  LOADN R4 30
  SETTABLEKS R4 R3 K67 ["ChatWindowTextFadeOutTime"]
  LOADK R4 K68 [0.8]
  SETTABLEKS R4 R3 K69 ["ChatDefaultFadeDuration"]
  LOADB R4 0
  SETTABLEKS R4 R3 K70 ["ChatShouldFadeInFromNewInformation"]
  LOADN R4 20
  SETTABLEKS R4 R3 K71 ["ChatAnimationFPS"]
  LOADK R4 K72 ["All"]
  SETTABLEKS R4 R3 K73 ["GeneralChannelName"]
  LOADB R4 1
  SETTABLEKS R4 R3 K74 ["EchoMessagesInGeneralChannel"]
  LOADN R4 4
  SETTABLEKS R4 R3 K75 ["ChannelsBarFullTabSize"]
  LOADN R4 12
  SETTABLEKS R4 R3 K76 ["MaxChannelNameLength"]
  LOADN R4 50
  SETTABLEKS R4 R3 K77 ["MaxChannelNameCheckLength"]
  LOADB R4 0
  SETTABLEKS R4 R3 K78 ["RightClickToLeaveChannelEnabled"]
  LOADN R4 50
  SETTABLEKS R4 R3 K79 ["MessageHistoryLengthPerChannel"]
  LOADB R4 0
  SETTABLEKS R4 R3 K80 ["ShowJoinAndLeaveHelpText"]
  LOADN R4 200
  SETTABLEKS R4 R3 K81 ["MaximumMessageLength"]
  NEWTABLE R4 0 5
  LOADK R5 K82 ["
"]
  LOADK R6 K83 [""]
  LOADK R7 K84 ["	"]
  LOADK R8 K85 [""]
  LOADK R9 K86 [""]
  SETLIST R4 R5 5 [1]
  SETTABLEKS R4 R3 K87 ["DisallowedWhiteSpace"]
  LOADB R4 1
  SETTABLEKS R4 R3 K88 ["ClickOnPlayerNameToWhisper"]
  LOADB R4 1
  SETTABLEKS R4 R3 K89 ["ClickOnChannelNameToSetMainChannel"]
  NEWTABLE R4 0 2
  GETTABLEKS R5 R2 K90 ["MessageTypeDefault"]
  GETTABLEKS R6 R2 K91 ["MessageTypeWhisper"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K92 ["BubbleChatMessageTypes"]
  LOADB R4 1
  SETTABLEKS R4 R3 K93 ["WhisperCommandAutoCompletePlayerNames"]
  LOADB R4 1
  SETTABLEKS R4 R3 K94 ["PlayerDisplayNamesEnabled"]
  LOADB R4 1
  SETTABLEKS R4 R3 K95 ["WhisperByDisplayName"]
  GETIMPORT R4 K97 [Instance.new]
  LOADK R5 K98 ["BindableEvent"]
  CALL R4 1 1
  NEWTABLE R6 0 0
  DUPTABLE R7 K101 [{"__index", "__newindex"}]
  DUPCLOSURE R8 K102 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K99 ["__index"]
  DUPCLOSURE R8 K103 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K100 ["__newindex"]
  FASTCALL2 SETMETATABLE R6 R7 [+3]
  GETIMPORT R5 K105 [setmetatable]
  CALL R5 2 1
  LOADK R8 K106 ["SettingsChanged"]
  GETTABLEKS R9 R4 K107 ["Event"]
  FASTCALL3 RAWSET R5 R8 R9
  MOVE R7 R5
  GETIMPORT R6 K109 [rawset]
  CALL R6 3 0
  RETURN R5 1
