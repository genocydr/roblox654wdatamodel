MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["t"]
  CALL R1 1 1
  NEWTABLE R2 4 0
  GETTABLEKS R3 R1 K8 ["strictInterface"]
  DUPTABLE R4 K15 [{"id", "name", "text", "userId", "timestamp", "adornee"}]
  GETTABLEKS R5 R1 K16 ["string"]
  SETTABLEKS R5 R4 K9 ["id"]
  GETTABLEKS R5 R1 K16 ["string"]
  SETTABLEKS R5 R4 K10 ["name"]
  GETTABLEKS R5 R1 K16 ["string"]
  SETTABLEKS R5 R4 K11 ["text"]
  GETTABLEKS R5 R1 K16 ["string"]
  SETTABLEKS R5 R4 K12 ["userId"]
  GETTABLEKS R5 R1 K17 ["number"]
  SETTABLEKS R5 R4 K13 ["timestamp"]
  GETTABLEKS R5 R1 K18 ["union"]
  GETTABLEKS R6 R1 K19 ["instanceIsA"]
  LOADK R7 K20 ["BasePart"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K21 ["instanceOf"]
  LOADK R8 K22 ["Model"]
  CALL R7 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K14 ["adornee"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K23 ["IMessage"]
  GETTABLEKS R3 R1 K24 ["interface"]
  DUPTABLE R4 K30 [{"ID", "SpeakerUserId", "FromSpeaker", "Time", "Message"}]
  GETTABLEKS R5 R1 K17 ["number"]
  SETTABLEKS R5 R4 K25 ["ID"]
  GETTABLEKS R5 R1 K17 ["number"]
  SETTABLEKS R5 R4 K26 ["SpeakerUserId"]
  GETTABLEKS R5 R1 K16 ["string"]
  SETTABLEKS R5 R4 K27 ["FromSpeaker"]
  GETTABLEKS R5 R1 K17 ["number"]
  SETTABLEKS R5 R4 K28 ["Time"]
  GETTABLEKS R5 R1 K31 ["optional"]
  GETTABLEKS R6 R1 K16 ["string"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K29 ["Message"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K32 ["IMessageData"]
  DUPTABLE R3 K56 [{"BubbleDuration", "MaxBubbles", "BackgroundColor3", "TextColor3", "TextSize", "Font", "Transparency", "CornerEnabled", "CornerRadius", "TailVisible", "Padding", "MaxWidth", "BackgroundImage", "BackgroundGradient", "SizeAnimation", "TransparencyAnimation", "VerticalStudsOffset", "LocalPlayerStudsOffset", "BubblesSpacing", "MinimizeDistance", "MaxDistance", "AdorneeName", "Voice"}]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K17 ["number"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K33 ["BubbleDuration"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K17 ["number"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K34 ["MaxBubbles"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K57 ["Color3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K35 ["BackgroundColor3"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K57 ["Color3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K36 ["TextColor3"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K17 ["number"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K37 ["TextSize"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K58 ["enum"]
  GETIMPORT R6 K60 [Enum.Font]
  CALL R5 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K38 ["Font"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K17 ["number"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K39 ["Transparency"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K61 ["boolean"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K40 ["CornerEnabled"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K62 ["UDim"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K41 ["CornerRadius"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K61 ["boolean"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K42 ["TailVisible"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K17 ["number"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K43 ["Padding"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K17 ["number"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K44 ["MaxWidth"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K8 ["strictInterface"]
  DUPTABLE R6 K71 [{"Image", "ImageColor3", "ImageRectOffset", "ImageRectSize", "ScaleType", "SliceCenter", "SliceScale", "TileSize"}]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K16 ["string"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K63 ["Image"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K57 ["Color3"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K64 ["ImageColor3"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K72 ["Vector2"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K65 ["ImageRectOffset"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K72 ["Vector2"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K66 ["ImageRectSize"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K58 ["enum"]
  GETIMPORT R9 K73 [Enum.ScaleType]
  CALL R8 1 -1
  CALL R7 -1 1
  SETTABLEKS R7 R6 K67 ["ScaleType"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K74 ["Rect"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K68 ["SliceCenter"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K17 ["number"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K69 ["SliceScale"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K75 ["UDim2"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K70 ["TileSize"]
  CALL R5 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K45 ["BackgroundImage"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K8 ["strictInterface"]
  DUPTABLE R6 K80 [{"Enabled", "Color", "Offset", "Rotation", "Transparency"}]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K61 ["boolean"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K76 ["Enabled"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K81 ["ColorSequence"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K77 ["Color"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K72 ["Vector2"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K78 ["Offset"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K17 ["number"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K79 ["Rotation"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K82 ["NumberSequence"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K39 ["Transparency"]
  CALL R5 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K46 ["BackgroundGradient"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K8 ["strictInterface"]
  DUPTABLE R6 K85 [{"Enabled", "SpringDampingRatio", "SpringFrequency"}]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K61 ["boolean"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K76 ["Enabled"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K17 ["number"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K83 ["SpringDampingRatio"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K17 ["number"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K84 ["SpringFrequency"]
  CALL R5 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K47 ["SizeAnimation"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K8 ["strictInterface"]
  DUPTABLE R6 K85 [{"Enabled", "SpringDampingRatio", "SpringFrequency"}]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K61 ["boolean"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K76 ["Enabled"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K17 ["number"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K83 ["SpringDampingRatio"]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K17 ["number"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K84 ["SpringFrequency"]
  CALL R5 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K48 ["TransparencyAnimation"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K17 ["number"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K49 ["VerticalStudsOffset"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K86 ["Vector3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K50 ["LocalPlayerStudsOffset"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K17 ["number"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K51 ["BubblesSpacing"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K17 ["number"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K52 ["MinimizeDistance"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K17 ["number"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K53 ["MaxDistance"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K16 ["string"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K54 ["AdorneeName"]
  GETTABLEKS R4 R1 K31 ["optional"]
  GETTABLEKS R5 R1 K8 ["strictInterface"]
  DUPTABLE R6 K88 [{"ShowIndicator"}]
  GETTABLEKS R7 R1 K31 ["optional"]
  GETTABLEKS R8 R1 K61 ["boolean"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K87 ["ShowIndicator"]
  CALL R5 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K55 ["Voice"]
  NEWTABLE R4 0 0
  GETIMPORT R5 K90 [pairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_NEXT R5
  SETTABLE R9 R4 R8
  FORGLOOP R5 2 [-2]
  GETTABLEKS R5 R1 K31 ["optional"]
  GETTABLEKS R6 R1 K91 ["map"]
  GETTABLEKS R7 R1 K16 ["string"]
  GETTABLEKS R8 R1 K8 ["strictInterface"]
  MOVE R9 R4
  CALL R8 1 -1
  CALL R6 -1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R3 K92 ["UserSpecificSettings"]
  GETTABLEKS R5 R1 K8 ["strictInterface"]
  MOVE R6 R3
  CALL R5 1 1
  SETTABLEKS R5 R2 K93 ["IChatSettings"]
  RETURN R2 1
