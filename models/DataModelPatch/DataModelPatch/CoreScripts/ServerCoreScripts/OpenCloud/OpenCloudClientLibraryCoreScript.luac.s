PROTO_0:
  NEWTABLE R1 2 0
  LOADN R2 144
  SETTABLEKS R2 R1 K0 ["StatusCode"]
  GETUPVAL R2 0
  NEWTABLE R4 2 0
  LOADK R5 K1 ["INVALID_ARGUMENT"]
  SETTABLEKS R5 R4 K2 ["code"]
  SETTABLEKS R0 R4 K3 ["message"]
  NAMECALL R2 R2 K4 ["JSONEncode"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K5 ["Body"]
  RETURN R1 1

PROTO_1:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R2
  RETURN R2 1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K2 ["table"] [+11]
  GETGLOBAL R2 K3 ["InvalidArgumentError"]
  LOADK R4 K4 ["Argument not a table: %*."]
  MOVE R6 R1
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 -1
  RETURN R2 -1
  LOADNIL R2
  RETURN R2 1

PROTO_2:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R2
  RETURN R2 1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K2 ["number"] [+11]
  GETGLOBAL R2 K3 ["InvalidArgumentError"]
  LOADK R4 K4 ["Argument not a number: %*."]
  MOVE R6 R1
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 -1
  RETURN R2 -1
  LOADNIL R2
  RETURN R2 1

PROTO_3:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R2
  RETURN R2 1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K2 ["string"] [+11]
  GETGLOBAL R2 K3 ["InvalidArgumentError"]
  LOADK R4 K4 ["Argument not a string: %*."]
  MOVE R6 R1
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 -1
  RETURN R2 -1
  LOADNIL R2
  RETURN R2 1

PROTO_4:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R2
  RETURN R2 1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K2 ["number"] [+18]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K3 ["string"] [+11]
  GETGLOBAL R2 K4 ["InvalidArgumentError"]
  LOADK R4 K5 ["Argument not an enum: %*."]
  MOVE R6 R1
  NAMECALL R4 R4 K6 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 -1
  RETURN R2 -1
  LOADNIL R2
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["BaseUrl"]
  NAMECALL R0 R0 K1 ["lower"]
  CALL R0 1 1
  GETIMPORT R1 K4 [string.gsub]
  MOVE R2 R0
  LOADK R3 K5 ["http:"]
  LOADK R4 K6 ["https:"]
  CALL R1 3 1
  MOVE R0 R1
  GETIMPORT R1 K4 [string.gsub]
  MOVE R2 R0
  LOADK R3 K7 ["www"]
  LOADK R4 K8 ["apis"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_6:
  JUMPIFEQKNIL R0 [+7]
  GETTABLEKS R1 R0 K0 ["x-api-key"]
  JUMPIFEQKNIL R1 [+3]
  LOADK R1 K1 [""]
  RETURN R1 1
  GETUPVAL R1 0
  NAMECALL R1 R1 K2 ["IsStudio"]
  CALL R1 1 1
  JUMPIFNOT R1 [+2]
  LOADK R1 K3 ["user"]
  RETURN R1 1
  LOADK R1 K4 ["rcc"]
  RETURN R1 1

PROTO_7:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R2
  RETURN R2 1
  GETGLOBAL R2 K0 ["verifyTable"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETTABLEKS R3 R0 K1 ["path"]
  JUMPIFNOTEQKNIL R3 [+11]
  GETGLOBAL R3 K2 ["InvalidArgumentError"]
  LOADK R5 K3 ["Required argument was not provided: %*.path."]
  MOVE R7 R1
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 -1
  RETURN R3 -1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K1 ["path"]
  LOADK R6 K6 ["%*.path"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  LOADNIL R3
  RETURN R3 1

PROTO_8:
  GETTABLEKS R2 R0 K0 ["path"]
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K2 ["URL parameter provided was nil: getUniverseRequest.path."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K5 [string.match]
  GETTABLEKS R3 R0 K0 ["path"]
  LOADK R4 K6 ["^universes/([^/]+)$"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K7 ["URL parameter was not formatted correctly: getUniverseRequest.path."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K9 [string.format]
  LOADK R3 K10 ["%s%s/cloud/v2/%s"]
  GETGLOBAL R4 K11 ["getApisUrl"]
  CALL R4 0 1
  GETGLOBAL R5 K12 ["getUrlPrefix"]
  MOVE R6 R1
  CALL R5 1 1
  GETTABLEKS R7 R0 K0 ["path"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K14 [tostring]
  CALL R6 1 1
  CALL R2 4 1
  RETURN R2 1

PROTO_9:
  JUMPIFNOTEQKNIL R0 [+6]
  GETGLOBAL R2 K0 ["InvalidArgumentError"]
  LOADK R3 K1 ["Request provided was nil."]
  CALL R2 1 -1
  RETURN R2 -1
  GETGLOBAL R2 K2 ["verifyGetUniverseRequest"]
  MOVE R3 R0
  LOADK R4 K3 ["getUniverseRequest"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K4 ["getUniverseUrl"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K6 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K7 ["string"] [+2]
  RETURN R3 1
  GETUPVAL R4 0
  NEWTABLE R6 4 0
  SETTABLEKS R3 R6 K8 ["Url"]
  LOADK R7 K9 ["GET"]
  SETTABLEKS R7 R6 K10 ["Request_Type"]
  SETTABLEKS R1 R6 K11 ["Headers"]
  NAMECALL R4 R4 K12 ["HttpRequestAsync"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_10:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R2
  RETURN R2 1
  GETGLOBAL R2 K0 ["verifyTable"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETTABLEKS R3 R0 K1 ["path"]
  JUMPIFNOTEQKNIL R3 [+11]
  GETGLOBAL R3 K2 ["InvalidArgumentError"]
  LOADK R5 K3 ["Required argument was not provided: %*.path."]
  MOVE R7 R1
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 -1
  RETURN R3 -1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K1 ["path"]
  LOADK R6 K6 ["%*.path"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETTABLEKS R3 R0 K7 ["text"]
  JUMPIFNOTEQKNIL R3 [+11]
  GETGLOBAL R3 K2 ["InvalidArgumentError"]
  LOADK R5 K8 ["Required argument was not provided: %*.text."]
  MOVE R7 R1
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 -1
  RETURN R3 -1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K7 ["text"]
  LOADK R6 K9 ["%*.text"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K10 ["sourceLanguageCode"]
  LOADK R6 K11 ["%*.sourceLanguageCode"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETTABLEKS R3 R0 K12 ["targetLanguageCodes"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETGLOBAL R8 K5 ["verifyString"]
  MOVE R9 R7
  LOADK R11 K13 ["%*.targetLanguageCodes[%*]"]
  MOVE R13 R1
  MOVE R14 R6
  NAMECALL R11 R11 K4 ["format"]
  CALL R11 3 1
  MOVE R10 R11
  CALL R8 2 1
  MOVE R2 R8
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  FORGLOOP R3 2 [-16]
  LOADNIL R3
  RETURN R3 1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["path"]
  JUMPIFNOTEQKNIL R1 [+6]
  GETGLOBAL R1 K1 ["InvalidArgumentError"]
  LOADK R2 K2 ["URL parameter provided was nil: translateTextRequest.path."]
  CALL R1 1 -1
  RETURN R1 -1
  GETIMPORT R1 K5 [string.match]
  GETTABLEKS R2 R0 K0 ["path"]
  LOADK R3 K6 ["^universes/([^/]+)$"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+6]
  GETGLOBAL R1 K1 ["InvalidArgumentError"]
  LOADK R2 K7 ["URL parameter was not formatted correctly: translateTextRequest.path."]
  CALL R1 1 -1
  RETURN R1 -1
  GETIMPORT R1 K9 [string.format]
  LOADK R2 K10 ["%s%s/cloud/v2/%s:translateText"]
  GETGLOBAL R3 K11 ["getApisUrl"]
  CALL R3 0 1
  GETGLOBAL R4 K12 ["getUrlPrefix"]
  CALL R4 0 1
  GETTABLEKS R6 R0 K0 ["path"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K14 [tostring]
  CALL R5 1 1
  CALL R1 4 1
  RETURN R1 1

PROTO_12:
  JUMPIFNOTEQKNIL R0 [+6]
  GETGLOBAL R1 K0 ["InvalidArgumentError"]
  LOADK R2 K1 ["Request provided was nil."]
  CALL R1 1 -1
  RETURN R1 -1
  GETGLOBAL R1 K2 ["verifyTranslateTextRequest"]
  MOVE R2 R0
  LOADK R3 K3 ["translateTextRequest"]
  CALL R1 2 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETGLOBAL R2 K4 ["translateTextUrl"]
  MOVE R3 R0
  CALL R2 1 1
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K6 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K7 ["string"] [+2]
  RETURN R2 1
  GETUPVAL R3 0
  MOVE R5 R0
  NAMECALL R3 R3 K8 ["JSONEncode"]
  CALL R3 2 1
  GETUPVAL R4 1
  NEWTABLE R6 4 0
  SETTABLEKS R2 R6 K9 ["Url"]
  LOADK R7 K10 ["POST"]
  SETTABLEKS R7 R6 K11 ["Request_Type"]
  SETTABLEKS R3 R6 K12 ["Body"]
  NAMECALL R4 R4 K13 ["HttpRequestAsync"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_13:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R2
  RETURN R2 1
  GETGLOBAL R2 K0 ["verifyTable"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETTABLEKS R3 R0 K1 ["path"]
  JUMPIFNOTEQKNIL R3 [+11]
  GETGLOBAL R3 K2 ["InvalidArgumentError"]
  LOADK R5 K3 ["Required argument was not provided: %*.path."]
  MOVE R7 R1
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 -1
  RETURN R3 -1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K1 ["path"]
  LOADK R6 K6 ["%*.path"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  LOADNIL R3
  RETURN R3 1

PROTO_14:
  GETTABLEKS R2 R0 K0 ["path"]
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K2 ["URL parameter provided was nil: getPlaceRequest.path."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K5 [string.match]
  GETTABLEKS R3 R0 K0 ["path"]
  LOADK R4 K6 ["^universes/([^/]+)/places/([^/]+)$"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K7 ["URL parameter was not formatted correctly: getPlaceRequest.path."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K9 [string.format]
  LOADK R3 K10 ["%s%s/cloud/v2/%s"]
  GETGLOBAL R4 K11 ["getApisUrl"]
  CALL R4 0 1
  GETGLOBAL R5 K12 ["getUrlPrefix"]
  MOVE R6 R1
  CALL R5 1 1
  GETTABLEKS R7 R0 K0 ["path"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K14 [tostring]
  CALL R6 1 1
  CALL R2 4 1
  RETURN R2 1

PROTO_15:
  JUMPIFNOTEQKNIL R0 [+6]
  GETGLOBAL R2 K0 ["InvalidArgumentError"]
  LOADK R3 K1 ["Request provided was nil."]
  CALL R2 1 -1
  RETURN R2 -1
  GETGLOBAL R2 K2 ["verifyGetPlaceRequest"]
  MOVE R3 R0
  LOADK R4 K3 ["getPlaceRequest"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K4 ["getPlaceUrl"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K6 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K7 ["string"] [+2]
  RETURN R3 1
  GETUPVAL R4 0
  NEWTABLE R6 4 0
  SETTABLEKS R3 R6 K8 ["Url"]
  LOADK R7 K9 ["GET"]
  SETTABLEKS R7 R6 K10 ["Request_Type"]
  SETTABLEKS R1 R6 K11 ["Headers"]
  NAMECALL R4 R4 K12 ["HttpRequestAsync"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_16:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R2
  RETURN R2 1
  GETGLOBAL R2 K0 ["verifyTable"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETTABLEKS R3 R0 K1 ["path"]
  JUMPIFNOTEQKNIL R3 [+11]
  GETGLOBAL R3 K2 ["InvalidArgumentError"]
  LOADK R5 K3 ["Required argument was not provided: %*.path."]
  MOVE R7 R1
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 -1
  RETURN R3 -1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K1 ["path"]
  LOADK R6 K6 ["%*.path"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  LOADNIL R3
  RETURN R3 1

PROTO_17:
  GETTABLEKS R2 R0 K0 ["path"]
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K2 ["URL parameter provided was nil: getGroupRequest.path."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K5 [string.match]
  GETTABLEKS R3 R0 K0 ["path"]
  LOADK R4 K6 ["^groups/([^/]+)$"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K7 ["URL parameter was not formatted correctly: getGroupRequest.path."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K9 [string.format]
  LOADK R3 K10 ["%s%s/cloud/v2/%s"]
  GETGLOBAL R4 K11 ["getApisUrl"]
  CALL R4 0 1
  GETGLOBAL R5 K12 ["getUrlPrefix"]
  MOVE R6 R1
  CALL R5 1 1
  GETTABLEKS R7 R0 K0 ["path"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K14 [tostring]
  CALL R6 1 1
  CALL R2 4 1
  RETURN R2 1

PROTO_18:
  JUMPIFNOTEQKNIL R0 [+6]
  GETGLOBAL R2 K0 ["InvalidArgumentError"]
  LOADK R3 K1 ["Request provided was nil."]
  CALL R2 1 -1
  RETURN R2 -1
  GETGLOBAL R2 K2 ["verifyGetGroupRequest"]
  MOVE R3 R0
  LOADK R4 K3 ["getGroupRequest"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K4 ["getGroupUrl"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K6 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K7 ["string"] [+2]
  RETURN R3 1
  GETUPVAL R4 0
  NEWTABLE R6 4 0
  SETTABLEKS R3 R6 K8 ["Url"]
  LOADK R7 K9 ["GET"]
  SETTABLEKS R7 R6 K10 ["Request_Type"]
  SETTABLEKS R1 R6 K11 ["Headers"]
  NAMECALL R4 R4 K12 ["HttpRequestAsync"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_19:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R2
  RETURN R2 1
  GETGLOBAL R2 K0 ["verifyTable"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETTABLEKS R3 R0 K1 ["parent"]
  JUMPIFNOTEQKNIL R3 [+11]
  GETGLOBAL R3 K2 ["InvalidArgumentError"]
  LOADK R5 K3 ["Required argument was not provided: %*.parent."]
  MOVE R7 R1
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 -1
  RETURN R3 -1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K1 ["parent"]
  LOADK R6 K6 ["%*.parent"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K7 ["verifyNumber"]
  GETTABLEKS R4 R0 K8 ["maxPageSize"]
  LOADK R6 K9 ["%*.maxPageSize"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K10 ["pageToken"]
  LOADK R6 K11 ["%*.pageToken"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K12 ["filter"]
  LOADK R6 K13 ["%*.filter"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  LOADNIL R3
  RETURN R3 1

PROTO_20:
  GETTABLEKS R2 R0 K0 ["parent"]
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K2 ["URL parameter provided was nil: listInventoryItemsRequest.parent."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K5 [string.match]
  GETTABLEKS R3 R0 K0 ["parent"]
  LOADK R4 K6 ["^users/([^/]+)$"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K7 ["URL parameter was not formatted correctly: listInventoryItemsRequest.parent."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K9 [string.format]
  LOADK R3 K10 ["%s%s/cloud/v2/%s/inventory-items"]
  GETGLOBAL R4 K11 ["getApisUrl"]
  CALL R4 0 1
  GETGLOBAL R5 K12 ["getUrlPrefix"]
  MOVE R6 R1
  CALL R5 1 1
  GETTABLEKS R7 R0 K0 ["parent"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K14 [tostring]
  CALL R6 1 1
  CALL R2 4 1
  GETTABLEKS R3 R0 K15 ["maxPageSize"]
  JUMPIFNOTEQKNIL R3 [+10]
  GETTABLEKS R3 R0 K16 ["pageToken"]
  JUMPIFNOTEQKNIL R3 [+6]
  GETTABLEKS R3 R0 K17 ["filter"]
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R2 1
  NEWTABLE R3 0 0
  GETTABLEKS R4 R0 K15 ["maxPageSize"]
  JUMPIFEQKNIL R4 [+16]
  MOVE R5 R3
  GETIMPORT R6 K9 [string.format]
  LOADK R7 K18 ["maxPageSize=%s"]
  GETTABLEKS R9 R0 K15 ["maxPageSize"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K14 [tostring]
  CALL R8 1 1
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K21 [table.insert]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K16 ["pageToken"]
  JUMPIFEQKNIL R4 [+16]
  MOVE R5 R3
  GETIMPORT R6 K9 [string.format]
  LOADK R7 K22 ["pageToken=%s"]
  GETTABLEKS R9 R0 K16 ["pageToken"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K14 [tostring]
  CALL R8 1 1
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K21 [table.insert]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K17 ["filter"]
  JUMPIFEQKNIL R4 [+16]
  MOVE R5 R3
  GETIMPORT R6 K9 [string.format]
  LOADK R7 K23 ["filter=%s"]
  GETTABLEKS R9 R0 K17 ["filter"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K14 [tostring]
  CALL R8 1 1
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K21 [table.insert]
  CALL R4 -1 0
  GETIMPORT R4 K9 [string.format]
  LOADK R5 K24 ["%s?%s"]
  MOVE R6 R2
  GETIMPORT R7 K26 [table.concat]
  MOVE R8 R3
  LOADK R9 K27 ["&"]
  CALL R7 2 -1
  CALL R4 -1 1
  MOVE R2 R4
  RETURN R2 1

PROTO_21:
  JUMPIFNOTEQKNIL R0 [+6]
  GETGLOBAL R2 K0 ["InvalidArgumentError"]
  LOADK R3 K1 ["Request provided was nil."]
  CALL R2 1 -1
  RETURN R2 -1
  GETGLOBAL R2 K2 ["verifyListInventoryItemsRequest"]
  MOVE R3 R0
  LOADK R4 K3 ["listInventoryItemsRequest"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K4 ["listInventoryItemsUrl"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K6 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K7 ["string"] [+2]
  RETURN R3 1
  GETUPVAL R4 0
  NEWTABLE R6 4 0
  SETTABLEKS R3 R6 K8 ["Url"]
  LOADK R7 K9 ["GET"]
  SETTABLEKS R7 R6 K10 ["Request_Type"]
  SETTABLEKS R1 R6 K11 ["Headers"]
  NAMECALL R4 R4 K12 ["HttpRequestAsync"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_22:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R2
  RETURN R2 1
  GETGLOBAL R2 K0 ["verifyTable"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETTABLEKS R3 R0 K1 ["parent"]
  JUMPIFNOTEQKNIL R3 [+11]
  GETGLOBAL R3 K2 ["InvalidArgumentError"]
  LOADK R5 K3 ["Required argument was not provided: %*.parent."]
  MOVE R7 R1
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 -1
  RETURN R3 -1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K1 ["parent"]
  LOADK R6 K6 ["%*.parent"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K7 ["verifyNumber"]
  GETTABLEKS R4 R0 K8 ["maxPageSize"]
  LOADK R6 K9 ["%*.maxPageSize"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K10 ["pageToken"]
  LOADK R6 K11 ["%*.pageToken"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K12 ["filter"]
  LOADK R6 K13 ["%*.filter"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  LOADNIL R3
  RETURN R3 1

PROTO_23:
  GETTABLEKS R2 R0 K0 ["parent"]
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K2 ["URL parameter provided was nil: listGroupMembershipsRequest.parent."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K5 [string.match]
  GETTABLEKS R3 R0 K0 ["parent"]
  LOADK R4 K6 ["^groups/([^/]+)$"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K7 ["URL parameter was not formatted correctly: listGroupMembershipsRequest.parent."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K9 [string.format]
  LOADK R3 K10 ["%s%s/cloud/v2/%s/memberships"]
  GETGLOBAL R4 K11 ["getApisUrl"]
  CALL R4 0 1
  GETGLOBAL R5 K12 ["getUrlPrefix"]
  MOVE R6 R1
  CALL R5 1 1
  GETTABLEKS R7 R0 K0 ["parent"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K14 [tostring]
  CALL R6 1 1
  CALL R2 4 1
  GETTABLEKS R3 R0 K15 ["maxPageSize"]
  JUMPIFNOTEQKNIL R3 [+10]
  GETTABLEKS R3 R0 K16 ["pageToken"]
  JUMPIFNOTEQKNIL R3 [+6]
  GETTABLEKS R3 R0 K17 ["filter"]
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R2 1
  NEWTABLE R3 0 0
  GETTABLEKS R4 R0 K15 ["maxPageSize"]
  JUMPIFEQKNIL R4 [+16]
  MOVE R5 R3
  GETIMPORT R6 K9 [string.format]
  LOADK R7 K18 ["maxPageSize=%s"]
  GETTABLEKS R9 R0 K15 ["maxPageSize"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K14 [tostring]
  CALL R8 1 1
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K21 [table.insert]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K16 ["pageToken"]
  JUMPIFEQKNIL R4 [+16]
  MOVE R5 R3
  GETIMPORT R6 K9 [string.format]
  LOADK R7 K22 ["pageToken=%s"]
  GETTABLEKS R9 R0 K16 ["pageToken"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K14 [tostring]
  CALL R8 1 1
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K21 [table.insert]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K17 ["filter"]
  JUMPIFEQKNIL R4 [+16]
  MOVE R5 R3
  GETIMPORT R6 K9 [string.format]
  LOADK R7 K23 ["filter=%s"]
  GETTABLEKS R9 R0 K17 ["filter"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K14 [tostring]
  CALL R8 1 1
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K21 [table.insert]
  CALL R4 -1 0
  GETIMPORT R4 K9 [string.format]
  LOADK R5 K24 ["%s?%s"]
  MOVE R6 R2
  GETIMPORT R7 K26 [table.concat]
  MOVE R8 R3
  LOADK R9 K27 ["&"]
  CALL R7 2 -1
  CALL R4 -1 1
  MOVE R2 R4
  RETURN R2 1

PROTO_24:
  JUMPIFNOTEQKNIL R0 [+6]
  GETGLOBAL R2 K0 ["InvalidArgumentError"]
  LOADK R3 K1 ["Request provided was nil."]
  CALL R2 1 -1
  RETURN R2 -1
  GETGLOBAL R2 K2 ["verifyListGroupMembershipsRequest"]
  MOVE R3 R0
  LOADK R4 K3 ["listGroupMembershipsRequest"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K4 ["listGroupMembershipsUrl"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K6 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K7 ["string"] [+2]
  RETURN R3 1
  GETUPVAL R4 0
  NEWTABLE R6 4 0
  SETTABLEKS R3 R6 K8 ["Url"]
  LOADK R7 K9 ["GET"]
  SETTABLEKS R7 R6 K10 ["Request_Type"]
  SETTABLEKS R1 R6 K11 ["Headers"]
  NAMECALL R4 R4 K12 ["HttpRequestAsync"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_25:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R2
  RETURN R2 1
  GETGLOBAL R2 K0 ["verifyTable"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETTABLEKS R3 R0 K1 ["path"]
  JUMPIFNOTEQKNIL R3 [+11]
  GETGLOBAL R3 K2 ["InvalidArgumentError"]
  LOADK R5 K3 ["Required argument was not provided: %*.path."]
  MOVE R7 R1
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 -1
  RETURN R3 -1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K1 ["path"]
  LOADK R6 K6 ["%*.path"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  LOADNIL R3
  RETURN R3 1

PROTO_26:
  GETTABLEKS R2 R0 K0 ["path"]
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K2 ["URL parameter provided was nil: getOperationRequest.path."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K5 [string.match]
  GETTABLEKS R3 R0 K0 ["path"]
  LOADK R4 K6 ["^users/([^/]+)/operations/([^/]+)$"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K7 ["URL parameter was not formatted correctly: getOperationRequest.path."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K9 [string.format]
  LOADK R3 K10 ["%s%s/cloud/v2/%s"]
  GETGLOBAL R4 K11 ["getApisUrl"]
  CALL R4 0 1
  GETGLOBAL R5 K12 ["getUrlPrefix"]
  MOVE R6 R1
  CALL R5 1 1
  GETTABLEKS R7 R0 K0 ["path"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K14 [tostring]
  CALL R6 1 1
  CALL R2 4 1
  RETURN R2 1

PROTO_27:
  JUMPIFNOTEQKNIL R0 [+6]
  GETGLOBAL R2 K0 ["InvalidArgumentError"]
  LOADK R3 K1 ["Request provided was nil."]
  CALL R2 1 -1
  RETURN R2 -1
  GETGLOBAL R2 K2 ["verifyGetOperationRequest"]
  MOVE R3 R0
  LOADK R4 K3 ["getOperationRequest"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K4 ["getOperationUrl"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K6 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K7 ["string"] [+2]
  RETURN R3 1
  GETUPVAL R4 0
  NEWTABLE R6 4 0
  SETTABLEKS R3 R6 K8 ["Url"]
  LOADK R7 K9 ["GET"]
  SETTABLEKS R7 R6 K10 ["Request_Type"]
  SETTABLEKS R1 R6 K11 ["Headers"]
  NAMECALL R4 R4 K12 ["HttpRequestAsync"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_28:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R2
  RETURN R2 1
  GETGLOBAL R2 K0 ["verifyTable"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETTABLEKS R3 R0 K1 ["path"]
  JUMPIFNOTEQKNIL R3 [+11]
  GETGLOBAL R3 K2 ["InvalidArgumentError"]
  LOADK R5 K3 ["Required argument was not provided: %*.path."]
  MOVE R7 R1
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 -1
  RETURN R3 -1
  GETGLOBAL R3 K5 ["verifyString"]
  GETTABLEKS R4 R0 K1 ["path"]
  LOADK R6 K6 ["%*.path"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K7 ["verifyNumber"]
  GETTABLEKS R4 R0 K8 ["size"]
  LOADK R6 K9 ["%*.size"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K10 ["verifyEnum"]
  GETTABLEKS R4 R0 K4 ["format"]
  LOADK R6 K11 ["%*.format"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K10 ["verifyEnum"]
  GETTABLEKS R4 R0 K12 ["shape"]
  LOADK R6 K13 ["%*.shape"]
  MOVE R8 R1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  LOADNIL R3
  RETURN R3 1

PROTO_29:
  GETTABLEKS R2 R0 K0 ["path"]
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K2 ["URL parameter provided was nil: generateUserThumbnailRequest.path."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K5 [string.match]
  GETTABLEKS R3 R0 K0 ["path"]
  LOADK R4 K6 ["^users/([^/]+)$"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+6]
  GETGLOBAL R2 K1 ["InvalidArgumentError"]
  LOADK R3 K7 ["URL parameter was not formatted correctly: generateUserThumbnailRequest.path."]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K9 [string.format]
  LOADK R3 K10 ["%s%s/cloud/v2/%s:generateThumbnail"]
  GETGLOBAL R4 K11 ["getApisUrl"]
  CALL R4 0 1
  GETGLOBAL R5 K12 ["getUrlPrefix"]
  MOVE R6 R1
  CALL R5 1 1
  GETTABLEKS R7 R0 K0 ["path"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K14 [tostring]
  CALL R6 1 1
  CALL R2 4 1
  GETTABLEKS R3 R0 K15 ["size"]
  JUMPIFNOTEQKNIL R3 [+10]
  GETTABLEKS R3 R0 K8 ["format"]
  JUMPIFNOTEQKNIL R3 [+6]
  GETTABLEKS R3 R0 K16 ["shape"]
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R2 1
  NEWTABLE R3 0 0
  GETTABLEKS R4 R0 K15 ["size"]
  JUMPIFEQKNIL R4 [+16]
  MOVE R5 R3
  GETIMPORT R6 K9 [string.format]
  LOADK R7 K17 ["size=%s"]
  GETTABLEKS R9 R0 K15 ["size"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K14 [tostring]
  CALL R8 1 1
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K20 [table.insert]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K8 ["format"]
  JUMPIFEQKNIL R4 [+16]
  MOVE R5 R3
  GETIMPORT R6 K9 [string.format]
  LOADK R7 K21 ["format=%s"]
  GETTABLEKS R9 R0 K8 ["format"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K14 [tostring]
  CALL R8 1 1
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K20 [table.insert]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K16 ["shape"]
  JUMPIFEQKNIL R4 [+16]
  MOVE R5 R3
  GETIMPORT R6 K9 [string.format]
  LOADK R7 K22 ["shape=%s"]
  GETTABLEKS R9 R0 K16 ["shape"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K14 [tostring]
  CALL R8 1 1
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K20 [table.insert]
  CALL R4 -1 0
  GETIMPORT R4 K9 [string.format]
  LOADK R5 K23 ["%s?%s"]
  MOVE R6 R2
  GETIMPORT R7 K25 [table.concat]
  MOVE R8 R3
  LOADK R9 K26 ["&"]
  CALL R7 2 -1
  CALL R4 -1 1
  MOVE R2 R4
  RETURN R2 1

PROTO_30:
  JUMPIFNOTEQKNIL R0 [+6]
  GETGLOBAL R2 K0 ["InvalidArgumentError"]
  LOADK R3 K1 ["Request provided was nil."]
  CALL R2 1 -1
  RETURN R2 -1
  GETGLOBAL R2 K2 ["verifyGenerateUserThumbnailRequest"]
  MOVE R3 R0
  LOADK R4 K3 ["generateUserThumbnailRequest"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R2 1
  GETGLOBAL R3 K4 ["generateUserThumbnailUrl"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K6 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K7 ["string"] [+2]
  RETURN R3 1
  GETUPVAL R4 0
  NEWTABLE R6 4 0
  SETTABLEKS R3 R6 K8 ["Url"]
  LOADK R7 K9 ["GET"]
  SETTABLEKS R7 R6 K10 ["Request_Type"]
  SETTABLEKS R1 R6 K11 ["Headers"]
  NAMECALL R4 R4 K12 ["HttpRequestAsync"]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContentProvider"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["OpenCloudService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["RunService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  DUPCLOSURE R4 K7 [PROTO_0]
  CAPTURE VAL R1
  SETGLOBAL R4 K8 ["InvalidArgumentError"]
  DUPCLOSURE R4 K9 [PROTO_1]
  SETGLOBAL R4 K10 ["verifyTable"]
  DUPCLOSURE R4 K11 [PROTO_2]
  SETGLOBAL R4 K12 ["verifyNumber"]
  DUPCLOSURE R4 K13 [PROTO_3]
  SETGLOBAL R4 K14 ["verifyString"]
  DUPCLOSURE R4 K15 [PROTO_4]
  SETGLOBAL R4 K16 ["verifyEnum"]
  DUPCLOSURE R4 K17 [PROTO_5]
  CAPTURE VAL R0
  SETGLOBAL R4 K18 ["getApisUrl"]
  DUPCLOSURE R4 K19 [PROTO_6]
  CAPTURE VAL R3
  SETGLOBAL R4 K20 ["getUrlPrefix"]
  DUPCLOSURE R4 K21 [PROTO_7]
  SETGLOBAL R4 K22 ["verifyGetUniverseRequest"]
  DUPCLOSURE R4 K23 [PROTO_8]
  SETGLOBAL R4 K24 ["getUniverseUrl"]
  DUPCLOSURE R4 K25 [PROTO_9]
  CAPTURE VAL R2
  SETGLOBAL R4 K26 ["getUniverse"]
  LOADK R6 K27 ["v2"]
  LOADK R7 K28 ["GetUniverse"]
  GETGLOBAL R8 K26 ["getUniverse"]
  NAMECALL R4 R2 K29 ["RegisterOpenCloud"]
  CALL R4 4 0
  DUPCLOSURE R4 K30 [PROTO_10]
  SETGLOBAL R4 K31 ["verifyTranslateTextRequest"]
  DUPCLOSURE R4 K32 [PROTO_11]
  SETGLOBAL R4 K33 ["translateTextUrl"]
  DUPCLOSURE R4 K34 [PROTO_12]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETGLOBAL R4 K35 ["translateText"]
  LOADK R6 K27 ["v2"]
  LOADK R7 K36 ["TranslateText"]
  GETGLOBAL R8 K35 ["translateText"]
  NAMECALL R4 R2 K29 ["RegisterOpenCloud"]
  CALL R4 4 0
  DUPCLOSURE R4 K37 [PROTO_13]
  SETGLOBAL R4 K38 ["verifyGetPlaceRequest"]
  DUPCLOSURE R4 K39 [PROTO_14]
  SETGLOBAL R4 K40 ["getPlaceUrl"]
  DUPCLOSURE R4 K41 [PROTO_15]
  CAPTURE VAL R2
  SETGLOBAL R4 K42 ["getPlace"]
  LOADK R6 K27 ["v2"]
  LOADK R7 K43 ["GetPlace"]
  GETGLOBAL R8 K42 ["getPlace"]
  NAMECALL R4 R2 K29 ["RegisterOpenCloud"]
  CALL R4 4 0
  DUPCLOSURE R4 K44 [PROTO_16]
  SETGLOBAL R4 K45 ["verifyGetGroupRequest"]
  DUPCLOSURE R4 K46 [PROTO_17]
  SETGLOBAL R4 K47 ["getGroupUrl"]
  DUPCLOSURE R4 K48 [PROTO_18]
  CAPTURE VAL R2
  SETGLOBAL R4 K49 ["getGroup"]
  LOADK R6 K27 ["v2"]
  LOADK R7 K50 ["GetGroup"]
  GETGLOBAL R8 K49 ["getGroup"]
  NAMECALL R4 R2 K29 ["RegisterOpenCloud"]
  CALL R4 4 0
  DUPCLOSURE R4 K51 [PROTO_19]
  SETGLOBAL R4 K52 ["verifyListInventoryItemsRequest"]
  DUPCLOSURE R4 K53 [PROTO_20]
  SETGLOBAL R4 K54 ["listInventoryItemsUrl"]
  DUPCLOSURE R4 K55 [PROTO_21]
  CAPTURE VAL R2
  SETGLOBAL R4 K56 ["listInventoryItems"]
  LOADK R6 K27 ["v2"]
  LOADK R7 K57 ["ListInventoryItems"]
  GETGLOBAL R8 K56 ["listInventoryItems"]
  NAMECALL R4 R2 K29 ["RegisterOpenCloud"]
  CALL R4 4 0
  DUPCLOSURE R4 K58 [PROTO_22]
  SETGLOBAL R4 K59 ["verifyListGroupMembershipsRequest"]
  DUPCLOSURE R4 K60 [PROTO_23]
  SETGLOBAL R4 K61 ["listGroupMembershipsUrl"]
  DUPCLOSURE R4 K62 [PROTO_24]
  CAPTURE VAL R2
  SETGLOBAL R4 K63 ["listGroupMemberships"]
  LOADK R6 K27 ["v2"]
  LOADK R7 K64 ["ListGroupMemberships"]
  GETGLOBAL R8 K63 ["listGroupMemberships"]
  NAMECALL R4 R2 K29 ["RegisterOpenCloud"]
  CALL R4 4 0
  DUPCLOSURE R4 K65 [PROTO_25]
  SETGLOBAL R4 K66 ["verifyGetOperationRequest"]
  DUPCLOSURE R4 K67 [PROTO_26]
  SETGLOBAL R4 K68 ["getOperationUrl"]
  DUPCLOSURE R4 K69 [PROTO_27]
  CAPTURE VAL R2
  SETGLOBAL R4 K70 ["getOperation"]
  LOADK R6 K27 ["v2"]
  LOADK R7 K71 ["GetOperation"]
  GETGLOBAL R8 K70 ["getOperation"]
  NAMECALL R4 R2 K29 ["RegisterOpenCloud"]
  CALL R4 4 0
  DUPCLOSURE R4 K72 [PROTO_28]
  SETGLOBAL R4 K73 ["verifyGenerateUserThumbnailRequest"]
  DUPCLOSURE R4 K74 [PROTO_29]
  SETGLOBAL R4 K75 ["generateUserThumbnailUrl"]
  DUPCLOSURE R4 K76 [PROTO_30]
  CAPTURE VAL R2
  SETGLOBAL R4 K77 ["generateUserThumbnail"]
  LOADK R6 K27 ["v2"]
  LOADK R7 K78 ["GenerateUserThumbnail"]
  GETGLOBAL R8 K77 ["generateUserThumbnail"]
  NAMECALL R4 R2 K29 ["RegisterOpenCloud"]
  CALL R4 4 0
  NAMECALL R4 R2 K79 ["RegistrationComplete"]
  CALL R4 1 0
  RETURN R0 0
