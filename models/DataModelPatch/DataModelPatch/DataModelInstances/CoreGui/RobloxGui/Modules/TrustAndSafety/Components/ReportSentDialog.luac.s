PROTO_0:
  LOADB R1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["participants"]
  JUMPIFNOT R2 [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["participants"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K2 [tostring]
  CALL R4 1 1
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+2]
  GETTABLEKS R1 R2 K3 ["isMutedLocally"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"isBlockCheckBoxSelected", "isMuteCheckBoxSelected"}]
  SETTABLEKS R0 R3 K0 ["isBlockCheckBoxSelected"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R5 0
  NAMECALL R5 R5 K3 ["isVoiceReport"]
  CALL R5 1 1
  JUMPIFNOT R5 [+2]
  LOADB R4 1
  JUMP [+5]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["state"]
  GETTABLEKS R4 R5 K1 ["isMuteCheckBoxSelected"]
  SETTABLEKS R4 R3 K1 ["isMuteCheckBoxSelected"]
  NAMECALL R1 R1 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"isMuteCheckBoxSelected"}]
  SETTABLEKS R0 R3 K0 ["isMuteCheckBoxSelected"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["isMuteCheckBoxSelected"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K2 ["wasPlayerMutedWhenDialogOpened"]
  JUMPIFNOTEQ R1 R2 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_4:
  DUPTABLE R1 K2 [{"title", "description"}]
  GETTABLEKS R2 R0 K3 ["toastDefaultTitle"]
  SETTABLEKS R2 R1 K0 ["title"]
  GETTABLEKS R2 R0 K4 ["toastDefaultDescription"]
  SETTABLEKS R2 R1 K1 ["description"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["state"]
  GETTABLEKS R2 R3 K6 ["isMuteCheckBoxSelected"]
  JUMPIFNOT R2 [+15]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["state"]
  GETTABLEKS R2 R3 K7 ["isBlockCheckBoxSelected"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K8 ["toastMutedAndBlockedTitle"]
  SETTABLEKS R2 R1 K0 ["title"]
  GETTABLEKS R2 R0 K9 ["toastMutedAndBlockedDescription"]
  SETTABLEKS R2 R1 K1 ["description"]
  RETURN R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["state"]
  GETTABLEKS R2 R3 K6 ["isMuteCheckBoxSelected"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K10 ["toastMutedTitle"]
  SETTABLEKS R2 R1 K0 ["title"]
  GETTABLEKS R2 R0 K11 ["toastMutedDescription"]
  SETTABLEKS R2 R1 K1 ["description"]
  RETURN R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["state"]
  GETTABLEKS R2 R3 K7 ["isBlockCheckBoxSelected"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K12 ["toastBlockedTitle"]
  SETTABLEKS R2 R1 K0 ["title"]
  GETTABLEKS R2 R0 K13 ["toastBlockedDescription"]
  SETTABLEKS R2 R1 K1 ["description"]
  RETURN R1 1

PROTO_5:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["isReportingPlayer"]
  CALL R1 1 1
  JUMPIFNOT R1 [+58]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["getToastMessage"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 0
  NAMECALL R2 R2 K2 ["hasMuteChanged"]
  CALL R2 1 1
  JUMPIFNOT R2 [+16]
  GETUPVAL R2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["props"]
  GETTABLEKS R5 R6 K4 ["targetPlayer"]
  GETTABLEKS R4 R5 K5 ["UserId"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["VOICE_CONTEXT_TYPE"]
  GETTABLEKS R5 R6 K7 ["REPORT_MENU"]
  NAMECALL R2 R2 K8 ["ToggleMutePlayer"]
  CALL R2 3 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["state"]
  GETTABLEKS R2 R3 K10 ["isBlockCheckBoxSelected"]
  JUMPIFNOT R2 [+16]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["props"]
  GETTABLEKS R3 R4 K11 ["blockPlayer"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["props"]
  GETTABLEKS R4 R5 K4 ["targetPlayer"]
  GETTABLEKS R5 R1 K12 ["title"]
  GETTABLEKS R6 R1 K13 ["description"]
  CALL R3 3 0
  JUMP [+10]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["props"]
  GETTABLEKS R3 R4 K14 ["showToast"]
  GETTABLEKS R4 R1 K12 ["title"]
  GETTABLEKS R5 R1 K13 ["description"]
  CALL R3 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K15 ["closeDialog"]
  CALL R1 0 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K16 ["clearState"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["closeDialog"]
  CALL R0 0 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["clearState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  NAMECALL R1 R0 K0 ["clearState"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["buttonRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onBlockCheckBoxActivated"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onMuteCheckBoxActivated"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["hasMuteChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["getToastMessage"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K7 ["onConfirm"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onCancel"]
  RETURN R0 0

PROTO_8:
  DUPTABLE R3 K3 [{"wasPlayerMutedWhenDialogOpened", "isMuteCheckBoxSelected", "isBlockCheckBoxSelected"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["wasPlayerMutedWhenDialogOpened"]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["isMuteCheckBoxSelected"]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["isBlockCheckBoxSelected"]
  NAMECALL R1 R0 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  NAMECALL R1 R0 K0 ["isReportingPlayer"]
  CALL R1 1 1
  JUMPIFNOT R1 [+13]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["reportCategory"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["Category"]
  GETTABLEKS R3 R4 K4 ["Voice"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_10:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["isBlockCheckBoxSelected"]
  JUMPIF R1 [+3]
  NAMECALL R1 R0 K2 ["hasMuteChanged"]
  CALL R1 1 1
  RETURN R1 1

PROTO_11:
  LOADB R1 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["reportType"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["ReportType"]
  GETTABLEKS R3 R4 K3 ["Player"]
  JUMPIFNOTEQ R2 R3 [+9]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["targetPlayer"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_12:
  GETIMPORT R2 K3 [Enum.ContextActionResult.Sink]
  RETURN R2 1

PROTO_13:
  GETUPVAL R0 0
  LOADK R2 K0 ["ReportSentDialogGroup"]
  NAMECALL R0 R0 K1 ["RemoveSelectionGroup"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADK R2 K0 ["ReportSentDialogGroup"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["buttonRef"]
  NAMECALL R3 R3 K3 ["getValue"]
  CALL R3 1 -1
  NAMECALL R0 R0 K4 ["AddSelectionParent"]
  CALL R0 -1 0
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["buttonRef"]
  NAMECALL R1 R1 K3 ["getValue"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["SelectedCoreObject"]
  GETUPVAL R0 2
  LOADK R2 K6 ["ReporSentDialogSinkAction"]
  DUPCLOSURE R3 K7 [PROTO_12]
  LOADB R4 0
  GETIMPORT R5 K11 [Enum.KeyCode.ButtonB]
  GETIMPORT R6 K13 [Enum.KeyCode.ButtonY]
  GETIMPORT R7 K15 [Enum.KeyCode.ButtonX]
  NAMECALL R0 R0 K16 ["BindCoreAction"]
  CALL R0 7 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  LOADK R2 K0 ["ReporSentDialogSinkAction"]
  NAMECALL R0 R0 K1 ["UnbindCoreAction"]
  CALL R0 2 0
  GETUPVAL R0 1
  LOADK R2 K2 ["ReportSentDialogGroup"]
  NAMECALL R0 R0 K3 ["RemoveSelectionGroup"]
  CALL R0 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K4 [{"isFocused", "didFocus", "didBlur"}]
  LOADB R4 0
  GETTABLEKS R6 R0 K5 ["props"]
  GETTABLEKS R5 R6 K6 ["inputType"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K7 ["InputType"]
  GETTABLEKS R6 R7 K8 ["Gamepad"]
  JUMPIFNOTEQ R5 R6 [+5]
  GETTABLEKS R5 R0 K5 ["props"]
  GETTABLEKS R4 R5 K9 ["isReportSentOpen"]
  SETTABLEKS R4 R3 K1 ["isFocused"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K2 ["didFocus"]
  DUPCLOSURE R4 K10 [PROTO_14]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U3
  SETTABLEKS R4 R3 K3 ["didBlur"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K5 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K2 ["BackgroundTransparency"]
  LOADN R4 2
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  GETIMPORT R4 K8 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K4 ["Size"]
  DUPTABLE R4 K13 [{"Layout", "Divider", "MutePlayerItem", "BlockPlayerItem"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K14 ["UIListLayout"]
  DUPTABLE R7 K18 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R8 K21 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K15 ["FillDirection"]
  GETIMPORT R8 K23 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K16 ["HorizontalAlignment"]
  GETIMPORT R8 K24 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R8 R7 K17 ["SortOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["Layout"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K25 [{"LayoutOrder", "Size"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  CALL R8 4 1
  SETTABLEKS R8 R7 K4 ["Size"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["Divider"]
  GETUPVAL R6 2
  NAMECALL R6 R6 K26 ["isVoiceReport"]
  CALL R6 1 1
  JUMPIFNOT R6 [+64]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K36 [{"layoutOrder", "size", "text", "description", "icon", "iconSize", "isDisabled", "isCheckBoxSelected", "onCheckBoxActivated"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K27 ["layoutOrder"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 72
  CALL R8 4 1
  SETTABLEKS R8 R7 K28 ["size"]
  GETTABLEKS R8 R0 K37 ["mutePlayerText"]
  SETTABLEKS R8 R7 K29 ["text"]
  GETTABLEKS R8 R0 K38 ["mutePlayerDescription"]
  SETTABLEKS R8 R7 K30 ["description"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K39 ["Images"]
  GETTABLEKS R9 R10 K40 ["MuteIcon"]
  GETTABLEKS R8 R9 K41 ["Image"]
  SETTABLEKS R8 R7 K31 ["icon"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K39 ["Images"]
  GETTABLEKS R9 R10 K40 ["MuteIcon"]
  GETTABLEKS R8 R9 K4 ["Size"]
  SETTABLEKS R8 R7 K32 ["iconSize"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K42 ["state"]
  GETTABLEKS R8 R9 K43 ["isBlockCheckBoxSelected"]
  SETTABLEKS R8 R7 K33 ["isDisabled"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K42 ["state"]
  GETTABLEKS R8 R9 K44 ["isMuteCheckBoxSelected"]
  SETTABLEKS R8 R7 K34 ["isCheckBoxSelected"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K45 ["onMuteCheckBoxActivated"]
  SETTABLEKS R8 R7 K35 ["onCheckBoxActivated"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K11 ["MutePlayerItem"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K46 [{"layoutOrder", "size", "text", "description", "icon", "iconSize", "isCheckBoxSelected", "onCheckBoxActivated"}]
  LOADN R8 3
  SETTABLEKS R8 R7 K27 ["layoutOrder"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 72
  CALL R8 4 1
  SETTABLEKS R8 R7 K28 ["size"]
  GETTABLEKS R8 R0 K47 ["blockPlayerText"]
  SETTABLEKS R8 R7 K29 ["text"]
  GETTABLEKS R8 R0 K48 ["blockPlayerDescription"]
  SETTABLEKS R8 R7 K30 ["description"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K39 ["Images"]
  GETTABLEKS R9 R10 K49 ["BlockIcon"]
  GETTABLEKS R8 R9 K41 ["Image"]
  SETTABLEKS R8 R7 K31 ["icon"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K39 ["Images"]
  GETTABLEKS R9 R10 K49 ["BlockIcon"]
  GETTABLEKS R8 R9 K4 ["Size"]
  SETTABLEKS R8 R7 K32 ["iconSize"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K42 ["state"]
  GETTABLEKS R8 R9 K43 ["isBlockCheckBoxSelected"]
  SETTABLEKS R8 R7 K34 ["isCheckBoxSelected"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K50 ["onBlockCheckBoxActivated"]
  SETTABLEKS R8 R7 K35 ["onCheckBoxActivated"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["BlockPlayerItem"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_17:
  NAMECALL R1 R0 K0 ["isReportingPlayer"]
  CALL R1 1 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R1 0
  DUPTABLE R2 K5 [{"mutePlayerText", "mutePlayerDescription", "blockPlayerText", "blockPlayerDescription"}]
  LOADK R3 K6 ["CoreScripts.InGameMenu.Report.Mute"]
  SETTABLEKS R3 R2 K1 ["mutePlayerText"]
  LOADK R3 K7 ["CoreScripts.InGameMenu.Report.MuteDescription"]
  SETTABLEKS R3 R2 K2 ["mutePlayerDescription"]
  LOADK R3 K8 ["CoreScripts.InGameMenu.Report.Block"]
  SETTABLEKS R3 R2 K3 ["blockPlayerText"]
  LOADK R3 K9 ["CoreScripts.InGameMenu.Report.BlockDescription"]
  SETTABLEKS R3 R2 K4 ["blockPlayerDescription"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 1 -1
  RETURN R1 -1

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K4 [{"BackgroundTransparency", "Size"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K2 ["BackgroundTransparency"]
  GETIMPORT R4 K7 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K3 ["Size"]
  DUPTABLE R4 K11 [{"Layout", "BodyFrame", "BlockFrame"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K12 ["UIListLayout"]
  DUPTABLE R7 K16 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R8 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K13 ["FillDirection"]
  GETIMPORT R8 K21 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R8 R7 K14 ["HorizontalAlignment"]
  GETIMPORT R8 K23 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R8 R7 K15 ["SortOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Layout"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K1 ["Frame"]
  DUPTABLE R7 K25 [{"BackgroundTransparency", "AutomaticSize", "Size", "LayoutOrder"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K2 ["BackgroundTransparency"]
  GETIMPORT R8 K27 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K24 ["AutomaticSize"]
  GETIMPORT R8 K7 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K3 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K22 ["LayoutOrder"]
  DUPTABLE R8 K31 [{"Layout", "Padding", "BodyText", "OtherStepsText"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K12 ["UIListLayout"]
  DUPTABLE R11 K32 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R12 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K13 ["FillDirection"]
  GETIMPORT R12 K21 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K14 ["HorizontalAlignment"]
  GETIMPORT R12 K23 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K15 ["SortOrder"]
  GETIMPORT R12 K34 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["Padding"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K8 ["Layout"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K35 ["UIPadding"]
  DUPTABLE R11 K40 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R12 K34 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K36 ["PaddingTop"]
  GETIMPORT R12 K34 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K37 ["PaddingBottom"]
  GETIMPORT R12 K34 [UDim.new]
  LOADN R13 0
  LOADN R14 24
  CALL R12 2 1
  SETTABLEKS R12 R11 K38 ["PaddingLeft"]
  GETIMPORT R12 K34 [UDim.new]
  LOADN R13 0
  LOADN R14 24
  CALL R12 2 1
  SETTABLEKS R12 R11 K39 ["PaddingRight"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K28 ["Padding"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K45 [{"LayoutOrder", "AutomaticSize", "Size", "themeKey", "Text", "TextWrapped", "TextXAlignment"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K22 ["LayoutOrder"]
  GETIMPORT R12 K47 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K24 ["AutomaticSize"]
  GETIMPORT R12 K7 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K3 ["Size"]
  LOADK R12 K48 ["TextEmphasis"]
  SETTABLEKS R12 R11 K41 ["themeKey"]
  GETTABLEKS R12 R0 K49 ["bodyText"]
  SETTABLEKS R12 R11 K42 ["Text"]
  LOADB R12 1
  SETTABLEKS R12 R11 K43 ["TextWrapped"]
  GETIMPORT R12 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K44 ["TextXAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K29 ["BodyText"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K54 [{"LayoutOrder", "AutomaticSize", "Position", "Size", "fontKey", "themeKey", "Text", "TextWrapped", "TextXAlignment"}]
  LOADN R12 2
  SETTABLEKS R12 R11 K22 ["LayoutOrder"]
  GETIMPORT R12 K47 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K24 ["AutomaticSize"]
  GETIMPORT R12 K7 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 12
  CALL R12 4 1
  SETTABLEKS R12 R11 K52 ["Position"]
  GETIMPORT R12 K7 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K3 ["Size"]
  LOADK R12 K55 ["Footer"]
  SETTABLEKS R12 R11 K53 ["fontKey"]
  LOADK R12 K56 ["TextDefault"]
  SETTABLEKS R12 R11 K41 ["themeKey"]
  GETTABLEKS R12 R0 K57 ["otherStepsText"]
  SETTABLEKS R12 R11 K42 ["Text"]
  LOADB R12 1
  SETTABLEKS R12 R11 K43 ["TextWrapped"]
  GETIMPORT R12 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K44 ["TextXAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K30 ["OtherStepsText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K9 ["BodyFrame"]
  GETUPVAL R5 2
  NAMECALL R5 R5 K58 ["renderBlockFrame"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K10 ["BlockFrame"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_19:
  GETUPVAL R1 0
  DUPTABLE R2 K2 [{"bodyText", "otherStepsText"}]
  LOADK R3 K3 ["CoreScripts.InGameMenu.Report.ThanksForReportDescription"]
  SETTABLEKS R3 R2 K0 ["bodyText"]
  NEWTABLE R3 1 1
  LOADK R4 K4 ["CoreScripts.InGameMenu.Report.OtherStepsTitle"]
  SETLIST R3 R4 1 [1]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["props"]
  GETTABLEKS R6 R7 K6 ["targetPlayer"]
  GETTABLEKS R5 R6 K7 ["Name"]
  SETTABLEKS R5 R3 K8 ["RBX_NAME"]
  SETTABLEKS R3 R2 K1 ["otherStepsText"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CALL R1 1 -1
  RETURN R1 -1

PROTO_20:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1

PROTO_21:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onConfirm"]
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K3 [{"ModalDialog", "FocusHandler"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K11 [{"visible", "screenSize", "titleText", "contents", "actionButtons", "onDismiss"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K12 ["props"]
  GETTABLEKS R6 R7 K13 ["isReportSentOpen"]
  SETTABLEKS R6 R5 K5 ["visible"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K12 ["props"]
  GETTABLEKS R6 R7 K6 ["screenSize"]
  SETTABLEKS R6 R5 K6 ["screenSize"]
  GETTABLEKS R6 R0 K7 ["titleText"]
  SETTABLEKS R6 R5 K7 ["titleText"]
  GETUPVAL R6 2
  NAMECALL R6 R6 K14 ["renderContents"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K8 ["contents"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R7 3
  NEWTABLE R8 8 0
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K15 ["PrimarySystem"]
  SETTABLEKS R9 R8 K16 ["buttonType"]
  GETIMPORT R9 K19 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K20 ["size"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K21 ["onActivated"]
  GETTABLEKS R9 R0 K22 ["dismissText"]
  SETTABLEKS R9 R8 K23 ["text"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K24 ["Ref"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K25 ["buttonRef"]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["actionButtons"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K26 ["onCancel"]
  SETTABLEKS R6 R5 K10 ["onDismiss"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["ModalDialog"]
  GETUPVAL R3 2
  NAMECALL R3 R3 K27 ["renderFocusHandler"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["FocusHandler"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_23:
  NAMECALL R1 R0 K0 ["isReportingPlayer"]
  CALL R1 1 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R1 0
  DUPTABLE R2 K11 [{"titleText", "dismissText", "toastDefaultTitle", "toastDefaultDescription", "toastMutedTitle", "toastMutedDescription", "toastMutedAndBlockedTitle", "toastMutedAndBlockedDescription", "toastBlockedTitle", "toastBlockedDescription"}]
  LOADK R3 K12 ["CoreScripts.InGameMenu.Report.ThanksForReport"]
  SETTABLEKS R3 R2 K1 ["titleText"]
  NAMECALL R4 R0 K13 ["doesRequireConfirmation"]
  CALL R4 1 1
  JUMPIFNOT R4 [+2]
  LOADK R3 K14 ["CoreScripts.InGameMenu.Report.Confirm"]
  JUMP [+1]
  LOADK R3 K15 ["CoreScripts.InGameMenu.Report.Done"]
  SETTABLEKS R3 R2 K2 ["dismissText"]
  LOADK R3 K16 ["CoreScripts.InGameMenu.Report.Confirmation.ThanksForReport"]
  SETTABLEKS R3 R2 K3 ["toastDefaultTitle"]
  LOADK R3 K17 ["CoreScripts.InGameMenu.Report.Confirmation.ThanksForReportDescription"]
  SETTABLEKS R3 R2 K4 ["toastDefaultDescription"]
  LOADK R3 K18 ["CoreScripts.InGameMenu.Report.Confirmation.Muted"]
  SETTABLEKS R3 R2 K5 ["toastMutedTitle"]
  NEWTABLE R3 1 1
  LOADK R4 K19 ["CoreScripts.InGameMenu.Report.Confirmation.MutedDescriptionWithUser"]
  SETLIST R3 R4 1 [1]
  GETTABLEKS R7 R0 K20 ["props"]
  GETTABLEKS R6 R7 K21 ["targetPlayer"]
  GETTABLEKS R5 R6 K22 ["Name"]
  SETTABLEKS R5 R3 K23 ["RBX_NAME"]
  SETTABLEKS R3 R2 K6 ["toastMutedDescription"]
  LOADK R3 K24 ["CoreScripts.InGameMenu.Report.Confirmation.MutedAndBlocked"]
  SETTABLEKS R3 R2 K7 ["toastMutedAndBlockedTitle"]
  NEWTABLE R3 1 1
  LOADK R4 K25 ["CoreScripts.InGameMenu.Report.Confirmation.MutedAndBlockedDescriptionWithUser"]
  SETLIST R3 R4 1 [1]
  GETTABLEKS R7 R0 K20 ["props"]
  GETTABLEKS R6 R7 K21 ["targetPlayer"]
  GETTABLEKS R5 R6 K22 ["Name"]
  SETTABLEKS R5 R3 K23 ["RBX_NAME"]
  SETTABLEKS R3 R2 K8 ["toastMutedAndBlockedDescription"]
  LOADK R3 K26 ["CoreScripts.InGameMenu.Report.Confirmation.Blocked"]
  SETTABLEKS R3 R2 K9 ["toastBlockedTitle"]
  NEWTABLE R3 1 1
  LOADK R4 K25 ["CoreScripts.InGameMenu.Report.Confirmation.MutedAndBlockedDescriptionWithUser"]
  SETLIST R3 R4 1 [1]
  GETTABLEKS R7 R0 K20 ["props"]
  GETTABLEKS R6 R7 K21 ["targetPlayer"]
  GETTABLEKS R5 R6 K22 ["Name"]
  SETTABLEKS R5 R3 K23 ["RBX_NAME"]
  SETTABLEKS R3 R2 K10 ["toastBlockedDescription"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 1 -1
  RETURN R1 -1

PROTO_24:
  GETTABLEKS R3 R1 K0 ["isReportSentOpen"]
  JUMPIF R3 [+26]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K0 ["isReportSentOpen"]
  JUMPIFNOT R3 [+21]
  NAMECALL R3 R0 K2 ["isVoiceReport"]
  CALL R3 1 1
  JUMPIFNOT R3 [+17]
  GETGLOBAL R3 K3 ["isPlayerUserIdMuted"]
  GETTABLEKS R6 R0 K1 ["props"]
  GETTABLEKS R5 R6 K4 ["targetPlayer"]
  GETTABLEKS R4 R5 K5 ["UserId"]
  CALL R3 1 1
  DUPTABLE R6 K8 [{"wasPlayerMutedWhenDialogOpened", "isMuteCheckBoxSelected"}]
  SETTABLEKS R3 R6 K6 ["wasPlayerMutedWhenDialogOpened"]
  SETTABLEKS R3 R6 K7 ["isMuteCheckBoxSelected"]
  NAMECALL R4 R0 K9 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_25:
  DUPTABLE R2 K5 [{"isReportSentOpen", "reportType", "targetPlayer", "screenSize", "reportCategory"}]
  GETTABLEKS R5 R0 K6 ["report"]
  GETTABLEKS R4 R5 K7 ["currentPage"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["Page"]
  GETTABLEKS R5 R6 K9 ["ReportSent"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isReportSentOpen"]
  GETTABLEKS R4 R0 K6 ["report"]
  GETTABLEKS R3 R4 K1 ["reportType"]
  SETTABLEKS R3 R2 K1 ["reportType"]
  GETTABLEKS R4 R0 K6 ["report"]
  GETTABLEKS R3 R4 K2 ["targetPlayer"]
  SETTABLEKS R3 R2 K2 ["targetPlayer"]
  GETTABLEKS R4 R0 K10 ["displayOptions"]
  GETTABLEKS R3 R4 K3 ["screenSize"]
  SETTABLEKS R3 R2 K3 ["screenSize"]
  GETTABLEKS R4 R0 K6 ["report"]
  GETTABLEKS R3 R4 K4 ["reportCategory"]
  SETTABLEKS R3 R2 K4 ["reportCategory"]
  RETURN R2 1

PROTO_26:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_28:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_29:
  DUPTABLE R1 K3 [{"closeDialog", "blockPlayer", "showToast"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["closeDialog"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["blockPlayer"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["showToast"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContextActionService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["GuiService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CoreGui"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  LOADK R6 K7 ["RobloxGui"]
  NAMECALL R4 R3 K8 ["WaitForChild"]
  CALL R4 2 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R1 K11 ["Packages"]
  GETTABLEKS R6 R7 K12 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R1 K11 ["Packages"]
  GETTABLEKS R7 R8 K13 ["RoactRodux"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R9 R1 K11 ["Packages"]
  GETTABLEKS R8 R9 K14 ["UIBlox"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R10 R1 K11 ["Packages"]
  GETTABLEKS R9 R10 K15 ["t"]
  CALL R8 1 1
  GETTABLEKS R11 R7 K16 ["Core"]
  GETTABLEKS R10 R11 K17 ["Style"]
  GETTABLEKS R9 R10 K18 ["withStyle"]
  GETIMPORT R11 K10 [require]
  GETTABLEKS R14 R4 K19 ["Modules"]
  GETTABLEKS R13 R14 K20 ["VoiceChat"]
  GETTABLEKS R12 R13 K21 ["VoiceChatServiceManager"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K22 ["default"]
  GETIMPORT R13 K24 [script]
  GETTABLEKS R12 R13 K25 ["Parent"]
  GETTABLEKS R11 R12 K25 ["Parent"]
  GETIMPORT R12 K10 [require]
  GETTABLEKS R13 R11 K26 ["Dependencies"]
  CALL R12 1 1
  GETIMPORT R13 K10 [require]
  GETTABLEKS R14 R12 K27 ["FocusHandler"]
  CALL R13 1 1
  GETIMPORT R14 K10 [require]
  GETTABLEKS R15 R12 K28 ["playerInterface"]
  CALL R14 1 1
  GETIMPORT R15 K10 [require]
  GETTABLEKS R16 R12 K29 ["Divider"]
  CALL R15 1 1
  GETIMPORT R16 K10 [require]
  GETTABLEKS R17 R12 K30 ["ThemedTextLabel"]
  CALL R16 1 1
  GETIMPORT R17 K10 [require]
  GETTABLEKS R18 R12 K31 ["withLocalization"]
  CALL R17 1 1
  GETTABLEKS R20 R7 K32 ["App"]
  GETTABLEKS R19 R20 K33 ["Button"]
  GETTABLEKS R18 R19 K33 ["Button"]
  GETTABLEKS R22 R7 K32 ["App"]
  GETTABLEKS R21 R22 K33 ["Button"]
  GETTABLEKS R20 R21 K34 ["Enum"]
  GETTABLEKS R19 R20 K35 ["ButtonType"]
  GETIMPORT R20 K10 [require]
  GETTABLEKS R22 R11 K36 ["Thunks"]
  GETTABLEKS R21 R22 K37 ["BlockPlayer"]
  CALL R20 1 1
  GETIMPORT R21 K10 [require]
  GETTABLEKS R23 R11 K38 ["Components"]
  GETTABLEKS R22 R23 K39 ["BlockPlayerItem"]
  CALL R21 1 1
  GETIMPORT R22 K10 [require]
  GETTABLEKS R24 R11 K40 ["Actions"]
  GETTABLEKS R23 R24 K41 ["EndReportFlow"]
  CALL R22 1 1
  GETIMPORT R23 K10 [require]
  GETTABLEKS R25 R11 K40 ["Actions"]
  GETTABLEKS R24 R25 K42 ["OpenBlockPlayerDialog"]
  CALL R23 1 1
  GETIMPORT R24 K10 [require]
  GETTABLEKS R26 R11 K40 ["Actions"]
  GETTABLEKS R25 R26 K43 ["ShowToast"]
  CALL R24 1 1
  GETIMPORT R25 K10 [require]
  GETTABLEKS R27 R11 K44 ["Resources"]
  GETTABLEKS R26 R27 K45 ["Constants"]
  CALL R25 1 1
  GETIMPORT R26 K10 [require]
  GETTABLEKS R28 R11 K44 ["Resources"]
  GETTABLEKS R27 R28 K46 ["Assets"]
  CALL R26 1 1
  GETIMPORT R27 K10 [require]
  GETTABLEKS R29 R11 K38 ["Components"]
  GETTABLEKS R28 R29 K47 ["ModalDialog"]
  CALL R27 1 1
  GETIMPORT R28 K10 [require]
  GETTABLEKS R31 R4 K19 ["Modules"]
  GETTABLEKS R30 R31 K20 ["VoiceChat"]
  GETTABLEKS R29 R30 K45 ["Constants"]
  CALL R28 1 1
  GETTABLEKS R29 R5 K48 ["PureComponent"]
  LOADK R31 K49 ["ReportSentDialog"]
  NAMECALL R29 R29 K50 ["extend"]
  CALL R29 2 1
  GETTABLEKS R30 R8 K51 ["strictInterface"]
  DUPTABLE R31 K61 [{"isReportSentOpen", "screenSize", "inputType", "reportType", "targetPlayer", "blockPlayer", "showToast", "closeDialog", "reportCategory"}]
  GETTABLEKS R32 R8 K62 ["boolean"]
  SETTABLEKS R32 R31 K52 ["isReportSentOpen"]
  GETTABLEKS R32 R8 K63 ["Vector2"]
  SETTABLEKS R32 R31 K53 ["screenSize"]
  GETTABLEKS R32 R8 K64 ["optional"]
  GETTABLEKS R33 R8 K65 ["string"]
  CALL R32 1 1
  SETTABLEKS R32 R31 K54 ["inputType"]
  GETTABLEKS R32 R8 K64 ["optional"]
  GETTABLEKS R33 R8 K66 ["valueOf"]
  GETTABLEKS R34 R25 K67 ["ReportType"]
  CALL R33 1 -1
  CALL R32 -1 1
  SETTABLEKS R32 R31 K55 ["reportType"]
  GETTABLEKS R32 R8 K64 ["optional"]
  MOVE R33 R14
  CALL R32 1 1
  SETTABLEKS R32 R31 K56 ["targetPlayer"]
  GETTABLEKS R32 R8 K68 ["callback"]
  SETTABLEKS R32 R31 K57 ["blockPlayer"]
  GETTABLEKS R32 R8 K68 ["callback"]
  SETTABLEKS R32 R31 K58 ["showToast"]
  GETTABLEKS R32 R8 K68 ["callback"]
  SETTABLEKS R32 R31 K59 ["closeDialog"]
  GETTABLEKS R32 R8 K64 ["optional"]
  GETTABLEKS R33 R8 K65 ["string"]
  CALL R32 1 1
  SETTABLEKS R32 R31 K60 ["reportCategory"]
  CALL R30 1 1
  SETTABLEKS R30 R29 K69 ["validateProps"]
  DUPCLOSURE R30 K70 [PROTO_0]
  CAPTURE VAL R10
  SETGLOBAL R30 K71 ["isPlayerUserIdMuted"]
  DUPCLOSURE R30 K72 [PROTO_7]
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R28
  SETTABLEKS R30 R29 K73 ["init"]
  DUPCLOSURE R30 K74 [PROTO_8]
  SETTABLEKS R30 R29 K75 ["clearState"]
  DUPCLOSURE R30 K76 [PROTO_9]
  CAPTURE VAL R25
  SETTABLEKS R30 R29 K77 ["isVoiceReport"]
  DUPCLOSURE R30 K78 [PROTO_10]
  SETTABLEKS R30 R29 K79 ["doesRequireConfirmation"]
  DUPCLOSURE R30 K80 [PROTO_11]
  CAPTURE VAL R25
  SETTABLEKS R30 R29 K81 ["isReportingPlayer"]
  DUPCLOSURE R30 K82 [PROTO_15]
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R25
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R30 R29 K83 ["renderFocusHandler"]
  DUPCLOSURE R30 K84 [PROTO_17]
  CAPTURE VAL R17
  CAPTURE VAL R5
  CAPTURE VAL R15
  CAPTURE VAL R21
  CAPTURE VAL R26
  SETTABLEKS R30 R29 K85 ["renderBlockFrame"]
  DUPCLOSURE R30 K86 [PROTO_20]
  CAPTURE VAL R9
  CAPTURE VAL R17
  CAPTURE VAL R5
  CAPTURE VAL R16
  SETTABLEKS R30 R29 K87 ["renderContents"]
  DUPCLOSURE R30 K88 [PROTO_23]
  CAPTURE VAL R17
  CAPTURE VAL R5
  CAPTURE VAL R27
  CAPTURE VAL R18
  CAPTURE VAL R19
  SETTABLEKS R30 R29 K89 ["render"]
  DUPCLOSURE R30 K90 [PROTO_24]
  SETTABLEKS R30 R29 K91 ["didUpdate"]
  GETTABLEKS R30 R6 K92 ["UNSTABLE_connect2"]
  DUPCLOSURE R31 K93 [PROTO_25]
  CAPTURE VAL R25
  DUPCLOSURE R32 K94 [PROTO_29]
  CAPTURE VAL R22
  CAPTURE VAL R20
  CAPTURE VAL R24
  CALL R30 2 1
  MOVE R31 R29
  CALL R30 1 -1
  RETURN R30 -1
