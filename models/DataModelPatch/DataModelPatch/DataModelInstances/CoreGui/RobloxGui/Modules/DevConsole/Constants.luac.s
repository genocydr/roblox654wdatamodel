MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K28 [{"MainWindowInit", "FormFactor", "Color", "Icon", "Image", "Padding", "DefaultFontSize", "Font", "GeneralFormatting", "TopBarFormatting", "TabRowFormatting", "UtilityBarFormatting", "LogFormatting", "EnumToMsgTypeName", "MsgTypeNamesOrdered", "MemoryFormatting", "NetworkFormatting", "ServerScriptsFormatting", "DataStoresFormatting", "ServerStatsFormatting", "ActionBindingsFormatting", "ServerJobsFormatting", "MicroProfilerFormatting", "ScriptProfilerFormatting", "LuauHeapFormatting", "DebugVisualizationsFormatting", "Graph", "Tooltip"}]
  DUPTABLE R1 K33 [{"Position", "Size", "Transparency", "Padding", "MinSize"}]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K37 [0.5]
  LOADN R4 26
  LOADK R5 K38 [0.02]
  LOADN R6 16
  CALL R2 4 1
  SETTABLEKS R2 R1 K29 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADN R3 0
  LOADN R4 224
  LOADK R5 K39 [0.96]
  LOADN R6 224
  CALL R2 4 1
  SETTABLEKS R2 R1 K30 ["Size"]
  LOADK R2 K40 [0.36]
  SETTABLEKS R2 R1 K31 ["Transparency"]
  GETIMPORT R2 K42 [UDim.new]
  LOADN R3 0
  LOADN R4 5
  CALL R2 2 1
  SETTABLEKS R2 R1 K5 ["Padding"]
  GETIMPORT R2 K44 [Vector2.new]
  LOADN R3 144
  LOADN R4 250
  CALL R2 2 1
  SETTABLEKS R2 R1 K32 ["MinSize"]
  SETTABLEKS R1 R0 K0 ["MainWindowInit"]
  DUPTABLE R1 K49 [{"Large", "Middle", "Small", "Console"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K45 ["Large"]
  LOADN R2 1
  SETTABLEKS R2 R1 K46 ["Middle"]
  LOADN R2 2
  SETTABLEKS R2 R1 K47 ["Small"]
  LOADN R2 3
  SETTABLEKS R2 R1 K48 ["Console"]
  SETTABLEKS R1 R0 K1 ["FormFactor"]
  DUPTABLE R1 K65 [{"Black", "BaseGray", "TextBoxGray", "ErrorRed", "HighlightBlue", "WarningYellow", "SelectedBlue", "UnselectedGray", "SelectedGray", "HoverGreen", "TabUnselectedGray", "BorderGray", "Text", "ActiveBox", "InactiveBox"}]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K50 ["Black"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 30
  LOADN R4 30
  LOADN R5 30
  CALL R2 3 1
  SETTABLEKS R2 R1 K51 ["BaseGray"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 45
  LOADN R4 45
  LOADN R5 45
  CALL R2 3 1
  SETTABLEKS R2 R1 K52 ["TextBoxGray"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 215
  LOADN R4 90
  LOADN R5 74
  CALL R2 3 1
  SETTABLEKS R2 R1 K53 ["ErrorRed"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 0
  LOADN R4 162
  LOADN R5 255
  CALL R2 3 1
  SETTABLEKS R2 R1 K54 ["HighlightBlue"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 255
  LOADN R4 218
  LOADN R5 68
  CALL R2 3 1
  SETTABLEKS R2 R1 K55 ["WarningYellow"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 50
  LOADN R4 181
  LOADN R5 255
  CALL R2 3 1
  SETTABLEKS R2 R1 K56 ["SelectedBlue"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 78
  LOADN R4 84
  LOADN R5 96
  CALL R2 3 1
  SETTABLEKS R2 R1 K57 ["UnselectedGray"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 102
  LOADN R4 108
  LOADN R5 119
  CALL R2 3 1
  SETTABLEKS R2 R1 K58 ["SelectedGray"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 70
  LOADN R4 197
  LOADN R5 124
  CALL R2 3 1
  SETTABLEKS R2 R1 K59 ["HoverGreen"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 102
  LOADN R4 108
  LOADN R5 119
  CALL R2 3 1
  SETTABLEKS R2 R1 K60 ["TabUnselectedGray"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 184
  LOADN R4 184
  LOADN R5 184
  CALL R2 3 1
  SETTABLEKS R2 R1 K61 ["BorderGray"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 255
  LOADN R4 255
  LOADN R5 255
  CALL R2 3 1
  SETTABLEKS R2 R1 K62 ["Text"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 63
  LOADN R4 198
  LOADN R5 121
  CALL R2 3 1
  SETTABLEKS R2 R1 K63 ["ActiveBox"]
  GETIMPORT R2 K68 [Color3.fromRGB]
  LOADN R3 184
  LOADN R4 184
  LOADN R5 184
  CALL R2 3 1
  SETTABLEKS R2 R1 K64 ["InactiveBox"]
  SETTABLEKS R1 R0 K2 ["Color"]
  DUPTABLE R1 K77 [{"Info", "Error", "Warning", "Close", "Sort", "Search", "Maximize", "Minimize"}]
  LOADK R2 K78 ["Info.png"]
  SETTABLEKS R2 R1 K69 ["Info"]
  LOADK R2 K79 ["Error.png"]
  SETTABLEKS R2 R1 K70 ["Error"]
  LOADK R2 K80 ["Warning.png"]
  SETTABLEKS R2 R1 K71 ["Warning"]
  LOADK R2 K81 ["Close.png"]
  SETTABLEKS R2 R1 K72 ["Close"]
  LOADK R2 K82 ["Sort.png"]
  SETTABLEKS R2 R1 K73 ["Sort"]
  LOADK R2 K83 ["Search.png"]
  SETTABLEKS R2 R1 K74 ["Search"]
  LOADK R2 K84 ["Maximize.png"]
  SETTABLEKS R2 R1 K75 ["Maximize"]
  LOADK R2 K85 ["Minimize.png"]
  SETTABLEKS R2 R1 K76 ["Minimize"]
  SETTABLEKS R1 R0 K3 ["Icon"]
  DUPTABLE R1 K92 [{"Minimize", "Maximize", "Clear", "Close", "Search", "Error", "Warning", "Info", "Check", "FilterUnfilled", "FilterFilled", "RightArrow", "DownArrow"}]
  LOADK R2 K93 ["rbxasset://textures/DevConsole/Minimize.png"]
  SETTABLEKS R2 R1 K76 ["Minimize"]
  LOADK R2 K94 ["rbxasset://textures/DevConsole/Maximize.png"]
  SETTABLEKS R2 R1 K75 ["Maximize"]
  LOADK R2 K95 ["rbxasset://textures/DevConsole/Clear.png"]
  SETTABLEKS R2 R1 K86 ["Clear"]
  LOADK R2 K96 ["rbxasset://textures/DevConsole/Close.png"]
  SETTABLEKS R2 R1 K72 ["Close"]
  LOADK R2 K97 ["rbxasset://textures/DevConsole/Search.png"]
  SETTABLEKS R2 R1 K74 ["Search"]
  LOADK R2 K98 ["rbxasset://textures/DevConsole/Error.png"]
  SETTABLEKS R2 R1 K70 ["Error"]
  LOADK R2 K99 ["rbxasset://textures/DevConsole/Warning.png"]
  SETTABLEKS R2 R1 K71 ["Warning"]
  LOADK R2 K100 ["rbxasset://textures/DevConsole/Info.png"]
  SETTABLEKS R2 R1 K69 ["Info"]
  LOADK R2 K101 ["rbxasset://textures/ui/LuaChat/icons/ic-check.png"]
  SETTABLEKS R2 R1 K87 ["Check"]
  LOADK R2 K102 ["rbxasset://textures/DevConsole/Filter-stroke.png"]
  SETTABLEKS R2 R1 K88 ["FilterUnfilled"]
  LOADK R2 K103 ["rbxasset://textures/DevConsole/Filter-filled.png"]
  SETTABLEKS R2 R1 K89 ["FilterFilled"]
  LOADK R2 K104 ["rbxasset://textures/DevConsole/Arrow.png"]
  SETTABLEKS R2 R1 K90 ["RightArrow"]
  LOADK R2 K105 ["rbxasset://textures/TerrainTools/button_arrow_down.png"]
  SETTABLEKS R2 R1 K91 ["DownArrow"]
  SETTABLEKS R1 R0 K4 ["Image"]
  DUPTABLE R1 K110 [{"WindowPadding", "TabRow", "LinePadding", "MemoryIndent"}]
  LOADN R2 8
  SETTABLEKS R2 R1 K106 ["WindowPadding"]
  LOADN R2 24
  SETTABLEKS R2 R1 K107 ["TabRow"]
  LOADN R2 2
  SETTABLEKS R2 R1 K108 ["LinePadding"]
  LOADN R2 24
  SETTABLEKS R2 R1 K109 ["MemoryIndent"]
  SETTABLEKS R1 R0 K5 ["Padding"]
  DUPTABLE R1 K118 [{"TopBar", "TabBar", "DropDownTabBar", "UtilBar", "MainWindowHeader", "MainWindow", "CommandLine", "Search"}]
  LOADN R2 18
  SETTABLEKS R2 R1 K111 ["TopBar"]
  LOADN R2 20
  SETTABLEKS R2 R1 K112 ["TabBar"]
  LOADN R2 18
  SETTABLEKS R2 R1 K113 ["DropDownTabBar"]
  LOADN R2 18
  SETTABLEKS R2 R1 K114 ["UtilBar"]
  LOADN R2 12
  SETTABLEKS R2 R1 K115 ["MainWindowHeader"]
  LOADN R2 15
  SETTABLEKS R2 R1 K116 ["MainWindow"]
  LOADN R2 15
  SETTABLEKS R2 R1 K117 ["CommandLine"]
  LOADN R2 15
  SETTABLEKS R2 R1 K74 ["Search"]
  SETTABLEKS R1 R0 K6 ["DefaultFontSize"]
  DUPTABLE R1 K121 [{"TopBar", "TabBar", "UtilBar", "MainWindow", "MainWindowBold", "MainWindowHeader", "Log", "Search"}]
  GETIMPORT R2 K124 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K111 ["TopBar"]
  GETIMPORT R2 K126 [Enum.Font.SourceSansBold]
  SETTABLEKS R2 R1 K112 ["TabBar"]
  GETIMPORT R2 K124 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K114 ["UtilBar"]
  GETIMPORT R2 K124 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K116 ["MainWindow"]
  GETIMPORT R2 K126 [Enum.Font.SourceSansBold]
  SETTABLEKS R2 R1 K119 ["MainWindowBold"]
  GETIMPORT R2 K126 [Enum.Font.SourceSansBold]
  SETTABLEKS R2 R1 K115 ["MainWindowHeader"]
  GETIMPORT R2 K128 [Enum.Font.Code]
  SETTABLEKS R2 R1 K120 ["Log"]
  GETIMPORT R2 K128 [Enum.Font.Code]
  SETTABLEKS R2 R1 K74 ["Search"]
  SETTABLEKS R1 R0 K7 ["Font"]
  DUPTABLE R1 K140 [{"NoResultSearchStr", "LineWidth", "LineColor", "ArrowWidth", "MainRowPadding", "LineGraphHeight", "HeaderFrameHeight", "EntryFrameHeight", "DropDownEntryHeight", "DropDownEntryWidth", "DropDownArrowHeight"}]
  LOADK R2 K141 ["Did not find results for \"%s.\""]
  SETTABLEKS R2 R1 K129 ["NoResultSearchStr"]
  LOADN R2 1
  SETTABLEKS R2 R1 K130 ["LineWidth"]
  GETIMPORT R2 K142 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K131 ["LineColor"]
  LOADN R2 8
  SETTABLEKS R2 R1 K132 ["ArrowWidth"]
  LOADN R2 8
  SETTABLEKS R2 R1 K133 ["MainRowPadding"]
  LOADN R2 200
  SETTABLEKS R2 R1 K134 ["LineGraphHeight"]
  LOADN R2 20
  SETTABLEKS R2 R1 K135 ["HeaderFrameHeight"]
  LOADN R2 30
  SETTABLEKS R2 R1 K136 ["EntryFrameHeight"]
  LOADN R2 40
  SETTABLEKS R2 R1 K137 ["DropDownEntryHeight"]
  LOADN R2 119
  SETTABLEKS R2 R1 K138 ["DropDownEntryWidth"]
  LOADN R2 12
  SETTABLEKS R2 R1 K139 ["DropDownArrowHeight"]
  SETTABLEKS R1 R0 K8 ["GeneralFormatting"]
  DUPTABLE R1 K145 [{"BarTransparency", "FrameHeight"}]
  LOADK R2 K146 [0.64]
  SETTABLEKS R2 R1 K143 ["BarTransparency"]
  LOADN R2 30
  SETTABLEKS R2 R1 K144 ["FrameHeight"]
  SETTABLEKS R1 R0 K9 ["TopBarFormatting"]
  DUPTABLE R1 K152 [{"TabDropDownWidth", "FrameHeight", "HighlightHeight", "SelectedTextTransparency", "UnselectedTextTransparency", "TabOverlapThreshold"}]
  LOADN R2 144
  SETTABLEKS R2 R1 K147 ["TabDropDownWidth"]
  LOADN R2 40
  SETTABLEKS R2 R1 K144 ["FrameHeight"]
  LOADN R2 6
  SETTABLEKS R2 R1 K148 ["HighlightHeight"]
  LOADN R2 0
  SETTABLEKS R2 R1 K149 ["SelectedTextTransparency"]
  LOADK R2 K37 [0.5]
  SETTABLEKS R2 R1 K150 ["UnselectedTextTransparency"]
  LOADN R2 10
  SETTABLEKS R2 R1 K151 ["TabOverlapThreshold"]
  SETTABLEKS R1 R0 K10 ["TabRowFormatting"]
  DUPTABLE R1 K159 [{"FrameHeight", "SmallFrameHeight", "SmallUtilPadding", "ClientServerButtonWidth", "ClientServerDropDownWidth", "CheckBoxHeight", "CheckBoxInnerPadding"}]
  LOADN R2 30
  SETTABLEKS R2 R1 K144 ["FrameHeight"]
  LOADN R2 24
  SETTABLEKS R2 R1 K153 ["SmallFrameHeight"]
  LOADN R2 6
  SETTABLEKS R2 R1 K154 ["SmallUtilPadding"]
  LOADN R2 100
  SETTABLEKS R2 R1 K155 ["ClientServerButtonWidth"]
  LOADN R2 84
  SETTABLEKS R2 R1 K156 ["ClientServerDropDownWidth"]
  LOADN R2 16
  SETTABLEKS R2 R1 K157 ["CheckBoxHeight"]
  LOADN R2 6
  SETTABLEKS R2 R1 K158 ["CheckBoxInnerPadding"]
  SETTABLEKS R1 R0 K11 ["UtilityBarFormatting"]
  DUPTABLE R1 K166 [{"MaxStringSize", "IconHeight", "TextFrameHeight", "TextFramePadding", "CommandLineHeight", "CommandLineIndent"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K160 ["MaxStringSize"]
  LOADN R2 14
  SETTABLEKS R2 R1 K161 ["IconHeight"]
  LOADN R2 20
  SETTABLEKS R2 R1 K162 ["TextFrameHeight"]
  LOADN R2 2
  SETTABLEKS R2 R1 K163 ["TextFramePadding"]
  LOADN R2 30
  SETTABLEKS R2 R1 K164 ["CommandLineHeight"]
  LOADN R2 30
  SETTABLEKS R2 R1 K165 ["CommandLineIndent"]
  SETTABLEKS R1 R0 K12 ["LogFormatting"]
  NEWTABLE R1 4 0
  GETIMPORT R3 K169 [Enum.MessageType.MessageOutput]
  GETTABLEKS R2 R3 K170 ["Value"]
  LOADK R3 K171 ["Output"]
  SETTABLE R3 R1 R2
  GETIMPORT R3 K173 [Enum.MessageType.MessageInfo]
  GETTABLEKS R2 R3 K170 ["Value"]
  LOADK R3 K174 ["Information"]
  SETTABLE R3 R1 R2
  GETIMPORT R3 K176 [Enum.MessageType.MessageWarning]
  GETTABLEKS R2 R3 K170 ["Value"]
  LOADK R3 K71 ["Warning"]
  SETTABLE R3 R1 R2
  GETIMPORT R3 K178 [Enum.MessageType.MessageError]
  GETTABLEKS R2 R3 K170 ["Value"]
  LOADK R3 K70 ["Error"]
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K13 ["EnumToMsgTypeName"]
  NEWTABLE R1 0 4
  LOADK R2 K171 ["Output"]
  LOADK R3 K174 ["Information"]
  LOADK R4 K71 ["Warning"]
  LOADK R5 K70 ["Error"]
  SETLIST R1 R2 4 [1]
  SETTABLEKS R1 R0 K14 ["MsgTypeNamesOrdered"]
  DUPTABLE R1 K184 [{"ChartHeaderNames", "ValueCellWidth", "DepthIndent", "CellPadding", "ValuePadding", "HeaderFrameHeight", "EntryFrameHeight"}]
  NEWTABLE R2 0 2
  LOADK R3 K185 ["Name"]
  LOADK R4 K186 ["Value MB"]
  SETLIST R2 R3 2 [1]
  SETTABLEKS R2 R1 K179 ["ChartHeaderNames"]
  LOADK R2 K187 [0.2]
  SETTABLEKS R2 R1 K180 ["ValueCellWidth"]
  LOADN R2 24
  SETTABLEKS R2 R1 K181 ["DepthIndent"]
  LOADN R2 24
  SETTABLEKS R2 R1 K182 ["CellPadding"]
  LOADN R2 12
  SETTABLEKS R2 R1 K183 ["ValuePadding"]
  LOADN R2 20
  SETTABLEKS R2 R1 K135 ["HeaderFrameHeight"]
  LOADN R2 30
  SETTABLEKS R2 R1 K136 ["EntryFrameHeight"]
  SETTABLEKS R1 R0 K15 ["MemoryFormatting"]
  DUPTABLE R1 K196 [{"SummaryHeaderNames", "HttpAnalyticsKeys", "ChartHeaderNames", "SummaryCellWidths", "ChartCellWidths", "CellPadding", "SummaryButtonHeight", "HeaderFrameHeight", "EntryFrameHeight", "ResponseWidthRatio", "ResponseStrHeight", "MinFrameWidth"}]
  NEWTABLE R2 0 6
  LOADK R3 K197 ["RequestType"]
  LOADK R4 K198 ["RequestCount"]
  LOADK R5 K199 ["FailedCount"]
  LOADK R6 K200 ["AvgTime(ms)"]
  LOADK R7 K201 ["MinTime(ms)"]
  LOADK R8 K202 ["MaxTime(ms)"]
  SETLIST R2 R3 6 [1]
  SETTABLEKS R2 R1 K188 ["SummaryHeaderNames"]
  NEWTABLE R2 0 6
  LOADK R3 K197 ["RequestType"]
  LOADK R4 K198 ["RequestCount"]
  LOADK R5 K199 ["FailedCount"]
  LOADK R6 K203 ["AverageTime"]
  LOADK R7 K204 ["MinTime"]
  LOADK R8 K205 ["MaxTime"]
  SETLIST R2 R3 6 [1]
  SETTABLEKS R2 R1 K189 ["HttpAnalyticsKeys"]
  NEWTABLE R2 0 6
  LOADK R3 K206 ["No."]
  LOADK R4 K207 ["Method"]
  LOADK R5 K208 ["Status"]
  LOADK R6 K209 ["Time(ms)."]
  LOADK R7 K197 ["RequestType"]
  LOADK R8 K210 ["URL"]
  SETLIST R2 R3 6 [1]
  SETTABLEKS R2 R1 K179 ["ChartHeaderNames"]
  NEWTABLE R2 0 5
  LOADN R3 120
  LOADN R4 120
  LOADN R5 120
  LOADN R6 120
  LOADN R7 120
  SETLIST R2 R3 5 [1]
  SETTABLEKS R2 R1 K190 ["SummaryCellWidths"]
  NEWTABLE R2 0 5
  LOADN R3 72
  LOADN R4 72
  LOADN R5 72
  LOADN R6 84
  LOADN R7 140
  SETLIST R2 R3 5 [1]
  SETTABLEKS R2 R1 K191 ["ChartCellWidths"]
  LOADN R2 16
  SETTABLEKS R2 R1 K182 ["CellPadding"]
  LOADN R2 30
  SETTABLEKS R2 R1 K192 ["SummaryButtonHeight"]
  LOADN R2 20
  SETTABLEKS R2 R1 K135 ["HeaderFrameHeight"]
  LOADN R2 30
  SETTABLEKS R2 R1 K136 ["EntryFrameHeight"]
  LOADK R2 K211 [0.8]
  SETTABLEKS R2 R1 K193 ["ResponseWidthRatio"]
  LOADN R2 15
  SETTABLEKS R2 R1 K194 ["ResponseStrHeight"]
  LOADN R2 238
  SETTABLEKS R2 R1 K195 ["MinFrameWidth"]
  SETTABLEKS R1 R0 K16 ["NetworkFormatting"]
  DUPTABLE R1 K214 [{"ChartHeaderNames", "ChartCellWidths", "HeaderFrameHeight", "EntryFrameHeight", "CellPadding", "ActivityBoxWidth", "ActivityBoxPadding"}]
  NEWTABLE R2 0 3
  LOADK R3 K185 ["Name"]
  LOADK R4 K215 ["Activity (%)"]
  LOADK R5 K216 ["Rate (/s)"]
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K179 ["ChartHeaderNames"]
  NEWTABLE R2 0 3
  LOADK R3 K217 [0.6]
  LOADK R4 K187 [0.2]
  LOADK R5 K187 [0.2]
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K191 ["ChartCellWidths"]
  LOADN R2 20
  SETTABLEKS R2 R1 K135 ["HeaderFrameHeight"]
  LOADN R2 30
  SETTABLEKS R2 R1 K136 ["EntryFrameHeight"]
  LOADN R2 16
  SETTABLEKS R2 R1 K182 ["CellPadding"]
  LOADN R2 12
  SETTABLEKS R2 R1 K212 ["ActivityBoxWidth"]
  LOADN R2 14
  SETTABLEKS R2 R1 K213 ["ActivityBoxPadding"]
  SETTABLEKS R1 R0 K17 ["ServerScriptsFormatting"]
  DUPTABLE R1 K219 [{"ChartHeaderNames", "ValueCellWidth", "CellPadding", "ExpandArrowPadding", "HeaderFrameHeight", "EntryFrameHeight"}]
  NEWTABLE R2 0 2
  LOADK R3 K185 ["Name"]
  LOADK R4 K170 ["Value"]
  SETLIST R2 R3 2 [1]
  SETTABLEKS R2 R1 K179 ["ChartHeaderNames"]
  LOADK R2 K187 [0.2]
  SETTABLEKS R2 R1 K180 ["ValueCellWidth"]
  LOADN R2 16
  SETTABLEKS R2 R1 K182 ["CellPadding"]
  LOADN R2 12
  SETTABLEKS R2 R1 K218 ["ExpandArrowPadding"]
  LOADN R2 20
  SETTABLEKS R2 R1 K135 ["HeaderFrameHeight"]
  LOADN R2 30
  SETTABLEKS R2 R1 K136 ["EntryFrameHeight"]
  SETTABLEKS R1 R0 K18 ["DataStoresFormatting"]
  DUPTABLE R1 K219 [{"ChartHeaderNames", "ValueCellWidth", "CellPadding", "ExpandArrowPadding", "HeaderFrameHeight", "EntryFrameHeight"}]
  NEWTABLE R2 0 2
  LOADK R3 K185 ["Name"]
  LOADK R4 K170 ["Value"]
  SETLIST R2 R3 2 [1]
  SETTABLEKS R2 R1 K179 ["ChartHeaderNames"]
  LOADK R2 K187 [0.2]
  SETTABLEKS R2 R1 K180 ["ValueCellWidth"]
  LOADN R2 14
  SETTABLEKS R2 R1 K182 ["CellPadding"]
  LOADN R2 12
  SETTABLEKS R2 R1 K218 ["ExpandArrowPadding"]
  LOADN R2 20
  SETTABLEKS R2 R1 K135 ["HeaderFrameHeight"]
  LOADN R2 30
  SETTABLEKS R2 R1 K136 ["EntryFrameHeight"]
  SETTABLEKS R1 R0 K19 ["ServerStatsFormatting"]
  DUPTABLE R1 K220 [{"ChartHeaderNames", "ChartCellWidths", "CellPadding", "ExpandArrowPadding", "HeaderFrameHeight", "EntryFrameHeight", "MinFrameWidth"}]
  NEWTABLE R2 0 5
  LOADK R3 K185 ["Name"]
  LOADK R4 K221 ["Priority"]
  LOADK R5 K222 ["Security"]
  LOADK R6 K223 ["Action Name"]
  LOADK R7 K224 ["Input Types"]
  SETLIST R2 R3 5 [1]
  SETTABLEKS R2 R1 K179 ["ChartHeaderNames"]
  NEWTABLE R2 0 3
  LOADN R3 80
  LOADN R4 100
  LOADN R5 185
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K191 ["ChartCellWidths"]
  LOADN R2 16
  SETTABLEKS R2 R1 K182 ["CellPadding"]
  LOADN R2 12
  SETTABLEKS R2 R1 K218 ["ExpandArrowPadding"]
  LOADN R2 20
  SETTABLEKS R2 R1 K135 ["HeaderFrameHeight"]
  LOADN R2 30
  SETTABLEKS R2 R1 K136 ["EntryFrameHeight"]
  LOADN R2 142
  SETTABLEKS R2 R1 K195 ["MinFrameWidth"]
  SETTABLEKS R1 R0 K20 ["ActionBindingsFormatting"]
  DUPTABLE R1 K225 [{"ChartHeaderNames", "ValueCellWidth", "CellPadding", "ExpandArrowPadding", "HeaderFrameHeight", "EntryFrameHeight", "MinFrameWidth"}]
  NEWTABLE R2 0 4
  LOADK R3 K185 ["Name"]
  LOADK R4 K226 ["DutyCycle(%)"]
  LOADK R5 K227 ["Steps Per Sec (/s)"]
  LOADK R6 K228 ["Step Time (ms)"]
  SETLIST R2 R3 4 [1]
  SETTABLEKS R2 R1 K179 ["ChartHeaderNames"]
  NEWTABLE R2 0 4
  LOADK R3 K229 [0.31]
  LOADK R4 K230 [0.23]
  LOADK R5 K230 [0.23]
  LOADK R6 K230 [0.23]
  SETLIST R2 R3 4 [1]
  SETTABLEKS R2 R1 K180 ["ValueCellWidth"]
  LOADN R2 16
  SETTABLEKS R2 R1 K182 ["CellPadding"]
  LOADN R2 12
  SETTABLEKS R2 R1 K218 ["ExpandArrowPadding"]
  LOADN R2 20
  SETTABLEKS R2 R1 K135 ["HeaderFrameHeight"]
  LOADN R2 30
  SETTABLEKS R2 R1 K136 ["EntryFrameHeight"]
  LOADN R2 142
  SETTABLEKS R2 R1 K195 ["MinFrameWidth"]
  SETTABLEKS R1 R0 K21 ["ServerJobsFormatting"]
  DUPTABLE R1 K233 [{"ValueCellWidth", "ButtonWidth", "CellPadding", "ButtonTextSize"}]
  NEWTABLE R2 0 2
  LOADK R3 K234 [0.3]
  LOADK R4 K235 [0.7]
  SETLIST R2 R3 2 [1]
  SETTABLEKS R2 R1 K180 ["ValueCellWidth"]
  LOADN R2 200
  SETTABLEKS R2 R1 K231 ["ButtonWidth"]
  LOADN R2 16
  SETTABLEKS R2 R1 K182 ["CellPadding"]
  LOADN R2 20
  SETTABLEKS R2 R1 K232 ["ButtonTextSize"]
  SETTABLEKS R1 R0 K22 ["MicroProfilerFormatting"]
  DUPTABLE R1 K237 [{"HeaderNames", "ValueCellWidth", "CellPadding", "ValuePadding", "DepthIndent"}]
  NEWTABLE R2 0 3
  LOADK R3 K185 ["Name"]
  LOADK R4 K238 ["Total"]
  LOADK R5 K239 ["Self"]
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K236 ["HeaderNames"]
  LOADK R2 K187 [0.2]
  SETTABLEKS R2 R1 K180 ["ValueCellWidth"]
  LOADN R2 24
  SETTABLEKS R2 R1 K182 ["CellPadding"]
  LOADN R2 12
  SETTABLEKS R2 R1 K183 ["ValuePadding"]
  LOADN R2 24
  SETTABLEKS R2 R1 K181 ["DepthIndent"]
  SETTABLEKS R1 R0 K23 ["ScriptProfilerFormatting"]
  DUPTABLE R1 K252 [{"ValueCellWidth", "CellPadding", "ValuePadding", "DepthIndent", "SnapshotWidth", "SnapshotHighlightSize", "TabsHeight", "TabButtonWidth", "TabButtonHeight", "TabButtonPad", "TabHighlightHeight", "TableHintHeight", "GraphEntryFrameHeight", "PathEntryFrameHeight", "RefEntryFrameHeight", "StatEntryFrameHeight"}]
  LOADK R2 K187 [0.2]
  SETTABLEKS R2 R1 K180 ["ValueCellWidth"]
  LOADN R2 24
  SETTABLEKS R2 R1 K182 ["CellPadding"]
  LOADN R2 12
  SETTABLEKS R2 R1 K183 ["ValuePadding"]
  LOADN R2 12
  SETTABLEKS R2 R1 K181 ["DepthIndent"]
  LOADK R2 K187 [0.2]
  SETTABLEKS R2 R1 K240 ["SnapshotWidth"]
  LOADN R2 3
  SETTABLEKS R2 R1 K241 ["SnapshotHighlightSize"]
  LOADN R2 30
  SETTABLEKS R2 R1 K242 ["TabsHeight"]
  LOADN R2 120
  SETTABLEKS R2 R1 K243 ["TabButtonWidth"]
  LOADN R2 30
  SETTABLEKS R2 R1 K244 ["TabButtonHeight"]
  LOADN R2 5
  SETTABLEKS R2 R1 K245 ["TabButtonPad"]
  LOADN R2 5
  SETTABLEKS R2 R1 K246 ["TabHighlightHeight"]
  LOADN R2 50
  SETTABLEKS R2 R1 K247 ["TableHintHeight"]
  LOADN R2 20
  SETTABLEKS R2 R1 K248 ["GraphEntryFrameHeight"]
  LOADN R2 20
  SETTABLEKS R2 R1 K249 ["PathEntryFrameHeight"]
  LOADN R2 20
  SETTABLEKS R2 R1 K250 ["RefEntryFrameHeight"]
  LOADN R2 20
  SETTABLEKS R2 R1 K251 ["StatEntryFrameHeight"]
  SETTABLEKS R1 R0 K24 ["LuauHeapFormatting"]
  DUPTABLE R1 K254 [{"ChartHeaderNames", "ChartCellWidths", "CellPadding", "ExpandArrowPadding", "HeaderFrameHeight", "EntryFrameHeight", "MinFrameWidth", "LearnMoreWidth"}]
  NEWTABLE R2 0 4
  LOADK R3 K185 ["Name"]
  LOADK R4 K255 ["Toggle"]
  LOADK R5 K0 ["MainWindowInit"]
  LOADK R6 K1 ["FormFactor"]
  SETLIST R2 R3 4 [1]
  SETTABLEKS R2 R1 K179 ["ChartHeaderNames"]
  NEWTABLE R2 0 2
  LOADN R3 60
  LOADN R4 80
  SETLIST R2 R3 2 [1]
  SETTABLEKS R2 R1 K191 ["ChartCellWidths"]
  LOADN R2 16
  SETTABLEKS R2 R1 K182 ["CellPadding"]
  LOADN R2 12
  SETTABLEKS R2 R1 K218 ["ExpandArrowPadding"]
  LOADN R2 20
  SETTABLEKS R2 R1 K135 ["HeaderFrameHeight"]
  LOADN R2 30
  SETTABLEKS R2 R1 K136 ["EntryFrameHeight"]
  LOADN R2 142
  SETTABLEKS R2 R1 K195 ["MinFrameWidth"]
  LOADN R2 80
  SETTABLEKS R2 R1 K253 ["LearnMoreWidth"]
  SETTABLEKS R1 R0 K25 ["DebugVisualizationsFormatting"]
  DUPTABLE R1 K264 [{"PointWidth", "PointOffset", "Padding", "Scale", "InnerPaddingY", "InnerScaleY", "TextPadding"}]
  LOADN R2 4
  SETTABLEKS R2 R1 K258 ["PointWidth"]
  LOADN R2 2
  SETTABLEKS R2 R1 K259 ["PointOffset"]
  LOADK R2 K9 ["TopBarFormatting"]
  SETTABLEKS R2 R1 K5 ["Padding"]
  LOADK R2 K235 [0.7]
  SETTABLEKS R2 R1 K260 ["Scale"]
  LOADK R2 K10 ["TabRowFormatting"]
  SETTABLEKS R2 R1 K261 ["InnerPaddingY"]
  LOADK R2 K211 [0.8]
  SETTABLEKS R2 R1 K262 ["InnerScaleY"]
  LOADN R2 10
  SETTABLEKS R2 R1 K263 ["TextPadding"]
  SETTABLEKS R1 R0 K26 ["Graph"]
  DUPTABLE R1 K270 [{"Padding", "Offset", "MaxWidth", "Delay"}]
  GETIMPORT R2 K42 [UDim.new]
  LOADN R3 0
  LOADN R4 6
  CALL R2 2 1
  SETTABLEKS R2 R1 K5 ["Padding"]
  GETIMPORT R2 K272 [UDim2.fromOffset]
  LOADN R3 12
  LOADN R4 12
  CALL R2 2 1
  SETTABLEKS R2 R1 K267 ["Offset"]
  LOADN R2 44
  SETTABLEKS R2 R1 K268 ["MaxWidth"]
  LOADK R2 K17 ["ServerScriptsFormatting"]
  SETTABLEKS R2 R1 K269 ["Delay"]
  SETTABLEKS R1 R0 K27 ["Tooltip"]
  RETURN R0 1
