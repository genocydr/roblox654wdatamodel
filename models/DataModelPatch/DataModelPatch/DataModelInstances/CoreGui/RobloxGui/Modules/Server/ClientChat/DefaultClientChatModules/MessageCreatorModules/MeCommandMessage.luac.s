PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["IsFiltered"]
  JUMPIFNOT R1 [+27]
  GETUPVAL R1 1
  GETUPVAL R5 2
  GETUPVAL R7 3
  NAMECALL R5 R5 K1 ["CreateLeadingSpaces"]
  CALL R5 2 1
  MOVE R3 R5
  GETUPVAL R4 2
  GETTABLEKS R7 R0 K2 ["FromSpeaker"]
  LOADK R8 K3 [" "]
  GETTABLEKS R10 R0 K4 ["Message"]
  FASTCALL2K STRING_SUB R10 K5 [+4]
  LOADK R11 K5 [5]
  GETIMPORT R9 K8 [string.sub]
  CALL R9 2 1
  CONCAT R6 R7 R9
  NAMECALL R4 R4 K9 ["SanitizeForRichText"]
  CALL R4 2 1
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K10 ["Text"]
  RETURN R0 0
  GETTABLEKS R1 R0 K11 ["MessageLengthUtf8"]
  JUMPIF R1 [+2]
  GETTABLEKS R1 R0 K12 ["MessageLength"]
  GETIMPORT R4 K16 [utf8.len]
  GETIMPORT R5 K18 [utf8.nfcnormalize]
  GETTABLEKS R6 R0 K2 ["FromSpeaker"]
  CALL R5 1 -1
  CALL R4 -1 1
  ADD R3 R4 R1
  SUBK R2 R3 K13 [4]
  GETUPVAL R3 1
  GETUPVAL R7 2
  GETUPVAL R9 3
  NAMECALL R7 R7 K1 ["CreateLeadingSpaces"]
  CALL R7 2 1
  MOVE R5 R7
  GETIMPORT R6 K20 [string.rep]
  LOADK R7 K21 ["_"]
  MOVE R8 R2
  CALL R6 2 1
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K10 ["Text"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  MOVE R5 R0
  NAMECALL R1 R1 K0 ["GetMessageHeight"]
  CALL R1 4 -1
  RETURN R1 -1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["Message"]
  GETTABLEKS R3 R0 K1 ["ExtraData"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  GETTABLEKS R4 R3 K2 ["Font"]
  JUMPIF R4 [+2]
  GETIMPORT R4 K5 [Enum.Font.SourceSansItalic]
  GETTABLEKS R5 R3 K6 ["TextSize"]
  JUMPIF R5 [+3]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["ChatWindowTextSize"]
  GETIMPORT R6 K10 [Color3.new]
  LOADN R7 1
  LOADN R8 1
  LOADN R9 1
  CALL R6 3 1
  GETTABLEKS R8 R3 K11 ["ChannelColor"]
  OR R7 R8 R6
  LOADN R8 0
  GETUPVAL R9 1
  LOADK R11 K12 [""]
  MOVE R12 R4
  MOVE R13 R5
  MOVE R14 R6
  NAMECALL R9 R9 K13 ["CreateBaseMessage"]
  CALL R9 5 2
  LOADNIL R11
  GETTABLEKS R12 R0 K14 ["OriginalChannel"]
  JUMPIFEQ R1 R12 [+25]
  GETIMPORT R12 K17 [string.format]
  LOADK R13 K18 ["{%s}"]
  GETTABLEKS R14 R0 K14 ["OriginalChannel"]
  CALL R12 2 1
  GETUPVAL R13 1
  MOVE R15 R10
  MOVE R16 R7
  MOVE R17 R12
  GETTABLEKS R18 R0 K14 ["OriginalChannel"]
  NAMECALL R13 R13 K19 ["AddChannelButtonToBaseMessage"]
  CALL R13 5 1
  MOVE R11 R13
  GETUPVAL R13 1
  MOVE R15 R12
  MOVE R16 R4
  MOVE R17 R5
  NAMECALL R13 R13 K21 ["GetNumberOfSpaces"]
  CALL R13 4 1
  ADDK R8 R13 K20 [1]
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  CAPTURE VAL R10
  CAPTURE UPVAL U1
  CAPTURE REF R8
  MOVE R13 R12
  MOVE R14 R0
  CALL R13 1 0
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R10
  CAPTURE VAL R9
  NEWTABLE R14 0 0
  DUPTABLE R15 K24 [{"TextTransparency", "TextStrokeTransparency"}]
  DUPTABLE R16 K27 [{"FadedIn", "FadedOut"}]
  LOADN R17 0
  SETTABLEKS R17 R16 K25 ["FadedIn"]
  LOADN R17 1
  SETTABLEKS R17 R16 K26 ["FadedOut"]
  SETTABLEKS R16 R15 K22 ["TextTransparency"]
  DUPTABLE R16 K27 [{"FadedIn", "FadedOut"}]
  LOADK R17 K28 [0.75]
  SETTABLEKS R17 R16 K25 ["FadedIn"]
  LOADN R17 1
  SETTABLEKS R17 R16 K26 ["FadedOut"]
  SETTABLEKS R16 R15 K23 ["TextStrokeTransparency"]
  SETTABLE R15 R14 R10
  JUMPIFNOT R11 [+20]
  DUPTABLE R15 K24 [{"TextTransparency", "TextStrokeTransparency"}]
  DUPTABLE R16 K27 [{"FadedIn", "FadedOut"}]
  LOADN R17 0
  SETTABLEKS R17 R16 K25 ["FadedIn"]
  LOADN R17 1
  SETTABLEKS R17 R16 K26 ["FadedOut"]
  SETTABLEKS R16 R15 K22 ["TextTransparency"]
  DUPTABLE R16 K27 [{"FadedIn", "FadedOut"}]
  LOADK R17 K28 [0.75]
  SETTABLEKS R17 R16 K25 ["FadedIn"]
  LOADN R17 1
  SETTABLEKS R17 R16 K26 ["FadedOut"]
  SETTABLEKS R16 R15 K23 ["TextStrokeTransparency"]
  SETTABLE R15 R14 R11
  GETUPVAL R15 1
  MOVE R17 R14
  NAMECALL R15 R15 K29 ["CreateFadeFunctions"]
  CALL R15 2 3
  NEWTABLE R18 8 0
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K30 ["KEY_BASE_FRAME"]
  SETTABLE R9 R18 R19
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K31 ["KEY_BASE_MESSAGE"]
  SETTABLE R10 R18 R19
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K32 ["KEY_UPDATE_TEXT_FUNC"]
  SETTABLE R12 R18 R19
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K33 ["KEY_GET_HEIGHT"]
  SETTABLE R13 R18 R19
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K34 ["KEY_FADE_IN"]
  SETTABLE R15 R18 R19
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K35 ["KEY_FADE_OUT"]
  SETTABLE R16 R18 R19
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K36 ["KEY_UPDATE_ANIMATION"]
  SETTABLE R17 R18 R19
  CLOSEUPVALS R8
  RETURN R18 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  LOADK R4 K5 ["ChatSettings"]
  NAMECALL R2 R0 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETIMPORT R2 K4 [require]
  LOADK R5 K7 ["ChatConstants"]
  NAMECALL R3 R0 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  LOADK R6 K8 ["Util"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  DUPCLOSURE R4 K9 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETGLOBAL R4 K10 ["CreateMeCommandMessageLabel"]
  NEWTABLE R4 2 0
  GETTABLEKS R5 R3 K11 ["KEY_MESSAGE_TYPE"]
  GETTABLEKS R6 R2 K12 ["MessageTypeMeCommand"]
  SETTABLE R6 R4 R5
  GETTABLEKS R5 R3 K13 ["KEY_CREATOR_FUNCTION"]
  GETGLOBAL R6 K10 ["CreateMeCommandMessageLabel"]
  SETTABLE R6 R4 R5
  RETURN R4 1
