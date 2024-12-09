PROTO_0:
  LOADN R3 180
  JUMPIFNOTLT R0 R3 [+4]
  JUMPIFNOT R2 [+2]
  MULK R3 R1 K0 [5]
  RETURN R3 1
  DIVK R5 R0 K2 [45]
  ADDK R4 R5 K1 [2]
  MUL R3 R1 R4
  RETURN R3 1

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+8]
  GETUPVAL R0 1
  DUPTABLE R2 K1 [{"isGenericSelection"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isGenericSelection"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R0 1
  DUPTABLE R2 K8 [{"correctTranslationText", "additionalCommentsText", "feedbackText", "feedbackOriginalText", "feedbackIdentifier"}]
  LOADK R3 K9 [""]
  SETTABLEKS R3 R2 K3 ["correctTranslationText"]
  LOADK R3 K9 [""]
  SETTABLEKS R3 R2 K4 ["additionalCommentsText"]
  LOADK R3 K9 [""]
  SETTABLEKS R3 R2 K5 ["feedbackText"]
  LOADK R3 K9 [""]
  SETTABLEKS R3 R2 K6 ["feedbackOriginalText"]
  LOADK R3 K9 [""]
  SETTABLEKS R3 R2 K7 ["feedbackIdentifier"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K10 ["props"]
  GETTABLEKS R0 R1 K11 ["setFeedbackReason"]
  LOADN R1 0
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K12 ["ResetHighlight"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  LOADK R3 K0 ["TextBox"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+28]
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"feedbackText", "feedbackOriginalText", "feedbackIdentifier"}]
  GETTABLEKS R4 R0 K6 ["PlaceholderText"]
  SETTABLEKS R4 R3 K2 ["feedbackText"]
  GETTABLEKS R4 R0 K7 ["LocalizationMatchedSourceText"]
  SETTABLEKS R4 R3 K3 ["feedbackOriginalText"]
  GETTABLEKS R4 R0 K8 ["LocalizationMatchIdentifier"]
  SETTABLEKS R4 R3 K4 ["feedbackIdentifier"]
  NAMECALL R1 R1 K9 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+68]
  GETUPVAL R1 0
  DUPTABLE R3 K11 [{"isGenericSelection"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K10 ["isGenericSelection"]
  NAMECALL R1 R1 K9 ["setState"]
  CALL R1 2 0
  RETURN R0 0
  LOADK R3 K12 ["TextLabel"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+5]
  LOADK R3 K13 ["TextButton"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+28]
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"feedbackText", "feedbackOriginalText", "feedbackIdentifier"}]
  GETTABLEKS R4 R0 K14 ["Text"]
  SETTABLEKS R4 R3 K2 ["feedbackText"]
  GETTABLEKS R4 R0 K7 ["LocalizationMatchedSourceText"]
  SETTABLEKS R4 R3 K3 ["feedbackOriginalText"]
  GETTABLEKS R4 R0 K8 ["LocalizationMatchIdentifier"]
  SETTABLEKS R4 R3 K4 ["feedbackIdentifier"]
  NAMECALL R1 R1 K9 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+30]
  GETUPVAL R1 0
  DUPTABLE R3 K11 [{"isGenericSelection"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K10 ["isGenericSelection"]
  NAMECALL R1 R1 K9 ["setState"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+19]
  GETUPVAL R1 0
  DUPTABLE R3 K15 [{"feedbackText", "feedbackOriginalText", "feedbackIdentifier", "isGenericSelection"}]
  GETTABLEKS R4 R0 K16 ["ClassName"]
  SETTABLEKS R4 R3 K2 ["feedbackText"]
  GETTABLEKS R4 R0 K16 ["ClassName"]
  SETTABLEKS R4 R3 K3 ["feedbackOriginalText"]
  LOADK R4 K17 [""]
  SETTABLEKS R4 R3 K4 ["feedbackIdentifier"]
  LOADB R4 1
  SETTABLEKS R4 R3 K10 ["isGenericSelection"]
  NAMECALL R1 R1 K9 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["resetLocalState"]
  CALL R1 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["setInstanceRelatedReportDialogState"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["setFeedbackFlowState"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["State"]
  GETTABLEKS R2 R3 K5 ["CurrentlyLeavingFeedback"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"correctTranslationText"}]
  SETTABLEKS R0 R3 K0 ["correctTranslationText"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"additionalCommentsText"}]
  SETTABLEKS R0 R3 K0 ["additionalCommentsText"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"numFeedbackSubmissionAttempts"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["state"]
  GETTABLEKS R4 R5 K0 ["numFeedbackSubmissionAttempts"]
  ADDK R3 R4 K2 [1]
  SETTABLEKS R3 R2 K0 ["numFeedbackSubmissionAttempts"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["props"]
  GETTABLEKS R0 R1 K6 ["sendFeedback"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["state"]
  GETTABLEKS R1 R2 K7 ["feedbackOriginalText"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["state"]
  GETTABLEKS R2 R3 K8 ["feedbackText"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["state"]
  GETTABLEKS R3 R4 K9 ["feedbackIdentifier"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["state"]
  GETTABLEKS R4 R5 K10 ["correctTranslationText"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["state"]
  GETTABLEKS R5 R6 K11 ["additionalCommentsText"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["props"]
  GETTABLEKS R6 R7 K12 ["feedbackReason"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["state"]
  GETTABLEKS R7 R8 K0 ["numFeedbackSubmissionAttempts"]
  CALL R0 7 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K13 ["resetLocalState"]
  CALL R0 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["props"]
  GETTABLEKS R0 R1 K14 ["setFeedbackFlowState"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K15 ["State"]
  GETTABLEKS R1 R2 K16 ["Default"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["resetLocalState"]
  CALL R0 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R0 R1 K2 ["setFeedbackFlowState"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["State"]
  GETTABLEKS R1 R2 K4 ["Default"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+25]
  DUPTABLE R1 K7 [{"feedbackText", "feedbackOriginalText", "feedbackIdentifier", "correctTranslationText", "additionalCommentsText", "numFeedbackSubmissionAttempts", "isGenericSelection"}]
  LOADK R2 K8 [""]
  SETTABLEKS R2 R1 K0 ["feedbackText"]
  LOADK R2 K8 [""]
  SETTABLEKS R2 R1 K1 ["feedbackOriginalText"]
  LOADK R2 K8 [""]
  SETTABLEKS R2 R1 K2 ["feedbackIdentifier"]
  LOADK R2 K8 [""]
  SETTABLEKS R2 R1 K3 ["correctTranslationText"]
  LOADK R2 K8 [""]
  SETTABLEKS R2 R1 K4 ["additionalCommentsText"]
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["numFeedbackSubmissionAttempts"]
  LOADB R2 0
  SETTABLEKS R2 R1 K6 ["isGenericSelection"]
  SETTABLEKS R1 R0 K9 ["state"]
  JUMP [+21]
  DUPTABLE R1 K10 [{"feedbackText", "feedbackOriginalText", "feedbackIdentifier", "correctTranslationText", "additionalCommentsText", "numFeedbackSubmissionAttempts"}]
  LOADK R2 K8 [""]
  SETTABLEKS R2 R1 K0 ["feedbackText"]
  LOADK R2 K8 [""]
  SETTABLEKS R2 R1 K1 ["feedbackOriginalText"]
  LOADK R2 K8 [""]
  SETTABLEKS R2 R1 K2 ["feedbackIdentifier"]
  LOADK R2 K8 [""]
  SETTABLEKS R2 R1 K3 ["correctTranslationText"]
  LOADK R2 K8 [""]
  SETTABLEKS R2 R1 K4 ["additionalCommentsText"]
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["numFeedbackSubmissionAttempts"]
  SETTABLEKS R1 R0 K9 ["state"]
  DUPCLOSURE R1 K11 [PROTO_0]
  SETTABLEKS R1 R0 K12 ["calculateFieldHeight"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K13 ["resetLocalState"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K14 ["setInstanceRelatedReportDialogState"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K15 ["ItemSelectedInCaptureMode"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K16 ["Connect"]
  CALL R1 2 0
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K17 ["onCorrectTranslationTextChanged"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K18 ["onAdditionalCommentsTextChanged"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K19 ["onSubmitFeedback"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K20 ["onCancel"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["setFeedbackReason"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["setFeedbackReason"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["Theme"]
  GETTABLEKS R2 R0 K1 ["Font"]
  NEWTABLE R3 0 4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["untranslated"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["accuracyIssue"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["spellingOrGrammarIssue"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["inappropriateOrDerogatory"]
  SETLIST R3 R4 4 [1]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+494]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["createFragment"]
  DUPTABLE R5 K16 [{"Layout", "SelectedTextHeader", "SelectedTextLabel", "TranslationProblemsHeader", "TranslationProblemsListFrame", "CorrectTranslationHeader", "CorrectTranslationTextEntryField", "AdditionalCommentsHeader", "AdditionalCommentsTextEntryField"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  LOADK R7 K18 ["UIListLayout"]
  DUPTABLE R8 K22 [{"HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R9 K25 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R9 R8 K19 ["HorizontalAlignment"]
  GETIMPORT R9 K27 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R9 R8 K20 ["SortOrder"]
  GETIMPORT R9 K29 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K21 ["VerticalAlignment"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Layout"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K41 [{"text", "size", "textTruncate", "textXAlignment", "textYAlignment", "fontStyle", "colorStyle", "richText", "layoutOrder", "fluidSizing", "automaticSize"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K42 ["textSelectionHeader"]
  SETTABLEKS R9 R8 K30 ["text"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 72
  CALL R9 4 1
  SETTABLEKS R9 R8 K31 ["size"]
  GETIMPORT R9 K48 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R9 R8 K32 ["textTruncate"]
  GETIMPORT R9 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K33 ["textXAlignment"]
  GETIMPORT R9 K54 [Enum.TextYAlignment.Center]
  SETTABLEKS R9 R8 K34 ["textYAlignment"]
  GETTABLEKS R9 R2 K55 ["Header2"]
  SETTABLEKS R9 R8 K35 ["fontStyle"]
  GETTABLEKS R9 R1 K56 ["TextEmphasis"]
  SETTABLEKS R9 R8 K36 ["colorStyle"]
  LOADB R9 1
  SETTABLEKS R9 R8 K37 ["richText"]
  LOADN R9 1
  SETTABLEKS R9 R8 K38 ["layoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K39 ["fluidSizing"]
  GETIMPORT R9 K59 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K40 ["automaticSize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["SelectedTextHeader"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K65 [{"LayoutOrder", "fontKey", "themeKey", "Size", "Text", "TextWrapped", "TextXAlignment"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K26 ["LayoutOrder"]
  LOADK R9 K66 ["Body"]
  SETTABLEKS R9 R8 K60 ["fontKey"]
  LOADK R9 K67 ["TextDefault"]
  SETTABLEKS R9 R8 K61 ["themeKey"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K68 ["calculateFieldHeight"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K69 ["state"]
  GETTABLEKS R15 R16 K70 ["feedbackText"]
  FASTCALL1 STRING_LEN R15 [+2]
  GETIMPORT R14 K73 [string.len]
  CALL R14 1 1
  LOADN R15 14
  LOADB R16 0
  CALL R13 3 -1
  CALL R9 -1 1
  SETTABLEKS R9 R8 K62 ["Size"]
  GETUPVAL R10 6
  JUMPIFNOT R10 [+17]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K69 ["state"]
  GETTABLEKS R11 R12 K75 ["isGenericSelection"]
  JUMPIFNOT R11 [+4]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K76 ["genericSelectionWrapper"]
  JUMP [+5]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K69 ["state"]
  GETTABLEKS R10 R11 K70 ["feedbackText"]
  ORK R9 R10 K74 [""]
  JUMP [+6]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K69 ["state"]
  GETTABLEKS R10 R11 K70 ["feedbackText"]
  ORK R9 R10 K74 [""]
  SETTABLEKS R9 R8 K63 ["Text"]
  LOADB R9 1
  SETTABLEKS R9 R8 K64 ["TextWrapped"]
  GETIMPORT R9 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K49 ["TextXAlignment"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["SelectedTextLabel"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K41 [{"text", "size", "textTruncate", "textXAlignment", "textYAlignment", "fontStyle", "colorStyle", "richText", "layoutOrder", "fluidSizing", "automaticSize"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K77 ["problemDropdownSelectionHeader"]
  SETTABLEKS R9 R8 K30 ["text"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 72
  CALL R9 4 1
  SETTABLEKS R9 R8 K31 ["size"]
  GETIMPORT R9 K48 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R9 R8 K32 ["textTruncate"]
  GETIMPORT R9 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K33 ["textXAlignment"]
  GETIMPORT R9 K54 [Enum.TextYAlignment.Center]
  SETTABLEKS R9 R8 K34 ["textYAlignment"]
  GETTABLEKS R9 R2 K55 ["Header2"]
  SETTABLEKS R9 R8 K35 ["fontStyle"]
  GETTABLEKS R9 R1 K56 ["TextEmphasis"]
  SETTABLEKS R9 R8 K36 ["colorStyle"]
  LOADB R9 1
  SETTABLEKS R9 R8 K37 ["richText"]
  LOADN R9 3
  SETTABLEKS R9 R8 K38 ["layoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K39 ["fluidSizing"]
  GETIMPORT R9 K59 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K40 ["automaticSize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["TranslationProblemsHeader"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  LOADK R7 K78 ["Frame"]
  DUPTABLE R8 K80 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 160
  CALL R9 4 1
  SETTABLEKS R9 R8 K62 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K79 ["BackgroundTransparency"]
  LOADN R9 4
  SETTABLEKS R9 R8 K26 ["LayoutOrder"]
  DUPTABLE R9 K82 [{"RadioButtonList"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K17 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K87 [{"radioButtons", "onActivated", "currentValue", "elementSize"}]
  SETTABLEKS R3 R12 K83 ["radioButtons"]
  NEWCLOSURE R13 P0
  CAPTURE UPVAL U5
  SETTABLEKS R13 R12 K84 ["onActivated"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K88 ["props"]
  GETTABLEKS R13 R14 K89 ["feedbackReason"]
  SETTABLEKS R13 R12 K85 ["currentValue"]
  GETIMPORT R13 K45 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 40
  CALL R13 4 1
  SETTABLEKS R13 R12 K86 ["elementSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K81 ["RadioButtonList"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K11 ["TranslationProblemsListFrame"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K41 [{"text", "size", "textTruncate", "textXAlignment", "textYAlignment", "fontStyle", "colorStyle", "richText", "layoutOrder", "fluidSizing", "automaticSize"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K90 ["correctTranslationHeader"]
  SETTABLEKS R9 R8 K30 ["text"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 72
  CALL R9 4 1
  SETTABLEKS R9 R8 K31 ["size"]
  GETIMPORT R9 K48 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R9 R8 K32 ["textTruncate"]
  GETIMPORT R9 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K33 ["textXAlignment"]
  GETIMPORT R9 K54 [Enum.TextYAlignment.Center]
  SETTABLEKS R9 R8 K34 ["textYAlignment"]
  GETTABLEKS R9 R2 K55 ["Header2"]
  SETTABLEKS R9 R8 K35 ["fontStyle"]
  GETTABLEKS R9 R1 K56 ["TextEmphasis"]
  SETTABLEKS R9 R8 K36 ["colorStyle"]
  LOADB R9 1
  SETTABLEKS R9 R8 K37 ["richText"]
  LOADN R9 5
  SETTABLEKS R9 R8 K38 ["layoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K39 ["fluidSizing"]
  GETIMPORT R9 K59 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K40 ["automaticSize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["CorrectTranslationHeader"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 8
  DUPTABLE R8 K96 [{"LayoutOrder", "enabled", "text", "textChanged", "maxTextLength", "autoFocusOnEnabled", "PlaceholderText", "Size"}]
  LOADN R9 6
  SETTABLEKS R9 R8 K26 ["LayoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K91 ["enabled"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K69 ["state"]
  GETTABLEKS R9 R10 K97 ["correctTranslationText"]
  SETTABLEKS R9 R8 K30 ["text"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K98 ["onCorrectTranslationTextChanged"]
  SETTABLEKS R9 R8 K92 ["textChanged"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K69 ["state"]
  GETTABLEKS R11 R12 K97 ["correctTranslationText"]
  FASTCALL1 STRING_LEN R11 [+2]
  GETIMPORT R10 K73 [string.len]
  CALL R10 1 1
  FASTCALL2K MATH_MAX R10 K99 [+4]
  LOADK R11 K99 [180]
  GETIMPORT R9 K102 [math.max]
  CALL R9 2 1
  SETTABLEKS R9 R8 K93 ["maxTextLength"]
  LOADB R9 0
  SETTABLEKS R9 R8 K94 ["autoFocusOnEnabled"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K103 ["correctTranslationPlaceholder"]
  SETTABLEKS R9 R8 K95 ["PlaceholderText"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K68 ["calculateFieldHeight"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K69 ["state"]
  GETTABLEKS R15 R16 K97 ["correctTranslationText"]
  FASTCALL1 STRING_LEN R15 [+2]
  GETIMPORT R14 K73 [string.len]
  CALL R14 1 1
  LOADN R15 14
  LOADB R16 1
  CALL R13 3 -1
  CALL R9 -1 1
  SETTABLEKS R9 R8 K62 ["Size"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["CorrectTranslationTextEntryField"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K41 [{"text", "size", "textTruncate", "textXAlignment", "textYAlignment", "fontStyle", "colorStyle", "richText", "layoutOrder", "fluidSizing", "automaticSize"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K104 ["additionalCommentsHeader"]
  SETTABLEKS R9 R8 K30 ["text"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 72
  CALL R9 4 1
  SETTABLEKS R9 R8 K31 ["size"]
  GETIMPORT R9 K48 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R9 R8 K32 ["textTruncate"]
  GETIMPORT R9 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K33 ["textXAlignment"]
  GETIMPORT R9 K54 [Enum.TextYAlignment.Center]
  SETTABLEKS R9 R8 K34 ["textYAlignment"]
  GETTABLEKS R9 R2 K55 ["Header2"]
  SETTABLEKS R9 R8 K35 ["fontStyle"]
  GETTABLEKS R9 R1 K56 ["TextEmphasis"]
  SETTABLEKS R9 R8 K36 ["colorStyle"]
  LOADB R9 1
  SETTABLEKS R9 R8 K37 ["richText"]
  LOADN R9 7
  SETTABLEKS R9 R8 K38 ["layoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K39 ["fluidSizing"]
  GETIMPORT R9 K59 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K40 ["automaticSize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["AdditionalCommentsHeader"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 8
  DUPTABLE R8 K96 [{"LayoutOrder", "enabled", "text", "textChanged", "maxTextLength", "autoFocusOnEnabled", "PlaceholderText", "Size"}]
  LOADN R9 8
  SETTABLEKS R9 R8 K26 ["LayoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K91 ["enabled"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K69 ["state"]
  GETTABLEKS R9 R10 K105 ["additionalCommentsText"]
  SETTABLEKS R9 R8 K30 ["text"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K106 ["onAdditionalCommentsTextChanged"]
  SETTABLEKS R9 R8 K92 ["textChanged"]
  LOADN R9 180
  SETTABLEKS R9 R8 K93 ["maxTextLength"]
  LOADB R9 0
  SETTABLEKS R9 R8 K94 ["autoFocusOnEnabled"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K107 ["additionalCommentsPlaceholder"]
  SETTABLEKS R9 R8 K95 ["PlaceholderText"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 90
  CALL R9 4 1
  SETTABLEKS R9 R8 K62 ["Size"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K15 ["AdditionalCommentsTextEntryField"]
  CALL R4 1 -1
  RETURN R4 -1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["createFragment"]
  DUPTABLE R5 K108 [{"Layout", "SelectedTextHeader", "SelectedTextLabel", "CorrectTranslationHeader", "CorrectTranslationTextEntryField", "AdditionalCommentsHeader", "AdditionalCommentsTextEntryField", "TranslationProblemsHeader", "RadioButtonList"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  LOADK R7 K18 ["UIListLayout"]
  DUPTABLE R8 K22 [{"HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R9 K25 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R9 R8 K19 ["HorizontalAlignment"]
  GETIMPORT R9 K27 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R9 R8 K20 ["SortOrder"]
  GETIMPORT R9 K29 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K21 ["VerticalAlignment"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Layout"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K41 [{"text", "size", "textTruncate", "textXAlignment", "textYAlignment", "fontStyle", "colorStyle", "richText", "layoutOrder", "fluidSizing", "automaticSize"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K42 ["textSelectionHeader"]
  SETTABLEKS R9 R8 K30 ["text"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 72
  CALL R9 4 1
  SETTABLEKS R9 R8 K31 ["size"]
  GETIMPORT R9 K48 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R9 R8 K32 ["textTruncate"]
  GETIMPORT R9 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K33 ["textXAlignment"]
  GETIMPORT R9 K54 [Enum.TextYAlignment.Center]
  SETTABLEKS R9 R8 K34 ["textYAlignment"]
  GETTABLEKS R9 R2 K55 ["Header2"]
  SETTABLEKS R9 R8 K35 ["fontStyle"]
  GETTABLEKS R9 R1 K56 ["TextEmphasis"]
  SETTABLEKS R9 R8 K36 ["colorStyle"]
  LOADB R9 1
  SETTABLEKS R9 R8 K37 ["richText"]
  LOADN R9 1
  SETTABLEKS R9 R8 K38 ["layoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K39 ["fluidSizing"]
  GETIMPORT R9 K59 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K40 ["automaticSize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["SelectedTextHeader"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K111 [{"LayoutOrder", "fontKey", "themeKey", "AnchorPoint", "Position", "Size", "Text", "TextWrapped", "TextXAlignment"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K26 ["LayoutOrder"]
  LOADK R9 K66 ["Body"]
  SETTABLEKS R9 R8 K60 ["fontKey"]
  LOADK R9 K67 ["TextDefault"]
  SETTABLEKS R9 R8 K61 ["themeKey"]
  GETIMPORT R9 K113 [Vector2.new]
  LOADN R10 0
  LOADK R11 K114 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K109 ["AnchorPoint"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 0
  LOADN R11 76
  LOADK R12 K114 [0.5]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K110 ["Position"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K68 ["calculateFieldHeight"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K69 ["state"]
  GETTABLEKS R15 R16 K70 ["feedbackText"]
  FASTCALL1 STRING_LEN R15 [+2]
  GETIMPORT R14 K73 [string.len]
  CALL R14 1 1
  LOADN R15 18
  LOADB R16 0
  CALL R13 3 -1
  CALL R9 -1 1
  SETTABLEKS R9 R8 K62 ["Size"]
  GETUPVAL R10 6
  JUMPIFNOT R10 [+17]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K69 ["state"]
  GETTABLEKS R11 R12 K75 ["isGenericSelection"]
  JUMPIFNOT R11 [+4]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K76 ["genericSelectionWrapper"]
  JUMP [+5]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K69 ["state"]
  GETTABLEKS R10 R11 K70 ["feedbackText"]
  ORK R9 R10 K74 [""]
  JUMP [+6]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K69 ["state"]
  GETTABLEKS R10 R11 K70 ["feedbackText"]
  ORK R9 R10 K74 [""]
  SETTABLEKS R9 R8 K63 ["Text"]
  LOADB R9 1
  SETTABLEKS R9 R8 K64 ["TextWrapped"]
  GETIMPORT R9 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K49 ["TextXAlignment"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["SelectedTextLabel"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K41 [{"text", "size", "textTruncate", "textXAlignment", "textYAlignment", "fontStyle", "colorStyle", "richText", "layoutOrder", "fluidSizing", "automaticSize"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K90 ["correctTranslationHeader"]
  SETTABLEKS R9 R8 K30 ["text"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 72
  CALL R9 4 1
  SETTABLEKS R9 R8 K31 ["size"]
  GETIMPORT R9 K48 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R9 R8 K32 ["textTruncate"]
  GETIMPORT R9 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K33 ["textXAlignment"]
  GETIMPORT R9 K54 [Enum.TextYAlignment.Center]
  SETTABLEKS R9 R8 K34 ["textYAlignment"]
  GETTABLEKS R9 R2 K55 ["Header2"]
  SETTABLEKS R9 R8 K35 ["fontStyle"]
  GETTABLEKS R9 R1 K56 ["TextEmphasis"]
  SETTABLEKS R9 R8 K36 ["colorStyle"]
  LOADB R9 1
  SETTABLEKS R9 R8 K37 ["richText"]
  LOADN R9 3
  SETTABLEKS R9 R8 K38 ["layoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K39 ["fluidSizing"]
  GETIMPORT R9 K59 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K40 ["automaticSize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["CorrectTranslationHeader"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 8
  DUPTABLE R8 K96 [{"LayoutOrder", "enabled", "text", "textChanged", "maxTextLength", "autoFocusOnEnabled", "PlaceholderText", "Size"}]
  LOADN R9 4
  SETTABLEKS R9 R8 K26 ["LayoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K91 ["enabled"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K69 ["state"]
  GETTABLEKS R9 R10 K97 ["correctTranslationText"]
  SETTABLEKS R9 R8 K30 ["text"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K98 ["onCorrectTranslationTextChanged"]
  SETTABLEKS R9 R8 K92 ["textChanged"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K69 ["state"]
  GETTABLEKS R11 R12 K97 ["correctTranslationText"]
  FASTCALL1 STRING_LEN R11 [+2]
  GETIMPORT R10 K73 [string.len]
  CALL R10 1 1
  FASTCALL2K MATH_MAX R10 K99 [+4]
  LOADK R11 K99 [180]
  GETIMPORT R9 K102 [math.max]
  CALL R9 2 1
  SETTABLEKS R9 R8 K93 ["maxTextLength"]
  LOADB R9 0
  SETTABLEKS R9 R8 K94 ["autoFocusOnEnabled"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K103 ["correctTranslationPlaceholder"]
  SETTABLEKS R9 R8 K95 ["PlaceholderText"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K68 ["calculateFieldHeight"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K69 ["state"]
  GETTABLEKS R15 R16 K97 ["correctTranslationText"]
  FASTCALL1 STRING_LEN R15 [+2]
  GETIMPORT R14 K73 [string.len]
  CALL R14 1 1
  LOADN R15 18
  LOADB R16 1
  CALL R13 3 -1
  CALL R9 -1 1
  SETTABLEKS R9 R8 K62 ["Size"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["CorrectTranslationTextEntryField"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K41 [{"text", "size", "textTruncate", "textXAlignment", "textYAlignment", "fontStyle", "colorStyle", "richText", "layoutOrder", "fluidSizing", "automaticSize"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K104 ["additionalCommentsHeader"]
  SETTABLEKS R9 R8 K30 ["text"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 72
  CALL R9 4 1
  SETTABLEKS R9 R8 K31 ["size"]
  GETIMPORT R9 K48 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R9 R8 K32 ["textTruncate"]
  GETIMPORT R9 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K33 ["textXAlignment"]
  GETIMPORT R9 K54 [Enum.TextYAlignment.Center]
  SETTABLEKS R9 R8 K34 ["textYAlignment"]
  GETTABLEKS R9 R2 K55 ["Header2"]
  SETTABLEKS R9 R8 K35 ["fontStyle"]
  GETTABLEKS R9 R1 K56 ["TextEmphasis"]
  SETTABLEKS R9 R8 K36 ["colorStyle"]
  LOADB R9 1
  SETTABLEKS R9 R8 K37 ["richText"]
  LOADN R9 5
  SETTABLEKS R9 R8 K38 ["layoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K39 ["fluidSizing"]
  GETIMPORT R9 K59 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K40 ["automaticSize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["AdditionalCommentsHeader"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 8
  DUPTABLE R8 K96 [{"LayoutOrder", "enabled", "text", "textChanged", "maxTextLength", "autoFocusOnEnabled", "PlaceholderText", "Size"}]
  LOADN R9 6
  SETTABLEKS R9 R8 K26 ["LayoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K91 ["enabled"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K69 ["state"]
  GETTABLEKS R9 R10 K105 ["additionalCommentsText"]
  SETTABLEKS R9 R8 K30 ["text"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K106 ["onAdditionalCommentsTextChanged"]
  SETTABLEKS R9 R8 K92 ["textChanged"]
  LOADN R9 180
  SETTABLEKS R9 R8 K93 ["maxTextLength"]
  LOADB R9 0
  SETTABLEKS R9 R8 K94 ["autoFocusOnEnabled"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K107 ["additionalCommentsPlaceholder"]
  SETTABLEKS R9 R8 K95 ["PlaceholderText"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 90
  CALL R9 4 1
  SETTABLEKS R9 R8 K62 ["Size"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K15 ["AdditionalCommentsTextEntryField"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K41 [{"text", "size", "textTruncate", "textXAlignment", "textYAlignment", "fontStyle", "colorStyle", "richText", "layoutOrder", "fluidSizing", "automaticSize"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K77 ["problemDropdownSelectionHeader"]
  SETTABLEKS R9 R8 K30 ["text"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 72
  CALL R9 4 1
  SETTABLEKS R9 R8 K31 ["size"]
  GETIMPORT R9 K48 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R9 R8 K32 ["textTruncate"]
  GETIMPORT R9 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K33 ["textXAlignment"]
  GETIMPORT R9 K54 [Enum.TextYAlignment.Center]
  SETTABLEKS R9 R8 K34 ["textYAlignment"]
  GETTABLEKS R9 R2 K55 ["Header2"]
  SETTABLEKS R9 R8 K35 ["fontStyle"]
  GETTABLEKS R9 R1 K56 ["TextEmphasis"]
  SETTABLEKS R9 R8 K36 ["colorStyle"]
  LOADB R9 1
  SETTABLEKS R9 R8 K37 ["richText"]
  LOADN R9 7
  SETTABLEKS R9 R8 K38 ["layoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K39 ["fluidSizing"]
  GETIMPORT R9 K59 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K40 ["automaticSize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["TranslationProblemsHeader"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 7
  DUPTABLE R8 K115 [{"radioButtons", "onActivated", "currentValue", "elementSize", "layoutOrder"}]
  SETTABLEKS R3 R8 K83 ["radioButtons"]
  NEWCLOSURE R9 P1
  CAPTURE UPVAL U5
  SETTABLEKS R9 R8 K84 ["onActivated"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K88 ["props"]
  GETTABLEKS R9 R10 K89 ["feedbackReason"]
  SETTABLEKS R9 R8 K85 ["currentValue"]
  GETIMPORT R9 K45 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 40
  CALL R9 4 1
  SETTABLEKS R9 R8 K86 ["elementSize"]
  LOADN R9 8
  SETTABLEKS R9 R8 K38 ["layoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K81 ["RadioButtonList"]
  CALL R4 1 -1
  RETURN R4 -1

PROTO_12:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CALL R2 1 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"visible", "screenSize", "titleText", "showCloseButton", "contents", "actionButtons", "onDismiss", "onBackButtonActivated"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["props"]
  GETTABLEKS R5 R6 K11 ["feedbackFlowState"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K12 ["State"]
  GETTABLEKS R6 R7 K13 ["CurrentlyLeavingFeedback"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["visible"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["props"]
  GETTABLEKS R4 R5 K2 ["screenSize"]
  SETTABLEKS R4 R3 K2 ["screenSize"]
  GETTABLEKS R4 R0 K14 ["mainHeader"]
  SETTABLEKS R4 R3 K3 ["titleText"]
  GETUPVAL R5 4
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADB R4 1
  JUMP [+1]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["showCloseButton"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 5
  DUPTABLE R6 K17 [{"useAutomaticCanvasSize", "canvasSizeY"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K15 ["useAutomaticCanvasSize"]
  GETUPVAL R8 4
  CALL R8 0 1
  JUMPIFNOT R8 [+23]
  GETIMPORT R7 K20 [UDim.new]
  LOADN R8 0
  LOADN R10 88
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K22 ["calculateFieldHeight"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K23 ["state"]
  GETTABLEKS R14 R15 K24 ["feedbackText"]
  FASTCALL1 STRING_LEN R14 [+2]
  GETIMPORT R13 K27 [string.len]
  CALL R13 1 1
  LOADN R14 14
  LOADB R15 0
  CALL R12 3 1
  MULK R11 R12 K21 [2]
  ADD R9 R10 R11
  CALL R7 2 1
  JUMP [+5]
  GETIMPORT R7 K20 [UDim.new]
  LOADN R8 1
  LOADN R9 38
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["canvasSizeY"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  LOADK R8 K28 ["Frame"]
  DUPTABLE R9 K31 [{"BackgroundTransparency", "Size"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K29 ["BackgroundTransparency"]
  GETIMPORT R10 K34 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K30 ["Size"]
  DUPTABLE R10 K37 [{"Padding", "Contents"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["createElement"]
  LOADK R12 K38 ["UIPadding"]
  DUPTABLE R13 K41 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R14 K20 [UDim.new]
  LOADN R15 0
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K39 ["PaddingLeft"]
  GETIMPORT R14 K20 [UDim.new]
  LOADN R15 0
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K40 ["PaddingRight"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K35 ["Padding"]
  GETUPVAL R11 2
  MOVE R13 R0
  NAMECALL R11 R11 K42 ["renderContents"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K36 ["Contents"]
  CALL R7 3 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K5 ["contents"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 6
  DUPTABLE R6 K45 [{"buttonHeight", "buttons"}]
  LOADN R7 36
  SETTABLEKS R7 R6 K43 ["buttonHeight"]
  NEWTABLE R7 0 2
  DUPTABLE R8 K47 [{"buttonType", "props"}]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K48 ["Secondary"]
  SETTABLEKS R9 R8 K46 ["buttonType"]
  DUPTABLE R9 K51 [{"onActivated", "text"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K52 ["onCancel"]
  SETTABLEKS R10 R9 K49 ["onActivated"]
  GETTABLEKS R10 R0 K53 ["cancel"]
  SETTABLEKS R10 R9 K50 ["text"]
  SETTABLEKS R9 R8 K10 ["props"]
  DUPTABLE R9 K47 [{"buttonType", "props"}]
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K54 ["PrimarySystem"]
  SETTABLEKS R10 R9 K46 ["buttonType"]
  DUPTABLE R10 K56 [{"isDisabled", "onActivated", "text"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K55 ["isDisabled"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K57 ["onSubmitFeedback"]
  SETTABLEKS R11 R10 K49 ["onActivated"]
  GETTABLEKS R11 R0 K58 ["submitFeedback"]
  SETTABLEKS R11 R10 K50 ["text"]
  SETTABLEKS R10 R9 K10 ["props"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K44 ["buttons"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K6 ["actionButtons"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K52 ["onCancel"]
  SETTABLEKS R4 R3 K7 ["onDismiss"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["props"]
  GETTABLEKS R5 R6 K59 ["canNavigateBack"]
  JUMPIFNOT R5 [+4]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K60 ["navigateBack"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K8 ["onBackButtonActivated"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_14:
  GETUPVAL R1 0
  DUPTABLE R2 K14 [{"mainHeader", "cancel", "submitFeedback", "untranslated", "accuracyIssue", "spellingOrGrammarIssue", "inappropriateOrDerogatory", "textSelectionHeader", "correctTranslationHeader", "correctTranslationPlaceholder", "additionalCommentsHeader", "additionalCommentsPlaceholder", "problemDropdownSelectionHeader", "genericSelectionWrapper"}]
  LOADK R3 K15 ["CoreScripts.Feedback.FeedbackReportDialog.MainHeader"]
  SETTABLEKS R3 R2 K0 ["mainHeader"]
  LOADK R3 K16 ["CoreScripts.Feedback.FeedbackReportDialog.Cancel"]
  SETTABLEKS R3 R2 K1 ["cancel"]
  LOADK R3 K17 ["CoreScripts.Feedback.FeedbackReportDialog.SubmitFeedback"]
  SETTABLEKS R3 R2 K2 ["submitFeedback"]
  LOADK R3 K18 ["CoreScripts.Feedback.FeedbackReportDialog.ProblemOption.Untranslated"]
  SETTABLEKS R3 R2 K3 ["untranslated"]
  LOADK R3 K19 ["CoreScripts.Feedback.FeedbackReportDialog.ProblemOption.AccuracyIssue"]
  SETTABLEKS R3 R2 K4 ["accuracyIssue"]
  LOADK R3 K20 ["CoreScripts.Feedback.FeedbackReportDialog.ProblemOption.SpellingOrGrammarIssue"]
  SETTABLEKS R3 R2 K5 ["spellingOrGrammarIssue"]
  LOADK R3 K21 ["CoreScripts.Feedback.FeedbackReportDialog.ProblemOption.InappropriateOrDerogatory"]
  SETTABLEKS R3 R2 K6 ["inappropriateOrDerogatory"]
  LOADK R3 K22 ["CoreScripts.Feedback.FeedbackReportDialog.TextSelectionHeader"]
  SETTABLEKS R3 R2 K7 ["textSelectionHeader"]
  LOADK R3 K23 ["CoreScripts.Feedback.FeedbackReportDialog.CorrectTranslationHeader"]
  SETTABLEKS R3 R2 K8 ["correctTranslationHeader"]
  LOADK R3 K24 ["CoreScripts.Feedback.FeedbackReportDialog.CorrectTranslationPlaceholder"]
  SETTABLEKS R3 R2 K9 ["correctTranslationPlaceholder"]
  LOADK R3 K25 ["CoreScripts.Feedback.FeedbackReportDialog.AdditionalCommentsHeader"]
  SETTABLEKS R3 R2 K10 ["additionalCommentsHeader"]
  LOADK R3 K26 ["CoreScripts.Feedback.FeedbackReportDialog.AdditionalCommentsPlaceholder"]
  SETTABLEKS R3 R2 K11 ["additionalCommentsPlaceholder"]
  LOADK R3 K27 ["CoreScripts.Feedback.FeedbackReportDialog.ProblemDropdownSelectionHeader"]
  SETTABLEKS R3 R2 K12 ["problemDropdownSelectionHeader"]
  NEWTABLE R3 1 1
  LOADK R4 K28 ["CoreScripts.Feedback.FeedbackReportDialog.CorrectTranslationObjectPlaceholder"]
  SETLIST R3 R4 1 [1]
  GETTABLEKS R6 R0 K29 ["state"]
  GETTABLEKS R5 R6 K30 ["feedbackText"]
  SETTABLEKS R5 R3 K31 ["ObjectType"]
  SETTABLEKS R3 R2 K13 ["genericSelectionWrapper"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CALL R1 1 -1
  RETURN R1 -1

PROTO_15:
  DUPTABLE R1 K3 [{"screenSize", "feedbackFlowState", "feedbackReason"}]
  GETTABLEKS R3 R0 K4 ["displayOptions"]
  GETTABLEKS R2 R3 K0 ["screenSize"]
  SETTABLEKS R2 R1 K0 ["screenSize"]
  GETTABLEKS R3 R0 K1 ["feedbackFlowState"]
  GETTABLEKS R2 R3 K1 ["feedbackFlowState"]
  SETTABLEKS R2 R1 K1 ["feedbackFlowState"]
  GETTABLEKS R3 R0 K1 ["feedbackFlowState"]
  GETTABLEKS R2 R3 K2 ["feedbackReason"]
  SETTABLEKS R2 R1 K2 ["feedbackReason"]
  RETURN R1 1

PROTO_16:
  GETUPVAL R7 0
  GETUPVAL R8 1
  MOVE R9 R0
  MOVE R10 R1
  MOVE R11 R2
  MOVE R12 R3
  MOVE R13 R4
  MOVE R14 R5
  MOVE R15 R6
  CALL R8 7 -1
  CALL R7 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_21:
  DUPTABLE R1 K3 [{"sendFeedback", "setFeedbackFlowState", "setFeedbackReason"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["sendFeedback"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["setFeedbackFlowState"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["setFeedbackReason"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ExperienceStateCaptureService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["t"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K7 ["Packages"]
  GETTABLEKS R6 R7 K11 ["UIBlox"]
  CALL R5 1 1
  GETTABLEKS R8 R5 K12 ["App"]
  GETTABLEKS R7 R8 K13 ["Container"]
  GETTABLEKS R6 R7 K14 ["VerticalScrollView"]
  GETIMPORT R9 K16 [script]
  GETTABLEKS R8 R9 K17 ["Parent"]
  GETTABLEKS R7 R8 K17 ["Parent"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R7 K18 ["Resources"]
  GETTABLEKS R9 R10 K19 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R7 K20 ["Thunks"]
  GETTABLEKS R10 R11 K21 ["SendFeedbackThunk"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R7 K22 ["Actions"]
  GETTABLEKS R11 R12 K23 ["SetFeedbackFlowState"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R7 K22 ["Actions"]
  GETTABLEKS R12 R13 K24 ["SetFeedbackReason"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R7 K25 ["Components"]
  GETTABLEKS R13 R14 K26 ["TextEntryField"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R7 K25 ["Components"]
  GETTABLEKS R14 R15 K27 ["ModalDialog"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R7 K25 ["Components"]
  GETTABLEKS R16 R17 K28 ["PortedComponents"]
  GETTABLEKS R15 R16 K29 ["ThemedTextLabel"]
  CALL R14 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R19 R0 K30 ["Workspace"]
  GETTABLEKS R18 R19 K7 ["Packages"]
  GETTABLEKS R17 R18 K31 ["Localization"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K32 ["withLocalization"]
  GETTABLEKS R18 R5 K12 ["App"]
  GETTABLEKS R17 R18 K33 ["InputButton"]
  GETTABLEKS R16 R17 K34 ["RadioButtonList"]
  GETTABLEKS R19 R5 K12 ["App"]
  GETTABLEKS R18 R19 K35 ["Button"]
  GETTABLEKS R17 R18 K36 ["ButtonStack"]
  GETTABLEKS R21 R5 K12 ["App"]
  GETTABLEKS R20 R21 K35 ["Button"]
  GETTABLEKS R19 R20 K37 ["Enum"]
  GETTABLEKS R18 R19 K38 ["ButtonType"]
  GETTABLEKS R21 R5 K12 ["App"]
  GETTABLEKS R20 R21 K39 ["Text"]
  GETTABLEKS R19 R20 K40 ["StyledTextLabel"]
  GETTABLEKS R22 R5 K41 ["Core"]
  GETTABLEKS R21 R22 K42 ["Style"]
  GETTABLEKS R20 R21 K43 ["withStyle"]
  GETIMPORT R21 K1 [game]
  LOADK R23 K44 ["CoreGui"]
  NAMECALL R21 R21 K3 ["GetService"]
  CALL R21 2 1
  LOADK R24 K45 ["RobloxGui"]
  NAMECALL R22 R21 K46 ["WaitForChild"]
  CALL R22 2 1
  GETIMPORT R23 K6 [require]
  GETTABLEKS R26 R22 K47 ["Modules"]
  GETTABLEKS R25 R26 K48 ["Flags"]
  GETTABLEKS R24 R25 K49 ["GetFFlagEnableFeedbackReportDialogAdjustments"]
  CALL R23 1 1
  GETIMPORT R24 K1 [game]
  LOADK R26 K50 ["EnableFeedbackSelectionUpdate"]
  LOADB R27 0
  NAMECALL R24 R24 K51 ["DefineFastFlag"]
  CALL R24 3 1
  GETTABLEKS R25 R2 K52 ["PureComponent"]
  LOADK R27 K53 ["FeedbackReportDialog"]
  NAMECALL R25 R25 K54 ["extend"]
  CALL R25 2 1
  GETTABLEKS R26 R4 K55 ["strictInterface"]
  DUPTABLE R27 K60 [{"isReportDialogOpen", "screenSize", "closeDialog", "reportCategory"}]
  GETTABLEKS R28 R4 K61 ["boolean"]
  SETTABLEKS R28 R27 K56 ["isReportDialogOpen"]
  GETTABLEKS R28 R4 K62 ["Vector2"]
  SETTABLEKS R28 R27 K57 ["screenSize"]
  GETTABLEKS R28 R4 K63 ["optional"]
  GETTABLEKS R29 R4 K64 ["callback"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K58 ["closeDialog"]
  GETTABLEKS R28 R4 K63 ["optional"]
  GETTABLEKS R29 R4 K65 ["string"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K59 ["reportCategory"]
  CALL R26 1 1
  SETTABLEKS R26 R25 K66 ["validateProps"]
  DUPCLOSURE R26 K67 [PROTO_8]
  CAPTURE VAL R24
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R26 R25 K68 ["init"]
  DUPCLOSURE R26 K69 [PROTO_12]
  CAPTURE VAL R20
  CAPTURE VAL R23
  CAPTURE VAL R2
  CAPTURE VAL R19
  CAPTURE VAL R14
  CAPTURE VAL R24
  CAPTURE VAL R16
  CAPTURE VAL R12
  SETTABLEKS R26 R25 K70 ["renderContents"]
  DUPCLOSURE R26 K71 [PROTO_14]
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R23
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R26 R25 K72 ["render"]
  GETTABLEKS R26 R3 K73 ["connect"]
  DUPCLOSURE R27 K74 [PROTO_15]
  DUPCLOSURE R28 K75 [PROTO_21]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CALL R26 2 1
  MOVE R27 R25
  CALL R26 1 -1
  RETURN R26 -1
