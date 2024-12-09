PROTO_0:
  GETUPVAL R3 0
  LOADK R5 K0 ["client"]
  LOADK R6 K1 ["publish_avatar_prompt"]
  LOADK R7 K2 ["iec_funnel_user_creation"]
  DUPTABLE R8 K6 [{"section", "action", "element"}]
  SETTABLEKS R0 R8 K3 ["section"]
  SETTABLEKS R1 R8 K4 ["action"]
  SETTABLEKS R2 R8 K5 ["element"]
  NAMECALL R3 R3 K7 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Action"]
  GETTABLEKS R1 R2 K1 ["PageLoad"]
  GETUPVAL R2 1
  LOADK R4 K2 ["client"]
  LOADK R5 K3 ["publish_avatar_prompt"]
  LOADK R6 K4 ["iec_funnel_user_creation"]
  DUPTABLE R7 K8 [{"section", "action", "element"}]
  SETTABLEKS R0 R7 K5 ["section"]
  SETTABLEKS R1 R7 K6 ["action"]
  LOADNIL R8
  SETTABLEKS R8 R7 K7 ["element"]
  NAMECALL R2 R2 K9 ["SendEventDeferred"]
  CALL R2 5 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Action"]
  GETTABLEKS R2 R3 K1 ["FieldTouched"]
  GETUPVAL R3 1
  LOADK R5 K2 ["client"]
  LOADK R6 K3 ["publish_avatar_prompt"]
  LOADK R7 K4 ["iec_funnel_user_creation"]
  DUPTABLE R8 K8 [{"section", "action", "element"}]
  SETTABLEKS R0 R8 K5 ["section"]
  SETTABLEKS R2 R8 K6 ["action"]
  SETTABLEKS R1 R8 K7 ["element"]
  NAMECALL R3 R3 K9 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Action"]
  GETTABLEKS R2 R3 K1 ["ButtonClicked"]
  GETUPVAL R3 1
  LOADK R5 K2 ["client"]
  LOADK R6 K3 ["publish_avatar_prompt"]
  LOADK R7 K4 ["iec_funnel_user_creation"]
  DUPTABLE R8 K8 [{"section", "action", "element"}]
  SETTABLEKS R0 R8 K5 ["section"]
  SETTABLEKS R2 R8 K6 ["action"]
  SETTABLEKS R1 R8 K7 ["element"]
  NAMECALL R3 R3 K9 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RbxAnalyticsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPTABLE R1 K7 [{"Section", "Action", "Element"}]
  DUPTABLE R2 K11 [{"BuyCreationPage", "BuyItemModal", "ProcessCompleteModal"}]
  LOADK R3 K12 ["buy_creation_page"]
  SETTABLEKS R3 R2 K8 ["BuyCreationPage"]
  LOADK R3 K13 ["buy_item_modal"]
  SETTABLEKS R3 R2 K9 ["BuyItemModal"]
  LOADK R3 K14 ["process_complete_modal"]
  SETTABLEKS R3 R2 K10 ["ProcessCompleteModal"]
  SETTABLEKS R2 R1 K4 ["Section"]
  DUPTABLE R2 K18 [{"FieldTouched", "ButtonClicked", "PageLoad"}]
  LOADK R3 K19 ["field_touched"]
  SETTABLEKS R3 R2 K15 ["FieldTouched"]
  LOADK R3 K20 ["button_clicked"]
  SETTABLEKS R3 R2 K16 ["ButtonClicked"]
  LOADK R3 K21 ["page_load"]
  SETTABLEKS R3 R2 K17 ["PageLoad"]
  SETTABLEKS R2 R1 K5 ["Action"]
  DUPTABLE R2 K28 [{"Name", "Description", "X", "Expand", "Buy", "Cancel"}]
  LOADK R3 K29 ["name"]
  SETTABLEKS R3 R2 K22 ["Name"]
  LOADK R3 K30 ["description"]
  SETTABLEKS R3 R2 K23 ["Description"]
  LOADK R3 K31 ["x"]
  SETTABLEKS R3 R2 K24 ["X"]
  LOADK R3 K32 ["expand"]
  SETTABLEKS R3 R2 K25 ["Expand"]
  LOADK R3 K33 ["buy"]
  SETTABLEKS R3 R2 K26 ["Buy"]
  LOADK R3 K34 ["cancel"]
  SETTABLEKS R3 R2 K27 ["Cancel"]
  SETTABLEKS R2 R1 K6 ["Element"]
  DUPCLOSURE R2 K35 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R3 K36 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K37 ["sendPageLoad"]
  DUPCLOSURE R3 K38 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K39 ["sendFieldTouched"]
  DUPCLOSURE R3 K40 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K41 ["sendButtonClicked"]
  RETURN R1 1
