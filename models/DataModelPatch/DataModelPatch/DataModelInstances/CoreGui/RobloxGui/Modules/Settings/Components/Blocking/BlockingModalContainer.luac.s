PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["blockingUtility"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["player"]
  NAMECALL R0 R0 K3 ["BlockPlayerAsync"]
  CALL R0 2 1
  JUMPIFNOT R0 [+27]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K4 ["analytics"]
  LOADK R3 K5 ["SettingsHub"]
  LOADK R4 K6 ["blockUser"]
  DUPTABLE R5 K9 [{"blockeeUserId", "source"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K2 ["player"]
  GETTABLEKS R6 R7 K10 ["UserId"]
  SETTABLEKS R6 R5 K7 ["blockeeUserId"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K8 ["source"]
  SETTABLEKS R6 R5 K8 ["source"]
  NAMECALL R1 R1 K11 ["action"]
  CALL R1 4 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K12 ["closeModal"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"screenSize"}]
  GETIMPORT R4 K4 [Vector2.new]
  GETTABLEKS R5 R0 K5 ["X"]
  GETTABLEKS R6 R0 K6 ["Y"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K0 ["screenSize"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"screenSize"}]
  GETIMPORT R2 K4 [Vector2.new]
  LOADN R3 232
  LOADN R4 232
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["screenSize"]
  SETTABLEKS R1 R0 K5 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["action"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["setScreenSize"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setScreenSize"]
  GETTABLEKS R2 R0 K1 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  NEWTABLE R3 4 0
  GETIMPORT R4 K4 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K5 ["Size"]
  LOADN R4 1
  SETTABLEKS R4 R3 K6 ["BackgroundTransparency"]
  LOADN R4 2
  SETTABLEKS R4 R3 K7 ["ZIndex"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["Change"]
  GETTABLEKS R4 R5 K9 ["AbsoluteSize"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  SETTABLE R5 R3 R4
  DUPTABLE R4 K11 [{"BlockingModal"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K19 [{"title", "body", "cancelText", "actionText", "cancel", "action", "screenSize"}]
  GETTABLEKS R9 R0 K20 ["props"]
  GETTABLEKS R8 R9 K21 ["translator"]
  GETTABLEKS R11 R0 K20 ["props"]
  GETTABLEKS R10 R11 K22 ["titleKey"]
  DUPTABLE R11 K24 [{"DisplayName"}]
  GETTABLEKS R14 R0 K20 ["props"]
  GETTABLEKS R13 R14 K25 ["player"]
  GETTABLEKS R12 R13 K23 ["DisplayName"]
  SETTABLEKS R12 R11 K23 ["DisplayName"]
  NAMECALL R8 R8 K26 ["FormatByKey"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K12 ["title"]
  GETTABLEKS R9 R0 K20 ["props"]
  GETTABLEKS R8 R9 K21 ["translator"]
  GETTABLEKS R11 R0 K20 ["props"]
  GETTABLEKS R10 R11 K27 ["bodyKey"]
  NEWTABLE R11 2 0
  GETTABLEKS R14 R0 K20 ["props"]
  GETTABLEKS R13 R14 K25 ["player"]
  GETTABLEKS R12 R13 K23 ["DisplayName"]
  SETTABLEKS R12 R11 K28 ["DISPLAY_NAME"]
  GETTABLEKS R14 R0 K20 ["props"]
  GETTABLEKS R13 R14 K25 ["player"]
  GETTABLEKS R12 R13 K29 ["Name"]
  SETTABLEKS R12 R11 K30 ["RBX_NAME"]
  NAMECALL R8 R8 K26 ["FormatByKey"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K13 ["body"]
  GETTABLEKS R9 R0 K20 ["props"]
  GETTABLEKS R8 R9 K21 ["translator"]
  GETTABLEKS R11 R0 K20 ["props"]
  GETTABLEKS R10 R11 K31 ["cancelTextKey"]
  NAMECALL R8 R8 K26 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["cancelText"]
  GETTABLEKS R9 R0 K20 ["props"]
  GETTABLEKS R8 R9 K21 ["translator"]
  GETTABLEKS R11 R0 K20 ["props"]
  GETTABLEKS R10 R11 K32 ["blockTextKey"]
  NAMECALL R8 R8 K26 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["actionText"]
  GETTABLEKS R9 R0 K20 ["props"]
  GETTABLEKS R8 R9 K33 ["closeModal"]
  SETTABLEKS R8 R7 K16 ["cancel"]
  GETTABLEKS R8 R0 K17 ["action"]
  SETTABLEKS R8 R7 K17 ["action"]
  GETTABLEKS R9 R0 K34 ["state"]
  GETTABLEKS R8 R9 K18 ["screenSize"]
  SETTABLEKS R8 R7 K18 ["screenSize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["BlockingModal"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["RobloxGui"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["CorePackages"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R2 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R2 K9 ["Packages"]
  GETTABLEKS R5 R6 K11 ["t"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K12 ["Modules"]
  GETTABLEKS R6 R7 K13 ["BlockingUtility"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETIMPORT R9 K15 [script]
  GETTABLEKS R8 R9 K16 ["Parent"]
  GETTABLEKS R7 R8 K17 ["ActionModal"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K18 ["PureComponent"]
  LOADK R9 K19 ["BlockingModalContainer"]
  NAMECALL R7 R7 K20 ["extend"]
  CALL R7 2 1
  DUPTABLE R8 K27 [{"screenSize", "blockingUtility", "cancelTextKey", "blockTextKey", "titleKey", "bodyKey"}]
  GETIMPORT R9 K30 [Vector2.new]
  LOADN R10 232
  LOADN R11 232
  CALL R9 2 1
  SETTABLEKS R9 R8 K21 ["screenSize"]
  SETTABLEKS R5 R8 K22 ["blockingUtility"]
  LOADK R9 K31 ["Feature.SettingsHub.Action.Cancel"]
  SETTABLEKS R9 R8 K23 ["cancelTextKey"]
  LOADK R9 K32 ["Feature.SettingsHub.Action.Block"]
  SETTABLEKS R9 R8 K24 ["blockTextKey"]
  LOADK R9 K33 ["Feature.SettingsHub.Heading.BlockUser"]
  SETTABLEKS R9 R8 K25 ["titleKey"]
  LOADK R9 K34 ["Feature.SettingsHub.Message.BlockConfirmation"]
  SETTABLEKS R9 R8 K26 ["bodyKey"]
  SETTABLEKS R8 R7 K35 ["defaultProps"]
  GETTABLEKS R8 R4 K36 ["interface"]
  DUPTABLE R9 K42 [{"analytics", "blockTextKey", "blockingUtility", "bodyKey", "cancelTextKey", "closeModal", "player", "translator", "titleKey", "source"}]
  GETTABLEKS R10 R4 K43 ["optional"]
  GETTABLEKS R11 R4 K44 ["table"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K37 ["analytics"]
  GETTABLEKS R10 R4 K43 ["optional"]
  GETTABLEKS R11 R4 K45 ["string"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["blockTextKey"]
  GETTABLEKS R10 R4 K43 ["optional"]
  GETTABLEKS R11 R4 K44 ["table"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K22 ["blockingUtility"]
  GETTABLEKS R10 R4 K43 ["optional"]
  GETTABLEKS R11 R4 K45 ["string"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K26 ["bodyKey"]
  GETTABLEKS R10 R4 K43 ["optional"]
  GETTABLEKS R11 R4 K45 ["string"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K23 ["cancelTextKey"]
  GETTABLEKS R10 R4 K46 ["callback"]
  SETTABLEKS R10 R9 K38 ["closeModal"]
  GETTABLEKS R10 R4 K36 ["interface"]
  DUPTABLE R11 K50 [{"DisplayName", "Name", "UserId"}]
  GETTABLEKS R12 R4 K45 ["string"]
  SETTABLEKS R12 R11 K47 ["DisplayName"]
  GETTABLEKS R12 R4 K45 ["string"]
  SETTABLEKS R12 R11 K48 ["Name"]
  GETTABLEKS R12 R4 K51 ["number"]
  SETTABLEKS R12 R11 K49 ["UserId"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K39 ["player"]
  GETTABLEKS R10 R4 K43 ["optional"]
  GETTABLEKS R11 R4 K44 ["table"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K40 ["translator"]
  GETTABLEKS R10 R4 K43 ["optional"]
  GETTABLEKS R11 R4 K45 ["string"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K25 ["titleKey"]
  GETTABLEKS R10 R4 K43 ["optional"]
  GETTABLEKS R11 R4 K45 ["string"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K41 ["source"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K52 ["validateProps"]
  DUPCLOSURE R8 K53 [PROTO_2]
  SETTABLEKS R8 R7 K54 ["init"]
  DUPCLOSURE R8 K55 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K56 ["render"]
  RETURN R7 1
