MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DevConsoleCollisionPerfVisualization"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 1
  NEWTABLE R1 16 0
  JUMPIFNOT R0 [+19]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K9 ["AreCollisionCostsShown"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K10 ["Highlights assemblies in the world with color from green to red based on how costly the collision computation is."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 2
  LOADK R4 K11 ["Performance"]
  LOADK R5 K12 ["Collision"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K13 ["Box"]
  SETTABLEKS R3 R2 K7 ["type"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K9 ["AreCollisionCostsShown"]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K14 ["AreAnchorsShown"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K15 ["When set to true, parts that are BasePart.Anchored will show a gray surface outline on the surface of the part’s bounding box that is currently facing the ground."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 2
  LOADK R4 K16 ["Behavior"]
  LOADK R5 K17 ["Constraints"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K18 ["Adorn"]
  SETTABLEKS R3 R2 K7 ["type"]
  SETTABLEKS R2 R1 K14 ["AreAnchorsShown"]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K19 ["AreUnalignedPartsShown"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K20 ["When set to true, parts that aren’t aligned on the 1x1x1 grid will be outlined yellow."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 1
  LOADK R4 K16 ["Behavior"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K13 ["Box"]
  SETTABLEKS R3 R2 K7 ["type"]
  SETTABLEKS R2 R1 K19 ["AreUnalignedPartsShown"]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K21 ["AreContactIslandsShown"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K22 ["When set to true, each contact island will render SelectionBox adorns on the parts in contact islands, where each contact island is assigned a random color."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 2
  LOADK R4 K11 ["Performance"]
  LOADK R5 K12 ["Collision"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K13 ["Box"]
  SETTABLEKS R3 R2 K7 ["type"]
  SETTABLEKS R2 R1 K21 ["AreContactIslandsShown"]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K23 ["AreOwnersShown"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K24 ["When set to true, each Player’s character is outlined with a unique color, and each part that the player has network ownership over is outlined with the same color."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 2
  LOADK R4 K16 ["Behavior"]
  LOADK R5 K25 ["Networking"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K13 ["Box"]
  SETTABLEKS R3 R2 K7 ["type"]
  SETTABLEKS R2 R1 K23 ["AreOwnersShown"]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K26 ["AreRegionsShown"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K27 ["When set to true, a cylinder is drawn around each Player’s character, representing their Player.SimulationRadius."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 2
  LOADK R4 K16 ["Behavior"]
  LOADK R5 K25 ["Networking"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K18 ["Adorn"]
  SETTABLEKS R3 R2 K7 ["type"]
  SETTABLEKS R2 R1 K26 ["AreRegionsShown"]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K28 ["AreAwakePartsHighlighted"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K29 ["When set to true, parts that are actively being physically simulated will have a red outline."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 3
  LOADK R4 K11 ["Performance"]
  LOADK R5 K30 ["Forces"]
  LOADK R6 K31 ["Collison"]
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K13 ["Box"]
  SETTABLEKS R3 R2 K7 ["type"]
  SETTABLEKS R2 R1 K28 ["AreAwakePartsHighlighted"]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K32 ["AreContactPointsShown"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K33 ["When set to true, sphere adorns will be drawn at the contact points of each part where physics interactions are occurring. Each sphere also has an arrow drawn in 3D, facing the surface that the contact point is detecting."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 2
  LOADK R4 K11 ["Performance"]
  LOADK R5 K34 ["Contacts"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K18 ["Adorn"]
  SETTABLEKS R3 R2 K7 ["type"]
  SETTABLEKS R2 R1 K32 ["AreContactPointsShown"]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K35 ["AreJointCoordinatesShown"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K36 ["When set to true, XYZ axes are rendered at the BasePart.CFrame of every part."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 1
  LOADK R4 K16 ["Behavior"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K18 ["Adorn"]
  SETTABLEKS R3 R2 K7 ["type"]
  SETTABLEKS R2 R1 K35 ["AreJointCoordinatesShown"]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K37 ["AreMechanismsShown"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K38 ["When set to true, every individual mechanism of parts is given a unique color."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 2
  LOADK R4 K16 ["Behavior"]
  LOADK R5 K17 ["Constraints"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K13 ["Box"]
  SETTABLEKS R3 R2 K7 ["type"]
  SETTABLEKS R2 R1 K37 ["AreMechanismsShown"]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K39 ["AreAssembliesShown"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K40 ["When set to true, each physics assembly is assigned a unique color and the Part associated with the assembly are outlined with the color. Parts that are attached together by JointInstance will share the same color."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 2
  LOADK R4 K16 ["Behavior"]
  LOADK R5 K17 ["Constraints"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K13 ["Box"]
  SETTABLEKS R3 R2 K7 ["type"]
  SETTABLEKS R2 R1 K39 ["AreAssembliesShown"]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K41 ["IsTreeShown"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K42 ["When set to true, the joint connections of each part, and the states of their underlying primitive components are visualized as a spanning tree."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 2
  LOADK R4 K16 ["Behavior"]
  LOADK R5 K17 ["Constraints"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K18 ["Adorn"]
  SETTABLEKS R3 R2 K7 ["type"]
  SETTABLEKS R2 R1 K41 ["IsTreeShown"]
  DUPTABLE R2 K8 [{"name", "description", "tags", "type"}]
  LOADK R3 K43 ["AreTimestepsShown"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K44 ["When set to true, all non-sleeping parts are outlined with red, yellow, or green corresponding to their simulation timestep of 240hz, 120hz, or 60hz."]
  SETTABLEKS R3 R2 K5 ["description"]
  NEWTABLE R3 0 2
  LOADK R4 K11 ["Performance"]
  LOADK R5 K30 ["Forces"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K6 ["tags"]
  LOADK R3 K13 ["Box"]
  SETTABLEKS R3 R2 K7 ["type"]
  SETTABLEKS R2 R1 K43 ["AreTimestepsShown"]
  RETURN R1 1
