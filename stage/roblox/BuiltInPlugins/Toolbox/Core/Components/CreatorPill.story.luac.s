PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  LOADNIL R1
  LOADNIL R2
  GETTABLEKS R4 R0 K0 ["controls"]
  GETTABLEKS R3 R4 K1 ["CreatorType"]
  GETIMPORT R4 K4 [Enum.CreatorType.User]
  JUMPIFNOTEQ R3 R4 [+9]
  LOADK R2 K5 [957765952]
  GETUPVAL R3 0
  LOADK R5 K5 [957765952]
  NAMECALL R3 R3 K6 ["GetNameFromUserIdAsync"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+8]
  GETUPVAL R3 1
  LOADK R5 K7 [1208727]
  NAMECALL R3 R3 K8 ["GetGroupInfoAsync"]
  CALL R3 2 1
  LOADK R2 K7 [1208727]
  GETTABLEKS R1 R3 K9 ["Name"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 3
  NEWTABLE R5 0 0
  DUPTABLE R6 K12 [{"CreatorPill"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K16 [{"CreatorId", "CreatorName", "CreatorType", "OnActivated"}]
  SETTABLEKS R2 R9 K13 ["CreatorId"]
  SETTABLEKS R1 R9 K14 ["CreatorName"]
  GETTABLEKS R11 R0 K0 ["controls"]
  GETTABLEKS R10 R11 K1 ["CreatorType"]
  SETTABLEKS R10 R9 K1 ["CreatorType"]
  DUPCLOSURE R10 K17 [PROTO_0]
  SETTABLEKS R10 R9 K15 ["OnActivated"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["CreatorPill"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["Players"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["GroupService"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R0 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R0 K13 ["Stories"]
  GETTABLEKS R5 R6 K14 ["ToolboxStoryWrapper"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K15 ["Parent"]
  GETTABLEKS R6 R7 K16 ["CreatorPill"]
  CALL R5 1 1
  DUPTABLE R6 K18 [{"CreatorType"}]
  NEWTABLE R7 0 2
  GETIMPORT R8 K21 [Enum.CreatorType.User]
  GETIMPORT R9 K23 [Enum.CreatorType.Group]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K17 ["CreatorType"]
  DUPTABLE R7 K26 [{"controls", "story"}]
  SETTABLEKS R6 R7 K24 ["controls"]
  DUPCLOSURE R8 K27 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K25 ["story"]
  RETURN R7 1