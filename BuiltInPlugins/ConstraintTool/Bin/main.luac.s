PROTO_0:
  LOADB R0 0
  SETUPVAL R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["mainButton"]
  LOADB R2 0
  NAMECALL R0 R0 K1 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K2 ["unmount"]
  GETUPVAL R1 2
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 2
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K2 [table.remove]
  GETUPVAL R1 0
  LOADN R2 1
  CALL R0 2 1
  GETUPVAL R2 1
  LOADN R3 1
  FASTCALL3 TABLE_INSERT R2 R3 R0
  MOVE R4 R0
  GETIMPORT R1 K4 [table.insert]
  CALL R1 3 0
  RETURN R0 1

PROTO_2:
  GETIMPORT R0 K2 [table.remove]
  GETUPVAL R1 0
  LOADN R2 1
  CALL R0 2 1
  GETUPVAL R2 1
  LOADN R3 1
  FASTCALL3 TABLE_INSERT R2 R3 R0
  MOVE R4 R0
  GETIMPORT R1 K4 [table.insert]
  CALL R1 3 0
  RETURN R0 1

PROTO_3:
  SETUPVAL R0 0
  DUPTABLE R1 K1 [{"undo"}]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K0 ["undo"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R1 0
  JUMPIFNOTEQ R0 R1 [+74]
  GETIMPORT R2 K2 [table.remove]
  GETUPVAL R3 1
  LOADN R4 1
  CALL R2 2 1
  GETUPVAL R4 2
  LOADN R5 1
  FASTCALL3 TABLE_INSERT R4 R5 R2
  MOVE R6 R2
  GETIMPORT R3 K4 [table.insert]
  CALL R3 3 0
  MOVE R1 R2
  GETUPVAL R2 3
  NAMECALL R2 R2 K5 ["_getConstraintData"]
  CALL R2 1 1
  GETUPVAL R3 4
  JUMPIF R3 [+10]
  GETTABLEKS R3 R2 K6 ["Attachments"]
  JUMPIFEQKN R3 K7 [1] [+7]
  GETUPVAL R3 5
  JUMPIFEQKS R3 K8 ["WeldConstraint"] [+4]
  GETUPVAL R3 5
  JUMPIFNOTEQKS R3 K9 ["NoCollisionConstraint"] [+7]
  GETUPVAL R3 3
  MOVE R5 R1
  NAMECALL R3 R3 K10 ["_onUndo"]
  CALL R3 2 0
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEN R3 R4 1
  JUMPIFNOT R3 [+34]
  GETUPVAL R5 1
  GETTABLEN R4 R5 1
  GETTABLEKS R3 R4 K11 ["type"]
  JUMPIFNOTEQKS R3 K12 ["initial"] [+29]
  GETUPVAL R3 6
  NAMECALL R3 R3 K13 ["GetCanUndo"]
  CALL R3 1 1
  JUMPIFNOT R3 [+23]
  GETUPVAL R3 7
  NAMECALL R3 R3 K14 ["Disconnect"]
  CALL R3 1 0
  GETUPVAL R3 6
  NAMECALL R3 R3 K15 ["Undo"]
  CALL R3 1 0
  GETIMPORT R3 K2 [table.remove]
  GETUPVAL R4 1
  LOADN R5 1
  CALL R3 2 1
  GETUPVAL R5 2
  LOADN R6 1
  FASTCALL3 TABLE_INSERT R5 R6 R3
  MOVE R7 R3
  GETIMPORT R4 K4 [table.insert]
  CALL R4 3 0
  GETUPVAL R3 8
  CALL R3 0 0
  RETURN R0 0

PROTO_5:
  LOADNIL R0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnUndo"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U0
  CAPTURE REF R0
  CAPTURE UPVAL U7
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  MOVE R0 R1
  CLOSEUPVALS R0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  JUMPIFNOTEQ R0 R1 [+70]
  GETIMPORT R2 K2 [table.remove]
  GETUPVAL R3 1
  LOADN R4 1
  CALL R2 2 1
  GETUPVAL R4 2
  LOADN R5 1
  FASTCALL3 TABLE_INSERT R4 R5 R2
  MOVE R6 R2
  GETIMPORT R3 K4 [table.insert]
  CALL R3 3 0
  MOVE R1 R2
  GETUPVAL R2 3
  NAMECALL R2 R2 K5 ["_getConstraintData"]
  CALL R2 1 1
  GETUPVAL R3 4
  JUMPIF R3 [+10]
  GETTABLEKS R3 R2 K6 ["Attachments"]
  JUMPIFEQKN R3 K7 [1] [+7]
  GETUPVAL R3 5
  JUMPIFEQKS R3 K8 ["WeldConstraint"] [+4]
  GETUPVAL R3 5
  JUMPIFNOTEQKS R3 K9 ["NoCollisionConstraint"] [+7]
  GETUPVAL R3 3
  MOVE R5 R1
  NAMECALL R3 R3 K10 ["_onRedo"]
  CALL R3 2 0
  RETURN R0 0
  JUMPIFNOT R1 [+32]
  GETTABLEKS R3 R1 K11 ["type"]
  JUMPIFNOTEQKS R3 K12 ["initial"] [+29]
  GETUPVAL R3 6
  NAMECALL R3 R3 K13 ["GetCanRedo"]
  CALL R3 1 1
  JUMPIFNOT R3 [+23]
  GETUPVAL R3 7
  NAMECALL R3 R3 K14 ["Disconnect"]
  CALL R3 1 0
  GETUPVAL R3 6
  NAMECALL R3 R3 K15 ["Redo"]
  CALL R3 1 0
  GETIMPORT R3 K2 [table.remove]
  GETUPVAL R4 1
  LOADN R5 1
  CALL R3 2 1
  GETUPVAL R5 2
  LOADN R6 1
  FASTCALL3 TABLE_INSERT R5 R6 R3
  MOVE R7 R3
  GETIMPORT R4 K4 [table.insert]
  CALL R4 3 0
  GETUPVAL R3 8
  CALL R3 0 0
  RETURN R0 0

PROTO_7:
  LOADNIL R0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnRedo"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U0
  CAPTURE REF R0
  CAPTURE UPVAL U7
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  MOVE R0 R1
  CLOSEUPVALS R0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  JUMPIFEQKS R0 K0 ["WeldConstraint"] [+4]
  GETUPVAL R0 1
  JUMPIFNOTEQKS R0 K1 ["NoCollisionConstraint"] [+34]
  GETUPVAL R0 2
  LOADK R2 K2 ["WeldTool"]
  NAMECALL R0 R0 K3 ["TryBeginRecording"]
  CALL R0 2 1
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R1 3
  GETUPVAL R2 1
  CALL R1 1 2
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 2
  MOVE R5 R0
  GETIMPORT R6 K7 [Enum.FinishRecordingOperation.Commit]
  NAMECALL R3 R3 K8 ["FinishRecording"]
  CALL R3 3 0
  JUMP [+7]
  GETUPVAL R3 2
  MOVE R5 R0
  GETIMPORT R6 K10 [Enum.FinishRecordingOperation.Cancel]
  NAMECALL R3 R3 K8 ["FinishRecording"]
  CALL R3 3 0
  JUMPIFNOT R1 [+5]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K11 ["closeCallback"]
  CALL R3 0 0
  RETURN R0 0
  LOADB R0 1
  SETUPVAL R0 5
  GETUPVAL R1 6
  GETTABLEKS R0 R1 K12 ["mainButton"]
  LOADB R2 1
  NAMECALL R0 R0 K13 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R1 7
  GETTABLEKS R0 R1 K14 ["mount"]
  GETUPVAL R2 7
  GETTABLEKS R1 R2 K15 ["createElement"]
  GETUPVAL R2 8
  DUPTABLE R3 K27 [{"plugin", "Mouse", "ClosePluginCallback", "SetConstraintToolModelReference", "DraggerContext", "DraggerSchema", "DraggerSettings", "constraintType", "undoAttachmentStack", "redoAttachmentStack", "recordingName"}]
  GETUPVAL R4 9
  SETTABLEKS R4 R3 K16 ["plugin"]
  GETUPVAL R4 9
  NAMECALL R4 R4 K28 ["GetMouse"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K17 ["Mouse"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K11 ["closeCallback"]
  SETTABLEKS R4 R3 K18 ["ClosePluginCallback"]
  GETUPVAL R4 10
  SETTABLEKS R4 R3 K19 ["SetConstraintToolModelReference"]
  GETUPVAL R4 11
  SETTABLEKS R4 R3 K20 ["DraggerContext"]
  GETUPVAL R4 12
  SETTABLEKS R4 R3 K21 ["DraggerSchema"]
  DUPTABLE R4 K33 [{"AnalyticsName", "AllowDragSelect", "ShowLocalSpaceIndicator", "ShowPivotIndicator"}]
  LOADK R5 K34 ["ConstraintTool"]
  SETTABLEKS R5 R4 K29 ["AnalyticsName"]
  LOADB R5 1
  SETTABLEKS R5 R4 K30 ["AllowDragSelect"]
  LOADB R5 1
  SETTABLEKS R5 R4 K31 ["ShowLocalSpaceIndicator"]
  LOADB R5 1
  SETTABLEKS R5 R4 K32 ["ShowPivotIndicator"]
  SETTABLEKS R4 R3 K22 ["DraggerSettings"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K23 ["constraintType"]
  GETUPVAL R4 13
  SETTABLEKS R4 R3 K24 ["undoAttachmentStack"]
  GETUPVAL R4 14
  SETTABLEKS R4 R3 K25 ["redoAttachmentStack"]
  GETUPVAL R4 15
  SETTABLEKS R4 R3 K26 ["recordingName"]
  CALL R1 2 -1
  CALL R0 -1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_9:
  LOADNIL R0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnUndo"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U0
  CAPTURE REF R0
  CAPTURE UPVAL U7
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  MOVE R0 R1
  CLOSEUPVALS R0
  LOADNIL R0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["OnRedo"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U0
  CAPTURE REF R0
  CAPTURE UPVAL U8
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  MOVE R0 R1
  CLOSEUPVALS R0
  GETUPVAL R1 10
  GETTABLEKS R0 R1 K3 ["new"]
  GETUPVAL R1 11
  GETIMPORT R2 K5 [game]
  GETIMPORT R3 K7 [settings]
  CALL R3 0 1
  GETUPVAL R6 12
  GETTABLEKS R5 R6 K8 ["Selection"]
  GETTABLEKS R4 R5 K3 ["new"]
  CALL R4 0 -1
  CALL R0 -1 1
  SETUPVAL R0 9
  RETURN R0 0

PROTO_10:
  GETIMPORT R4 K1 [require]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["Packages"]
  GETTABLEKS R5 R6 K3 ["Roact"]
  CALL R4 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["Packages"]
  GETTABLEKS R5 R6 K4 ["DraggerFramework"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["Packages"]
  GETTABLEKS R6 R7 K5 ["DraggerSchemaCore"]
  GETIMPORT R7 K1 [require]
  GETTABLEKS R8 R6 K6 ["DraggerSchema"]
  CALL R7 1 1
  GETIMPORT R8 K1 [require]
  GETTABLEKS R10 R5 K7 ["Implementation"]
  GETTABLEKS R9 R10 K8 ["DraggerContext_PluginImpl"]
  CALL R8 1 1
  GETIMPORT R9 K1 [require]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["Src"]
  GETTABLEKS R11 R12 K10 ["Components"]
  GETTABLEKS R10 R11 K11 ["ConstraintToolComponent"]
  CALL R9 1 1
  GETIMPORT R10 K1 [require]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K9 ["Src"]
  GETTABLEKS R12 R13 K12 ["Util"]
  GETTABLEKS R11 R12 K13 ["WeldInitiator"]
  CALL R10 1 1
  LOADNIL R11
  LOADK R13 K14 ["ConstraintToolDragging_"]
  MOVE R14 R3
  CONCAT R12 R13 R14
  LOADB R13 0
  LOADNIL R14
  LOADNIL R15
  NEWTABLE R16 0 0
  NEWTABLE R17 0 0
  NEWCLOSURE R18 P0
  CAPTURE REF R13
  CAPTURE VAL R1
  CAPTURE REF R14
  CAPTURE VAL R4
  NEWCLOSURE R19 P1
  CAPTURE VAL R16
  CAPTURE VAL R17
  NEWCLOSURE R20 P2
  CAPTURE VAL R17
  CAPTURE VAL R16
  NEWCLOSURE R21 P3
  CAPTURE REF R15
  CAPTURE VAL R19
  NEWCLOSURE R22 P4
  CAPTURE UPVAL U1
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE REF R15
  CAPTURE REF R13
  CAPTURE VAL R3
  CAPTURE VAL R22
  NEWCLOSURE R23 P5
  CAPTURE UPVAL U1
  CAPTURE VAL R12
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE REF R15
  CAPTURE REF R13
  CAPTURE VAL R3
  CAPTURE VAL R23
  NEWCLOSURE R24 P6
  CAPTURE REF R14
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE REF R13
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R21
  CAPTURE REF R11
  CAPTURE VAL R7
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R12
  NEWCLOSURE R25 P7
  CAPTURE UPVAL U1
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE REF R15
  CAPTURE REF R13
  CAPTURE VAL R3
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE REF R11
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE VAL R7
  LOADNIL R26
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K15 ["OnUndo"]
  NEWCLOSURE R29 P8
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE REF R15
  CAPTURE REF R13
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  CAPTURE REF R26
  CAPTURE VAL R22
  NAMECALL R27 R27 K16 ["Connect"]
  CALL R27 2 1
  MOVE R26 R27
  CLOSEUPVALS R26
  LOADNIL R26
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K17 ["OnRedo"]
  NEWCLOSURE R29 P9
  CAPTURE VAL R12
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE REF R15
  CAPTURE REF R13
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  CAPTURE REF R26
  CAPTURE VAL R23
  NAMECALL R27 R27 K16 ["Connect"]
  CALL R27 2 1
  MOVE R26 R27
  CLOSEUPVALS R26
  GETTABLEKS R26 R8 K18 ["new"]
  MOVE R27 R0
  GETIMPORT R28 K20 [game]
  GETIMPORT R29 K22 [settings]
  CALL R29 0 1
  GETTABLEKS R31 R7 K23 ["Selection"]
  GETTABLEKS R30 R31 K18 ["new"]
  CALL R30 0 -1
  CALL R26 -1 1
  MOVE R11 R26
  DUPTABLE R26 K26 [{"close", "open"}]
  SETTABLEKS R18 R26 K24 ["close"]
  SETTABLEKS R24 R26 K25 ["open"]
  CLOSEUPVALS R11
  RETURN R26 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ConstraintTool"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["ChangeHistoryService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  DUPCLOSURE R2 K8 [PROTO_10]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1