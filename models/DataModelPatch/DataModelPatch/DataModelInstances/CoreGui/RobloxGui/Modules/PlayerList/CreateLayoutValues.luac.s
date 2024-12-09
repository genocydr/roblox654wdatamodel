PROTO_0:
  GETIMPORT R2 K1 [error]
  GETIMPORT R3 K4 [string.format]
  LOADK R4 K5 ["%q is not a valid member of LayoutValues"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K7 [tostring]
  CALL R5 1 1
  CALL R3 2 1
  LOADN R4 2
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 128 0
  SETTABLEKS R0 R1 K0 ["IsTenFoot"]
  JUMPIFNOT R0 [+248]
  GETIMPORT R2 K3 [UDim2.new]
  LOADK R3 K4 [0.5]
  LOADN R4 0
  LOADK R5 K4 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K5 ["ContainerPosition"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 0
  LOADN R4 94
  LOADN R5 0
  LOADN R6 208
  CALL R2 4 1
  SETTABLEKS R2 R1 K6 ["ContainerSize"]
  GETIMPORT R2 K8 [Vector2.new]
  LOADK R3 K4 [0.5]
  LOADK R4 K4 [0.5]
  CALL R2 2 1
  SETTABLEKS R2 R1 K9 ["AnchorPoint"]
  LOADN R2 0
  SETTABLEKS R2 R1 K10 ["PlayerDropDownSizeX"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  LOADN R6 105
  CALL R2 4 1
  SETTABLEKS R2 R1 K11 ["PlayerScrollListPosition"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 1
  LOADN R4 19
  LOADN R5 1
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K12 ["PlayerScrollListSize"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K13 ["PlayerScrollListInnerFramePosition"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADN R5 1
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K14 ["PlayerScrollListInnerFrameSize"]
  LOADN R2 94
  SETTABLEKS R2 R1 K15 ["EntrySizeX"]
  LOADN R2 100
  SETTABLEKS R2 R1 K16 ["PlayerEntrySizeY"]
  LOADN R2 5
  SETTABLEKS R2 R1 K17 ["EntryPadding"]
  LOADN R2 32
  SETTABLEKS R2 R1 K18 ["TeamEntrySizeY"]
  LOADN R2 250
  SETTABLEKS R2 R1 K19 ["StatEntrySizeX"]
  LOADN R2 236
  SETTABLEKS R2 R1 K20 ["EntryXOffset"]
  DUPTABLE R2 K26 [{"Default", "Hovered", "HoveredTitle", "Title", "Selected"}]
  DUPTABLE R3 K29 [{"Color", "Transparency"}]
  GETIMPORT R4 K32 [Color3.fromRGB]
  LOADN R5 60
  LOADN R6 60
  LOADN R7 60
  CALL R4 3 1
  SETTABLEKS R4 R3 K27 ["Color"]
  LOADK R4 K33 [0.25]
  SETTABLEKS R4 R3 K28 ["Transparency"]
  SETTABLEKS R3 R2 K21 ["Default"]
  DUPTABLE R3 K29 [{"Color", "Transparency"}]
  GETIMPORT R4 K32 [Color3.fromRGB]
  LOADN R5 50
  LOADN R6 181
  LOADN R7 255
  CALL R4 3 1
  SETTABLEKS R4 R3 K27 ["Color"]
  LOADK R4 K33 [0.25]
  SETTABLEKS R4 R3 K28 ["Transparency"]
  SETTABLEKS R3 R2 K22 ["Hovered"]
  DUPTABLE R3 K29 [{"Color", "Transparency"}]
  GETIMPORT R4 K32 [Color3.fromRGB]
  LOADN R5 50
  LOADN R6 181
  LOADN R7 255
  CALL R4 3 1
  SETTABLEKS R4 R3 K27 ["Color"]
  LOADN R4 0
  SETTABLEKS R4 R3 K28 ["Transparency"]
  SETTABLEKS R3 R2 K23 ["HoveredTitle"]
  DUPTABLE R3 K29 [{"Color", "Transparency"}]
  GETIMPORT R4 K32 [Color3.fromRGB]
  LOADN R5 25
  LOADN R6 25
  LOADN R7 25
  CALL R4 3 1
  SETTABLEKS R4 R3 K27 ["Color"]
  LOADN R4 0
  SETTABLEKS R4 R3 K28 ["Transparency"]
  SETTABLEKS R3 R2 K24 ["Title"]
  LOADNIL R3
  SETTABLEKS R3 R2 K25 ["Selected"]
  SETTABLEKS R2 R1 K34 ["BackgroundStyle"]
  LOADK R2 K33 [0.25]
  SETTABLEKS R2 R1 K35 ["TeamEntryBackgroundTransparency"]
  DUPTABLE R2 K38 [{"Color", "Transparency", "StrokeTransparency", "StrokeColor"}]
  GETIMPORT R3 K32 [Color3.fromRGB]
  LOADN R4 255
  LOADN R5 255
  LOADN R6 243
  CALL R3 3 1
  SETTABLEKS R3 R2 K27 ["Color"]
  LOADN R3 0
  SETTABLEKS R3 R2 K28 ["Transparency"]
  LOADK R3 K39 [0.75]
  SETTABLEKS R3 R2 K36 ["StrokeTransparency"]
  GETIMPORT R3 K32 [Color3.fromRGB]
  LOADN R4 34
  LOADN R5 34
  LOADN R6 34
  CALL R3 3 1
  SETTABLEKS R3 R2 K37 ["StrokeColor"]
  SETTABLEKS R2 R1 K40 ["DefaultTextStyle"]
  DUPTABLE R2 K38 [{"Color", "Transparency", "StrokeTransparency", "StrokeColor"}]
  GETIMPORT R3 K32 [Color3.fromRGB]
  LOADN R4 19
  LOADN R5 19
  LOADN R6 19
  CALL R3 3 1
  SETTABLEKS R3 R2 K27 ["Color"]
  LOADN R3 0
  SETTABLEKS R3 R2 K28 ["Transparency"]
  LOADK R3 K39 [0.75]
  SETTABLEKS R3 R2 K36 ["StrokeTransparency"]
  GETIMPORT R3 K32 [Color3.fromRGB]
  LOADN R4 34
  LOADN R5 34
  LOADN R6 34
  CALL R3 3 1
  SETTABLEKS R3 R2 K37 ["StrokeColor"]
  SETTABLEKS R2 R1 K41 ["HoveredTextStyle"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 0
  LOADN R4 64
  LOADN R5 0
  LOADN R6 64
  CALL R2 4 1
  SETTABLEKS R2 R1 K42 ["PlayerIconSize"]
  LOADN R2 18
  SETTABLEKS R2 R1 K43 ["InitalPlayerEntryPadding"]
  LOADN R2 8
  SETTABLEKS R2 R1 K44 ["PlayerEntryPadding"]
  LOADN R2 8
  SETTABLEKS R2 R1 K45 ["PlayerEntryNamePadding"]
  LOADN R2 5
  SETTABLEKS R2 R1 K46 ["TeamEntryTextPadding"]
  LOADN R2 0
  SETTABLEKS R2 R1 K47 ["StatTextPadding"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 1
  LOADN R4 168
  LOADN R5 1
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K48 ["PlayerNameSize"]
  LOADN R2 32
  SETTABLEKS R2 R1 K49 ["PlayerNameTextSize"]
  LOADN R2 32
  SETTABLEKS R2 R1 K50 ["StatTextSize"]
  GETIMPORT R2 K32 [Color3.fromRGB]
  LOADN R3 31
  LOADN R4 31
  LOADN R5 31
  CALL R2 3 1
  SETTABLEKS R2 R1 K51 ["ScrollImageColor"]
  LOADK R2 K4 [0.5]
  SETTABLEKS R2 R1 K52 ["ScrollImageTransparency"]
  JUMP [+153]
  LOADN R2 4
  SETTABLEKS R2 R1 K53 ["ContainerPadding"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 1
  LOADN R4 252
  LOADN R5 0
  LOADN R6 4
  CALL R2 4 1
  SETTABLEKS R2 R1 K5 ["ContainerPosition"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADK R5 K4 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K6 ["ContainerSize"]
  LOADN R2 16
  SETTABLEKS R2 R1 K54 ["ExtraContainerPadding"]
  GETIMPORT R2 K8 [Vector2.new]
  LOADN R3 1
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K9 ["AnchorPoint"]
  LOADN R2 44
  SETTABLEKS R2 R1 K10 ["PlayerDropDownSizeX"]
  LOADN R2 4
  SETTABLEKS R2 R1 K55 ["PlayerDropDownOffset"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K11 ["PlayerScrollListPosition"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 1
  LOADN R4 255
  LOADN R5 1
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K12 ["PlayerScrollListSize"]
  LOADN R2 150
  SETTABLEKS R2 R1 K56 ["EntryBaseSizeX"]
  LOADN R2 11
  SETTABLEKS R2 R1 K57 ["EntrySizeIncreasePerStat"]
  LOADN R2 40
  SETTABLEKS R2 R1 K16 ["PlayerEntrySizeY"]
  LOADN R2 0
  SETTABLEKS R2 R1 K17 ["EntryPadding"]
  LOADN R2 24
  SETTABLEKS R2 R1 K18 ["TeamEntrySizeY"]
  LOADN R2 66
  SETTABLEKS R2 R1 K19 ["StatEntrySizeX"]
  LOADN R2 20
  SETTABLEKS R2 R1 K58 ["TitleBarSizeY"]
  LOADN R2 0
  SETTABLEKS R2 R1 K20 ["EntryXOffset"]
  LOADK R2 K4 [0.5]
  SETTABLEKS R2 R1 K35 ["TeamEntryBackgroundTransparency"]
  LOADK R2 K59 [0.3]
  SETTABLEKS R2 R1 K60 ["IconButtonBackgroundTransparency"]
  LOADK R2 K61 [0.1]
  SETTABLEKS R2 R1 K62 ["DropDownHeaderBackgroundTransparency"]
  LOADK R2 K59 [0.3]
  SETTABLEKS R2 R1 K63 ["OverrideBackgroundTransparency"]
  LOADK R2 K64 [0.65]
  SETTABLEKS R2 R1 K65 ["FadedBackgroundTransparency"]
  LOADK R2 K66 [0.05]
  SETTABLEKS R2 R1 K67 ["FadedBackgroundScaleDelta"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 0
  LOADN R4 16
  LOADN R5 0
  LOADN R6 16
  CALL R2 4 1
  SETTABLEKS R2 R1 K42 ["PlayerIconSize"]
  LOADN R2 12
  SETTABLEKS R2 R1 K43 ["InitalPlayerEntryPadding"]
  LOADN R2 12
  SETTABLEKS R2 R1 K44 ["PlayerEntryPadding"]
  LOADN R2 4
  SETTABLEKS R2 R1 K45 ["PlayerEntryNamePadding"]
  LOADN R2 15
  SETTABLEKS R2 R1 K46 ["TeamEntryTextPadding"]
  LOADN R2 4
  SETTABLEKS R2 R1 K47 ["StatTextPadding"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 1
  LOADN R4 222
  LOADN R5 1
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K48 ["PlayerNameSize"]
  LOADN R2 14
  SETTABLEKS R2 R1 K49 ["PlayerNameTextSize"]
  LOADN R2 14
  SETTABLEKS R2 R1 K50 ["StatTextSize"]
  GETIMPORT R2 K32 [Color3.fromRGB]
  LOADN R3 216
  LOADN R4 216
  LOADN R5 216
  CALL R2 3 1
  SETTABLEKS R2 R1 K51 ["ScrollImageColor"]
  LOADK R2 K4 [0.5]
  SETTABLEKS R2 R1 K52 ["ScrollImageTransparency"]
  LOADN R2 4
  SETTABLEKS R2 R1 K68 ["ScrollBarOffset"]
  LOADN R2 8
  SETTABLEKS R2 R1 K69 ["ScrollBarSize"]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K70 ["TopBarHeight"]
  SETTABLEKS R2 R1 K71 ["TopBarOffset"]
  JUMP [+3]
  LOADN R2 36
  SETTABLEKS R2 R1 K71 ["TopBarOffset"]
  LOADN R2 71
  SETTABLEKS R2 R1 K72 ["PlayerDropDownSizeXMobile"]
  LOADN R2 2
  SETTABLEKS R2 R1 K73 ["ScrollBarSizeMobile"]
  LOADN R2 194
  SETTABLEKS R2 R1 K74 ["PlayerNameSizeXMobile"]
  GETIMPORT R2 K76 [UDim2.fromOffset]
  LOADN R3 20
  LOADN R4 20
  CALL R2 2 1
  SETTABLEKS R2 R1 K77 ["PlayerIconSizeMobile"]
  LOADN R2 16
  SETTABLEKS R2 R1 K78 ["PlayerNameTextSizeMobile"]
  LOADN R2 16
  SETTABLEKS R2 R1 K79 ["StatTextSizeMobile"]
  LOADN R2 14
  SETTABLEKS R2 R1 K80 ["PlayerNamePaddingXMobile"]
  LOADN R2 15
  SETTABLEKS R2 R1 K46 ["TeamEntryTextPadding"]
  LOADN R2 14
  SETTABLEKS R2 R1 K81 ["TeamEntryTextPaddingMobile"]
  GETIMPORT R2 K32 [Color3.fromRGB]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K82 ["RowHoverColor"]
  GETIMPORT R2 K32 [Color3.fromRGB]
  LOADN R3 84
  LOADN R4 84
  LOADN R5 84
  CALL R2 3 1
  SETTABLEKS R2 R1 K83 ["RowDefaultColor"]
  LOADN R2 4
  SETTABLEKS R2 R1 K84 ["MaxLeaderstats"]
  LOADN R2 1
  SETTABLEKS R2 R1 K85 ["MaxLeaderstatsSmallScreen"]
  GETIMPORT R2 K89 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K90 ["PlayerEntryFont"]
  GETIMPORT R2 K92 [Enum.Font.SourceSansBold]
  SETTABLEKS R2 R1 K93 ["TitlePlayerEntryFont"]
  GETIMPORT R2 K89 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K94 ["TeamEntryFont"]
  GETIMPORT R2 K89 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K95 ["StatFont"]
  GETIMPORT R2 K92 [Enum.Font.SourceSansBold]
  SETTABLEKS R2 R1 K96 ["TitleStatFont"]
  GETIMPORT R2 K92 [Enum.Font.SourceSansBold]
  SETTABLEKS R2 R1 K97 ["TeamStatFont"]
  GETIMPORT R2 K89 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K98 ["StatNameFont"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 0
  LOADN R4 66
  LOADN R5 0
  LOADN R6 66
  CALL R2 4 1
  SETTABLEKS R2 R1 K99 ["PlayerIconBackgroundSize"]
  LOADK R2 K100 ["rbxasset://textures/ui/PlayerList/CharacterImageBackground.png"]
  SETTABLEKS R2 R1 K101 ["PlayerBackgroundImage"]
  LOADK R2 K102 ["rbxasset://textures/ui/Shell/Icons/RobloxIcon24.png"]
  SETTABLEKS R2 R1 K103 ["RobloxIconImage"]
  GETIMPORT R2 K32 [Color3.fromRGB]
  LOADN R3 19
  LOADN R4 19
  LOADN R5 19
  CALL R2 3 1
  SETTABLEKS R2 R1 K104 ["IconSelectedColor"]
  GETIMPORT R2 K32 [Color3.fromRGB]
  LOADN R3 255
  LOADN R4 255
  LOADN R5 255
  CALL R2 3 1
  SETTABLEKS R2 R1 K105 ["IconUnSelectedColor"]
  GETIMPORT R2 K32 [Color3.fromRGB]
  LOADN R3 0
  LOADN R4 255
  LOADN R5 255
  CALL R2 3 1
  SETTABLEKS R2 R1 K106 ["SelectedEntryColor"]
  LOADK R2 K107 ["rbxasset://textures/ui/PlayerList/TileShadowMissingTop.png"]
  SETTABLEKS R2 R1 K108 ["ShadowImage"]
  LOADN R2 5
  SETTABLEKS R2 R1 K109 ["ShadowSize"]
  GETIMPORT R2 K111 [Rect.new]
  LOADN R3 6
  LOADN R4 6
  LOADN R5 9
  LOADN R6 9
  CALL R2 4 1
  SETTABLEKS R2 R1 K112 ["ShadowSliceRect"]
  LOADK R2 K113 ["rbxasset://textures/ui/Shell/Icons/DefaultProfileIcon.png"]
  SETTABLEKS R2 R1 K114 ["DefaultThumbnail"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K115 ["icons/status/unavailable_small"]
  SETTABLEKS R2 R1 K116 ["BlockedIcon"]
  NEWTABLE R2 2 0
  GETIMPORT R3 K119 [Enum.FriendStatus.Friend]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K120 ["icons/status/player/friend"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K122 [Enum.FriendStatus.FriendRequestReceived]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K123 ["icons/status/player/pending"]
  SETTABLE R4 R2 R3
  SETTABLEKS R2 R1 K124 ["FriendIcons"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K125 ["icons/status/player/following"]
  SETTABLEKS R2 R1 K126 ["FollowingIcon"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K127 ["icons/status/player/developer"]
  SETTABLEKS R2 R1 K128 ["PlaceOwnerIcon"]
  NEWTABLE R2 1 0
  GETIMPORT R3 K131 [Enum.MembershipType.Premium]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K132 ["icons/status/premium_small"]
  SETTABLE R4 R2 R3
  SETTABLEKS R2 R1 K133 ["MembershipIcons"]
  NEWTABLE R2 4 0
  LOADK R3 K134 [7210880]
  LOADK R4 K135 ["rbxassetid://134032333"]
  SETTABLE R4 R2 R3
  LOADK R3 K136 [13268404]
  LOADK R4 K137 ["rbxassetid://113059239"]
  SETTABLE R4 R2 R3
  LOADN R3 5
  LOADK R4 K138 ["rbxassetid://105897927"]
  SETTABLE R4 R2 R3
  SETTABLEKS R2 R1 K139 ["CustomPlayerIcons"]
  GETIMPORT R2 K141 [BrickColor.new]
  LOADK R3 K142 ["White"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K143 ["NeutralTeamColor"]
  LOADK R2 K144 ["Neutral"]
  SETTABLEKS R2 R1 K145 ["NeutralTeamName"]
  LOADN R2 56
  SETTABLEKS R2 R1 K146 ["DropDownButtonSizeY"]
  LOADN R2 0
  SETTABLEKS R2 R1 K147 ["DropDownButtonPadding"]
  LOADN R2 10
  SETTABLEKS R2 R1 K148 ["DropDownPadding"]
  LOADN R2 55
  SETTABLEKS R2 R1 K149 ["DropDownRightOptionSize"]
  LOADN R2 36
  SETTABLEKS R2 R1 K150 ["DropDownIconSize"]
  LOADN R2 80
  SETTABLEKS R2 R1 K151 ["DropDownHeaderSizeY"]
  LOADN R2 65
  SETTABLEKS R2 R1 K152 ["DropDownHeaderBackgroundSize"]
  LOADN R2 4
  SETTABLEKS R2 R1 K153 ["DropDownScreenSidePadding"]
  DUPTABLE R4 K155 [{"__index"}]
  DUPCLOSURE R5 K156 [PROTO_0]
  SETTABLEKS R5 R4 K154 ["__index"]
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K158 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

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
  GETIMPORT R3 K5 [require]
  GETIMPORT R8 K12 [script]
  GETTABLEKS R7 R8 K13 ["Parent"]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K14 ["TopBar"]
  GETTABLEKS R4 R5 K15 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R9 K12 [script]
  GETTABLEKS R8 R9 K13 ["Parent"]
  GETTABLEKS R7 R8 K13 ["Parent"]
  GETTABLEKS R6 R7 K16 ["Chrome"]
  GETTABLEKS R5 R6 K17 ["Enabled"]
  CALL R4 1 1
  DUPCLOSURE R5 K18 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R5 1
