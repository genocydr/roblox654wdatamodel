PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 -1 0
  GETTABLEKS R2 R0 K2 ["testHarness"]
  JUMPIFNOTEQKNIL R2 [+3]
  GETUPVAL R1 1
  JUMP [+4]
  GETTABLEKS R2 R0 K2 ["testHarness"]
  GETTABLEKS R1 R2 K3 ["players"]
  GETTABLEKS R3 R0 K2 ["testHarness"]
  JUMPIFNOTEQKNIL R3 [+4]
  GETIMPORT R2 K5 [wait]
  JUMP [+4]
  GETTABLEKS R3 R0 K2 ["testHarness"]
  GETTABLEKS R2 R3 K4 ["wait"]
  DUPTABLE R4 K12 [{"_eraseTimeout", "_trackedPii", "_playerCounter", "_disambiguationIdentifiers", "_waitFn", "_players"}]
  GETTABLEKS R5 R0 K13 ["eraseTimeout"]
  SETTABLEKS R5 R4 K6 ["_eraseTimeout"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K7 ["_trackedPii"]
  LOADN R5 1
  SETTABLEKS R5 R4 K8 ["_playerCounter"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K9 ["_disambiguationIdentifiers"]
  SETTABLEKS R2 R4 K10 ["_waitFn"]
  SETTABLEKS R1 R4 K11 ["_players"]
  GETUPVAL R5 2
  FASTCALL2 SETMETATABLE R4 R5 [+3]
  GETIMPORT R3 K15 [setmetatable]
  CALL R3 2 1
  RETURN R3 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["_disambiguationIdentifiers"]
  GETTABLEKS R4 R1 K1 ["UserId"]
  GETTABLE R2 R3 R4
  JUMPIFNOTEQKNIL R2 [+15]
  GETTABLEKS R2 R0 K2 ["_playerCounter"]
  GETTABLEKS R3 R0 K0 ["_disambiguationIdentifiers"]
  GETTABLEKS R4 R1 K1 ["UserId"]
  GETTABLEKS R5 R0 K2 ["_playerCounter"]
  SETTABLE R5 R3 R4
  GETTABLEKS R3 R0 K2 ["_playerCounter"]
  ADDK R3 R3 K3 [1]
  SETTABLEKS R3 R0 K2 ["_playerCounter"]
  GETTABLEKS R3 R0 K4 ["_trackedPii"]
  GETTABLEKS R5 R1 K1 ["UserId"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K6 [tostring]
  CALL R4 1 1
  GETIMPORT R5 K9 [string.format]
  LOADK R6 K10 ["UserId(%d)"]
  MOVE R7 R2
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R3 R0 K4 ["_trackedPii"]
  GETTABLEKS R5 R1 K11 ["Name"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K6 [tostring]
  CALL R4 1 1
  GETIMPORT R5 K9 [string.format]
  LOADK R6 K12 ["UserName(%d)"]
  MOVE R7 R2
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R3 R0 K4 ["_trackedPii"]
  GETTABLEKS R5 R1 K13 ["DisplayName"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K6 [tostring]
  CALL R4 1 1
  GETIMPORT R5 K9 [string.format]
  LOADK R6 K14 ["DisplayName(%d)"]
  MOVE R7 R2
  CALL R5 2 1
  SETTABLE R5 R3 R4
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_trackedPii"]
  GETTABLEKS R4 R1 K1 ["UserId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K3 [tostring]
  CALL R3 1 1
  LOADNIL R4
  SETTABLE R4 R2 R3
  GETTABLEKS R2 R0 K0 ["_trackedPii"]
  GETTABLEKS R4 R1 K4 ["Name"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K3 [tostring]
  CALL R3 1 1
  LOADNIL R4
  SETTABLE R4 R2 R3
  GETTABLEKS R2 R0 K0 ["_trackedPii"]
  GETTABLEKS R4 R1 K5 ["DisplayName"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K3 [tostring]
  CALL R3 1 1
  LOADNIL R4
  SETTABLE R4 R2 R3
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["_addPlayerToEraseMap"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_waitFn"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["_eraseTimeout"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["_players"]
  GETTABLEKS R3 R0 K3 ["UserId"]
  NAMECALL R1 R1 K4 ["GetPlayerByUserId"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+6]
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K5 ["_removePlayerFromEraseMap"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K1 [ipairs]
  GETTABLEKS R2 R0 K2 ["_players"]
  NAMECALL R2 R2 K3 ["GetPlayers"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_INEXT R1
  MOVE R8 R5
  NAMECALL R6 R0 K4 ["_addPlayerToEraseMap"]
  CALL R6 2 0
  FORGLOOP R1 2 [inext] [-5]
  GETTABLEKS R2 R0 K2 ["_players"]
  GETTABLEKS R1 R2 K5 ["PlayerAdded"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K6 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K7 ["_playerAddedConnection"]
  GETTABLEKS R2 R0 K2 ["_players"]
  GETTABLEKS R1 R2 K8 ["PlayerRemoving"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K6 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K9 ["_playerRemovingConnection"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_playerAddedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_playerRemovingConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R3 R0 K2 ["_trackedPii"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETIMPORT R7 K5 [string.gsub]
  MOVE R8 R1
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 1
  MOVE R1 R7
  FORGLOOP R2 2 [-8]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RunService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["t"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["strictInterface"]
  DUPTABLE R5 K13 [{"eraseTimeout", "testHarness"}]
  GETTABLEKS R6 R3 K14 ["number"]
  SETTABLEKS R6 R5 K11 ["eraseTimeout"]
  GETTABLEKS R6 R3 K15 ["optional"]
  GETTABLEKS R7 R3 K10 ["strictInterface"]
  DUPTABLE R8 K18 [{"players", "wait"}]
  GETTABLEKS R9 R3 K19 ["union"]
  GETTABLEKS R10 R3 K20 ["instanceOf"]
  LOADK R11 K4 ["Players"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K21 ["interface"]
  DUPTABLE R12 K26 [{"GetPlayers", "GetPlayerByUserId", "PlayerAdded", "PlayerRemoving"}]
  GETTABLEKS R13 R3 K27 ["callback"]
  SETTABLEKS R13 R12 K22 ["GetPlayers"]
  GETTABLEKS R13 R3 K27 ["callback"]
  SETTABLEKS R13 R12 K23 ["GetPlayerByUserId"]
  GETTABLEKS R13 R3 K28 ["RBXScriptSignal"]
  SETTABLEKS R13 R12 K24 ["PlayerAdded"]
  GETTABLEKS R13 R3 K28 ["RBXScriptSignal"]
  SETTABLEKS R13 R12 K25 ["PlayerRemoving"]
  CALL R11 1 -1
  CALL R9 -1 1
  SETTABLEKS R9 R8 K16 ["players"]
  GETTABLEKS R9 R3 K27 ["callback"]
  SETTABLEKS R9 R8 K17 ["wait"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K12 ["testHarness"]
  CALL R4 1 1
  NEWTABLE R5 0 0
  SETTABLEKS R5 R5 K29 ["__index"]
  DUPCLOSURE R6 K30 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K31 ["new"]
  DUPCLOSURE R6 K32 [PROTO_1]
  SETTABLEKS R6 R5 K33 ["_addPlayerToEraseMap"]
  DUPCLOSURE R6 K34 [PROTO_2]
  SETTABLEKS R6 R5 K35 ["_removePlayerFromEraseMap"]
  DUPCLOSURE R6 K36 [PROTO_5]
  SETTABLEKS R6 R5 K37 ["startTracking"]
  DUPCLOSURE R6 K38 [PROTO_6]
  SETTABLEKS R6 R5 K39 ["stopTracking"]
  DUPCLOSURE R6 K40 [PROTO_7]
  SETTABLEKS R6 R5 K41 ["cleanPii"]
  RETURN R5 1
