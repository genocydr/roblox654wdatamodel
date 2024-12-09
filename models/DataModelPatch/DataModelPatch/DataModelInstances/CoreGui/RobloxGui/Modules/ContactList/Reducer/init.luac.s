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
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  LOADK R5 K9 ["RobloxGui"]
  NAMECALL R3 R0 K10 ["WaitForChild"]
  CALL R3 2 1
  GETTABLEKS R5 R3 K11 ["Modules"]
  GETTABLEKS R4 R5 K12 ["ContactList"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R4 K13 ["dependencies"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K14 ["RoduxCall"]
  GETTABLEKS R7 R5 K15 ["RoduxFriends"]
  GETTABLEKS R8 R5 K16 ["RoduxPresence"]
  GETTABLEKS R9 R5 K17 ["RoduxUsers"]
  GETTABLEKS R10 R5 K18 ["RoduxNetworking"]
  GETIMPORT R11 K6 [require]
  GETIMPORT R13 K20 [script]
  GETTABLEKS R12 R13 K21 ["Navigation"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETIMPORT R14 K20 [script]
  GETTABLEKS R13 R14 K22 ["Dialog"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETIMPORT R15 K20 [script]
  GETTABLEKS R14 R15 K23 ["PlayerMenu"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETIMPORT R16 K20 [script]
  GETTABLEKS R15 R16 K24 ["LastRemovedFriend"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K25 ["combineReducers"]
  DUPTABLE R16 K31 [{"Navigation", "Dialog", "PlayerMenu", "LastRemovedFriend", "Call", "Friends", "Presence", "Users", "NetworkStatus"}]
  SETTABLEKS R11 R16 K21 ["Navigation"]
  SETTABLEKS R12 R16 K22 ["Dialog"]
  SETTABLEKS R13 R16 K23 ["PlayerMenu"]
  SETTABLEKS R14 R16 K24 ["LastRemovedFriend"]
  GETTABLEKS R17 R6 K32 ["installReducer"]
  CALL R17 0 1
  SETTABLEKS R17 R16 K26 ["Call"]
  GETTABLEKS R17 R7 K32 ["installReducer"]
  CALL R17 0 1
  SETTABLEKS R17 R16 K27 ["Friends"]
  GETTABLEKS R17 R8 K32 ["installReducer"]
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["Presence"]
  GETTABLEKS R17 R9 K32 ["installReducer"]
  CALL R17 0 1
  SETTABLEKS R17 R16 K29 ["Users"]
  GETTABLEKS R17 R10 K32 ["installReducer"]
  CALL R17 0 1
  SETTABLEKS R17 R16 K30 ["NetworkStatus"]
  CALL R15 1 1
  RETURN R15 1
