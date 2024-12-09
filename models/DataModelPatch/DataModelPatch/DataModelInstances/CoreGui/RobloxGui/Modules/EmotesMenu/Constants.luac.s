PROTO_0:
  RETURN R0 0

PROTO_1:
  GETIMPORT R2 K1 [error]
  GETUPVAL R4 0
  LOADK R5 K2 [" table has no index: "]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K4 [tostring]
  CALL R6 1 1
  CONCAT R3 R4 R6
  LOADN R4 2
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R4 K2 [{"__newindex", "__index"}]
  DUPCLOSURE R5 K3 [PROTO_0]
  SETTABLEKS R5 R4 K0 ["__newindex"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K1 ["__index"]
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K5 [setmetatable]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["enumerate"]
  CALL R1 1 1
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K10 ["Parent"]
  GETTABLEKS R3 R2 K11 ["Layouts"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K12 ["Small"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K13 ["Large"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K14 ["TenFoot"]
  CALL R6 1 1
  NEWTABLE R7 64 0
  LOADN R8 8
  SETTABLEKS R8 R7 K15 ["EmotesPerPage"]
  LOADN R8 5
  SETTABLEKS R8 R7 K16 ["ErrorDisplayTimeSeconds"]
  LOADK R8 K17 ["en-us"]
  SETTABLEKS R8 R7 K18 ["FallbackLocale"]
  DUPTABLE R8 K24 [{"SelectAnEmote", "NoEmotesEquipped", "EmotesDisabled", "VisitShopToGetEmotes", "ErrorMessages"}]
  LOADK R9 K25 ["InGame.EmotesMenu.SelectAnEmote"]
  SETTABLEKS R9 R8 K19 ["SelectAnEmote"]
  LOADK R9 K26 ["InGame.EmotesMenu.NoEmotesEquipped"]
  SETTABLEKS R9 R8 K20 ["NoEmotesEquipped"]
  LOADK R9 K27 ["InGame.EmotesMenu.EmotesDisabled"]
  SETTABLEKS R9 R8 K21 ["EmotesDisabled"]
  LOADK R9 K28 ["InGame.EmotesMenu.VisitShopToGetEmotes"]
  SETTABLEKS R9 R8 K22 ["VisitShopToGetEmotes"]
  DUPTABLE R9 K35 [{"NotSupported", "R15Only", "SwitchToR15", "NoMatchingEmote", "TemporarilyUnavailable", "AnimationPlaying"}]
  LOADK R10 K36 ["InGame.EmotesMenu.ErrorMessageNotSupported"]
  SETTABLEKS R10 R9 K29 ["NotSupported"]
  LOADK R10 K37 ["InGame.EmotesMenu.ErrorMessageR15Only"]
  SETTABLEKS R10 R9 K30 ["R15Only"]
  LOADK R10 K38 ["InGame.EmotesMenu.ErrorMessageSwitchToR15"]
  SETTABLEKS R10 R9 K31 ["SwitchToR15"]
  LOADK R10 K39 ["InGame.EmotesMenu.ErrorMessageNoMatchingEmote"]
  SETTABLEKS R10 R9 K32 ["NoMatchingEmote"]
  LOADK R10 K40 ["InGame.EmotesMenu.ErrorMessageTemporarilyUnavailable"]
  SETTABLEKS R10 R9 K33 ["TemporarilyUnavailable"]
  LOADK R10 K41 ["InGame.EmotesMenu.ErrorMessageAnimationPlaying"]
  SETTABLEKS R10 R9 K34 ["AnimationPlaying"]
  SETTABLEKS R9 R8 K23 ["ErrorMessages"]
  SETTABLEKS R8 R7 K42 ["LocalizationKeys"]
  DUPTABLE R8 K35 [{"NotSupported", "R15Only", "SwitchToR15", "NoMatchingEmote", "TemporarilyUnavailable", "AnimationPlaying"}]
  LOADK R9 K29 ["NotSupported"]
  SETTABLEKS R9 R8 K29 ["NotSupported"]
  LOADK R9 K30 ["R15Only"]
  SETTABLEKS R9 R8 K30 ["R15Only"]
  LOADK R9 K31 ["SwitchToR15"]
  SETTABLEKS R9 R8 K31 ["SwitchToR15"]
  LOADK R9 K32 ["NoMatchingEmote"]
  SETTABLEKS R9 R8 K32 ["NoMatchingEmote"]
  LOADK R9 K33 ["TemporarilyUnavailable"]
  SETTABLEKS R9 R8 K33 ["TemporarilyUnavailable"]
  LOADK R9 K34 ["AnimationPlaying"]
  SETTABLEKS R9 R8 K34 ["AnimationPlaying"]
  SETTABLEKS R8 R7 K43 ["ErrorTypes"]
  LOADK R8 K44 ["rbxthumb://type=Asset&id=%d&w=420&h=420"]
  SETTABLEKS R8 R7 K45 ["EmotesImage"]
  LOADN R8 50
  SETTABLEKS R8 R7 K46 ["EmotesMenuZIndex"]
  LOADN R8 0
  SETTABLEKS R8 R7 K47 ["ErrorFrameBorderSize"]
  LOADK R8 K48 [0.3]
  SETTABLEKS R8 R7 K49 ["ErrorFrameBackgroundTransparency"]
  LOADK R8 K50 [0.4]
  SETTABLEKS R8 R7 K51 ["WheelBackgroundTransparency"]
  LOADN R8 10
  SETTABLEKS R8 R7 K52 ["TextPadding"]
  LOADN R8 166
  SETTABLEKS R8 R7 K53 ["SegmentsStartRotation"]
  LOADK R8 K54 [0.45]
  SETTABLEKS R8 R7 K55 ["InnerCircleSizeRatio"]
  LOADK R8 K56 [0.1]
  SETTABLEKS R8 R7 K57 ["SlotNumberSize"]
  LOADK R8 K58 [0.025]
  SETTABLEKS R8 R7 K59 ["ImageOutsidePadding"]
  LOADK R8 K60 [0.5]
  SETTABLEKS R8 R7 K61 ["GradientTransparency"]
  LOADK R8 K62 ["EmotesMenuCursorOverride"]
  SETTABLEKS R8 R7 K63 ["CursorOverrideName"]
  NEWTABLE R8 8 0
  GETIMPORT R9 K67 [Enum.UserInputType.Gamepad1]
  LOADB R10 1
  SETTABLE R10 R8 R9
  GETIMPORT R9 K69 [Enum.UserInputType.Gamepad2]
  LOADB R10 1
  SETTABLE R10 R8 R9
  GETIMPORT R9 K71 [Enum.UserInputType.Gamepad3]
  LOADB R10 1
  SETTABLE R10 R8 R9
  GETIMPORT R9 K73 [Enum.UserInputType.Gamepad4]
  LOADB R10 1
  SETTABLE R10 R8 R9
  GETIMPORT R9 K75 [Enum.UserInputType.Gamepad5]
  LOADB R10 1
  SETTABLE R10 R8 R9
  GETIMPORT R9 K77 [Enum.UserInputType.Gamepad6]
  LOADB R10 1
  SETTABLE R10 R8 R9
  GETIMPORT R9 K79 [Enum.UserInputType.Gamepad7]
  LOADB R10 1
  SETTABLE R10 R8 R9
  GETIMPORT R9 K81 [Enum.UserInputType.Gamepad8]
  LOADB R10 1
  SETTABLE R10 R8 R9
  SETTABLEKS R8 R7 K82 ["GamepadInputTypes"]
  NEWTABLE R8 0 12
  GETIMPORT R9 K85 [Enum.KeyCode.W]
  GETIMPORT R10 K87 [Enum.KeyCode.A]
  GETIMPORT R11 K89 [Enum.KeyCode.S]
  GETIMPORT R12 K91 [Enum.KeyCode.D]
  GETIMPORT R13 K93 [Enum.KeyCode.Up]
  GETIMPORT R14 K95 [Enum.KeyCode.Left]
  GETIMPORT R15 K97 [Enum.KeyCode.Down]
  GETIMPORT R16 K99 [Enum.KeyCode.Right]
  GETIMPORT R17 K101 [Enum.KeyCode.Space]
  GETIMPORT R18 K103 [Enum.KeyCode.Tab]
  GETIMPORT R19 K105 [Enum.KeyCode.Slash]
  GETIMPORT R20 K107 [Enum.KeyCode.Backquote]
  SETLIST R8 R9 12 [1]
  SETTABLEKS R8 R7 K108 ["LeaveMenuNoSinkInputs"]
  NEWTABLE R8 0 8
  GETIMPORT R9 K110 [Enum.KeyCode.One]
  GETIMPORT R10 K112 [Enum.KeyCode.Two]
  GETIMPORT R11 K114 [Enum.KeyCode.Three]
  GETIMPORT R12 K116 [Enum.KeyCode.Four]
  GETIMPORT R13 K118 [Enum.KeyCode.Five]
  GETIMPORT R14 K120 [Enum.KeyCode.Six]
  GETIMPORT R15 K122 [Enum.KeyCode.Seven]
  GETIMPORT R16 K124 [Enum.KeyCode.Eight]
  SETLIST R8 R9 8 [1]
  SETTABLEKS R8 R7 K125 ["EmoteSlotKeys"]
  GETIMPORT R8 K127 [Enum.KeyCode.Period]
  SETTABLEKS R8 R7 K128 ["EmoteMenuOpenKey"]
  GETIMPORT R8 K130 [Enum.KeyCode.DPadDown]
  SETTABLEKS R8 R7 K131 ["EmoteMenuOpenButton"]
  GETIMPORT R8 K133 [Enum.KeyCode.Escape]
  SETTABLEKS R8 R7 K134 ["EmoteMenuCloseKey"]
  GETIMPORT R8 K136 [Enum.KeyCode.ButtonB]
  SETTABLEKS R8 R7 K137 ["EmoteMenuCloseButton"]
  GETIMPORT R8 K139 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R8 R7 K140 ["EmoteMenuCloseButtonSecondary"]
  GETIMPORT R8 K142 [Enum.KeyCode.DPadUp]
  SETTABLEKS R8 R7 K143 ["EmoteMenuNavUpButton"]
  GETIMPORT R8 K130 [Enum.KeyCode.DPadDown]
  SETTABLEKS R8 R7 K144 ["EmoteMenuNavDownButton"]
  GETIMPORT R8 K146 [Enum.KeyCode.DPadRight]
  SETTABLEKS R8 R7 K147 ["EmoteMenuPlayEmoteButton"]
  GETIMPORT R8 K149 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R8 R7 K150 ["SelectionThumbstick"]
  LOADK R8 K151 [0.8]
  SETTABLEKS R8 R7 K152 ["ThumbstickThreshold"]
  GETIMPORT R8 K154 [Enum.KeyCode.ButtonA]
  SETTABLEKS R8 R7 K155 ["PlayEmoteButton"]
  LOADK R8 K156 ["EmotesMenuToggleAction"]
  SETTABLEKS R8 R7 K157 ["ToggleMenuAction"]
  LOADK R8 K158 ["EmotesMenuCloseAction"]
  SETTABLEKS R8 R7 K159 ["CloseMenuAction"]
  LOADK R8 K160 ["EmotesMenuOpenAction"]
  SETTABLEKS R8 R7 K161 ["OpenMenuAction"]
  LOADK R8 K162 ["EmotesMenuSelectionAction"]
  SETTABLEKS R8 R7 K163 ["EmoteSelectionAction"]
  LOADK R8 K164 ["EmotesMenuActivateEmoteSlotAction"]
  SETTABLEKS R8 R7 K165 ["ActivateEmoteSlotAction"]
  LOADK R8 K166 ["EmotesMenuPlaySelectedAction"]
  SETTABLEKS R8 R7 K167 ["PlaySelectedAction"]
  LOADK R8 K168 ["EmotesMenuLeaveMenuDontSinkInputAction"]
  SETTABLEKS R8 R7 K169 ["LeaveMenuDontSinkInputAction"]
  LOADK R8 K170 ["EmotesMenuShiftFocusUpAction"]
  SETTABLEKS R8 R7 K171 ["ShiftFocusUpAction"]
  LOADK R8 K172 ["EmotesMenuShiftFocusDownAction"]
  SETTABLEKS R8 R7 K173 ["ShiftFocusDownAction"]
  LOADK R8 K174 ["EmotesMenuVirtualCursorSinkAction"]
  SETTABLEKS R8 R7 K175 ["VirtualCursorSinkAction"]
  GETIMPORT R8 K178 [UDim2.new]
  LOADK R9 K179 [0.9]
  LOADN R10 0
  LOADK R11 K180 [0.75]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K181 ["ScreenAvailable"]
  GETIMPORT R8 K183 [Vector2.new]
  LOADN R9 188
  LOADN R10 244
  CALL R8 2 1
  SETTABLEKS R8 R7 K184 ["SmallScreenMaxSize"]
  DUPTABLE R8 K185 [{"Small", "Large", "TenFoot"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K12 ["Small"]
  LOADN R9 1
  SETTABLEKS R9 R8 K13 ["Large"]
  LOADN R9 2
  SETTABLEKS R9 R8 K14 ["TenFoot"]
  SETTABLEKS R8 R7 K186 ["Layout"]
  DUPTABLE R8 K189 [{"White", "Black"}]
  GETIMPORT R9 K191 [Color3.new]
  LOADN R10 1
  LOADN R11 1
  LOADN R12 1
  CALL R9 3 1
  SETTABLEKS R9 R8 K187 ["White"]
  GETIMPORT R9 K191 [Color3.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R9 3 1
  SETTABLEKS R9 R8 K188 ["Black"]
  SETTABLEKS R8 R7 K192 ["Colors"]
  MOVE R8 R1
  LOADK R9 K193 ["OffScreen"]
  NEWTABLE R10 0 2
  LOADK R11 K194 ["Top"]
  LOADK R12 K195 ["Bottom"]
  SETLIST R10 R11 2 [1]
  CALL R8 2 1
  SETTABLEKS R8 R7 K193 ["OffScreen"]
  NEWTABLE R8 4 0
  GETTABLEKS R10 R7 K186 ["Layout"]
  GETTABLEKS R9 R10 K12 ["Small"]
  SETTABLE R4 R8 R9
  GETTABLEKS R10 R7 K186 ["Layout"]
  GETTABLEKS R9 R10 K13 ["Large"]
  SETTABLE R5 R8 R9
  GETTABLEKS R10 R7 K186 ["Layout"]
  GETTABLEKS R9 R10 K14 ["TenFoot"]
  SETTABLE R6 R8 R9
  SETTABLEKS R8 R7 K11 ["Layouts"]
  DUPCLOSURE R8 K196 [PROTO_2]
  NEWTABLE R9 16 0
  SETTABLEKS R7 R9 K197 ["Constants"]
  GETTABLEKS R10 R7 K192 ["Colors"]
  SETTABLEKS R10 R9 K198 ["Constants.Colors"]
  GETTABLEKS R10 R7 K186 ["Layout"]
  SETTABLEKS R10 R9 K199 ["Constants.Layout"]
  GETTABLEKS R10 R7 K108 ["LeaveMenuNoSinkInputs"]
  SETTABLEKS R10 R9 K200 ["Constants.LeaveMenuNoSinkInputs"]
  GETTABLEKS R10 R7 K42 ["LocalizationKeys"]
  SETTABLEKS R10 R9 K201 ["Constants.LocalizationKeys"]
  GETTABLEKS R11 R7 K42 ["LocalizationKeys"]
  GETTABLEKS R10 R11 K23 ["ErrorMessages"]
  SETTABLEKS R10 R9 K202 ["Constants.LocalizationKeys.ErrorMessages"]
  GETTABLEKS R10 R7 K11 ["Layouts"]
  SETTABLEKS R10 R9 K203 ["Constants.Layouts"]
  GETTABLEKS R11 R7 K11 ["Layouts"]
  GETTABLEKS R13 R7 K186 ["Layout"]
  GETTABLEKS R12 R13 K12 ["Small"]
  GETTABLE R10 R11 R12
  SETTABLEKS R10 R9 K204 ["Constants.Layouts.Small"]
  GETTABLEKS R11 R7 K11 ["Layouts"]
  GETTABLEKS R13 R7 K186 ["Layout"]
  GETTABLEKS R12 R13 K13 ["Large"]
  GETTABLE R10 R11 R12
  SETTABLEKS R10 R9 K205 ["Constants.Layouts.Large"]
  GETTABLEKS R11 R7 K11 ["Layouts"]
  GETTABLEKS R13 R7 K186 ["Layout"]
  GETTABLEKS R12 R13 K14 ["TenFoot"]
  GETTABLE R10 R11 R12
  SETTABLEKS R10 R9 K206 ["Constants.Layouts.TenFoot"]
  GETIMPORT R10 K208 [pairs]
  MOVE R11 R9
  CALL R10 1 3
  FORGPREP_NEXT R10
  MOVE R15 R8
  MOVE R16 R13
  MOVE R17 R14
  CALL R15 2 0
  FORGLOOP R10 2 [-5]
  RETURN R7 1
