MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["StudioUri"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["SocialPresence"]
  GETTABLEKS R4 R5 K12 ["CollaboratorRibbon"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K13 ["fromAction"]
  NEWTABLE R5 0 9
  DUPTABLE R6 K19 [{"Id", "Type", "Action", "Size", "Style"}]
  LOADK R7 K20 ["UpdateAvailable"]
  SETTABLEKS R7 R6 K14 ["Id"]
  LOADK R7 K21 ["Button"]
  SETTABLEKS R7 R6 K15 ["Type"]
  MOVE R7 R4
  LOADK R8 K20 ["UpdateAvailable"]
  LOADK R9 K22 ["Toggle"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["Action"]
  LOADK R7 K23 ["Small"]
  SETTABLEKS R7 R6 K17 ["Size"]
  LOADK R7 K24 ["Outline"]
  SETTABLEKS R7 R6 K18 ["Style"]
  DUPTABLE R7 K26 [{"Id", "Component", "Type"}]
  LOADK R8 K11 ["SocialPresence"]
  SETTABLEKS R8 R7 K14 ["Id"]
  SETTABLEKS R3 R7 K25 ["Component"]
  LOADK R8 K25 ["Component"]
  SETTABLEKS R8 R7 K15 ["Type"]
  DUPTABLE R8 K28 [{"Id", "Type", "Action", "Size", "IconOnly"}]
  LOADK R9 K29 ["ShareGame"]
  SETTABLEKS R9 R8 K14 ["Id"]
  LOADK R9 K30 ["IconButton"]
  SETTABLEKS R9 R8 K15 ["Type"]
  MOVE R9 R4
  LOADK R10 K29 ["ShareGame"]
  LOADK R11 K22 ["Toggle"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["Action"]
  LOADK R9 K23 ["Small"]
  SETTABLEKS R9 R8 K17 ["Size"]
  LOADB R9 1
  SETTABLEKS R9 R8 K27 ["IconOnly"]
  DUPTABLE R9 K31 [{"Type"}]
  LOADK R10 K32 ["Separator"]
  SETTABLEKS R10 R9 K15 ["Type"]
  DUPTABLE R10 K28 [{"Id", "Type", "Action", "Size", "IconOnly"}]
  LOADK R11 K33 ["Assistant"]
  SETTABLEKS R11 R10 K14 ["Id"]
  LOADK R11 K30 ["IconButton"]
  SETTABLEKS R11 R10 K15 ["Type"]
  MOVE R11 R4
  LOADK R12 K33 ["Assistant"]
  LOADK R13 K22 ["Toggle"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["Action"]
  LOADK R11 K23 ["Small"]
  SETTABLEKS R11 R10 K17 ["Size"]
  LOADB R11 1
  SETTABLEKS R11 R10 K27 ["IconOnly"]
  DUPTABLE R11 K28 [{"Id", "Type", "Action", "Size", "IconOnly"}]
  LOADK R12 K34 ["ConnectionIndicator"]
  SETTABLEKS R12 R11 K14 ["Id"]
  LOADK R12 K30 ["IconButton"]
  SETTABLEKS R12 R11 K15 ["Type"]
  MOVE R12 R4
  LOADK R13 K34 ["ConnectionIndicator"]
  LOADK R14 K22 ["Toggle"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["Action"]
  LOADK R12 K23 ["Small"]
  SETTABLEKS R12 R11 K17 ["Size"]
  LOADB R12 1
  SETTABLEKS R12 R11 K27 ["IconOnly"]
  DUPTABLE R12 K31 [{"Type"}]
  LOADK R13 K32 ["Separator"]
  SETTABLEKS R13 R12 K15 ["Type"]
  DUPTABLE R13 K28 [{"Id", "Type", "Action", "Size", "IconOnly"}]
  LOADK R14 K35 ["Notifications"]
  SETTABLEKS R14 R13 K14 ["Id"]
  LOADK R14 K30 ["IconButton"]
  SETTABLEKS R14 R13 K15 ["Type"]
  MOVE R14 R4
  LOADK R15 K35 ["Notifications"]
  LOADK R16 K22 ["Toggle"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K16 ["Action"]
  LOADK R14 K23 ["Small"]
  SETTABLEKS R14 R13 K17 ["Size"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["IconOnly"]
  DUPTABLE R14 K36 [{"Id", "Type", "Action", "Size"}]
  LOADK R15 K37 ["LogoutMenu"]
  SETTABLEKS R15 R14 K14 ["Id"]
  LOADK R15 K38 ["AvatarThumbnail"]
  SETTABLEKS R15 R14 K15 ["Type"]
  MOVE R15 R4
  LOADK R16 K37 ["LogoutMenu"]
  LOADK R17 K22 ["Toggle"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K16 ["Action"]
  LOADK R15 K39 ["XSmall"]
  SETTABLEKS R15 R14 K17 ["Size"]
  SETLIST R5 R6 9 [1]
  RETURN R5 1
