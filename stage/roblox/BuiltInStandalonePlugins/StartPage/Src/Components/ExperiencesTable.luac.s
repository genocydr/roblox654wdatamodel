PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Component"]
  DUPTABLE R2 K6 [{"CornerRadius", "Size", "Position", "AnchorPoint"}]
  LOADN R3 8
  SETTABLEKS R3 R2 K2 ["CornerRadius"]
  GETIMPORT R3 K9 [UDim2.new]
  LOADK R4 K10 [0.9]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 24
  CALL R3 4 1
  SETTABLEKS R3 R2 K3 ["Size"]
  GETIMPORT R3 K9 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADK R6 K11 [0.5]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K4 ["Position"]
  GETIMPORT R3 K13 [Vector2.new]
  LOADN R4 0
  LOADK R5 K11 [0.5]
  CALL R3 2 1
  SETTABLEKS R3 R2 K5 ["AnchorPoint"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Component"]
  DUPTABLE R2 K6 [{"CornerRadius", "Size", "Position", "AnchorPoint"}]
  LOADN R3 8
  SETTABLEKS R3 R2 K2 ["CornerRadius"]
  GETIMPORT R3 K9 [UDim2.new]
  LOADN R4 0
  LOADN R5 32
  LOADN R6 0
  LOADN R7 32
  CALL R3 4 1
  SETTABLEKS R3 R2 K3 ["Size"]
  GETIMPORT R3 K9 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADK R6 K10 [0.5]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K4 ["Position"]
  GETIMPORT R3 K12 [Vector2.new]
  LOADN R4 0
  LOADK R5 K10 [0.5]
  CALL R3 2 1
  SETTABLEKS R3 R2 K5 ["AnchorPoint"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R3 0
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["FFlagFixPSCMissingUniverseIdFromLuaStartPage must be enabled to call getUniverseIdFromPlaceId"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETIMPORT R2 K4 [ipairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLEKS R7 R6 K5 ["Id"]
  JUMPIFNOT R7 [+25]
  GETTABLEKS R8 R6 K5 ["Id"]
  GETTABLEKS R7 R8 K6 ["Type"]
  JUMPIFNOTEQKS R7 K7 ["PlaceId"] [+20]
  GETTABLEKS R8 R6 K5 ["Id"]
  GETTABLEKS R7 R8 K7 ["PlaceId"]
  JUMPIFNOTEQ R7 R1 [+14]
  GETTABLEKS R7 R6 K8 ["UniverseId"]
  JUMPIFNOT R7 [+10]
  GETTABLEKS R8 R6 K8 ["UniverseId"]
  GETTABLEKS R7 R8 K9 ["Value"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R8 R6 K8 ["UniverseId"]
  GETTABLEKS R7 R8 K9 ["Value"]
  RETURN R7 1
  GETTABLEKS R7 R6 K10 ["children"]
  JUMPIFNOT R7 [+36]
  GETIMPORT R7 K4 [ipairs]
  GETTABLEKS R8 R6 K10 ["children"]
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETTABLEKS R12 R11 K5 ["Id"]
  JUMPIFNOT R12 [+25]
  GETTABLEKS R13 R11 K5 ["Id"]
  GETTABLEKS R12 R13 K6 ["Type"]
  JUMPIFNOTEQKS R12 K7 ["PlaceId"] [+20]
  GETTABLEKS R13 R11 K5 ["Id"]
  GETTABLEKS R12 R13 K7 ["PlaceId"]
  JUMPIFNOTEQ R12 R1 [+14]
  GETTABLEKS R12 R11 K8 ["UniverseId"]
  JUMPIFNOT R12 [+10]
  GETTABLEKS R13 R11 K8 ["UniverseId"]
  GETTABLEKS R12 R13 K9 ["Value"]
  JUMPIFNOT R12 [+5]
  GETTABLEKS R13 R11 K8 ["UniverseId"]
  GETTABLEKS R12 R13 K9 ["Value"]
  RETURN R12 1
  FORGLOOP R7 2 [inext] [-29]
  FORGLOOP R2 2 [inext] [-68]
  LOADB R3 0
  LOADK R5 K11 ["Universe ID not found for place ID "]
  MOVE R6 R1
  CONCAT R4 R5 R6
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  NEWTABLE R0 0 0
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K0 ["Cells"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  NEWTABLE R6 0 0
  GETTABLEKS R7 R5 K1 ["IsPlaceholder"]
  JUMPIF R7 [+90]
  GETTABLEKS R7 R5 K2 ["Children"]
  JUMPIFNOT R7 [+87]
  GETTABLEKS R7 R5 K2 ["Children"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R13 R11 K3 ["Id"]
  FASTCALL2K ASSERT R13 K4 [+4]
  LOADK R14 K4 ["Child place must have a place ID"]
  GETIMPORT R12 K6 [assert]
  CALL R12 2 0
  DUPTABLE R14 K15 [{"Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId"}]
  DUPTABLE R15 K17 [{"Value"}]
  LOADK R16 K18 [""]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K7 ["Icon"]
  DUPTABLE R15 K20 [{"Type", "PlaceId"}]
  LOADK R16 K19 ["PlaceId"]
  SETTABLEKS R16 R15 K13 ["Type"]
  GETTABLEKS R16 R11 K3 ["Id"]
  SETTABLEKS R16 R15 K19 ["PlaceId"]
  SETTABLEKS R15 R14 K3 ["Id"]
  DUPTABLE R15 K17 [{"Value"}]
  GETTABLEKS R16 R11 K8 ["Name"]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K8 ["Name"]
  DUPTABLE R15 K17 [{"Value"}]
  GETTABLEKS R16 R11 K9 ["Description"]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K9 ["Description"]
  DUPTABLE R15 K17 [{"Value"}]
  LOADK R16 K18 [""]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K10 ["Edited"]
  DUPTABLE R15 K17 [{"Value"}]
  LOADK R16 K18 [""]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K11 ["Created"]
  DUPTABLE R15 K17 [{"Value"}]
  LOADK R16 K18 [""]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K12 ["Playability"]
  DUPTABLE R15 K17 [{"Value"}]
  LOADK R16 K18 [""]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K13 ["Type"]
  GETUPVAL R16 1
  JUMPIFNOT R16 [+6]
  DUPTABLE R15 K17 [{"Value"}]
  GETTABLEKS R16 R11 K14 ["UniverseId"]
  SETTABLEKS R16 R15 K16 ["Value"]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K14 ["UniverseId"]
  FASTCALL2 TABLE_INSERT R6 R14 [+4]
  MOVE R13 R6
  GETIMPORT R12 K23 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-81]
  GETTABLEKS R7 R5 K1 ["IsPlaceholder"]
  JUMPIFNOT R7 [+12]
  MOVE R8 R0
  GETUPVAL R9 2
  GETUPVAL R10 3
  DUPTABLE R11 K25 [{"children"}]
  SETTABLEKS R6 R11 K24 ["children"]
  CALL R9 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K23 [table.insert]
  CALL R7 -1 0
  JUMP [+187]
  DUPTABLE R9 K26 [{"Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId", "children"}]
  GETTABLEKS R11 R5 K27 ["ImageUrl"]
  JUMPIFNOT R11 [+21]
  DUPTABLE R10 K29 [{"Value", "LeftIcon"}]
  LOADK R11 K18 [""]
  SETTABLEKS R11 R10 K16 ["Value"]
  DUPTABLE R11 K32 [{"Image", "Size"}]
  GETTABLEKS R12 R5 K27 ["ImageUrl"]
  SETTABLEKS R12 R11 K30 ["Image"]
  GETIMPORT R12 K35 [UDim2.new]
  LOADN R13 0
  LOADN R14 32
  LOADN R15 0
  LOADN R16 32
  CALL R12 4 1
  SETTABLEKS R12 R11 K31 ["Size"]
  SETTABLEKS R11 R10 K28 ["LeftIcon"]
  JUMP [+39]
  GETTABLEKS R11 R5 K36 ["NoLoadableImage"]
  JUMPIFNOT R11 [+20]
  DUPTABLE R10 K29 [{"Value", "LeftIcon"}]
  LOADK R11 K18 [""]
  SETTABLEKS R11 R10 K16 ["Value"]
  DUPTABLE R11 K32 [{"Image", "Size"}]
  LOADK R12 K37 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
  SETTABLEKS R12 R11 K30 ["Image"]
  GETIMPORT R12 K35 [UDim2.new]
  LOADN R13 0
  LOADN R14 32
  LOADN R15 0
  LOADN R16 32
  CALL R12 4 1
  SETTABLEKS R12 R11 K31 ["Size"]
  SETTABLEKS R11 R10 K28 ["LeftIcon"]
  JUMP [+16]
  DUPTABLE R10 K40 [{"Value", "Schema", "Renderers"}]
  LOADK R11 K18 [""]
  SETTABLEKS R11 R10 K16 ["Value"]
  DUPTABLE R11 K41 [{"Type"}]
  LOADK R12 K42 ["Placeholder"]
  SETTABLEKS R12 R11 K13 ["Type"]
  SETTABLEKS R11 R10 K38 ["Schema"]
  DUPTABLE R11 K43 [{"Placeholder"}]
  GETUPVAL R12 4
  SETTABLEKS R12 R11 K42 ["Placeholder"]
  SETTABLEKS R11 R10 K39 ["Renderers"]
  SETTABLEKS R10 R9 K7 ["Icon"]
  GETTABLEKS R11 R5 K44 ["RootPlaceId"]
  JUMPIFNOT R11 [+9]
  DUPTABLE R10 K20 [{"Type", "PlaceId"}]
  LOADK R11 K19 ["PlaceId"]
  SETTABLEKS R11 R10 K13 ["Type"]
  GETTABLEKS R11 R5 K44 ["RootPlaceId"]
  SETTABLEKS R11 R10 K19 ["PlaceId"]
  JUMP [+13]
  GETTABLEKS R11 R5 K45 ["FilePath"]
  JUMPIFNOT R11 [+9]
  DUPTABLE R10 K46 [{"Type", "FilePath"}]
  LOADK R11 K45 ["FilePath"]
  SETTABLEKS R11 R10 K13 ["Type"]
  GETTABLEKS R11 R5 K45 ["FilePath"]
  SETTABLEKS R11 R10 K45 ["FilePath"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K3 ["Id"]
  DUPTABLE R10 K17 [{"Value"}]
  GETTABLEKS R12 R5 K8 ["Name"]
  ORK R11 R12 K18 [""]
  SETTABLEKS R11 R10 K16 ["Value"]
  SETTABLEKS R10 R9 K8 ["Name"]
  DUPTABLE R10 K17 [{"Value"}]
  GETTABLEKS R12 R5 K9 ["Description"]
  JUMPIF R12 [+2]
  LOADK R11 K18 [""]
  JUMP [+2]
  GETTABLEKS R11 R5 K9 ["Description"]
  SETTABLEKS R11 R10 K16 ["Value"]
  SETTABLEKS R10 R9 K9 ["Description"]
  DUPTABLE R10 K17 [{"Value"}]
  GETUPVAL R12 5
  JUMPIFNOT R12 [+11]
  GETTABLEKS R12 R5 K47 ["LastViewed"]
  JUMPIFNOT R12 [+6]
  GETUPVAL R11 6
  GETTABLEKS R12 R5 K47 ["LastViewed"]
  GETUPVAL R13 7
  CALL R11 2 1
  JUMP [+6]
  LOADK R11 K18 [""]
  JUMP [+4]
  GETUPVAL R11 6
  GETTABLEKS R12 R5 K48 ["Updated"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K16 ["Value"]
  SETTABLEKS R10 R9 K10 ["Edited"]
  DUPTABLE R10 K17 [{"Value"}]
  GETUPVAL R11 6
  GETTABLEKS R12 R5 K11 ["Created"]
  GETUPVAL R14 5
  JUMPIFNOT R14 [+2]
  GETUPVAL R13 7
  JUMP [+1]
  LOADNIL R13
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["Value"]
  SETTABLEKS R10 R9 K11 ["Created"]
  DUPTABLE R10 K17 [{"Value"}]
  GETTABLEKS R12 R5 K49 ["PrivacyType"]
  ORK R11 R12 K18 [""]
  SETTABLEKS R11 R10 K16 ["Value"]
  SETTABLEKS R10 R9 K12 ["Playability"]
  DUPTABLE R10 K17 [{"Value"}]
  GETTABLEKS R12 R5 K50 ["IsGame"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K51 ["Experience"]
  JUMP [+1]
  LOADK R11 K52 ["Place"]
  SETTABLEKS R11 R10 K16 ["Value"]
  SETTABLEKS R10 R9 K13 ["Type"]
  GETUPVAL R11 1
  JUMPIFNOT R11 [+6]
  DUPTABLE R10 K17 [{"Value"}]
  GETTABLEKS R11 R5 K3 ["Id"]
  SETTABLEKS R11 R10 K16 ["Value"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K14 ["UniverseId"]
  SETTABLEKS R6 R9 K24 ["children"]
  FASTCALL2 TABLE_INSERT R0 R9 [+4]
  MOVE R8 R0
  GETIMPORT R7 K23 [table.insert]
  CALL R7 2 0
  FORGLOOP R1 2 [-298]
  RETURN R0 1

PROTO_4:
  NEWTABLE R0 0 0
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K0 ["Cells"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  NEWTABLE R6 0 0
  GETTABLEKS R7 R5 K1 ["IsPlaceholder"]
  JUMPIF R7 [+90]
  GETTABLEKS R7 R5 K2 ["Children"]
  JUMPIFNOT R7 [+87]
  GETTABLEKS R7 R5 K2 ["Children"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R13 R11 K3 ["Id"]
  FASTCALL2K ASSERT R13 K4 [+4]
  LOADK R14 K4 ["Child place must have a place ID"]
  GETIMPORT R12 K6 [assert]
  CALL R12 2 0
  DUPTABLE R14 K15 [{"Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId"}]
  DUPTABLE R15 K17 [{"Value"}]
  LOADK R16 K18 [""]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K7 ["Icon"]
  DUPTABLE R15 K20 [{"Type", "PlaceId"}]
  LOADK R16 K19 ["PlaceId"]
  SETTABLEKS R16 R15 K13 ["Type"]
  GETTABLEKS R16 R11 K3 ["Id"]
  SETTABLEKS R16 R15 K19 ["PlaceId"]
  SETTABLEKS R15 R14 K3 ["Id"]
  DUPTABLE R15 K17 [{"Value"}]
  GETTABLEKS R16 R11 K8 ["Name"]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K8 ["Name"]
  DUPTABLE R15 K17 [{"Value"}]
  GETTABLEKS R16 R11 K9 ["Description"]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K9 ["Description"]
  DUPTABLE R15 K17 [{"Value"}]
  LOADK R16 K18 [""]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K10 ["Edited"]
  DUPTABLE R15 K17 [{"Value"}]
  LOADK R16 K18 [""]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K11 ["Created"]
  DUPTABLE R15 K17 [{"Value"}]
  LOADK R16 K18 [""]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K12 ["Playability"]
  DUPTABLE R15 K17 [{"Value"}]
  LOADK R16 K18 [""]
  SETTABLEKS R16 R15 K16 ["Value"]
  SETTABLEKS R15 R14 K13 ["Type"]
  GETUPVAL R16 1
  JUMPIFNOT R16 [+6]
  DUPTABLE R15 K17 [{"Value"}]
  GETTABLEKS R16 R11 K14 ["UniverseId"]
  SETTABLEKS R16 R15 K16 ["Value"]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K14 ["UniverseId"]
  FASTCALL2 TABLE_INSERT R6 R14 [+4]
  MOVE R13 R6
  GETIMPORT R12 K23 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-81]
  GETTABLEKS R7 R5 K1 ["IsPlaceholder"]
  JUMPIFNOT R7 [+12]
  MOVE R8 R0
  GETUPVAL R9 2
  GETUPVAL R10 3
  DUPTABLE R11 K25 [{"children"}]
  SETTABLEKS R6 R11 K24 ["children"]
  CALL R9 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K23 [table.insert]
  CALL R7 -1 0
  JUMP [+187]
  DUPTABLE R9 K26 [{"Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId", "children"}]
  GETTABLEKS R11 R5 K27 ["ImageUrl"]
  JUMPIFNOT R11 [+21]
  DUPTABLE R10 K29 [{"Value", "LeftIcon"}]
  LOADK R11 K18 [""]
  SETTABLEKS R11 R10 K16 ["Value"]
  DUPTABLE R11 K32 [{"Image", "Size"}]
  GETTABLEKS R12 R5 K27 ["ImageUrl"]
  SETTABLEKS R12 R11 K30 ["Image"]
  GETIMPORT R12 K35 [UDim2.new]
  LOADN R13 0
  LOADN R14 32
  LOADN R15 0
  LOADN R16 32
  CALL R12 4 1
  SETTABLEKS R12 R11 K31 ["Size"]
  SETTABLEKS R11 R10 K28 ["LeftIcon"]
  JUMP [+39]
  GETTABLEKS R11 R5 K36 ["NoLoadableImage"]
  JUMPIFNOT R11 [+20]
  DUPTABLE R10 K29 [{"Value", "LeftIcon"}]
  LOADK R11 K18 [""]
  SETTABLEKS R11 R10 K16 ["Value"]
  DUPTABLE R11 K32 [{"Image", "Size"}]
  LOADK R12 K37 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
  SETTABLEKS R12 R11 K30 ["Image"]
  GETIMPORT R12 K35 [UDim2.new]
  LOADN R13 0
  LOADN R14 32
  LOADN R15 0
  LOADN R16 32
  CALL R12 4 1
  SETTABLEKS R12 R11 K31 ["Size"]
  SETTABLEKS R11 R10 K28 ["LeftIcon"]
  JUMP [+16]
  DUPTABLE R10 K40 [{"Value", "Schema", "Renderers"}]
  LOADK R11 K18 [""]
  SETTABLEKS R11 R10 K16 ["Value"]
  DUPTABLE R11 K41 [{"Type"}]
  LOADK R12 K42 ["Placeholder"]
  SETTABLEKS R12 R11 K13 ["Type"]
  SETTABLEKS R11 R10 K38 ["Schema"]
  DUPTABLE R11 K43 [{"Placeholder"}]
  GETUPVAL R12 4
  SETTABLEKS R12 R11 K42 ["Placeholder"]
  SETTABLEKS R11 R10 K39 ["Renderers"]
  SETTABLEKS R10 R9 K7 ["Icon"]
  GETTABLEKS R11 R5 K44 ["RootPlaceId"]
  JUMPIFNOT R11 [+9]
  DUPTABLE R10 K20 [{"Type", "PlaceId"}]
  LOADK R11 K19 ["PlaceId"]
  SETTABLEKS R11 R10 K13 ["Type"]
  GETTABLEKS R11 R5 K44 ["RootPlaceId"]
  SETTABLEKS R11 R10 K19 ["PlaceId"]
  JUMP [+13]
  GETTABLEKS R11 R5 K45 ["FilePath"]
  JUMPIFNOT R11 [+9]
  DUPTABLE R10 K46 [{"Type", "FilePath"}]
  LOADK R11 K45 ["FilePath"]
  SETTABLEKS R11 R10 K13 ["Type"]
  GETTABLEKS R11 R5 K45 ["FilePath"]
  SETTABLEKS R11 R10 K45 ["FilePath"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K3 ["Id"]
  DUPTABLE R10 K17 [{"Value"}]
  GETTABLEKS R12 R5 K8 ["Name"]
  ORK R11 R12 K18 [""]
  SETTABLEKS R11 R10 K16 ["Value"]
  SETTABLEKS R10 R9 K8 ["Name"]
  DUPTABLE R10 K17 [{"Value"}]
  GETTABLEKS R12 R5 K9 ["Description"]
  JUMPIF R12 [+2]
  LOADK R11 K18 [""]
  JUMP [+2]
  GETTABLEKS R11 R5 K9 ["Description"]
  SETTABLEKS R11 R10 K16 ["Value"]
  SETTABLEKS R10 R9 K9 ["Description"]
  DUPTABLE R10 K17 [{"Value"}]
  GETUPVAL R12 5
  JUMPIFNOT R12 [+11]
  GETTABLEKS R12 R5 K47 ["LastViewed"]
  JUMPIFNOT R12 [+6]
  GETUPVAL R11 6
  GETTABLEKS R12 R5 K47 ["LastViewed"]
  GETUPVAL R13 7
  CALL R11 2 1
  JUMP [+6]
  LOADK R11 K18 [""]
  JUMP [+4]
  GETUPVAL R11 6
  GETTABLEKS R12 R5 K48 ["Updated"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K16 ["Value"]
  SETTABLEKS R10 R9 K10 ["Edited"]
  DUPTABLE R10 K17 [{"Value"}]
  GETUPVAL R11 6
  GETTABLEKS R12 R5 K11 ["Created"]
  GETUPVAL R14 5
  JUMPIFNOT R14 [+2]
  GETUPVAL R13 7
  JUMP [+1]
  LOADNIL R13
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["Value"]
  SETTABLEKS R10 R9 K11 ["Created"]
  DUPTABLE R10 K17 [{"Value"}]
  GETTABLEKS R12 R5 K49 ["PrivacyType"]
  ORK R11 R12 K18 [""]
  SETTABLEKS R11 R10 K16 ["Value"]
  SETTABLEKS R10 R9 K12 ["Playability"]
  DUPTABLE R10 K17 [{"Value"}]
  GETTABLEKS R12 R5 K50 ["IsGame"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K51 ["Experience"]
  JUMP [+1]
  LOADK R11 K52 ["Place"]
  SETTABLEKS R11 R10 K16 ["Value"]
  SETTABLEKS R10 R9 K13 ["Type"]
  GETUPVAL R11 1
  JUMPIFNOT R11 [+6]
  DUPTABLE R10 K17 [{"Value"}]
  GETTABLEKS R11 R5 K3 ["Id"]
  SETTABLEKS R11 R10 K16 ["Value"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K14 ["UniverseId"]
  SETTABLEKS R6 R9 K24 ["children"]
  FASTCALL2 TABLE_INSERT R0 R9 [+4]
  MOVE R8 R0
  GETIMPORT R7 K23 [table.insert]
  CALL R7 2 0
  GETUPVAL R7 8
  MOVE R8 R0
  CALL R7 1 0
  FORGLOOP R1 2 [-301]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R1 K1 [next]
  MOVE R2 R0
  CALL R1 1 1
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K3 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K4 ["number"] [+23]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+12]
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R3 3
  MOVE R5 R1
  MOVE R6 R2
  LOADB R7 0
  NAMECALL R3 R3 K5 ["openPlace"]
  CALL R3 4 0
  RETURN R0 0
  GETUPVAL R2 3
  MOVE R4 R1
  LOADN R5 0
  LOADB R6 0
  NAMECALL R2 R2 K5 ["openPlace"]
  CALL R2 4 0
  RETURN R0 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K3 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K6 ["string"] [+7]
  GETUPVAL R2 3
  MOVE R4 R1
  LOADB R5 0
  NAMECALL R2 R2 K7 ["openLocalFile"]
  CALL R2 3 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["CanDisplayComponentAdjustQuery"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLE R3 R4 R0
  GETTABLEKS R2 R3 K1 ["ShouldSort"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["DisplayComponentHasAdjustedQuery"]
  DUPTABLE R3 K5 [{"sortParam", "sortOrder"}]
  GETUPVAL R6 1
  GETTABLE R5 R6 R0
  GETTABLEKS R4 R5 K6 ["SortParam"]
  SETTABLEKS R4 R3 K3 ["sortParam"]
  GETIMPORT R5 K10 [Enum.SortDirection.Ascending]
  JUMPIFNOTEQ R1 R5 [+3]
  LOADK R4 K11 ["Desc"]
  JUMP [+1]
  LOADK R4 K12 ["Asc"]
  SETTABLEKS R4 R3 K4 ["sortOrder"]
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["children"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["Id"]
  JUMPIF R1 [+2]
  LOADN R1 1
  RETURN R1 1
  GETTABLEKS R2 R0 K0 ["Id"]
  GETTABLEKS R1 R2 K1 ["Type"]
  JUMPIFNOTEQKS R1 K2 ["PlaceId"] [+6]
  GETTABLEKS R2 R0 K0 ["Id"]
  GETTABLEKS R1 R2 K2 ["PlaceId"]
  RETURN R1 1
  GETTABLEKS R2 R0 K0 ["Id"]
  GETTABLEKS R1 R2 K3 ["FilePath"]
  RETURN R1 1

PROTO_10:
  GETUPVAL R1 0
  NEWTABLE R2 0 0
  CALL R1 1 2
  LOADNIL R3
  LOADNIL R4
  GETUPVAL R6 1
  JUMPIFNOT R6 [+5]
  GETUPVAL R5 2
  NAMECALL R5 R5 K0 ["use"]
  CALL R5 1 1
  JUMP [+1]
  LOADNIL R5
  GETUPVAL R6 3
  JUMPIFNOT R6 [+19]
  GETUPVAL R6 4
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U1
  CAPTURE UPVAL U9
  CAPTURE VAL R5
  NEWTABLE R8 0 1
  GETTABLEKS R9 R0 K1 ["Cells"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  MOVE R3 R6
  JUMP [+24]
  GETUPVAL R6 0
  NEWTABLE R7 0 0
  CALL R6 1 2
  MOVE R3 R6
  MOVE R4 R7
  GETUPVAL R6 10
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U1
  CAPTURE UPVAL U9
  CAPTURE VAL R5
  CAPTURE REF R4
  NEWTABLE R8 0 1
  GETTABLEKS R9 R0 K1 ["Cells"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 0
  LOADNIL R6
  GETTABLEKS R7 R0 K2 ["CanDisplayComponentAdjustQuery"]
  JUMPIFNOT R7 [+11]
  GETTABLEKS R8 R0 K3 ["Query"]
  GETTABLEKS R7 R8 K4 ["sortOrder"]
  JUMPIFNOTEQKS R7 K5 ["Asc"] [+4]
  GETIMPORT R6 K9 [Enum.SortDirection.Descending]
  JUMP [+2]
  GETIMPORT R6 K11 [Enum.SortDirection.Ascending]
  GETUPVAL R8 11
  GETTABLEKS R7 R8 K12 ["createElement"]
  LOADK R8 K13 ["Frame"]
  NEWTABLE R9 4 0
  GETUPVAL R11 12
  JUMPIFNOT R11 [+2]
  LOADNIL R10
  JUMP [+2]
  GETTABLEKS R10 R0 K14 ["Position"]
  SETTABLEKS R10 R9 K14 ["Position"]
  GETUPVAL R11 12
  JUMPIFNOT R11 [+2]
  LOADNIL R10
  JUMP [+2]
  GETTABLEKS R10 R0 K15 ["Size"]
  SETTABLEKS R10 R9 K15 ["Size"]
  GETUPVAL R11 11
  GETTABLEKS R10 R11 K16 ["Tag"]
  GETUPVAL R12 12
  JUMPIFNOT R12 [+2]
  LOADK R11 K17 ["X-Transparent StartPage-TablePadding X-Fill"]
  JUMP [+1]
  LOADK R11 K18 ["X-Transparent StartPage-TablePadding"]
  SETTABLE R11 R9 R10
  NEWTABLE R10 0 1
  GETUPVAL R12 11
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 13
  NEWTABLE R13 32 0
  GETUPVAL R14 14
  SETTABLEKS R14 R13 K19 ["Columns"]
  NEWCLOSURE R14 P2
  CAPTURE VAL R2
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K20 ["OnExpansionChange"]
  GETUPVAL R15 15
  CALL R15 0 1
  JUMPIFNOT R15 [+3]
  NEWTABLE R14 0 0
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K21 ["Selection"]
  NEWCLOSURE R14 P3
  CAPTURE UPVAL U5
  CAPTURE UPVAL U16
  CAPTURE REF R3
  CAPTURE UPVAL U17
  SETTABLEKS R14 R13 K22 ["OnSelectionChange"]
  SETTABLEKS R1 R13 K23 ["Expansion"]
  SETTABLEKS R3 R13 K24 ["RootItems"]
  SETTABLEKS R6 R13 K25 ["SortOrder"]
  GETTABLEKS R15 R0 K2 ["CanDisplayComponentAdjustQuery"]
  JUMPIFNOT R15 [+7]
  GETUPVAL R15 18
  GETTABLEKS R17 R0 K3 ["Query"]
  GETTABLEKS R16 R17 K26 ["sortParam"]
  GETTABLE R14 R15 R16
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K27 ["SortIndex"]
  NEWCLOSURE R14 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U14
  SETTABLEKS R14 R13 K28 ["OnSortChange"]
  LOADN R14 53
  SETTABLEKS R14 R13 K29 ["RowHeight"]
  LOADB R14 1
  SETTABLEKS R14 R13 K30 ["UseDeficit"]
  DUPCLOSURE R14 K31 [PROTO_8]
  SETTABLEKS R14 R13 K32 ["GetChildren"]
  DUPCLOSURE R14 K33 [PROTO_9]
  SETTABLEKS R14 R13 K34 ["GetItemId"]
  GETTABLEKS R14 R0 K35 ["OnLoadRange"]
  SETTABLEKS R14 R13 K35 ["OnLoadRange"]
  LOADB R14 1
  SETTABLEKS R14 R13 K36 ["Scroll"]
  DUPTABLE R14 K38 [{"CanvasSize"}]
  GETTABLEKS R15 R0 K37 ["CanvasSize"]
  SETTABLEKS R15 R14 K37 ["CanvasSize"]
  SETTABLEKS R14 R13 K39 ["ScrollProps"]
  LOADK R14 K40 ["modern"]
  SETTABLEKS R14 R13 K41 ["Variant"]
  GETUPVAL R15 11
  GETTABLEKS R14 R15 K16 ["Tag"]
  LOADK R15 K42 ["X-Fill"]
  SETTABLE R15 R13 R14
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  CLOSEUPVALS R3
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useState"]
  GETTABLEKS R3 R1 K9 ["useEffect"]
  GETTABLEKS R4 R1 K10 ["useMemo"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["SharedFlags"]
  GETTABLEKS R6 R7 K13 ["getFFlagLuaStartPageQuickLoad"]
  CALL R5 1 1
  CALL R5 0 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["SharedFlags"]
  GETTABLEKS R7 R8 K14 ["getFFlagLuaStartPageFixLastViewed"]
  CALL R6 1 1
  CALL R6 0 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K6 ["Packages"]
  GETTABLEKS R8 R9 K15 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R9 R7 K16 ["ContextServices"]
  GETTABLEKS R8 R9 K17 ["Localization"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K6 ["Packages"]
  GETTABLEKS R10 R11 K18 ["Dash"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K19 ["join"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K11 ["Src"]
  GETTABLEKS R13 R14 K20 ["Util"]
  GETTABLEKS R12 R13 K21 ["Services"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K22 ["StartPageManager"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K11 ["Src"]
  GETTABLEKS R15 R16 K12 ["SharedFlags"]
  GETTABLEKS R14 R15 K23 ["getFFlagLuaStartPageAtomicTestsFixes"]
  CALL R13 1 1
  GETIMPORT R14 K25 [game]
  LOADK R16 K26 ["FixPSCMissingUniverseIdFromLuaStartPage"]
  LOADB R17 0
  NAMECALL R14 R14 K27 ["DefineFastFlag"]
  CALL R14 3 1
  GETIMPORT R15 K25 [game]
  LOADK R17 K28 ["LuaStartPageExperiencesTableUseMemo"]
  LOADB R18 0
  NAMECALL R15 R15 K27 ["DefineFastFlag"]
  CALL R15 3 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R0 K11 ["Src"]
  GETTABLEKS R17 R18 K29 ["Types"]
  CALL R16 1 1
  GETTABLEKS R17 R7 K30 ["UI"]
  GETTABLEKS R18 R17 K31 ["TreeTable"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K11 ["Src"]
  GETTABLEKS R21 R22 K32 ["Components"]
  GETTABLEKS R20 R21 K33 ["Shimmer"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K11 ["Src"]
  GETTABLEKS R22 R23 K20 ["Util"]
  GETTABLEKS R21 R22 K34 ["formatISOTimestamp"]
  CALL R20 1 1
  NEWTABLE R21 0 6
  DUPTABLE R22 K39 [{"Name", "Key", "Width", "ShouldSort"}]
  LOADK R23 K40 [""]
  SETTABLEKS R23 R22 K35 ["Name"]
  LOADK R23 K41 ["Icon"]
  SETTABLEKS R23 R22 K36 ["Key"]
  GETIMPORT R23 K44 [UDim.new]
  LOADN R24 0
  LOADN R25 64
  CALL R23 2 1
  SETTABLEKS R23 R22 K37 ["Width"]
  LOADB R23 0
  SETTABLEKS R23 R22 K38 ["ShouldSort"]
  DUPTABLE R23 K46 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
  LOADK R24 K35 ["Name"]
  SETTABLEKS R24 R23 K35 ["Name"]
  LOADK R24 K35 ["Name"]
  SETTABLEKS R24 R23 K36 ["Key"]
  GETIMPORT R24 K44 [UDim.new]
  LOADK R25 K47 [0.35]
  LOADN R26 192
  CALL R24 2 1
  SETTABLEKS R24 R23 K37 ["Width"]
  LOADB R24 1
  SETTABLEKS R24 R23 K38 ["ShouldSort"]
  LOADK R24 K48 ["GameName"]
  SETTABLEKS R24 R23 K45 ["SortParam"]
  DUPTABLE R24 K39 [{"Name", "Key", "Width", "ShouldSort"}]
  LOADK R25 K49 ["Description"]
  SETTABLEKS R25 R24 K35 ["Name"]
  LOADK R25 K49 ["Description"]
  SETTABLEKS R25 R24 K36 ["Key"]
  GETIMPORT R25 K44 [UDim.new]
  LOADK R26 K50 [0.25]
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K37 ["Width"]
  LOADB R25 0
  SETTABLEKS R25 R24 K38 ["ShouldSort"]
  DUPTABLE R25 K46 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
  LOADK R26 K51 ["Last Edited"]
  SETTABLEKS R26 R25 K35 ["Name"]
  LOADK R26 K52 ["Edited"]
  SETTABLEKS R26 R25 K36 ["Key"]
  GETIMPORT R26 K44 [UDim.new]
  LOADK R27 K53 [0.15]
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K37 ["Width"]
  LOADB R26 1
  SETTABLEKS R26 R25 K38 ["ShouldSort"]
  LOADK R26 K54 ["LastUpdated"]
  SETTABLEKS R26 R25 K45 ["SortParam"]
  DUPTABLE R26 K46 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
  LOADK R27 K55 ["Date Created"]
  SETTABLEKS R27 R26 K35 ["Name"]
  LOADK R27 K56 ["Created"]
  SETTABLEKS R27 R26 K36 ["Key"]
  GETIMPORT R27 K44 [UDim.new]
  LOADK R28 K53 [0.15]
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K37 ["Width"]
  LOADB R27 1
  SETTABLEKS R27 R26 K38 ["ShouldSort"]
  LOADK R27 K57 ["GameCreated"]
  SETTABLEKS R27 R26 K45 ["SortParam"]
  DUPTABLE R27 K39 [{"Name", "Key", "Width", "ShouldSort"}]
  LOADK R28 K58 ["Playability"]
  SETTABLEKS R28 R27 K35 ["Name"]
  LOADK R28 K58 ["Playability"]
  SETTABLEKS R28 R27 K36 ["Key"]
  GETIMPORT R28 K44 [UDim.new]
  LOADK R29 K59 [0.1]
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K37 ["Width"]
  LOADB R28 0
  SETTABLEKS R28 R27 K38 ["ShouldSort"]
  SETLIST R21 R22 6 [1]
  NEWTABLE R22 4 0
  LOADN R23 2
  SETTABLEKS R23 R22 K48 ["GameName"]
  LOADN R23 4
  SETTABLEKS R23 R22 K54 ["LastUpdated"]
  LOADN R23 5
  SETTABLEKS R23 R22 K57 ["GameCreated"]
  DUPCLOSURE R23 K60 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R19
  DUPCLOSURE R24 K61 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R19
  DUPTABLE R25 K63 [{"Icon", "Name", "Description", "Edited", "Created", "Playability", "Type"}]
  DUPTABLE R26 K67 [{"Value", "Schema", "Renderers"}]
  LOADK R27 K40 [""]
  SETTABLEKS R27 R26 K64 ["Value"]
  DUPTABLE R27 K68 [{"Type"}]
  LOADK R28 K69 ["Placeholder"]
  SETTABLEKS R28 R27 K62 ["Type"]
  SETTABLEKS R27 R26 K65 ["Schema"]
  DUPTABLE R27 K70 [{"Placeholder"}]
  SETTABLEKS R24 R27 K69 ["Placeholder"]
  SETTABLEKS R27 R26 K66 ["Renderers"]
  SETTABLEKS R26 R25 K41 ["Icon"]
  DUPTABLE R26 K67 [{"Value", "Schema", "Renderers"}]
  LOADK R27 K40 [""]
  SETTABLEKS R27 R26 K64 ["Value"]
  DUPTABLE R27 K68 [{"Type"}]
  LOADK R28 K69 ["Placeholder"]
  SETTABLEKS R28 R27 K62 ["Type"]
  SETTABLEKS R27 R26 K65 ["Schema"]
  DUPTABLE R27 K70 [{"Placeholder"}]
  SETTABLEKS R23 R27 K69 ["Placeholder"]
  SETTABLEKS R27 R26 K66 ["Renderers"]
  SETTABLEKS R26 R25 K35 ["Name"]
  DUPTABLE R26 K67 [{"Value", "Schema", "Renderers"}]
  LOADK R27 K40 [""]
  SETTABLEKS R27 R26 K64 ["Value"]
  DUPTABLE R27 K68 [{"Type"}]
  LOADK R28 K69 ["Placeholder"]
  SETTABLEKS R28 R27 K62 ["Type"]
  SETTABLEKS R27 R26 K65 ["Schema"]
  DUPTABLE R27 K70 [{"Placeholder"}]
  SETTABLEKS R23 R27 K69 ["Placeholder"]
  SETTABLEKS R27 R26 K66 ["Renderers"]
  SETTABLEKS R26 R25 K49 ["Description"]
  DUPTABLE R26 K67 [{"Value", "Schema", "Renderers"}]
  LOADK R27 K40 [""]
  SETTABLEKS R27 R26 K64 ["Value"]
  DUPTABLE R27 K68 [{"Type"}]
  LOADK R28 K69 ["Placeholder"]
  SETTABLEKS R28 R27 K62 ["Type"]
  SETTABLEKS R27 R26 K65 ["Schema"]
  DUPTABLE R27 K70 [{"Placeholder"}]
  SETTABLEKS R23 R27 K69 ["Placeholder"]
  SETTABLEKS R27 R26 K66 ["Renderers"]
  SETTABLEKS R26 R25 K52 ["Edited"]
  DUPTABLE R26 K67 [{"Value", "Schema", "Renderers"}]
  LOADK R27 K40 [""]
  SETTABLEKS R27 R26 K64 ["Value"]
  DUPTABLE R27 K68 [{"Type"}]
  LOADK R28 K69 ["Placeholder"]
  SETTABLEKS R28 R27 K62 ["Type"]
  SETTABLEKS R27 R26 K65 ["Schema"]
  DUPTABLE R27 K70 [{"Placeholder"}]
  SETTABLEKS R23 R27 K69 ["Placeholder"]
  SETTABLEKS R27 R26 K66 ["Renderers"]
  SETTABLEKS R26 R25 K56 ["Created"]
  DUPTABLE R26 K67 [{"Value", "Schema", "Renderers"}]
  LOADK R27 K40 [""]
  SETTABLEKS R27 R26 K64 ["Value"]
  DUPTABLE R27 K68 [{"Type"}]
  LOADK R28 K69 ["Placeholder"]
  SETTABLEKS R28 R27 K62 ["Type"]
  SETTABLEKS R27 R26 K65 ["Schema"]
  DUPTABLE R27 K70 [{"Placeholder"}]
  SETTABLEKS R23 R27 K69 ["Placeholder"]
  SETTABLEKS R27 R26 K66 ["Renderers"]
  SETTABLEKS R26 R25 K58 ["Playability"]
  DUPTABLE R26 K67 [{"Value", "Schema", "Renderers"}]
  LOADK R27 K40 [""]
  SETTABLEKS R27 R26 K64 ["Value"]
  DUPTABLE R27 K68 [{"Type"}]
  LOADK R28 K69 ["Placeholder"]
  SETTABLEKS R28 R27 K62 ["Type"]
  SETTABLEKS R27 R26 K65 ["Schema"]
  DUPTABLE R27 K70 [{"Placeholder"}]
  SETTABLEKS R23 R27 K69 ["Placeholder"]
  SETTABLEKS R27 R26 K66 ["Renderers"]
  SETTABLEKS R26 R25 K62 ["Type"]
  DUPCLOSURE R26 K71 [PROTO_2]
  CAPTURE VAL R14
  DUPCLOSURE R27 K72 [PROTO_10]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R25
  CAPTURE VAL R24
  CAPTURE VAL R20
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R13
  CAPTURE VAL R26
  CAPTURE VAL R12
  CAPTURE VAL R22
  SETGLOBAL R27 K73 ["ExperiencesTable"]
  GETGLOBAL R27 K73 ["ExperiencesTable"]
  RETURN R27 1