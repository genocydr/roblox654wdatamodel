PROTO_0:
  GETUPVAL R0 1
  LOADK R2 K0 ["ToastNotification"]
  LOADN R3 3
  NAMECALL R0 R0 K1 ["WaitForChild"]
  CALL R0 3 1
  SETUPVAL R0 0
  GETUPVAL R1 0
  JUMPIFEQKNIL R1 [+8]
  GETUPVAL R0 0
  LOADK R2 K2 ["ToastNotificationWrapper"]
  LOADN R3 3
  NAMECALL R0 R0 K1 ["WaitForChild"]
  CALL R0 3 1
  JUMP [+1]
  LOADNIL R0
  SETUPVAL R0 2
  GETUPVAL R1 2
  JUMPIFEQKNIL R1 [+8]
  GETUPVAL R0 2
  LOADK R2 K3 ["Toast"]
  LOADB R3 1
  NAMECALL R0 R0 K4 ["FindFirstChild"]
  CALL R0 3 1
  JUMP [+1]
  LOADNIL R0
  SETUPVAL R0 3
  RETURN R0 0

PROTO_1:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R3 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["toggleChatVisible"]
  CALL R3 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+62]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["menuOpen"]
  JUMPIFNOT R3 [+3]
  GETIMPORT R3 K5 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  LOADB R3 0
  GETUPVAL R4 2
  JUMPIFEQKNIL R4 [+4]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["Visible"]
  GETIMPORT R4 K9 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R4 [+10]
  GETUPVAL R4 1
  GETIMPORT R5 K11 [tick]
  CALL R5 0 1
  SETTABLEKS R5 R4 K12 ["lastMenuButtonPress"]
  GETIMPORT R4 K5 [Enum.ContextActionResult.Pass]
  RETURN R4 1
  GETIMPORT R4 K14 [Enum.UserInputState.End]
  JUMPIFNOTEQ R1 R4 [+27]
  JUMPIFNOT R3 [+10]
  GETIMPORT R5 K11 [tick]
  CALL R5 0 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K12 ["lastMenuButtonPress"]
  SUB R4 R5 R6
  LOADN R5 1
  JUMPIFNOTLT R4 R5 [+16]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K15 ["setGamepadMenuOpen"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K16 ["isGamepadMenuOpen"]
  NOT R5 R6
  CALL R4 1 0
  GETIMPORT R4 K18 [Enum.ContextActionResult.Sink]
  RETURN R4 1
  GETIMPORT R4 K5 [Enum.ContextActionResult.Pass]
  RETURN R4 1
  GETIMPORT R3 K9 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R3 [+7]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["menuOpen"]
  JUMPIFNOT R3 [+3]
  GETIMPORT R3 K5 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K15 ["setGamepadMenuOpen"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K16 ["isGamepadMenuOpen"]
  NOT R4 R5
  CALL R3 1 0
  GETIMPORT R3 K18 [Enum.ContextActionResult.Sink]
  RETURN R3 1

PROTO_3:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFEQ R1 R3 [+4]
  GETIMPORT R3 K6 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["props"]
  GETTABLEKS R3 R4 K8 ["setGamepadMenuOpen"]
  LOADB R4 0
  CALL R3 1 0
  GETIMPORT R3 K10 [Enum.ContextActionResult.Sink]
  RETURN R3 1

PROTO_4:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFEQ R1 R3 [+4]
  GETIMPORT R3 K6 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["leaveGame"]
  CALL R3 0 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["props"]
  GETTABLEKS R3 R4 K9 ["setGamepadMenuOpen"]
  LOADB R4 0
  CALL R3 1 0
  GETIMPORT R3 K11 [Enum.ContextActionResult.Sink]
  RETURN R3 1

PROTO_5:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFEQ R1 R3 [+4]
  GETIMPORT R3 K6 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["respawnCharacter"]
  CALL R3 0 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["props"]
  GETTABLEKS R3 R4 K9 ["setGamepadMenuOpen"]
  LOADB R4 0
  CALL R3 1 0
  GETIMPORT R3 K11 [Enum.ContextActionResult.Sink]
  RETURN R3 1

PROTO_6:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R3 [+67]
  GETTABLEKS R3 R2 K4 ["KeyCode"]
  GETIMPORT R4 K6 [Enum.KeyCode.DPadUp]
  JUMPIFNOTEQ R3 R4 [+25]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["state"]
  GETTABLEKS R3 R4 K8 ["selectedIndex"]
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+14]
  GETUPVAL R3 0
  DUPTABLE R5 K9 [{"selectedIndex"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["state"]
  GETTABLEKS R7 R8 K8 ["selectedIndex"]
  SUBK R6 R7 K10 [1]
  SETTABLEKS R6 R5 K8 ["selectedIndex"]
  NAMECALL R3 R3 K11 ["setState"]
  CALL R3 2 0
  GETIMPORT R3 K14 [Enum.ContextActionResult.Sink]
  RETURN R3 1
  GETTABLEKS R3 R2 K4 ["KeyCode"]
  GETIMPORT R4 K16 [Enum.KeyCode.DPadDown]
  JUMPIFNOTEQ R3 R4 [+129]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["state"]
  GETTABLEKS R3 R4 K8 ["selectedIndex"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["state"]
  GETTABLEKS R5 R6 K17 ["menuActions"]
  LENGTH R4 R5
  JUMPIFNOTLT R3 R4 [+14]
  GETUPVAL R3 0
  DUPTABLE R5 K9 [{"selectedIndex"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["state"]
  GETTABLEKS R7 R8 K8 ["selectedIndex"]
  ADDK R6 R7 K10 [1]
  SETTABLEKS R6 R5 K8 ["selectedIndex"]
  NAMECALL R3 R3 K11 ["setState"]
  CALL R3 2 0
  GETIMPORT R3 K14 [Enum.ContextActionResult.Sink]
  RETURN R3 1
  JUMP [+98]
  GETTABLEKS R3 R2 K4 ["KeyCode"]
  GETIMPORT R4 K19 [Enum.KeyCode.Thumbstick1]
  JUMPIFNOTEQ R3 R4 [+93]
  GETIMPORT R4 K21 [tick]
  CALL R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K22 ["lastThumbStickMove"]
  SUB R3 R4 R5
  LOADK R4 K23 [0.15]
  JUMPIFNOTLT R3 R4 [+4]
  GETIMPORT R3 K25 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETTABLEKS R4 R2 K26 ["Position"]
  GETTABLEKS R3 R4 K27 ["Y"]
  LOADK R4 K28 [0.8]
  JUMPIFNOTLT R4 R3 [+31]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["state"]
  GETTABLEKS R3 R4 K8 ["selectedIndex"]
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+20]
  GETUPVAL R3 0
  DUPTABLE R5 K9 [{"selectedIndex"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["state"]
  GETTABLEKS R7 R8 K8 ["selectedIndex"]
  SUBK R6 R7 K10 [1]
  SETTABLEKS R6 R5 K8 ["selectedIndex"]
  NAMECALL R3 R3 K11 ["setState"]
  CALL R3 2 0
  GETUPVAL R3 0
  GETIMPORT R4 K21 [tick]
  CALL R4 0 1
  SETTABLEKS R4 R3 K22 ["lastThumbStickMove"]
  GETIMPORT R3 K25 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETTABLEKS R4 R2 K26 ["Position"]
  GETTABLEKS R3 R4 K27 ["Y"]
  LOADK R4 K29 [-0.8]
  JUMPIFNOTLT R3 R4 [+36]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["state"]
  GETTABLEKS R3 R4 K8 ["selectedIndex"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["state"]
  GETTABLEKS R5 R6 K17 ["menuActions"]
  LENGTH R4 R5
  JUMPIFNOTLT R3 R4 [+20]
  GETUPVAL R3 0
  DUPTABLE R5 K9 [{"selectedIndex"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["state"]
  GETTABLEKS R7 R8 K8 ["selectedIndex"]
  ADDK R6 R7 K10 [1]
  SETTABLEKS R6 R5 K8 ["selectedIndex"]
  NAMECALL R3 R3 K11 ["setState"]
  CALL R3 2 0
  GETUPVAL R3 0
  GETIMPORT R4 K21 [tick]
  CALL R4 0 1
  SETTABLEKS R4 R3 K22 ["lastThumbStickMove"]
  GETIMPORT R3 K14 [Enum.ContextActionResult.Sink]
  RETURN R3 1
  GETIMPORT R3 K25 [Enum.ContextActionResult.Pass]
  RETURN R3 1

PROTO_7:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFEQ R1 R3 [+4]
  GETIMPORT R3 K6 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETUPVAL R3 0
  DUPTABLE R5 K8 [{"selectedIndex"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K7 ["selectedIndex"]
  NAMECALL R3 R3 K9 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFEQ R1 R3 [+4]
  GETIMPORT R3 K6 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETUPVAL R3 0
  DUPTABLE R5 K8 [{"selectedIndex"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["state"]
  GETTABLEKS R7 R8 K10 ["menuActions"]
  LENGTH R6 R7
  SETTABLEKS R6 R5 K7 ["selectedIndex"]
  NAMECALL R3 R3 K11 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFEQ R1 R3 [+4]
  GETIMPORT R3 K6 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["state"]
  GETTABLEKS R4 R5 K8 ["menuActions"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["state"]
  GETTABLEKS R5 R6 K9 ["selectedIndex"]
  GETTABLE R3 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["props"]
  GETTABLEKS R4 R5 K11 ["setGamepadMenuOpen"]
  LOADB R5 0
  CALL R4 1 0
  GETUPVAL R4 1
  LOADB R6 0
  LOADK R7 K12 ["GamepadMenu"]
  NAMECALL R4 R4 K13 ["SetMenuIsOpen"]
  CALL R4 3 0
  GETTABLEKS R4 R3 K14 ["onActivated"]
  CALL R4 0 0
  GETIMPORT R4 K16 [Enum.ContextActionResult.Sink]
  RETURN R4 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["setGamepadMenuOpen"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R3 K2 [{"selectedIndex", "menuActions"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K0 ["selectedIndex"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K1 ["menuActions"]
  NAMECALL R1 R0 K3 ["setState"]
  CALL R1 2 0
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["boundMenuOpenActions"]
  LOADN R1 0
  SETTABLEKS R1 R0 K5 ["lastMenuButtonPress"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["toggleChatVisibilityAction"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K7 ["toggleMenuVisibleAction"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["closeMenuAction"]
  NEWCLOSURE R1 P3
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["leaveGameMenuAction"]
  NEWCLOSURE R1 P4
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["respawnMenuAction"]
  LOADN R1 0
  SETTABLEKS R1 R0 K11 ["lastThumbStickMove"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["moveSelectionAction"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["goToTopAction"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["goToBottomAction"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K15 ["activateSelectionAction"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["overlayDismiss"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+15]
  GETIMPORT R0 K1 [require]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Modules"]
  GETTABLEKS R1 R2 K3 ["InGameMenuInit"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K4 ["openInGameMenu"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["MainPagePageKey"]
  CALL R1 1 0
  RETURN R0 0
  GETIMPORT R0 K1 [require]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Modules"]
  GETTABLEKS R2 R3 K6 ["Settings"]
  GETTABLEKS R1 R2 K7 ["SettingsHub"]
  CALL R0 1 1
  LOADB R3 1
  LOADNIL R4
  LOADNIL R5
  LOADB R6 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["AnalyticsMenuOpenTypes"]
  GETTABLEKS R7 R8 K9 ["PlayersTriggered"]
  NAMECALL R1 R0 K10 ["SetVisibility"]
  CALL R1 6 0
  RETURN R0 0

PROTO_13:
  GETIMPORT R0 K1 [require]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Modules"]
  GETTABLEKS R2 R3 K3 ["Chrome"]
  GETTABLEKS R1 R2 K4 ["Service"]
  CALL R0 1 1
  NAMECALL R1 R0 K5 ["enableFocusNav"]
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  GETIMPORT R0 K1 [require]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Modules"]
  GETTABLEKS R2 R3 K3 ["Chrome"]
  GETTABLEKS R1 R2 K4 ["Service"]
  CALL R0 1 1
  NAMECALL R1 R0 K5 ["disableFocusNav"]
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["ToggleVisibility"]
  CALL R0 1 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 2
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["GetVisibility"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["ChatVisible"]
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+15]
  GETUPVAL R0 1
  LOADB R2 1
  NAMECALL R0 R0 K0 ["SetVisible"]
  CALL R0 2 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 3
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["ChatVisible"]
  GETUPVAL R0 1
  NAMECALL R0 R0 K2 ["FocusChatBar"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+12]
  GETIMPORT R0 K1 [require]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Modules"]
  GETTABLEKS R1 R2 K3 ["InGameMenuInit"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K4 ["openPlayersPage"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R0 2
  GETUPVAL R3 2
  NAMECALL R3 R3 K5 ["GetSetVisible"]
  CALL R3 1 1
  NOT R2 R3
  NAMECALL R0 R0 K6 ["SetVisibility"]
  CALL R0 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["isOpen"]
  CALL R0 1 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["close"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["open"]
  CALL R0 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["OpenClose"]
  CALL R0 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+12]
  GETIMPORT R0 K1 [require]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Modules"]
  GETTABLEKS R1 R2 K3 ["InGameMenuInit"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K4 ["openGameLeavePage"]
  CALL R1 0 0
  RETURN R0 0
  GETIMPORT R0 K1 [require]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Modules"]
  GETTABLEKS R2 R3 K5 ["Settings"]
  GETTABLEKS R1 R2 K6 ["SettingsHub"]
  CALL R0 1 1
  LOADB R3 1
  LOADB R4 0
  GETTABLEKS R6 R0 K7 ["Instance"]
  GETTABLEKS R5 R6 K8 ["LeaveGamePage"]
  LOADB R6 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K9 ["AnalyticsMenuOpenTypes"]
  GETTABLEKS R7 R8 K10 ["GamepadLeaveGame"]
  NAMECALL R1 R0 K11 ["SetVisibility"]
  CALL R1 6 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+12]
  GETIMPORT R0 K1 [require]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Modules"]
  GETTABLEKS R1 R2 K3 ["InGameMenuInit"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K4 ["openCharacterResetPage"]
  CALL R1 0 0
  RETURN R0 0
  GETIMPORT R0 K1 [require]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Modules"]
  GETTABLEKS R2 R3 K5 ["Settings"]
  GETTABLEKS R1 R2 K6 ["SettingsHub"]
  CALL R0 1 1
  LOADB R3 1
  LOADB R4 0
  GETTABLEKS R6 R0 K7 ["Instance"]
  GETTABLEKS R5 R6 K8 ["ResetCharacterPage"]
  LOADB R6 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K9 ["AnalyticsMenuOpenTypes"]
  GETTABLEKS R7 R8 K10 ["GamepadResetCharacter"]
  NAMECALL R1 R0 K11 ["SetVisibility"]
  CALL R1 6 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["IsEnabled"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R1 1
  MOVE R2 R0
  JUMPIF R2 [+3]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["ChatVersion"]
  MOVE R0 R2
  MOVE R2 R1
  JUMPIFNOT R2 [+6]
  GETIMPORT R3 K4 [Enum.ChatVersion.TextChatService]
  JUMPIFEQ R0 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_23:
  NEWTABLE R1 0 0
  DUPTABLE R4 K5 [{"name", "icon", "iconComponent", "localizationKey", "onActivated"}]
  LOADK R5 K6 ["Menu"]
  SETTABLEKS R5 R4 K0 ["name"]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K1 ["icon"]
  LOADNIL R5
  SETTABLEKS R5 R4 K2 ["iconComponent"]
  LOADK R5 K7 ["CoreScripts.TopBar.Menu"]
  SETTABLEKS R5 R4 K3 ["localizationKey"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["openRootMenu"]
  SETTABLEKS R5 R4 K4 ["onActivated"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K11 [table.insert]
  CALL R2 2 0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+33]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K12 ["shouldShowChatMenuOption"]
  GETTABLEKS R3 R0 K13 ["chatVersion"]
  GETTABLEKS R4 R0 K14 ["chatEnabled"]
  CALL R2 2 1
  JUMPIFNOT R2 [+24]
  DUPTABLE R4 K5 [{"name", "icon", "iconComponent", "localizationKey", "onActivated"}]
  LOADK R5 K15 ["Chat"]
  SETTABLEKS R5 R4 K0 ["name"]
  LOADNIL R5
  SETTABLEKS R5 R4 K1 ["icon"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K2 ["iconComponent"]
  LOADK R5 K16 ["CoreScripts.TopBar.Chat"]
  SETTABLEKS R5 R4 K3 ["localizationKey"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K17 ["focusChatBar"]
  SETTABLEKS R5 R4 K4 ["onActivated"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K11 [table.insert]
  CALL R2 2 0
  GETUPVAL R2 4
  CALL R2 0 1
  JUMPIFNOT R2 [+24]
  DUPTABLE R4 K5 [{"name", "icon", "iconComponent", "localizationKey", "onActivated"}]
  LOADK R5 K18 ["Unibar"]
  SETTABLEKS R5 R4 K0 ["name"]
  GETUPVAL R5 5
  SETTABLEKS R5 R4 K1 ["icon"]
  LOADNIL R5
  SETTABLEKS R5 R4 K2 ["iconComponent"]
  LOADK R5 K19 ["CoreScripts.TopBar.Title.ExperienceControls"]
  SETTABLEKS R5 R4 K3 ["localizationKey"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K20 ["openUnibarMenu"]
  SETTABLEKS R5 R4 K4 ["onActivated"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K11 [table.insert]
  CALL R2 2 0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIF R2 [+32]
  GETTABLEKS R2 R0 K14 ["chatEnabled"]
  JUMPIFNOT R2 [+29]
  GETUPVAL R2 6
  NAMECALL R2 R2 K21 ["IsEnabled"]
  CALL R2 1 1
  JUMPIF R2 [+24]
  DUPTABLE R4 K5 [{"name", "icon", "iconComponent", "localizationKey", "onActivated"}]
  LOADK R5 K15 ["Chat"]
  SETTABLEKS R5 R4 K0 ["name"]
  LOADNIL R5
  SETTABLEKS R5 R4 K1 ["icon"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K2 ["iconComponent"]
  LOADK R5 K16 ["CoreScripts.TopBar.Chat"]
  SETTABLEKS R5 R4 K3 ["localizationKey"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K22 ["toggleChatVisible"]
  SETTABLEKS R5 R4 K4 ["onActivated"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K11 [table.insert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K23 ["leaderboardEnabled"]
  JUMPIF R2 [+5]
  GETUPVAL R2 6
  NAMECALL R2 R2 K21 ["IsEnabled"]
  CALL R2 1 1
  JUMPIFNOT R2 [+30]
  LOADNIL R2
  GETTABLEKS R3 R0 K24 ["leaderboardOpen"]
  JUMPIFNOT R3 [+2]
  LOADK R2 K25 ["rbxasset://textures/ui/TopBar/leaderboardOn.png"]
  JUMP [+1]
  LOADK R2 K26 ["rbxasset://textures/ui/TopBar/leaderboardOff.png"]
  DUPTABLE R5 K5 [{"name", "icon", "iconComponent", "localizationKey", "onActivated"}]
  LOADK R6 K27 ["Leaderboard"]
  SETTABLEKS R6 R5 K0 ["name"]
  SETTABLEKS R2 R5 K1 ["icon"]
  LOADNIL R6
  SETTABLEKS R6 R5 K2 ["iconComponent"]
  LOADK R6 K28 ["CoreScripts.TopBar.Leaderboard"]
  SETTABLEKS R6 R5 K3 ["localizationKey"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K29 ["toggleLeaderboard"]
  SETTABLEKS R6 R5 K4 ["onActivated"]
  FASTCALL2 TABLE_INSERT R1 R5 [+4]
  MOVE R4 R1
  GETIMPORT R3 K11 [table.insert]
  CALL R3 2 0
  GETTABLEKS R2 R0 K30 ["emotesEnabled"]
  JUMPIFNOT R2 [+30]
  LOADNIL R2
  GETTABLEKS R3 R0 K31 ["emotesOpen"]
  JUMPIFNOT R3 [+2]
  LOADK R2 K32 ["rbxasset://textures/ui/TopBar/emotesOn.png"]
  JUMP [+1]
  LOADK R2 K33 ["rbxasset://textures/ui/TopBar/emotesOff.png"]
  DUPTABLE R5 K5 [{"name", "icon", "iconComponent", "localizationKey", "onActivated"}]
  LOADK R6 K34 ["Emotes"]
  SETTABLEKS R6 R5 K0 ["name"]
  SETTABLEKS R2 R5 K1 ["icon"]
  LOADNIL R6
  SETTABLEKS R6 R5 K2 ["iconComponent"]
  LOADK R6 K35 ["CoreScripts.TopBar.Emotes"]
  SETTABLEKS R6 R5 K3 ["localizationKey"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K36 ["toggleEmotesMenu"]
  SETTABLEKS R6 R5 K4 ["onActivated"]
  FASTCALL2 TABLE_INSERT R1 R5 [+4]
  MOVE R4 R1
  GETIMPORT R3 K11 [table.insert]
  CALL R3 2 0
  GETTABLEKS R2 R0 K37 ["backpackEnabled"]
  JUMPIFNOT R2 [+30]
  LOADNIL R2
  GETTABLEKS R3 R0 K38 ["backpackOpen"]
  JUMPIFNOT R3 [+2]
  LOADK R2 K39 ["rbxasset://textures/ui/TopBar/inventoryOn.png"]
  JUMP [+1]
  LOADK R2 K40 ["rbxasset://textures/ui/TopBar/inventoryOff.png"]
  DUPTABLE R5 K5 [{"name", "icon", "iconComponent", "localizationKey", "onActivated"}]
  LOADK R6 K41 ["Inventory"]
  SETTABLEKS R6 R5 K0 ["name"]
  SETTABLEKS R2 R5 K1 ["icon"]
  LOADNIL R6
  SETTABLEKS R6 R5 K2 ["iconComponent"]
  LOADK R6 K42 ["CoreScripts.TopBar.Inventory"]
  SETTABLEKS R6 R5 K3 ["localizationKey"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K43 ["toggleBackpack"]
  SETTABLEKS R6 R5 K4 ["onActivated"]
  FASTCALL2 TABLE_INSERT R1 R5 [+4]
  MOVE R4 R1
  GETIMPORT R3 K11 [table.insert]
  CALL R3 2 0
  GETTABLEKS R2 R0 K44 ["respawnEnabled"]
  JUMPIFNOT R2 [+24]
  DUPTABLE R4 K5 [{"name", "icon", "iconComponent", "localizationKey", "onActivated"}]
  LOADK R5 K45 ["Respawn"]
  SETTABLEKS R5 R4 K0 ["name"]
  GETUPVAL R5 7
  SETTABLEKS R5 R4 K1 ["icon"]
  LOADNIL R5
  SETTABLEKS R5 R4 K2 ["iconComponent"]
  LOADK R5 K46 ["CoreScripts.TopBar.Respawn"]
  SETTABLEKS R5 R4 K3 ["localizationKey"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K47 ["respawnCharacter"]
  SETTABLEKS R5 R4 K4 ["onActivated"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K11 [table.insert]
  CALL R2 2 0
  DUPTABLE R4 K5 [{"name", "icon", "iconComponent", "localizationKey", "onActivated"}]
  LOADK R5 K48 ["Leave"]
  SETTABLEKS R5 R4 K0 ["name"]
  GETUPVAL R5 8
  SETTABLEKS R5 R4 K1 ["icon"]
  LOADNIL R5
  SETTABLEKS R5 R4 K2 ["iconComponent"]
  LOADK R5 K49 ["CoreScripts.TopBar.Leave"]
  SETTABLEKS R5 R4 K3 ["localizationKey"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K50 ["leaveGame"]
  SETTABLEKS R5 R4 K4 ["onActivated"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K11 [table.insert]
  CALL R2 2 0
  RETURN R1 1

PROTO_24:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getMenuActionsFromProps"]
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R4 R1 K2 ["selectedIndex"]
  ORK R3 R4 K1 [1]
  LENGTH R4 R2
  JUMPIFNOTLT R4 R3 [+2]
  LENGTH R3 R2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Dictionary"]
  GETTABLEKS R4 R5 K4 ["join"]
  MOVE R5 R1
  DUPTABLE R6 K6 [{"selectedIndex", "menuActions"}]
  SETTABLEKS R3 R6 K2 ["selectedIndex"]
  SETTABLEKS R2 R6 K5 ["menuActions"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_25:
  GETTABLEKS R1 R0 K0 ["Theme"]
  NEWTABLE R2 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["createElement"]
  LOADK R4 K2 ["UIListLayout"]
  DUPTABLE R5 K7 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R6 K10 [Enum.FillDirection.Vertical]
  SETTABLEKS R6 R5 K3 ["FillDirection"]
  GETIMPORT R6 K12 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R6 R5 K4 ["HorizontalAlignment"]
  GETIMPORT R6 K14 [Enum.VerticalAlignment.Top]
  SETTABLEKS R6 R5 K5 ["VerticalAlignment"]
  GETIMPORT R6 K16 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R6 R5 K6 ["SortOrder"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K17 ["Layout"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K20 [{"layoutOrder", "height"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K18 ["layoutOrder"]
  LOADN R6 120
  SETTABLEKS R6 R5 K19 ["height"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K21 ["MenuHeader"]
  GETIMPORT R3 K23 [ipairs]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K24 ["state"]
  GETTABLEKS R4 R6 K25 ["menuActions"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R8 R7 K26 ["name"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K32 [{"layoutOrder", "icon", "iconComponent", "localizationKey", "height", "hasDivider", "isSelected"}]
  ADDK R12 R6 K33 [1]
  SETTABLEKS R12 R11 K18 ["layoutOrder"]
  GETTABLEKS R12 R7 K27 ["icon"]
  SETTABLEKS R12 R11 K27 ["icon"]
  GETTABLEKS R12 R7 K28 ["iconComponent"]
  SETTABLEKS R12 R11 K28 ["iconComponent"]
  GETTABLEKS R12 R7 K29 ["localizationKey"]
  SETTABLEKS R12 R11 K29 ["localizationKey"]
  LOADN R12 56
  SETTABLEKS R12 R11 K19 ["height"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K24 ["state"]
  GETTABLEKS R14 R15 K25 ["menuActions"]
  LENGTH R13 R14
  JUMPIFNOTEQ R6 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K30 ["hasDivider"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K24 ["state"]
  GETTABLEKS R13 R14 K34 ["selectedIndex"]
  JUMPIFEQ R6 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K31 ["isSelected"]
  CALL R9 2 1
  SETTABLE R9 R2 R8
  FORGLOOP R3 2 [inext] [-51]
  LOADN R4 120
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K24 ["state"]
  GETTABLEKS R7 R8 K25 ["menuActions"]
  LENGTH R6 R7
  MULK R5 R6 K35 [56]
  ADD R3 R4 R5
  LOADN R4 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K37 ["props"]
  GETTABLEKS R7 R8 K38 ["screenSize"]
  GETTABLEKS R6 R7 K39 ["Y"]
  MULK R5 R6 K36 [0.75]
  JUMPIFNOTLT R5 R3 [+10]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K37 ["props"]
  GETTABLEKS R7 R8 K38 ["screenSize"]
  GETTABLEKS R6 R7 K39 ["Y"]
  MULK R5 R6 K36 [0.75]
  DIV R4 R5 R3
  LOADN R5 80
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K37 ["props"]
  GETTABLEKS R8 R9 K38 ["screenSize"]
  GETTABLEKS R7 R8 K40 ["X"]
  MULK R6 R7 K36 [0.75]
  JUMPIFNOTLT R6 R5 [+13]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K37 ["props"]
  GETTABLEKS R8 R9 K38 ["screenSize"]
  GETTABLEKS R7 R8 K40 ["X"]
  MULK R6 R7 K36 [0.75]
  DIVK R5 R6 K41 [336]
  JUMPIFNOTLT R5 R4 [+2]
  MOVE R4 R5
  LOADN R5 1
  JUMPIFNOTLT R4 R5 [+11]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["createElement"]
  LOADK R6 K42 ["UIScale"]
  DUPTABLE R7 K44 [{"Scale"}]
  SETTABLEKS R4 R7 K43 ["Scale"]
  CALL R5 2 1
  SETTABLEKS R5 R2 K42 ["UIScale"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K37 ["props"]
  GETTABLEKS R5 R6 K45 ["isGamepadMenuOpen"]
  LOADNIL R6
  GETUPVAL R7 4
  CALL R7 0 1
  JUMPIFNOT R7 [+25]
  JUMPIFNOT R5 [+33]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K47 [{"chatMenuEnabled"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K48 ["shouldShowChatMenuOption"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K37 ["props"]
  GETTABLEKS R11 R12 K49 ["chatVersion"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K37 ["props"]
  GETTABLEKS R12 R13 K50 ["chatEnabled"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K46 ["chatMenuEnabled"]
  CALL R7 2 1
  MOVE R6 R7
  JUMP [+9]
  JUMPIFNOT R5 [+6]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 5
  CALL R7 1 1
  JUMPIF R7 [+1]
  LOADNIL R7
  MOVE R6 R7
  DUPTABLE R7 K54 [{"Menu", "ControllerBar", "MenuNavigationToggleDialog"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K64 [{"BackgroundTransparency", "Image", "SliceCenter", "ScaleType", "ImageTransparency", "ImageColor3", "Size", "Position", "AnchorPoint"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K55 ["BackgroundTransparency"]
  GETUPVAL R11 7
  SETTABLEKS R11 R10 K56 ["Image"]
  GETUPVAL R11 8
  SETTABLEKS R11 R10 K57 ["SliceCenter"]
  GETIMPORT R11 K66 [Enum.ScaleType.Slice]
  SETTABLEKS R11 R10 K58 ["ScaleType"]
  GETTABLEKS R12 R1 K67 ["BackgroundUIContrast"]
  GETTABLEKS R11 R12 K68 ["Transparency"]
  SETTABLEKS R11 R10 K59 ["ImageTransparency"]
  GETTABLEKS R12 R1 K67 ["BackgroundUIContrast"]
  GETTABLEKS R11 R12 K69 ["Color"]
  SETTABLEKS R11 R10 K60 ["ImageColor3"]
  GETIMPORT R11 K72 [UDim2.fromOffset]
  LOADN R12 80
  MOVE R13 R3
  CALL R11 2 1
  SETTABLEKS R11 R10 K61 ["Size"]
  GETIMPORT R11 K74 [UDim2.fromScale]
  LOADK R12 K75 [0.5]
  LOADK R13 K75 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K62 ["Position"]
  GETIMPORT R11 K78 [Vector2.new]
  LOADK R12 K75 [0.5]
  LOADK R13 K75 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K63 ["AnchorPoint"]
  MOVE R11 R2
  CALL R8 3 1
  SETTABLEKS R8 R7 K51 ["Menu"]
  SETTABLEKS R6 R7 K52 ["ControllerBar"]
  GETUPVAL R9 9
  JUMPIFNOT R9 [+14]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["createElement"]
  GETUPVAL R9 10
  DUPTABLE R10 K79 [{"Position"}]
  GETIMPORT R11 K74 [UDim2.fromScale]
  LOADK R12 K75 [0.5]
  LOADK R13 K80 [0.1]
  CALL R11 2 1
  SETTABLEKS R11 R10 K62 ["Position"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K53 ["MenuNavigationToggleDialog"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["createElement"]
  LOADK R9 K81 ["TextButton"]
  NEWTABLE R10 8 0
  SETTABLEKS R5 R10 K82 ["Visible"]
  LOADK R11 K83 [""]
  SETTABLEKS R11 R10 K84 ["Text"]
  GETTABLEKS R12 R1 K85 ["Overlay"]
  GETTABLEKS R11 R12 K68 ["Transparency"]
  SETTABLEKS R11 R10 K55 ["BackgroundTransparency"]
  GETTABLEKS R12 R1 K85 ["Overlay"]
  GETTABLEKS R11 R12 K69 ["Color"]
  SETTABLEKS R11 R10 K86 ["BackgroundColor3"]
  GETIMPORT R11 K74 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K61 ["Size"]
  LOADN R11 0
  SETTABLEKS R11 R10 K87 ["BorderSizePixel"]
  LOADN R11 10
  SETTABLEKS R11 R10 K88 ["ZIndex"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K89 ["Event"]
  GETTABLEKS R11 R12 K90 ["Activated"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K91 ["overlayDismiss"]
  SETTABLE R12 R10 R11
  MOVE R11 R7
  CALL R8 3 -1
  RETURN R8 -1

PROTO_26:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CALL R1 1 -1
  RETURN R1 -1

PROTO_27:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["VREnabled"]
  JUMPIF R1 [+10]
  GETUPVAL R1 1
  LOADK R3 K1 ["TopBarGamepadToggleGamepadMenu"]
  GETTABLEKS R4 R0 K2 ["toggleMenuVisibleAction"]
  LOADB R5 0
  GETIMPORT R6 K6 [Enum.KeyCode.ButtonStart]
  NAMECALL R1 R1 K7 ["BindCoreAction"]
  CALL R1 5 0
  RETURN R0 0

PROTO_28:
  RETURN R0 0

PROTO_29:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["boundMenuOpenActions"]
  GETUPVAL R1 0
  LOADK R3 K1 ["TopBarGamepadFreezeController"]
  DUPCLOSURE R4 K2 [PROTO_28]
  LOADB R5 0
  GETIMPORT R6 K6 [Enum.UserInputType.Gamepad1]
  NAMECALL R1 R1 K7 ["BindCoreAction"]
  CALL R1 5 0
  GETUPVAL R1 0
  LOADK R3 K8 ["TopBarGamepadCloseMenu"]
  GETTABLEKS R4 R0 K9 ["closeMenuAction"]
  LOADB R5 0
  GETIMPORT R6 K12 [Enum.KeyCode.ButtonB]
  NAMECALL R1 R1 K7 ["BindCoreAction"]
  CALL R1 5 0
  GETUPVAL R1 0
  LOADK R3 K13 ["TopBarGamepadLeaveGame"]
  GETTABLEKS R4 R0 K14 ["leaveGameMenuAction"]
  LOADB R5 0
  GETIMPORT R6 K16 [Enum.KeyCode.ButtonX]
  NAMECALL R1 R1 K7 ["BindCoreAction"]
  CALL R1 5 0
  GETUPVAL R1 0
  LOADK R3 K17 ["TopBarGamepadRespawnAction"]
  GETTABLEKS R4 R0 K18 ["respawnMenuAction"]
  LOADB R5 0
  GETIMPORT R6 K20 [Enum.KeyCode.ButtonY]
  NAMECALL R1 R1 K7 ["BindCoreAction"]
  CALL R1 5 0
  GETUPVAL R1 0
  LOADK R3 K21 ["TopBarGamepadActivateSelection"]
  GETTABLEKS R4 R0 K22 ["activateSelectionAction"]
  LOADB R5 0
  GETIMPORT R6 K24 [Enum.KeyCode.ButtonA]
  NAMECALL R1 R1 K7 ["BindCoreAction"]
  CALL R1 5 0
  GETUPVAL R1 0
  LOADK R3 K25 ["TopBarGamepadMoveSelection"]
  GETTABLEKS R4 R0 K26 ["moveSelectionAction"]
  LOADB R5 0
  GETIMPORT R6 K28 [Enum.KeyCode.Thumbstick1]
  GETIMPORT R7 K30 [Enum.KeyCode.DPadUp]
  GETIMPORT R8 K32 [Enum.KeyCode.DPadDown]
  NAMECALL R1 R1 K7 ["BindCoreAction"]
  CALL R1 7 0
  GETUPVAL R1 0
  LOADK R3 K33 ["TopBarGamepadMoveSelectionTop"]
  GETTABLEKS R4 R0 K34 ["goToTopAction"]
  LOADB R5 0
  GETIMPORT R6 K36 [Enum.KeyCode.ButtonL2]
  NAMECALL R1 R1 K7 ["BindCoreAction"]
  CALL R1 5 0
  GETUPVAL R1 0
  LOADK R3 K37 ["TopBarGamepadMoveSelectionBottom"]
  GETTABLEKS R4 R0 K38 ["goToBottomAction"]
  LOADB R5 0
  GETIMPORT R6 K40 [Enum.KeyCode.ButtonR2]
  NAMECALL R1 R1 K7 ["BindCoreAction"]
  CALL R1 5 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 0
  LOADK R3 K41 ["TopBarGamepadToggleChatVisibility"]
  GETTABLEKS R4 R0 K42 ["toggleChatVisibilityAction"]
  LOADB R5 0
  GETIMPORT R6 K44 [Enum.KeyCode.ButtonR1]
  NAMECALL R1 R1 K7 ["BindCoreAction"]
  CALL R1 5 0
  GETUPVAL R1 0
  LOADK R3 K45 ["TopBarGamepadToggleGamepadMenu"]
  GETTABLEKS R4 R0 K46 ["toggleMenuVisibleAction"]
  LOADB R5 0
  GETIMPORT R6 K48 [Enum.KeyCode.ButtonStart]
  NAMECALL R1 R1 K7 ["BindCoreAction"]
  CALL R1 5 0
  RETURN R0 0

PROTO_30:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["boundMenuOpenActions"]
  GETUPVAL R1 0
  LOADK R3 K1 ["TopBarGamepadFreezeController"]
  NAMECALL R1 R1 K2 ["UnbindCoreAction"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K3 ["TopBarGamepadCloseMenu"]
  NAMECALL R1 R1 K2 ["UnbindCoreAction"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K4 ["TopBarGamepadActivateSelection"]
  NAMECALL R1 R1 K2 ["UnbindCoreAction"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K5 ["TopBarGamepadLeaveGame"]
  NAMECALL R1 R1 K2 ["UnbindCoreAction"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K6 ["TopBarGamepadRespawnAction"]
  NAMECALL R1 R1 K2 ["UnbindCoreAction"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K7 ["TopBarGamepadMoveSelection"]
  NAMECALL R1 R1 K2 ["UnbindCoreAction"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K8 ["TopBarGamepadMoveSelectionTop"]
  NAMECALL R1 R1 K2 ["UnbindCoreAction"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K9 ["TopBarGamepadMoveSelectionBottom"]
  NAMECALL R1 R1 K2 ["UnbindCoreAction"]
  CALL R1 2 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  LOADK R3 K10 ["TopBarGamepadToggleChatVisibility"]
  NAMECALL R1 R1 K2 ["UnbindCoreAction"]
  CALL R1 2 0
  RETURN R0 0

PROTO_31:
  GETTABLEKS R1 R0 K0 ["boundMenuOpenActions"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K1 ["unbindMenuOpenActions"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADK R3 K2 ["TopBarGamepadToggleGamepadMenu"]
  NAMECALL R1 R1 K3 ["UnbindCoreAction"]
  CALL R1 2 0
  RETURN R0 0

PROTO_32:
  LOADNIL R3
  LOADNIL R4
  GETTABLEKS R5 R1 K0 ["isGamepadMenuOpen"]
  GETTABLEKS R7 R0 K1 ["props"]
  GETTABLEKS R6 R7 K0 ["isGamepadMenuOpen"]
  JUMPIFNOTEQ R5 R6 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K0 ["isGamepadMenuOpen"]
  JUMPIFNOT R3 [+58]
  JUMPIFNOT R4 [+48]
  NAMECALL R5 R0 K2 ["bindMenuOpenActions"]
  CALL R5 1 0
  GETTABLEKS R6 R0 K3 ["state"]
  GETTABLEKS R5 R6 K4 ["selectedIndex"]
  JUMPIFEQKN R5 K5 [1] [+8]
  DUPTABLE R7 K6 [{"selectedIndex"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K4 ["selectedIndex"]
  NAMECALL R5 R0 K7 ["setState"]
  CALL R5 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["SelectedCoreObject"]
  SETTABLEKS R5 R0 K9 ["savedSelectedCoreObject"]
  GETUPVAL R5 0
  LOADNIL R6
  SETTABLEKS R6 R5 K8 ["SelectedCoreObject"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["SelectedObject"]
  SETTABLEKS R5 R0 K11 ["savedSelectedObject"]
  GETUPVAL R5 0
  LOADNIL R6
  SETTABLEKS R6 R5 K10 ["SelectedObject"]
  GETUPVAL R5 0
  LOADB R7 1
  LOADK R8 K12 ["GamepadMenu"]
  NAMECALL R5 R5 K13 ["SetMenuIsOpen"]
  CALL R5 3 0
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+14]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K14 ["closeUnibarMenu"]
  CALL R5 0 0
  RETURN R0 0
  NAMECALL R5 R0 K15 ["unbindMenuOpenActions"]
  CALL R5 1 0
  GETUPVAL R5 0
  LOADB R7 0
  LOADK R8 K12 ["GamepadMenu"]
  NAMECALL R5 R5 K13 ["SetMenuIsOpen"]
  CALL R5 3 0
  RETURN R0 0

PROTO_33:
  NAMECALL R1 R0 K0 ["unbindAllActions"]
  CALL R1 1 0
  RETURN R0 0

PROTO_34:
  GETTABLEKS R2 R0 K0 ["displayOptions"]
  GETTABLEKS R1 R2 K1 ["topbarEnabled"]
  DUPTABLE R2 K13 [{"screenSize", "chatEnabled", "leaderboardEnabled", "emotesEnabled", "backpackEnabled", "respawnEnabled", "leaderboardOpen", "backpackOpen", "emotesOpen", "menuOpen", "isGamepadMenuOpen"}]
  GETTABLEKS R4 R0 K0 ["displayOptions"]
  GETTABLEKS R3 R4 K2 ["screenSize"]
  SETTABLEKS R3 R2 K2 ["screenSize"]
  GETTABLEKS R4 R0 K14 ["coreGuiEnabled"]
  GETIMPORT R5 K18 [Enum.CoreGuiType.Chat]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+6]
  MOVE R3 R1
  JUMPIFNOT R3 [+4]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K19 ["VREnabled"]
  NOT R3 R4
  SETTABLEKS R3 R2 K3 ["chatEnabled"]
  GETTABLEKS R5 R0 K14 ["coreGuiEnabled"]
  GETIMPORT R6 K21 [Enum.CoreGuiType.PlayerList]
  GETTABLE R4 R5 R6
  AND R3 R4 R1
  SETTABLEKS R3 R2 K4 ["leaderboardEnabled"]
  GETTABLEKS R4 R0 K22 ["moreMenu"]
  GETTABLEKS R3 R4 K5 ["emotesEnabled"]
  JUMPIFNOT R3 [+7]
  GETTABLEKS R4 R0 K14 ["coreGuiEnabled"]
  GETIMPORT R5 K24 [Enum.CoreGuiType.EmotesMenu]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+1]
  MOVE R3 R1
  SETTABLEKS R3 R2 K5 ["emotesEnabled"]
  GETTABLEKS R5 R0 K14 ["coreGuiEnabled"]
  GETIMPORT R6 K26 [Enum.CoreGuiType.Backpack]
  GETTABLE R4 R5 R6
  AND R3 R4 R1
  SETTABLEKS R3 R2 K6 ["backpackEnabled"]
  GETTABLEKS R4 R0 K27 ["respawn"]
  GETTABLEKS R3 R4 K28 ["enabled"]
  SETTABLEKS R3 R2 K7 ["respawnEnabled"]
  GETTABLEKS R4 R0 K22 ["moreMenu"]
  GETTABLEKS R3 R4 K8 ["leaderboardOpen"]
  SETTABLEKS R3 R2 K8 ["leaderboardOpen"]
  GETTABLEKS R4 R0 K22 ["moreMenu"]
  GETTABLEKS R3 R4 K9 ["backpackOpen"]
  SETTABLEKS R3 R2 K9 ["backpackOpen"]
  GETTABLEKS R4 R0 K22 ["moreMenu"]
  GETTABLEKS R3 R4 K10 ["emotesOpen"]
  SETTABLEKS R3 R2 K10 ["emotesOpen"]
  GETTABLEKS R4 R0 K0 ["displayOptions"]
  GETTABLEKS R3 R4 K11 ["menuOpen"]
  SETTABLEKS R3 R2 K11 ["menuOpen"]
  GETTABLEKS R4 R0 K0 ["displayOptions"]
  GETTABLEKS R3 R4 K12 ["isGamepadMenuOpen"]
  SETTABLEKS R3 R2 K12 ["isGamepadMenuOpen"]
  RETURN R2 1

PROTO_35:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_36:
  DUPTABLE R1 K1 [{"setGamepadMenuOpen"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["setGamepadMenuOpen"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ContextActionService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["GuiService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["VRService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K8 ["TextChatService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R0 K11 ["Packages"]
  GETTABLEKS R7 R8 K12 ["Roact"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R9 R0 K11 ["Packages"]
  GETTABLEKS R8 R9 K13 ["RoactRodux"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R10 R0 K11 ["Packages"]
  GETTABLEKS R9 R10 K14 ["Cryo"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R11 R0 K11 ["Packages"]
  GETTABLEKS R10 R11 K15 ["t"]
  CALL R9 1 1
  GETIMPORT R10 K10 [require]
  GETTABLEKS R12 R0 K11 ["Packages"]
  GETTABLEKS R11 R12 K16 ["UIBlox"]
  CALL R10 1 1
  GETTABLEKS R13 R10 K17 ["Core"]
  GETTABLEKS R12 R13 K18 ["Style"]
  GETTABLEKS R11 R12 K19 ["withStyle"]
  GETTABLEKS R14 R10 K20 ["App"]
  GETTABLEKS R13 R14 K21 ["ImageSet"]
  GETTABLEKS R12 R13 K22 ["Images"]
  GETTABLEKS R15 R10 K17 ["Core"]
  GETTABLEKS R14 R15 K21 ["ImageSet"]
  GETTABLEKS R13 R14 K23 ["ImageSetLabel"]
  GETIMPORT R14 K10 [require]
  GETIMPORT R16 K25 [script]
  GETTABLEKS R15 R16 K26 ["MenuHeader"]
  CALL R14 1 1
  GETIMPORT R15 K10 [require]
  GETIMPORT R17 K25 [script]
  GETTABLEKS R16 R17 K27 ["ChatIcon"]
  CALL R15 1 1
  GETIMPORT R16 K10 [require]
  GETIMPORT R18 K25 [script]
  GETTABLEKS R17 R18 K28 ["MenuCell"]
  CALL R16 1 1
  GETIMPORT R17 K10 [require]
  GETIMPORT R19 K25 [script]
  GETTABLEKS R18 R19 K29 ["QuickMenuControllerBar"]
  CALL R17 1 1
  GETIMPORT R18 K10 [require]
  GETIMPORT R20 K25 [script]
  GETTABLEKS R19 R20 K30 ["MenuNavigationToggleDialog"]
  CALL R18 1 1
  LOADK R21 K31 ["RobloxGui"]
  NAMECALL R19 R2 K32 ["WaitForChild"]
  CALL R19 2 1
  GETIMPORT R20 K10 [require]
  GETTABLEKS R22 R19 K33 ["Modules"]
  GETTABLEKS R21 R22 K34 ["TenFootInterface"]
  CALL R20 1 1
  GETIMPORT R21 K10 [require]
  GETTABLEKS R23 R19 K33 ["Modules"]
  GETTABLEKS R22 R23 K35 ["BackpackScript"]
  CALL R21 1 1
  GETIMPORT R22 K10 [require]
  GETTABLEKS R25 R19 K33 ["Modules"]
  GETTABLEKS R24 R25 K36 ["EmotesMenu"]
  GETTABLEKS R23 R24 K37 ["EmotesMenuMaster"]
  CALL R22 1 1
  GETIMPORT R23 K10 [require]
  GETTABLEKS R25 R19 K33 ["Modules"]
  GETTABLEKS R24 R25 K38 ["ChatSelector"]
  CALL R23 1 1
  GETIMPORT R24 K10 [require]
  GETTABLEKS R27 R19 K33 ["Modules"]
  GETTABLEKS R26 R27 K39 ["PlayerList"]
  GETTABLEKS R25 R26 K40 ["PlayerListManager"]
  CALL R24 1 1
  GETIMPORT R25 K10 [require]
  GETTABLEKS R27 R19 K33 ["Modules"]
  GETTABLEKS R26 R27 K41 ["isNewInGameMenuEnabled"]
  CALL R25 1 1
  GETIMPORT R26 K10 [require]
  GETTABLEKS R28 R19 K33 ["Modules"]
  GETTABLEKS R27 R28 K42 ["InGameMenuConstants"]
  CALL R26 1 1
  GETIMPORT R27 K10 [require]
  GETTABLEKS R30 R19 K33 ["Modules"]
  GETTABLEKS R29 R30 K43 ["Chrome"]
  GETTABLEKS R28 R29 K44 ["Enabled"]
  CALL R27 1 1
  GETIMPORT R29 K46 [UserSettings]
  CALL R29 0 1
  GETTABLEKS R28 R29 K47 ["GameSettings"]
  GETIMPORT R31 K25 [script]
  GETTABLEKS R30 R31 K48 ["Parent"]
  GETTABLEKS R29 R30 K48 ["Parent"]
  GETTABLEKS R31 R29 K48 ["Parent"]
  GETTABLEKS R30 R31 K49 ["Actions"]
  GETIMPORT R31 K10 [require]
  GETTABLEKS R32 R30 K50 ["SetGamepadMenuOpen"]
  CALL R31 1 1
  GETTABLEKS R32 R12 K51 ["icons/logo/block"]
  GETTABLEKS R33 R12 K52 ["icons/menu/AR"]
  GETTABLEKS R34 R12 K53 ["icons/actions/respawn"]
  GETTABLEKS R35 R12 K54 ["icons/navigation/close"]
  GETTABLEKS R36 R12 K55 ["component_assets/circle_17"]
  GETIMPORT R37 K58 [Rect.new]
  LOADN R38 8
  LOADN R39 8
  LOADN R40 9
  LOADN R41 9
  CALL R37 4 1
  GETTABLEKS R38 R6 K59 ["PureComponent"]
  LOADK R40 K60 ["GamepadMenu"]
  NAMECALL R38 R38 K61 ["extend"]
  CALL R38 2 1
  GETIMPORT R39 K10 [require]
  GETTABLEKS R42 R0 K62 ["Workspace"]
  GETTABLEKS R41 R42 K11 ["Packages"]
  GETTABLEKS R40 R41 K63 ["SharedFlags"]
  CALL R39 1 1
  GETTABLEKS R40 R39 K64 ["FFlagAddMenuNavigationToggleDialog"]
  GETTABLEKS R41 R39 K65 ["GetFFlagToastNotificationsGamepadSupport"]
  GETTABLEKS R42 R39 K66 ["GetFFlagReenableTextChatForTenFootInterfaces"]
  GETIMPORT R43 K1 [game]
  LOADK R45 K67 ["SaveChatVisibilityUserSettings"]
  LOADB R46 0
  NAMECALL R43 R43 K68 ["DefineFastFlag"]
  CALL R43 3 1
  LOADNIL R44
  LOADNIL R45
  LOADNIL R46
  MOVE R47 R41
  CALL R47 0 1
  JUMPIFNOT R47 [+8]
  GETIMPORT R47 K71 [task.spawn]
  NEWCLOSURE R48 P0
  CAPTURE REF R44
  CAPTURE VAL R2
  CAPTURE REF R45
  CAPTURE REF R46
  CALL R47 1 0
  GETTABLEKS R47 R9 K72 ["strictInterface"]
  DUPTABLE R48 K86 [{"screenSize", "chatVersion", "chatEnabled", "leaderboardEnabled", "emotesEnabled", "backpackEnabled", "respawnEnabled", "leaderboardOpen", "backpackOpen", "emotesOpen", "menuOpen", "setGamepadMenuOpen", "isGamepadMenuOpen"}]
  GETTABLEKS R49 R9 K87 ["Vector2"]
  SETTABLEKS R49 R48 K73 ["screenSize"]
  GETTABLEKS R49 R9 K88 ["optional"]
  GETTABLEKS R50 R9 K89 ["EnumItem"]
  CALL R49 1 1
  SETTABLEKS R49 R48 K74 ["chatVersion"]
  GETTABLEKS R49 R9 K90 ["boolean"]
  SETTABLEKS R49 R48 K75 ["chatEnabled"]
  GETTABLEKS R49 R9 K90 ["boolean"]
  SETTABLEKS R49 R48 K76 ["leaderboardEnabled"]
  GETTABLEKS R49 R9 K90 ["boolean"]
  SETTABLEKS R49 R48 K77 ["emotesEnabled"]
  GETTABLEKS R49 R9 K90 ["boolean"]
  SETTABLEKS R49 R48 K78 ["backpackEnabled"]
  GETTABLEKS R49 R9 K90 ["boolean"]
  SETTABLEKS R49 R48 K79 ["respawnEnabled"]
  GETTABLEKS R49 R9 K90 ["boolean"]
  SETTABLEKS R49 R48 K80 ["leaderboardOpen"]
  GETTABLEKS R49 R9 K90 ["boolean"]
  SETTABLEKS R49 R48 K81 ["backpackOpen"]
  GETTABLEKS R49 R9 K90 ["boolean"]
  SETTABLEKS R49 R48 K82 ["emotesOpen"]
  GETTABLEKS R49 R9 K90 ["boolean"]
  SETTABLEKS R49 R48 K83 ["menuOpen"]
  GETTABLEKS R49 R9 K91 ["callback"]
  SETTABLEKS R49 R48 K84 ["setGamepadMenuOpen"]
  GETTABLEKS R49 R9 K90 ["boolean"]
  SETTABLEKS R49 R48 K85 ["isGamepadMenuOpen"]
  CALL R47 1 1
  SETTABLEKS R47 R38 K92 ["validateProps"]
  NEWCLOSURE R47 P1
  CAPTURE VAL R41
  CAPTURE REF R46
  CAPTURE VAL R38
  CAPTURE VAL R3
  SETTABLEKS R47 R38 K93 ["init"]
  DUPCLOSURE R47 K94 [PROTO_12]
  CAPTURE VAL R25
  CAPTURE VAL R19
  CAPTURE VAL R26
  SETTABLEKS R47 R38 K95 ["openRootMenu"]
  DUPCLOSURE R47 K96 [PROTO_13]
  CAPTURE VAL R19
  SETTABLEKS R47 R38 K97 ["openUnibarMenu"]
  DUPCLOSURE R47 K98 [PROTO_14]
  CAPTURE VAL R19
  SETTABLEKS R47 R38 K99 ["closeUnibarMenu"]
  DUPCLOSURE R47 K100 [PROTO_15]
  CAPTURE VAL R23
  CAPTURE VAL R43
  CAPTURE VAL R28
  SETTABLEKS R47 R38 K101 ["toggleChatVisible"]
  DUPCLOSURE R47 K102 [PROTO_16]
  CAPTURE VAL R42
  CAPTURE VAL R23
  CAPTURE VAL R43
  CAPTURE VAL R28
  SETTABLEKS R47 R38 K103 ["focusChatBar"]
  DUPCLOSURE R47 K104 [PROTO_17]
  CAPTURE VAL R25
  CAPTURE VAL R19
  CAPTURE VAL R24
  SETTABLEKS R47 R38 K105 ["toggleLeaderboard"]
  DUPCLOSURE R47 K106 [PROTO_18]
  CAPTURE VAL R22
  SETTABLEKS R47 R38 K107 ["toggleEmotesMenu"]
  DUPCLOSURE R47 K108 [PROTO_19]
  CAPTURE VAL R21
  SETTABLEKS R47 R38 K109 ["toggleBackpack"]
  DUPCLOSURE R47 K110 [PROTO_20]
  CAPTURE VAL R25
  CAPTURE VAL R19
  CAPTURE VAL R26
  SETTABLEKS R47 R38 K111 ["leaveGame"]
  DUPCLOSURE R47 K112 [PROTO_21]
  CAPTURE VAL R25
  CAPTURE VAL R19
  CAPTURE VAL R26
  SETTABLEKS R47 R38 K113 ["respawnCharacter"]
  DUPCLOSURE R47 K114 [PROTO_22]
  CAPTURE VAL R20
  CAPTURE VAL R5
  SETTABLEKS R47 R38 K115 ["shouldShowChatMenuOption"]
  DUPCLOSURE R47 K116 [PROTO_23]
  CAPTURE VAL R32
  CAPTURE VAL R38
  CAPTURE VAL R42
  CAPTURE VAL R15
  CAPTURE VAL R27
  CAPTURE VAL R33
  CAPTURE VAL R20
  CAPTURE VAL R34
  CAPTURE VAL R35
  SETTABLEKS R47 R38 K117 ["getMenuActionsFromProps"]
  DUPCLOSURE R47 K118 [PROTO_24]
  CAPTURE VAL R38
  CAPTURE VAL R8
  SETTABLEKS R47 R38 K119 ["getDerivedStateFromProps"]
  DUPCLOSURE R47 K120 [PROTO_26]
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R42
  CAPTURE VAL R17
  CAPTURE VAL R13
  CAPTURE VAL R36
  CAPTURE VAL R37
  CAPTURE VAL R40
  CAPTURE VAL R18
  SETTABLEKS R47 R38 K121 ["render"]
  DUPCLOSURE R47 K122 [PROTO_27]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R47 R38 K123 ["didMount"]
  DUPCLOSURE R47 K124 [PROTO_29]
  CAPTURE VAL R1
  CAPTURE VAL R42
  SETTABLEKS R47 R38 K125 ["bindMenuOpenActions"]
  DUPCLOSURE R47 K126 [PROTO_30]
  CAPTURE VAL R1
  CAPTURE VAL R42
  SETTABLEKS R47 R38 K127 ["unbindMenuOpenActions"]
  DUPCLOSURE R47 K128 [PROTO_31]
  CAPTURE VAL R1
  SETTABLEKS R47 R38 K129 ["unbindAllActions"]
  DUPCLOSURE R47 K130 [PROTO_32]
  CAPTURE VAL R3
  CAPTURE VAL R27
  CAPTURE VAL R38
  SETTABLEKS R47 R38 K131 ["didUpdate"]
  DUPCLOSURE R47 K132 [PROTO_33]
  SETTABLEKS R47 R38 K133 ["willUnmount"]
  DUPCLOSURE R47 K134 [PROTO_34]
  CAPTURE VAL R4
  DUPCLOSURE R48 K135 [PROTO_36]
  CAPTURE VAL R31
  GETTABLEKS R49 R7 K136 ["UNSTABLE_connect2"]
  MOVE R50 R47
  MOVE R51 R48
  CALL R49 2 1
  MOVE R50 R38
  CALL R49 1 -1
  CLOSEUPVALS R44
  RETURN R49 -1
