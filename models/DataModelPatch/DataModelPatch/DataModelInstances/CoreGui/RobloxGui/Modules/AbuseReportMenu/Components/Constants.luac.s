MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  NEWTABLE R2 64 0
  LOADK R3 K8 ["AbuseReportMenuNewRoot"]
  SETTABLEKS R3 R2 K9 ["AbuseReportMenuRootName"]
  LOADK R3 K10 ["AbuseReportMenuPlaceholderFrame"]
  SETTABLEKS R3 R2 K10 ["AbuseReportMenuPlaceholderFrame"]
  LOADK R3 K11 ["ModalBaseSelectorDialog"]
  SETTABLEKS R3 R2 K12 ["ModalBaseSelectorDialogRootName"]
  DUPTABLE R3 K15 [{"Classic", "SelectInScene"}]
  LOADK R4 K13 ["Classic"]
  SETTABLEKS R4 R3 K13 ["Classic"]
  LOADK R4 K14 ["SelectInScene"]
  SETTABLEKS R4 R3 K14 ["SelectInScene"]
  SETTABLEKS R3 R2 K16 ["ReportModes"]
  DUPTABLE R3 K19 [{"Person", "Experience"}]
  LOADK R4 K17 ["Person"]
  SETTABLEKS R4 R3 K17 ["Person"]
  LOADK R4 K18 ["Experience"]
  SETTABLEKS R4 R3 K18 ["Experience"]
  SETTABLEKS R3 R2 K20 ["ReportTypes"]
  DUPTABLE R3 K29 [{"Swearing", "Username", "Bullying", "Scamming", "Dating", "Cheating", "Personal", "Links"}]
  LOADK R4 K21 ["Swearing"]
  SETTABLEKS R4 R3 K21 ["Swearing"]
  LOADK R4 K30 ["Inappropriate Username"]
  SETTABLEKS R4 R3 K22 ["Username"]
  LOADK R4 K23 ["Bullying"]
  SETTABLEKS R4 R3 K23 ["Bullying"]
  LOADK R4 K24 ["Scamming"]
  SETTABLEKS R4 R3 K24 ["Scamming"]
  LOADK R4 K25 ["Dating"]
  SETTABLEKS R4 R3 K25 ["Dating"]
  LOADK R4 K31 ["Cheating/Exploiting"]
  SETTABLEKS R4 R3 K26 ["Cheating"]
  LOADK R4 K32 ["Personal Question"]
  SETTABLEKS R4 R3 K27 ["Personal"]
  LOADK R4 K33 ["Offsite Links"]
  SETTABLEKS R4 R3 K28 ["Links"]
  SETTABLEKS R3 R2 K34 ["PlayerAbuseTypes"]
  DUPTABLE R3 K35 [{"Swearing", "Username", "Bullying", "Scamming", "Dating", "Cheating", "Personal"}]
  LOADK R4 K21 ["Swearing"]
  SETTABLEKS R4 R3 K21 ["Swearing"]
  LOADK R4 K30 ["Inappropriate Username"]
  SETTABLEKS R4 R3 K22 ["Username"]
  LOADK R4 K23 ["Bullying"]
  SETTABLEKS R4 R3 K23 ["Bullying"]
  LOADK R4 K24 ["Scamming"]
  SETTABLEKS R4 R3 K24 ["Scamming"]
  LOADK R4 K25 ["Dating"]
  SETTABLEKS R4 R3 K25 ["Dating"]
  LOADK R4 K31 ["Cheating/Exploiting"]
  SETTABLEKS R4 R3 K26 ["Cheating"]
  LOADK R4 K32 ["Personal Question"]
  SETTABLEKS R4 R3 K27 ["Personal"]
  SETTABLEKS R3 R2 K36 ["PlayerVoiceAbuseTypes"]
  LOADK R3 K37 ["Inappropriate Content"]
  SETTABLEKS R3 R2 K38 ["InappropriateContentAbuseReason"]
  DUPTABLE R3 K43 [{"TextChat", "VoiceChat", "Other", "Avatar"}]
  LOADK R4 K44 ["Text Chat"]
  SETTABLEKS R4 R3 K39 ["TextChat"]
  LOADK R4 K45 ["Voice Chat"]
  SETTABLEKS R4 R3 K40 ["VoiceChat"]
  LOADK R4 K41 ["Other"]
  SETTABLEKS R4 R3 K41 ["Other"]
  LOADK R4 K42 ["Avatar"]
  SETTABLEKS R4 R3 K42 ["Avatar"]
  SETTABLEKS R3 R2 K46 ["AbuseMethods"]
  NEWTABLE R3 4 0
  GETTABLEKS R5 R2 K46 ["AbuseMethods"]
  GETTABLEKS R4 R5 K39 ["TextChat"]
  LOADK R5 K47 ["chat"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K46 ["AbuseMethods"]
  GETTABLEKS R4 R5 K40 ["VoiceChat"]
  LOADK R5 K48 ["voice"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K46 ["AbuseMethods"]
  GETTABLEKS R4 R5 K41 ["Other"]
  LOADK R5 K49 ["other"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K46 ["AbuseMethods"]
  GETTABLEKS R4 R5 K42 ["Avatar"]
  LOADK R5 K50 ["avatar"]
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R2 K51 ["AbuseMethodToVectorMapping"]
  DUPTABLE R3 K55 [{"Chat", "Voice", "Other", "Game"}]
  LOADK R4 K52 ["Chat"]
  SETTABLEKS R4 R3 K52 ["Chat"]
  LOADK R4 K53 ["Voice"]
  SETTABLEKS R4 R3 K53 ["Voice"]
  LOADK R4 K41 ["Other"]
  SETTABLEKS R4 R3 K41 ["Other"]
  LOADK R4 K54 ["Game"]
  SETTABLEKS R4 R3 K54 ["Game"]
  SETTABLEKS R3 R2 K56 ["AnalyticsAbuseMethods"]
  NEWTABLE R3 4 0
  GETTABLEKS R5 R2 K46 ["AbuseMethods"]
  GETTABLEKS R4 R5 K39 ["TextChat"]
  GETTABLEKS R6 R2 K56 ["AnalyticsAbuseMethods"]
  GETTABLEKS R5 R6 K52 ["Chat"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K46 ["AbuseMethods"]
  GETTABLEKS R4 R5 K40 ["VoiceChat"]
  GETTABLEKS R6 R2 K56 ["AnalyticsAbuseMethods"]
  GETTABLEKS R5 R6 K53 ["Voice"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K46 ["AbuseMethods"]
  GETTABLEKS R4 R5 K41 ["Other"]
  GETTABLEKS R6 R2 K56 ["AnalyticsAbuseMethods"]
  GETTABLEKS R5 R6 K41 ["Other"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K46 ["AbuseMethods"]
  GETTABLEKS R4 R5 K42 ["Avatar"]
  GETTABLEKS R6 R2 K56 ["AnalyticsAbuseMethods"]
  GETTABLEKS R5 R6 K41 ["Other"]
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R2 K57 ["AbuseMethodToAnalyticsMapping"]
  DUPTABLE R3 K43 [{"TextChat", "VoiceChat", "Other", "Avatar"}]
  LOADK R4 K58 ["This person typed a mean word in text chat"]
  SETTABLEKS R4 R3 K39 ["TextChat"]
  LOADK R4 K59 ["This person was screaming on top of their lungs"]
  SETTABLEKS R4 R3 K40 ["VoiceChat"]
  LOADK R4 K60 ["This person is following me, wearing a bad shirt, etc."]
  SETTABLEKS R4 R3 K41 ["Other"]
  LOADK R4 K61 ["This person's avatar is wearing offensive clothing"]
  SETTABLEKS R4 R3 K42 ["Avatar"]
  SETTABLEKS R3 R2 K62 ["AbuseMethodSublabel"]
  DUPTABLE R3 K73 [{"UpdateAbuseReason", "UpdateComment", "UpdateMethodOfAbuse", "UpdateAbuser", "UpdatePlayerNameMap", "SetVoiceEnabled", "ClearState", "SetShowModalSelector", "SetMenuOpenTimestamp", "SetPreselectedPlayer"}]
  LOADK R4 K63 ["UpdateAbuseReason"]
  SETTABLEKS R4 R3 K63 ["UpdateAbuseReason"]
  LOADK R4 K64 ["UpdateComment"]
  SETTABLEKS R4 R3 K64 ["UpdateComment"]
  LOADK R4 K65 ["UpdateMethodOfAbuse"]
  SETTABLEKS R4 R3 K65 ["UpdateMethodOfAbuse"]
  LOADK R4 K66 ["UpdateAbuser"]
  SETTABLEKS R4 R3 K66 ["UpdateAbuser"]
  LOADK R4 K67 ["UpdatePlayerNameMap"]
  SETTABLEKS R4 R3 K67 ["UpdatePlayerNameMap"]
  LOADK R4 K68 ["SetVoiceEnabled"]
  SETTABLEKS R4 R3 K68 ["SetVoiceEnabled"]
  LOADK R4 K69 ["ClearState"]
  SETTABLEKS R4 R3 K69 ["ClearState"]
  LOADK R4 K70 ["SetShowModalSelector"]
  SETTABLEKS R4 R3 K70 ["SetShowModalSelector"]
  LOADK R4 K71 ["SetMenuOpenTimestamp"]
  SETTABLEKS R4 R3 K71 ["SetMenuOpenTimestamp"]
  LOADK R4 K72 ["SetPreselectedPlayer"]
  SETTABLEKS R4 R3 K72 ["SetPreselectedPlayer"]
  SETTABLEKS R3 R2 K74 ["PlayerMenuActions"]
  DUPTABLE R3 K85 [{"ClearAll", "ClearAnnotationFlowProperties", "SetScreenshotId", "SetScreenshotContentId", "SetAnnotationPoints", "SetIdentificationResults", "CompleteAttachment", "SetAnnotationAreaDimensions", "SetAnnotationCircleRadius", "SetAnnotationOptionSeen"}]
  LOADK R4 K75 ["ClearAll"]
  SETTABLEKS R4 R3 K75 ["ClearAll"]
  LOADK R4 K76 ["ClearAnnotationFlowProperties"]
  SETTABLEKS R4 R3 K76 ["ClearAnnotationFlowProperties"]
  LOADK R4 K77 ["SetScreenshotId"]
  SETTABLEKS R4 R3 K77 ["SetScreenshotId"]
  LOADK R4 K78 ["SetScreenshotContentId"]
  SETTABLEKS R4 R3 K78 ["SetScreenshotContentId"]
  LOADK R4 K79 ["SetAnnotationPoints"]
  SETTABLEKS R4 R3 K79 ["SetAnnotationPoints"]
  LOADK R4 K80 ["SetIdentificationResults"]
  SETTABLEKS R4 R3 K80 ["SetIdentificationResults"]
  LOADK R4 K81 ["CompleteAttachment"]
  SETTABLEKS R4 R3 K81 ["CompleteAttachment"]
  LOADK R4 K82 ["SetAnnotationAreaDimensions"]
  SETTABLEKS R4 R3 K82 ["SetAnnotationAreaDimensions"]
  LOADK R4 K83 ["SetAnnotationCircleRadius"]
  SETTABLEKS R4 R3 K83 ["SetAnnotationCircleRadius"]
  LOADK R4 K84 ["SetAnnotationOptionSeen"]
  SETTABLEKS R4 R3 K84 ["SetAnnotationOptionSeen"]
  SETTABLEKS R3 R2 K86 ["ReportAnythingActions"]
  DUPTABLE R3 K102 [{"Reset", "SetMenuOpenedTimestamp", "IncrementExperiencePersonChanged", "IncrementTypeofabuseChanged", "IncrementPersonChanged", "IncrementReasonChanged", "IncrementCaptureScene", "SetMemoryRequirementMet", "SetViewportInformation", "SetSubmissionCompleted", "SetTypeOfAbuseSelection", "SetReasonSelection", "SetCommentAdded", "SwitchToExperienceInitialSelections", "SwitchToPersonInitialSelections"}]
  LOADK R4 K87 ["Reset"]
  SETTABLEKS R4 R3 K87 ["Reset"]
  LOADK R4 K88 ["SetMenuOpenedTimestamp"]
  SETTABLEKS R4 R3 K88 ["SetMenuOpenedTimestamp"]
  LOADK R4 K89 ["IncrementExperiencePersonChanged"]
  SETTABLEKS R4 R3 K89 ["IncrementExperiencePersonChanged"]
  LOADK R4 K90 ["IncrementTypeofabuseChanged"]
  SETTABLEKS R4 R3 K90 ["IncrementTypeofabuseChanged"]
  LOADK R4 K91 ["IncrementPersonChanged"]
  SETTABLEKS R4 R3 K91 ["IncrementPersonChanged"]
  LOADK R4 K92 ["IncrementReasonChanged"]
  SETTABLEKS R4 R3 K92 ["IncrementReasonChanged"]
  LOADK R4 K93 ["IncrementCaptureScene"]
  SETTABLEKS R4 R3 K93 ["IncrementCaptureScene"]
  LOADK R4 K94 ["SetMemoryRequirementMet"]
  SETTABLEKS R4 R3 K94 ["SetMemoryRequirementMet"]
  LOADK R4 K95 ["SetViewportInformation"]
  SETTABLEKS R4 R3 K95 ["SetViewportInformation"]
  LOADK R4 K96 ["SetSubmissionCompleted"]
  SETTABLEKS R4 R3 K96 ["SetSubmissionCompleted"]
  LOADK R4 K97 ["SetTypeOfAbuseSelection"]
  SETTABLEKS R4 R3 K97 ["SetTypeOfAbuseSelection"]
  LOADK R4 K98 ["SetReasonSelection"]
  SETTABLEKS R4 R3 K98 ["SetReasonSelection"]
  LOADK R4 K99 ["SetCommentAdded"]
  SETTABLEKS R4 R3 K99 ["SetCommentAdded"]
  LOADK R4 K100 ["SwitchToExperienceInitialSelections"]
  SETTABLEKS R4 R3 K100 ["SwitchToExperienceInitialSelections"]
  LOADK R4 K101 ["SwitchToPersonInitialSelections"]
  SETTABLEKS R4 R3 K101 ["SwitchToPersonInitialSelections"]
  SETTABLEKS R3 R2 K103 ["AnalyticsActions"]
  DUPTABLE R3 K108 [{"ReportAnythingGeneric", "ChatGeneric", "Cheating", "BadUserName", "Place"}]
  LOADK R4 K109 ["We’ve received your report and will take action soon if needed. Your feedback helps keep our community safe."]
  SETTABLEKS R4 R3 K104 ["ReportAnythingGeneric"]
  LOADK R4 K110 ["Thanks for your report! Our moderators will review the chat logs and evaluate what happened."]
  SETTABLEKS R4 R3 K105 ["ChatGeneric"]
  LOADK R4 K111 ["Thanks for your report! We've recorded your report for evaluation."]
  SETTABLEKS R4 R3 K26 ["Cheating"]
  LOADK R4 K112 ["Thanks for your report! Our moderators will evaluate the username."]
  SETTABLEKS R4 R3 K106 ["BadUserName"]
  LOADK R4 K113 ["Thanks for your report! Our moderators will review the place and make a determination."]
  SETTABLEKS R4 R3 K107 ["Place"]
  SETTABLEKS R3 R2 K114 ["ReportSuccessToast"]
  NEWTABLE R3 64 0
  LOADK R4 K115 ["Feature.ReportAbuse.Label.ReportType"]
  SETTABLEKS R4 R3 K116 ["ReportType"]
  LOADK R4 K117 ["Feature.ReportAbuse.Label.Person"]
  SETTABLEKS R4 R3 K17 ["Person"]
  LOADK R4 K118 ["Feature.ReportAbuse.Label.Experience"]
  SETTABLEKS R4 R3 K18 ["Experience"]
  LOADK R4 K119 ["Feature.ReportAbuse.Action.SelectInScene"]
  SETTABLEKS R4 R3 K14 ["SelectInScene"]
  LOADK R4 K120 ["Feature.ReportAbuse.Action.BuildAReport"]
  SETTABLEKS R4 R3 K121 ["BuildAReport"]
  GETTABLEKS R5 R2 K46 ["AbuseMethods"]
  GETTABLEKS R4 R5 K39 ["TextChat"]
  LOADK R5 K122 ["Feature.ReportAbuse.Label.TextChat"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K46 ["AbuseMethods"]
  GETTABLEKS R4 R5 K40 ["VoiceChat"]
  LOADK R5 K123 ["Feature.SettingsHub.MethodOfAbuse.VoiceChat.Title"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K46 ["AbuseMethods"]
  GETTABLEKS R4 R5 K41 ["Other"]
  LOADK R5 K124 ["Feature.SettingsHub.MethodOfAbuse.Other.Title"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K46 ["AbuseMethods"]
  GETTABLEKS R4 R5 K42 ["Avatar"]
  LOADK R5 K125 ["Feature.ReportAbuse.Label.Avatar"]
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R2 K38 ["InappropriateContentAbuseReason"]
  LOADK R5 K126 ["Feature.ReportAbuse.Label.Content"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K34 ["PlayerAbuseTypes"]
  GETTABLEKS R4 R5 K21 ["Swearing"]
  LOADK R5 K127 ["Feature.ReportAbuse.Problem.Swearing"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K34 ["PlayerAbuseTypes"]
  GETTABLEKS R4 R5 K22 ["Username"]
  LOADK R5 K128 ["Feature.ReportAbuse.ProblemSurface.Username"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K34 ["PlayerAbuseTypes"]
  GETTABLEKS R4 R5 K23 ["Bullying"]
  LOADK R5 K129 ["Feature.ReportAbuse.Problem.Bullying"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K34 ["PlayerAbuseTypes"]
  GETTABLEKS R4 R5 K24 ["Scamming"]
  LOADK R5 K130 ["Feature.ReportAbuse.Problem.Scamming"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K34 ["PlayerAbuseTypes"]
  GETTABLEKS R4 R5 K25 ["Dating"]
  LOADK R5 K131 ["Feature.ReportAbuse.Problem.Dating"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K34 ["PlayerAbuseTypes"]
  GETTABLEKS R4 R5 K26 ["Cheating"]
  LOADK R5 K132 ["Feature.ReportAbuse.Problem.Cheating"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K34 ["PlayerAbuseTypes"]
  GETTABLEKS R4 R5 K27 ["Personal"]
  LOADK R5 K133 ["Feature.ReportAbuse.Problem.Personal"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K34 ["PlayerAbuseTypes"]
  GETTABLEKS R4 R5 K28 ["Links"]
  LOADK R5 K134 ["Feature.ReportAbuse.Problem.Links"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K36 ["PlayerVoiceAbuseTypes"]
  GETTABLEKS R4 R5 K21 ["Swearing"]
  LOADK R5 K127 ["Feature.ReportAbuse.Problem.Swearing"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K36 ["PlayerVoiceAbuseTypes"]
  GETTABLEKS R4 R5 K22 ["Username"]
  LOADK R5 K128 ["Feature.ReportAbuse.ProblemSurface.Username"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K36 ["PlayerVoiceAbuseTypes"]
  GETTABLEKS R4 R5 K23 ["Bullying"]
  LOADK R5 K129 ["Feature.ReportAbuse.Problem.Bullying"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K36 ["PlayerVoiceAbuseTypes"]
  GETTABLEKS R4 R5 K24 ["Scamming"]
  LOADK R5 K130 ["Feature.ReportAbuse.Problem.Scamming"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K36 ["PlayerVoiceAbuseTypes"]
  GETTABLEKS R4 R5 K25 ["Dating"]
  LOADK R5 K131 ["Feature.ReportAbuse.Problem.Dating"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K36 ["PlayerVoiceAbuseTypes"]
  GETTABLEKS R4 R5 K26 ["Cheating"]
  LOADK R5 K132 ["Feature.ReportAbuse.Problem.Cheating"]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K36 ["PlayerVoiceAbuseTypes"]
  GETTABLEKS R4 R5 K27 ["Personal"]
  LOADK R5 K133 ["Feature.ReportAbuse.Problem.Personal"]
  SETTABLE R5 R3 R4
  LOADK R4 K135 ["Feature.SettingsHub.Label.ReasonForAbuse"]
  SETTABLEKS R4 R3 K136 ["ReasonForAbuse"]
  LOADK R4 K137 ["Feature.SettingsHub.Label.AttachScreenshot"]
  SETTABLEKS R4 R3 K138 ["AttachScreenshot"]
  LOADK R4 K139 ["Feature.SettingsHub.Label.SceneCaptured"]
  SETTABLEKS R4 R3 K140 ["SceneCaptured"]
  LOADK R4 K141 ["Feature.SettingsHub.Action.CaptureScene"]
  SETTABLEKS R4 R3 K142 ["CaptureScene"]
  LOADK R4 K143 ["Feature.SettingsHub.Label.MethodOfAbuse"]
  SETTABLEKS R4 R3 K144 ["MethodOfAbuse"]
  LOADK R4 K145 ["Feature.SettingsHub.Label.WhichPlayer"]
  SETTABLEKS R4 R3 K146 ["WhichPerson"]
  LOADK R4 K147 ["Feature.SettingsHub.Label.ChooseOne"]
  SETTABLEKS R4 R3 K148 ["ChooseOne"]
  LOADK R4 K149 ["Feature.SettingsHub.Label.ReportComment"]
  SETTABLEKS R4 R3 K150 ["ReportCommentPlaceholder"]
  LOADK R4 K151 ["Feature.ReportAbuse.Action.Submit"]
  SETTABLEKS R4 R3 K152 ["SubmitButton"]
  SETTABLEKS R3 R2 K153 ["localizationKeys"]
  DUPTABLE R4 K158 [{"identifiedAvatars", "identifiedAds", "avatarIDStats", "adIDStats"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K154 ["identifiedAvatars"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K155 ["identifiedAds"]
  DUPTABLE R5 K162 [{"totalPlayers", "checkedPlayers", "duration"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K159 ["totalPlayers"]
  LOADN R6 0
  SETTABLEKS R6 R5 K160 ["checkedPlayers"]
  LOADN R6 0
  SETTABLEKS R6 R5 K161 ["duration"]
  SETTABLEKS R5 R4 K156 ["avatarIDStats"]
  DUPTABLE R5 K162 [{"totalPlayers", "checkedPlayers", "duration"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K159 ["totalPlayers"]
  LOADN R6 0
  SETTABLEKS R6 R5 K160 ["checkedPlayers"]
  LOADN R6 0
  SETTABLEKS R6 R5 K161 ["duration"]
  SETTABLEKS R5 R4 K157 ["adIDStats"]
  SETTABLEKS R4 R2 K163 ["InitialIdentificationResults"]
  DUPTABLE R4 K169 [{"identificationResults", "screenshotId", "screenshotContentId", "attachCompleted", "annotationPoints"}]
  GETTABLEKS R5 R2 K163 ["InitialIdentificationResults"]
  SETTABLEKS R5 R4 K164 ["identificationResults"]
  LOADK R5 K170 [""]
  SETTABLEKS R5 R4 K165 ["screenshotId"]
  LOADK R5 K170 [""]
  SETTABLEKS R5 R4 K166 ["screenshotContentId"]
  LOADB R5 0
  SETTABLEKS R5 R4 K167 ["attachCompleted"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K168 ["annotationPoints"]
  SETTABLEKS R4 R2 K171 ["ReportAnythingInitialState"]
  DUPTABLE R4 K188 [{"menuEverShown", "menuOpenedUnixTimestampMilliseconds", "experiencePersonChangeCount", "typeofabuseChangeCount", "personChangeCount", "reasonChangeCount", "captureSceneCount", "viewportSizeX", "viewportSizeY", "isPortraitMode", "isSubmissionCompleted", "typeofabuseSelection", "reasonSelection", "commentAdded", "experiencePersonSelection", "memoryRequirementMet"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K172 ["menuEverShown"]
  LOADN R5 0
  SETTABLEKS R5 R4 K173 ["menuOpenedUnixTimestampMilliseconds"]
  LOADN R5 0
  SETTABLEKS R5 R4 K174 ["experiencePersonChangeCount"]
  LOADN R5 0
  SETTABLEKS R5 R4 K175 ["typeofabuseChangeCount"]
  LOADN R5 0
  SETTABLEKS R5 R4 K176 ["personChangeCount"]
  LOADN R5 0
  SETTABLEKS R5 R4 K177 ["reasonChangeCount"]
  LOADN R5 0
  SETTABLEKS R5 R4 K178 ["captureSceneCount"]
  LOADN R5 255
  SETTABLEKS R5 R4 K179 ["viewportSizeX"]
  LOADN R5 255
  SETTABLEKS R5 R4 K180 ["viewportSizeY"]
  LOADB R5 0
  SETTABLEKS R5 R4 K181 ["isPortraitMode"]
  LOADB R5 0
  SETTABLEKS R5 R4 K182 ["isSubmissionCompleted"]
  LOADNIL R5
  SETTABLEKS R5 R4 K183 ["typeofabuseSelection"]
  LOADNIL R5
  SETTABLEKS R5 R4 K184 ["reasonSelection"]
  LOADB R5 0
  SETTABLEKS R5 R4 K185 ["commentAdded"]
  LOADNIL R5
  SETTABLEKS R5 R4 K186 ["experiencePersonSelection"]
  LOADN R5 255
  SETTABLEKS R5 R4 K187 ["memoryRequirementMet"]
  SETTABLEKS R4 R2 K189 ["AnalyticsInitialState"]
  DUPTABLE R4 K190 [{"typeofabuseSelection", "reasonSelection", "commentAdded", "experiencePersonSelection"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K183 ["typeofabuseSelection"]
  LOADNIL R5
  SETTABLEKS R5 R4 K184 ["reasonSelection"]
  LOADB R5 0
  SETTABLEKS R5 R4 K185 ["commentAdded"]
  GETIMPORT R5 K193 [string.lower]
  GETTABLEKS R7 R2 K20 ["ReportTypes"]
  GETTABLEKS R6 R7 K17 ["Person"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K186 ["experiencePersonSelection"]
  SETTABLEKS R4 R2 K194 ["AnalyticsPersonInitialSelections"]
  DUPTABLE R4 K190 [{"typeofabuseSelection", "reasonSelection", "commentAdded", "experiencePersonSelection"}]
  GETTABLEKS R6 R2 K56 ["AnalyticsAbuseMethods"]
  GETTABLEKS R5 R6 K54 ["Game"]
  SETTABLEKS R5 R4 K183 ["typeofabuseSelection"]
  GETTABLEKS R5 R2 K38 ["InappropriateContentAbuseReason"]
  SETTABLEKS R5 R4 K184 ["reasonSelection"]
  LOADB R5 0
  SETTABLEKS R5 R4 K185 ["commentAdded"]
  GETIMPORT R5 K193 [string.lower]
  GETTABLEKS R7 R2 K20 ["ReportTypes"]
  GETTABLEKS R6 R7 K18 ["Experience"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K186 ["experiencePersonSelection"]
  SETTABLEKS R4 R2 K195 ["AnalyticsExpeirenceInitialSelections"]
  DUPTABLE R4 K196 [{"Voice"}]
  LOADK R5 K48 ["voice"]
  SETTABLEKS R5 R4 K53 ["Voice"]
  SETTABLEKS R4 R2 K197 ["AbuseVector"]
  LOADN R4 42
  SETTABLEKS R4 R2 K198 ["MenuItemHeight"]
  LOADN R4 36
  SETTABLEKS R4 R2 K199 ["MenuItemHeightTight"]
  LOADN R4 60
  SETTABLEKS R4 R2 K200 ["FreeCommentsMenuItemHeight"]
  LOADN R4 18
  SETTABLEKS R4 R2 K201 ["FieldLabelSize"]
  LOADN R4 240
  SETTABLEKS R4 R2 K202 ["LeftContainerWidth"]
  LOADN R4 44
  SETTABLEKS R4 R2 K203 ["RightContainerWidth"]
  LOADN R4 100
  SETTABLEKS R4 R2 K204 ["MenuItemDynamicWidthOffset"]
  LOADN R4 16
  SETTABLEKS R4 R2 K205 ["FieldLabelSizeSmall"]
  LOADN R4 100
  SETTABLEKS R4 R2 K206 ["LeftContainerWidthSmall"]
  LOADN R4 180
  SETTABLEKS R4 R2 K207 ["RightContainerWidthSmall"]
  LOADN R4 30
  SETTABLEKS R4 R2 K208 ["FieldLabelSizeConsole"]
  LOADN R4 144
  SETTABLEKS R4 R2 K209 ["LeftContainerWidthConsole"]
  LOADN R4 94
  SETTABLEKS R4 R2 K210 ["RightContainerWidthConsole"]
  LOADN R4 28
  SETTABLEKS R4 R2 K211 ["SmallLayoutThreshold"]
  LOADN R4 12
  SETTABLEKS R4 R2 K212 ["ReportMenuItemPadding"]
  LOADN R4 0
  SETTABLEKS R4 R2 K213 ["ReportMenuTopPadding"]
  LOADN R4 0
  SETTABLEKS R4 R2 K214 ["ReportMenuTextOffset"]
  LOADN R4 20
  SETTABLEKS R4 R2 K215 ["ReportMenuDropdownTextSize"]
  LOADNIL R4
  SETTABLEKS R4 R2 K216 ["ReportMenuFontStyle"]
  LOADN R4 1
  SETTABLEKS R4 R2 K217 ["ReportTextEntryFontRelativeSize"]
  LOADN R4 36
  SETTABLEKS R4 R2 K218 ["ReportMenuButtonSize"]
  LOADN R4 40
  SETTABLEKS R4 R2 K219 ["ReportMenuItemPaddingConsole"]
  LOADN R4 16
  SETTABLEKS R4 R2 K220 ["ReportMenuTopPaddingConsole"]
  LOADN R4 20
  SETTABLEKS R4 R2 K221 ["ReportMenuTextOffsetConsole"]
  LOADN R4 30
  SETTABLEKS R4 R2 K222 ["ReportMenuDropdownTextSizeConsole"]
  LOADK R4 K223 ["Header1"]
  SETTABLEKS R4 R2 K224 ["ReportMenuFontStyleConsole"]
  LOADK R4 K225 [1.4]
  SETTABLEKS R4 R2 K226 ["ReportTextEntryFontRelativeSizeConsole"]
  LOADN R4 48
  SETTABLEKS R4 R2 K227 ["ReportMenuButtonSizeConsole"]
  DUPTABLE R4 K240 [{"reportType", "comment", "playerObjects", "menuContainerWidth", "allegedAbuserId", "allegedAbuser", "abuseReason", "methodOfAbuse", "isVoiceEnabled", "menuOpenedUnixTimestampMilliseconds", "modalSelectorCellData", "isModalSelectorShown", "preselectedPlayer"}]
  GETTABLEKS R6 R2 K20 ["ReportTypes"]
  GETTABLEKS R5 R6 K17 ["Person"]
  SETTABLEKS R5 R4 K228 ["reportType"]
  LOADK R5 K170 [""]
  SETTABLEKS R5 R4 K229 ["comment"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K230 ["playerObjects"]
  LOADN R5 0
  SETTABLEKS R5 R4 K231 ["menuContainerWidth"]
  LOADNIL R5
  SETTABLEKS R5 R4 K232 ["allegedAbuserId"]
  LOADNIL R5
  SETTABLEKS R5 R4 K233 ["allegedAbuser"]
  LOADNIL R5
  SETTABLEKS R5 R4 K234 ["abuseReason"]
  LOADNIL R5
  SETTABLEKS R5 R4 K235 ["methodOfAbuse"]
  LOADNIL R5
  SETTABLEKS R5 R4 K236 ["isVoiceEnabled"]
  LOADNIL R5
  SETTABLEKS R5 R4 K173 ["menuOpenedUnixTimestampMilliseconds"]
  LOADNIL R5
  SETTABLEKS R5 R4 K237 ["modalSelectorCellData"]
  LOADNIL R5
  SETTABLEKS R5 R4 K238 ["isModalSelectorShown"]
  LOADNIL R5
  SETTABLEKS R5 R4 K239 ["preselectedPlayer"]
  SETTABLEKS R4 R2 K241 ["InitPersonUIState"]
  DUPTABLE R4 K242 [{"reportType", "comment", "abuseReason", "menuContainerWidth"}]
  GETTABLEKS R6 R2 K20 ["ReportTypes"]
  GETTABLEKS R5 R6 K18 ["Experience"]
  SETTABLEKS R5 R4 K228 ["reportType"]
  LOADK R5 K170 [""]
  SETTABLEKS R5 R4 K229 ["comment"]
  GETTABLEKS R5 R2 K38 ["InappropriateContentAbuseReason"]
  SETTABLEKS R5 R4 K234 ["abuseReason"]
  LOADN R5 0
  SETTABLEKS R5 R4 K231 ["menuContainerWidth"]
  SETTABLEKS R4 R2 K243 ["InitExperienceUIState"]
  RETURN R2 1
