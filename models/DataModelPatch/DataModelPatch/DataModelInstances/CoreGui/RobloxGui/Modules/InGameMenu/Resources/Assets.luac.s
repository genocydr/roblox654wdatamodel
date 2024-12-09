MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["UIBlox"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K10 [script]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Images"]
  CALL R3 1 1
  GETTABLEKS R6 R2 K13 ["App"]
  GETTABLEKS R5 R6 K14 ["ImageSet"]
  GETTABLEKS R4 R5 K12 ["Images"]
  DUPTABLE R5 K15 [{"Images"}]
  NEWTABLE R6 64 0
  GETTABLEKS R7 R3 K16 ["LuaApp/graphic/ic_logo"]
  SETTABLEKS R7 R6 K17 ["RobloxLogo"]
  LOADK R7 K18 ["rbxasset://textures/ui/TopBar/close.png"]
  SETTABLEKS R7 R6 K19 ["CloseButton"]
  GETTABLEKS R7 R3 K20 ["InGameMenu/Icons/RespawnIcon"]
  SETTABLEKS R7 R6 K21 ["RespawnIcon"]
  GETTABLEKS R7 R3 K22 ["LuaApp/icons/GameDetails/feedback"]
  SETTABLEKS R7 R6 K23 ["ReportIcon"]
  GETTABLEKS R7 R3 K24 ["LuaApp/icons/navigation/close"]
  SETTABLEKS R7 R6 K25 ["CloseModal"]
  GETTABLEKS R7 R3 K26 ["LuaApp/icons/navigation/pushBack"]
  SETTABLEKS R7 R6 K27 ["NavigateBack"]
  GETTABLEKS R7 R3 K28 ["LuaApp/icons/navigation/pushRight"]
  SETTABLEKS R7 R6 K29 ["NavigateForward"]
  GETTABLEKS R7 R3 K30 ["LuaApp/icons/GameDetails/invite"]
  SETTABLEKS R7 R6 K31 ["SendInvite"]
  GETTABLEKS R7 R3 K32 ["LuaApp/icons/status_progress"]
  SETTABLEKS R7 R6 K33 ["InviteSuccess"]
  GETTABLEKS R7 R3 K34 ["InGameMenu/Icons/MenuFriends"]
  SETTABLEKS R7 R6 K35 ["InviteMenu"]
  GETTABLEKS R7 R3 K36 ["LuaApp/graphic/ic_alert"]
  SETTABLEKS R7 R6 K37 ["InviteFail"]
  GETTABLEKS R7 R3 K38 ["InGameMenu/Icons/MenuControls"]
  SETTABLEKS R7 R6 K39 ["ControlsMenu"]
  LOADK R7 K40 ["rbxasset://textures/ui/InGameMenu/GenericController.png"]
  SETTABLEKS R7 R6 K41 ["Gamepad"]
  LOADK R7 K42 ["rbxasset://textures/ui/InGameMenu/XboxController.png"]
  SETTABLEKS R7 R6 K43 ["GamepadXbox"]
  LOADK R7 K44 ["rbxassetid://13262267483"]
  SETTABLEKS R7 R6 K45 ["GamepadQuest"]
  GETTABLEKS R7 R3 K46 ["InGameMenu/Icons/KeyBorder"]
  SETTABLEKS R7 R6 K47 ["KeyBorder"]
  GETTABLEKS R7 R3 K48 ["InGameMenu/Graphic/ClickLeft"]
  SETTABLEKS R7 R6 K49 ["Mouse1Press"]
  GETTABLEKS R7 R3 K50 ["InGameMenu/Graphic/ClickRight"]
  SETTABLEKS R7 R6 K51 ["Mouse2Press"]
  GETTABLEKS R7 R3 K52 ["InGameMenu/Graphic/WheelScroll"]
  SETTABLEKS R7 R6 K53 ["MouseWheelScroll"]
  GETTABLEKS R7 R3 K54 ["InGameMenu/Icons/ArrowUp"]
  SETTABLEKS R7 R6 K55 ["UpArrow"]
  GETTABLEKS R7 R3 K56 ["InGameMenu/Icons/ArrowDown"]
  SETTABLEKS R7 R6 K57 ["DownArrow"]
  GETTABLEKS R7 R3 K58 ["InGameMenu/Icons/ArrowLeft"]
  SETTABLEKS R7 R6 K59 ["LeftArrow"]
  GETTABLEKS R7 R3 K60 ["InGameMenu/Icons/ArrowRight"]
  SETTABLEKS R7 R6 K61 ["RightArrow"]
  LOADK R7 K62 ["rbxasset://textures/ui/InGameMenu/ScrollTop.png"]
  SETTABLEKS R7 R6 K63 ["ScrollTop"]
  LOADK R7 K64 ["rbxasset://textures/ui/InGameMenu/ScrollMiddle.png"]
  SETTABLEKS R7 R6 K65 ["ScrollMid"]
  LOADK R7 K66 ["rbxasset://textures/ui/InGameMenu/ScrollBottom.png"]
  SETTABLEKS R7 R6 K67 ["ScrollBottom"]
  LOADK R7 K68 ["rbxasset://textures/ui/InGameMenu/BackgroundGlow.png"]
  SETTABLEKS R7 R6 K69 ["RadialGlow"]
  GETTABLEKS R7 R3 K70 ["InGameMenu/Icons/MenuPlayers"]
  SETTABLEKS R7 R6 K71 ["PlayersMenu"]
  GETTABLEKS R7 R3 K72 ["LuaApp/graphic/actions_friends_addfriend"]
  SETTABLEKS R7 R6 K73 ["AddFriend"]
  GETTABLEKS R7 R3 K74 ["InGameMenu/Icons/CancelFriendRequest"]
  SETTABLEKS R7 R6 K75 ["CancelFriendRequest"]
  GETTABLEKS R7 R3 K76 ["InGameMenu/Icons/UnFriend"]
  SETTABLEKS R7 R6 K77 ["UnFriend"]
  GETTABLEKS R7 R3 K78 ["InGameMenu/Icons/Friends"]
  SETTABLEKS R7 R6 K79 ["Friends"]
  GETTABLEKS R7 R3 K80 ["LuaApp/icons/GameDetails/more"]
  SETTABLEKS R7 R6 K81 ["MoreActions"]
  GETTABLEKS R7 R3 K82 ["InGameMenu/Icons/ViewAvatar"]
  SETTABLEKS R7 R6 K83 ["ViewAvatar"]
  DUPTABLE R7 K87 [{"ScaleType", "SliceCenter", "Image"}]
  GETIMPORT R8 K90 [Enum.ScaleType.Slice]
  SETTABLEKS R8 R7 K84 ["ScaleType"]
  GETIMPORT R8 K93 [Rect.new]
  LOADN R9 8
  LOADN R10 8
  LOADN R11 9
  LOADN R12 9
  CALL R8 4 1
  SETTABLEKS R8 R7 K85 ["SliceCenter"]
  GETTABLEKS R8 R4 K94 ["component_assets/circle_17"]
  SETTABLEKS R8 R7 K86 ["Image"]
  SETTABLEKS R7 R6 K95 ["RoundedRect"]
  DUPTABLE R7 K87 [{"ScaleType", "SliceCenter", "Image"}]
  GETIMPORT R8 K90 [Enum.ScaleType.Slice]
  SETTABLEKS R8 R7 K84 ["ScaleType"]
  GETIMPORT R8 K93 [Rect.new]
  LOADN R9 8
  LOADN R10 8
  LOADN R11 9
  LOADN R12 9
  CALL R8 4 1
  SETTABLEKS R8 R7 K85 ["SliceCenter"]
  GETTABLEKS R8 R4 K96 ["component_assets/circle_17_stroke_1"]
  SETTABLEKS R8 R7 K86 ["Image"]
  SETTABLEKS R7 R6 K97 ["RoundedRectBorder"]
  DUPTABLE R7 K87 [{"ScaleType", "SliceCenter", "Image"}]
  GETIMPORT R8 K99 [Enum.ScaleType.Stretch]
  SETTABLEKS R8 R7 K84 ["ScaleType"]
  GETIMPORT R8 K93 [Rect.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K85 ["SliceCenter"]
  LOADK R8 K100 ["rbxasset://textures/ui/InGameMenu/WhiteSquare.png"]
  SETTABLEKS R8 R7 K86 ["Image"]
  SETTABLEKS R7 R6 K101 ["WhiteSquare"]
  GETTABLEKS R7 R4 K102 ["component_assets/circle_29"]
  SETTABLEKS R7 R6 K103 ["Circle"]
  LOADK R7 K104 ["rbxasset://textures/ui/InGameMenu/CircleCutout.png"]
  SETTABLEKS R7 R6 K105 ["CircleCutout"]
  LOADK R7 K106 ["rbxasset://textures/ui/InGameMenu/QuarterCircle.png"]
  SETTABLEKS R7 R6 K107 ["QuarterCircle"]
  GETTABLEKS R7 R3 K108 ["InGameMenu/Icons/ExpandArrow"]
  SETTABLEKS R7 R6 K109 ["ExpandArrow"]
  GETTABLEKS R7 R3 K110 ["InGameMenu/Icons/SelectedCheck"]
  SETTABLEKS R7 R6 K111 ["SelectedCheck"]
  GETTABLEKS R7 R3 K32 ["LuaApp/icons/status_progress"]
  SETTABLEKS R7 R6 K112 ["SuccessTick"]
  GETTABLEKS R7 R3 K113 ["LuaApp/icons/common_refresh"]
  SETTABLEKS R7 R6 K114 ["RetryIcon"]
  GETTABLEKS R7 R3 K115 ["InGameMenu/Icons/Clear"]
  SETTABLEKS R7 R6 K116 ["ClearIcon"]
  GETTABLEKS R7 R3 K117 ["LuaApp/icons/ic-search-new"]
  SETTABLEKS R7 R6 K118 ["SearchIcon"]
  GETTABLEKS R7 R3 K119 ["InGameMenu/Icons/GameSettings"]
  SETTABLEKS R7 R6 K120 ["GameSettings"]
  DUPTABLE R7 K122 [{"ScaleType", "SliceCenter", "Size", "Image"}]
  GETIMPORT R8 K90 [Enum.ScaleType.Slice]
  SETTABLEKS R8 R7 K84 ["ScaleType"]
  GETIMPORT R8 K93 [Rect.new]
  LOADN R9 12
  LOADN R10 12
  LOADN R11 40
  LOADN R12 40
  CALL R8 4 1
  SETTABLEKS R8 R7 K85 ["SliceCenter"]
  LOADN R8 8
  SETTABLEKS R8 R7 K121 ["Size"]
  GETTABLEKS R8 R3 K123 ["InGameMenu/9Slice/DropShadow"]
  SETTABLEKS R8 R7 K86 ["Image"]
  SETTABLEKS R7 R6 K124 ["Shadow"]
  DUPTABLE R7 K125 [{"Image", "ScaleType", "SliceCenter"}]
  GETTABLEKS R8 R3 K126 ["InGameMenu/9Slice/ToggleOutline"]
  SETTABLEKS R8 R7 K86 ["Image"]
  GETIMPORT R8 K90 [Enum.ScaleType.Slice]
  SETTABLEKS R8 R7 K84 ["ScaleType"]
  GETIMPORT R8 K93 [Rect.new]
  LOADN R9 18
  LOADN R10 18
  LOADN R11 18
  LOADN R12 18
  CALL R8 4 1
  SETTABLEKS R8 R7 K85 ["SliceCenter"]
  SETTABLEKS R7 R6 K127 ["ToggleOutline"]
  DUPTABLE R7 K125 [{"Image", "ScaleType", "SliceCenter"}]
  GETTABLEKS R8 R3 K128 ["InGameMenu/9Slice/ToggleFill"]
  SETTABLEKS R8 R7 K86 ["Image"]
  GETIMPORT R8 K90 [Enum.ScaleType.Slice]
  SETTABLEKS R8 R7 K84 ["ScaleType"]
  GETIMPORT R8 K93 [Rect.new]
  LOADN R9 18
  LOADN R10 18
  LOADN R11 18
  LOADN R12 18
  CALL R8 4 1
  SETTABLEKS R8 R7 K85 ["SliceCenter"]
  SETTABLEKS R7 R6 K129 ["ToggleFill"]
  GETTABLEKS R7 R3 K130 ["InGameMenu/Graphic/SliderButton"]
  SETTABLEKS R7 R6 K131 ["ToggleKnob"]
  GETTABLEKS R7 R3 K132 ["InGameMenu/Graphic/sliderHover"]
  SETTABLEKS R7 R6 K133 ["SliderHover"]
  DUPTABLE R7 K134 [{"Image", "SliceCenter", "ScaleType"}]
  GETTABLEKS R8 R3 K135 ["InGameMenu/9Slice/sliderCircle"]
  SETTABLEKS R8 R7 K86 ["Image"]
  GETIMPORT R8 K93 [Rect.new]
  LOADN R9 8
  LOADN R10 8
  LOADN R11 9
  LOADN R12 9
  CALL R8 4 1
  SETTABLEKS R8 R7 K85 ["SliceCenter"]
  GETIMPORT R8 K90 [Enum.ScaleType.Slice]
  SETTABLEKS R8 R7 K84 ["ScaleType"]
  SETTABLEKS R7 R6 K136 ["SliderCircle"]
  GETTABLEKS R7 R3 K130 ["InGameMenu/Graphic/SliderButton"]
  SETTABLEKS R7 R6 K137 ["SliderButton"]
  GETTABLEKS R7 R4 K138 ["icons/imageUnavailable"]
  SETTABLEKS R7 R6 K139 ["PlaceholderGameIcon"]
  SETTABLEKS R6 R5 K12 ["Images"]
  RETURN R5 1
