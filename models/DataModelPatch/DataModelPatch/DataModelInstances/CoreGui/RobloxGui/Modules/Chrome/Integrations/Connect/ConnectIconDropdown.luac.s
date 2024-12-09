PROTO_0:
  JUMPIFNOTEQKS R0 K0 [""] [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["availability"]
  NAMECALL R1 R1 K2 ["available"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["availability"]
  NAMECALL R1 R1 K3 ["unavailable"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["Chrome"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R3 R1 K10 ["Service"]
  CALL R2 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R0 K11 ["Workspace"]
  GETTABLEKS R6 R7 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["SharedFlags"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K14 ["GetFFlagAppChatAddConnectUnibarForActiveSquad"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R0 K11 ["Workspace"]
  GETTABLEKS R6 R7 K12 ["Packages"]
  GETTABLEKS R5 R6 K15 ["AppChat"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K16 ["App"]
  GETTABLEKS R5 R6 K17 ["InExperienceAppChatModal"]
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R0 K11 ["Workspace"]
  GETTABLEKS R9 R10 K12 ["Packages"]
  GETTABLEKS R8 R9 K18 ["SocialExperiments"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K19 ["SquadExperimentation"]
  GETIMPORT R7 K9 [require]
  GETIMPORT R10 K5 [script]
  GETTABLEKS R9 R10 K20 ["Parent"]
  GETTABLEKS R8 R9 K21 ["registerConnectIntegration"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETIMPORT R11 K5 [script]
  GETTABLEKS R10 R11 K20 ["Parent"]
  GETTABLEKS R9 R10 K22 ["isConnectDropdownEnabled"]
  CALL R8 1 1
  LOADNIL R9
  MOVE R10 R8
  CALL R10 0 1
  JUMPIFNOT R10 [+40]
  MOVE R10 R7
  LOADK R11 K23 ["connect_dropdown"]
  GETTABLEKS R13 R2 K24 ["AvailabilitySignal"]
  GETTABLEKS R12 R13 K25 ["Available"]
  CALL R10 2 1
  MOVE R9 R10
  MOVE R10 R3
  CALL R10 0 1
  JUMPIFNOT R10 [+29]
  GETTABLEKS R10 R6 K26 ["getSquadEntrypointsEnabled"]
  CALL R10 0 1
  JUMPIFNOT R10 [+25]
  GETTABLEKS R12 R5 K27 ["default"]
  GETTABLEKS R11 R12 K28 ["currentSquadId"]
  JUMPIFNOTEQKS R11 K29 [""] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  JUMPIFNOT R10 [+5]
  GETTABLEKS R11 R9 K30 ["availability"]
  NAMECALL R11 R11 K31 ["unavailable"]
  CALL R11 1 0
  GETTABLEKS R13 R5 K27 ["default"]
  GETTABLEKS R12 R13 K32 ["currentSquadIdSignal"]
  GETTABLEKS R11 R12 K33 ["Event"]
  NEWCLOSURE R13 P0
  CAPTURE REF R9
  NAMECALL R11 R11 K34 ["Connect"]
  CALL R11 2 0
  CLOSEUPVALS R9
  RETURN R9 1
