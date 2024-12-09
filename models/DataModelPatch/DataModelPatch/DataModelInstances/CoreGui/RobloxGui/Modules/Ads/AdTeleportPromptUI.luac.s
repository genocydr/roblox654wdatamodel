PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"screenSize"}]
  GETIMPORT R6 K3 [game]
  GETTABLEKS R5 R6 K4 ["Workspace"]
  GETTABLEKS R4 R5 K5 ["CurrentCamera"]
  GETTABLEKS R3 R4 K6 ["ViewportSize"]
  SETTABLEKS R3 R2 K0 ["screenSize"]
  NAMECALL R0 R0 K7 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K1 [{"screenSize"}]
  GETIMPORT R5 K3 [game]
  GETTABLEKS R4 R5 K4 ["Workspace"]
  GETTABLEKS R3 R4 K5 ["CurrentCamera"]
  GETTABLEKS R2 R3 K6 ["ViewportSize"]
  SETTABLEKS R2 R1 K0 ["screenSize"]
  SETTABLEKS R1 R0 K7 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["updateViewport"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["handler"]
  NAMECALL R0 R0 K2 ["onHeartbeat"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["handler"]
  NAMECALL R0 R0 K2 ["focusIfGamepad"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R6 K1 [game]
  GETTABLEKS R5 R6 K2 ["Workspace"]
  GETTABLEKS R4 R5 K3 ["CurrentCamera"]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["Appeasing the type checking"]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["createFragment"]
  DUPTABLE R3 K12 [{"InteractiveAlert", "HeartbeatConnection", "GamepadFocusConnection", "viewportSizeListener"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K19 [{"screenSize", "title", "bodyText", "buttonStackInfo", "onAbsoluteSizeChanged"}]
  GETTABLEKS R8 R0 K20 ["state"]
  GETTABLEKS R7 R8 K14 ["screenSize"]
  SETTABLEKS R7 R6 K14 ["screenSize"]
  NAMECALL R7 R0 K21 ["generateTitle"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K15 ["title"]
  NAMECALL R7 R0 K22 ["shouldGenerateBody"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K16 ["bodyText"]
  DUPTABLE R7 K24 [{"buttons"}]
  NAMECALL R8 R0 K25 ["generateButtons"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K23 ["buttons"]
  SETTABLEKS R7 R6 K17 ["buttonStackInfo"]
  GETTABLEKS R8 R0 K26 ["props"]
  GETTABLEKS R7 R8 K18 ["onAbsoluteSizeChanged"]
  SETTABLEKS R7 R6 K18 ["onAbsoluteSizeChanged"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K8 ["InteractiveAlert"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K29 [{"event", "callback"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K30 ["Heartbeat"]
  SETTABLEKS R7 R6 K27 ["event"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K28 ["callback"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["HeartbeatConnection"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K29 [{"event", "callback"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K31 ["LastInputTypeChanged"]
  SETTABLEKS R7 R6 K27 ["event"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K28 ["callback"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K10 ["GamepadFocusConnection"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K29 [{"event", "callback"}]
  GETIMPORT R9 K1 [game]
  GETTABLEKS R8 R9 K2 ["Workspace"]
  GETTABLEKS R7 R8 K3 ["CurrentCamera"]
  LOADK R9 K32 ["ViewportSize"]
  NAMECALL R7 R7 K33 ["GetPropertyChangedSignal"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K27 ["event"]
  GETTABLEKS R7 R0 K34 ["updateViewport"]
  SETTABLEKS R7 R6 K28 ["callback"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K11 ["viewportSizeListener"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderWithStyle"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_6:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["handler"]
  NAMECALL R0 R0 K2 ["acceptPrompt"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["handler"]
  NAMECALL R0 R0 K2 ["rejectButton"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  LOADK R3 K0 ["CoreScripts.Ads.Action.PortalPromptAccept"]
  NAMECALL R1 R1 K1 ["FormatByKey"]
  CALL R1 2 1
  GETUPVAL R2 0
  LOADK R4 K2 ["CoreScripts.Ads.Action.PortalPromptCancel"]
  NAMECALL R2 R2 K1 ["FormatByKey"]
  CALL R2 2 1
  DUPTABLE R3 K6 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["PrimarySystem"]
  SETTABLEKS R4 R3 K3 ["buttonType"]
  DUPTABLE R4 K10 [{"onActivated", "text"}]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K8 ["onActivated"]
  SETTABLEKS R1 R4 K9 ["text"]
  SETTABLEKS R4 R3 K4 ["props"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["isDefaultChild"]
  DUPTABLE R4 K11 [{"props"}]
  DUPTABLE R5 K10 [{"onActivated", "text"}]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K8 ["onActivated"]
  SETTABLEKS R2 R5 K9 ["text"]
  SETTABLEKS R5 R4 K4 ["props"]
  GETTABLEKS R6 R0 K4 ["props"]
  GETTABLEKS R5 R6 K12 ["shouldRenderCancelButton"]
  JUMPIFNOT R5 [+7]
  NEWTABLE R5 0 2
  MOVE R6 R4
  MOVE R7 R3
  SETLIST R5 R6 2 [1]
  RETURN R5 1
  NEWTABLE R5 0 1
  MOVE R6 R3
  SETLIST R5 R6 1 [1]
  RETURN R5 1

PROTO_10:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["shouldRenderCancelButton"]
  JUMPIFNOT R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R1 0
  LOADK R3 K2 ["CoreScripts.Ads.Label.PortalPromptDismissWalkAway"]
  NAMECALL R1 R1 K3 ["FormatByKey"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_11:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["experienceName"]
  JUMPIFNOT R1 [+13]
  GETUPVAL R1 0
  LOADK R3 K2 ["CoreScripts.Ads.Label.PortalPromptTeleportToWithName"]
  DUPTABLE R4 K4 [{"RBX_NAME"}]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["experienceName"]
  SETTABLEKS R5 R4 K3 ["RBX_NAME"]
  NAMECALL R1 R1 K5 ["FormatByKey"]
  CALL R1 3 -1
  RETURN R1 -1
  GETUPVAL R1 0
  LOADK R3 K6 ["CoreScripts.Ads.Label.PortalPromptTeleportToWithoutName"]
  NAMECALL R1 R1 K5 ["FormatByKey"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RunService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R5 K6 ["RobloxGui"]
  NAMECALL R3 R0 K7 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K10 ["Packages"]
  GETTABLEKS R6 R7 K12 ["UIBlox"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R3 K13 ["Modules"]
  GETTABLEKS R7 R8 K14 ["RobloxTranslator"]
  CALL R6 1 1
  GETTABLEKS R10 R5 K15 ["App"]
  GETTABLEKS R9 R10 K16 ["Button"]
  GETTABLEKS R8 R9 K17 ["Enum"]
  GETTABLEKS R7 R8 K18 ["ButtonType"]
  GETTABLEKS R9 R5 K19 ["Utility"]
  GETTABLEKS R8 R9 K20 ["ExternalEventConnection"]
  GETTABLEKS R12 R5 K15 ["App"]
  GETTABLEKS R11 R12 K21 ["Dialog"]
  GETTABLEKS R10 R11 K22 ["Alert"]
  GETTABLEKS R9 R10 K23 ["InteractiveAlert"]
  GETTABLEKS R12 R5 K24 ["Core"]
  GETTABLEKS R11 R12 K25 ["Style"]
  GETTABLEKS R10 R11 K26 ["withStyle"]
  GETIMPORT R11 K1 [game]
  LOADK R13 K27 ["UserInputService"]
  NAMECALL R11 R11 K3 ["GetService"]
  CALL R11 2 1
  GETTABLEKS R12 R4 K28 ["Component"]
  LOADK R14 K23 ["InteractiveAlert"]
  NAMECALL R12 R12 K29 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K30 [PROTO_1]
  SETTABLEKS R13 R12 K31 ["init"]
  DUPCLOSURE R13 K32 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R11
  SETTABLEKS R13 R12 K33 ["renderWithStyle"]
  DUPCLOSURE R13 K34 [PROTO_6]
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K35 ["render"]
  DUPCLOSURE R13 K36 [PROTO_9]
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K37 ["generateButtons"]
  DUPCLOSURE R13 K38 [PROTO_10]
  CAPTURE VAL R6
  SETTABLEKS R13 R12 K39 ["shouldGenerateBody"]
  DUPCLOSURE R13 K40 [PROTO_11]
  CAPTURE VAL R6
  SETTABLEKS R13 R12 K41 ["generateTitle"]
  RETURN R12 1
