PROTO_0:
  DUPTABLE R1 K1 [{"layerCollector"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["layerCollector"]
  SETTABLEKS R1 R0 K2 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["folderRef"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["layerCollector"]
  GETTABLEKS R0 R1 K2 ["AbsoluteSize"]
  SETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["setScreenSize"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["X"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["Y"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["layerCollector"]
  JUMPIFNOT R1 [+39]
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["layerCollector"]
  GETTABLEKS R1 R2 K2 ["AbsoluteSize"]
  GETTABLEKS R3 R0 K3 ["props"]
  GETTABLEKS R2 R3 K4 ["setScreenSize"]
  GETTABLEKS R3 R1 K5 ["X"]
  GETTABLEKS R4 R1 K6 ["Y"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K10 [{"event", "callback"}]
  GETTABLEKS R6 R0 K0 ["state"]
  GETTABLEKS R5 R6 K1 ["layerCollector"]
  LOADK R7 K2 ["AbsoluteSize"]
  NAMECALL R5 R5 K11 ["GetPropertyChangedSignal"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["event"]
  NEWCLOSURE R5 P0
  CAPTURE REF R1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K9 ["callback"]
  CALL R2 2 -1
  CLOSEUPVALS R1
  RETURN R2 -1
  CLOSEUPVALS R1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["createElement"]
  LOADK R2 K12 ["Folder"]
  NEWTABLE R3 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["Ref"]
  GETTABLEKS R5 R0 K14 ["folderRef"]
  SETTABLE R5 R3 R4
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["folderRef"]
  GETTABLEKS R0 R1 K1 ["current"]
  JUMPIFNOT R0 [+20]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["folderRef"]
  GETTABLEKS R0 R1 K1 ["current"]
  LOADK R2 K2 ["LayerCollector"]
  NAMECALL R0 R0 K3 ["FindFirstAncestorWhichIsA"]
  CALL R0 2 1
  SETUPVAL R0 1
  GETUPVAL R0 1
  JUMPIFNOT R0 [+8]
  GETUPVAL R0 0
  DUPTABLE R2 K5 [{"layerCollector"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K4 ["layerCollector"]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["folderRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+35]
  GETTABLEKS R1 R0 K2 ["ancesteryConnection"]
  JUMPIFNOTEQKNIL R1 [+32]
  GETTABLEKS R2 R0 K0 ["folderRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  LOADK R3 K3 ["LayerCollector"]
  NAMECALL R1 R1 K4 ["FindFirstAncestorWhichIsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  DUPTABLE R4 K6 [{"layerCollector"}]
  SETTABLEKS R1 R4 K5 ["layerCollector"]
  NAMECALL R2 R0 K7 ["setState"]
  CALL R2 2 0
  JUMP [+14]
  GETTABLEKS R4 R0 K0 ["folderRef"]
  GETTABLEKS R3 R4 K1 ["current"]
  GETTABLEKS R2 R3 K8 ["AncestryChanged"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE REF R1
  NAMECALL R2 R2 K9 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K2 ["ancesteryConnection"]
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_5:
  NAMECALL R1 R0 K0 ["watchFolderAncestery"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["layerCollector"]
  JUMPIF R1 [+4]
  NAMECALL R1 R0 K2 ["watchFolderAncestery"]
  CALL R1 1 0
  RETURN R0 0
  GETTABLEKS R1 R0 K3 ["ancesteryConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K3 ["ancesteryConnection"]
  NAMECALL R1 R1 K4 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["ancesteryConnection"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["ancesteryConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["ancesteryConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["ancesteryConnection"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_9:
  DUPTABLE R1 K1 [{"setScreenSize"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["setScreenSize"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R5 K10 [script]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Parent"]
  GETTABLEKS R4 R3 K11 ["Parent"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R4 K12 ["Actions"]
  GETTABLEKS R6 R7 K13 ["SetScreenSize"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R9 K10 [script]
  GETTABLEKS R8 R9 K11 ["Parent"]
  GETTABLEKS R7 R8 K14 ["EventConnection"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K15 ["PureComponent"]
  LOADK R9 K16 ["ScreenSizeConnector"]
  NAMECALL R7 R7 K17 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K18 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K19 ["init"]
  DUPCLOSURE R8 K20 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K21 ["render"]
  DUPCLOSURE R8 K22 [PROTO_4]
  SETTABLEKS R8 R7 K23 ["watchFolderAncestery"]
  DUPCLOSURE R8 K24 [PROTO_5]
  SETTABLEKS R8 R7 K25 ["didMount"]
  DUPCLOSURE R8 K26 [PROTO_6]
  SETTABLEKS R8 R7 K27 ["didUpdate"]
  DUPCLOSURE R8 K28 [PROTO_7]
  SETTABLEKS R8 R7 K29 ["willUnmount"]
  DUPCLOSURE R8 K30 [PROTO_9]
  CAPTURE VAL R5
  GETTABLEKS R9 R2 K31 ["connect"]
  LOADNIL R10
  MOVE R11 R8
  CALL R9 2 1
  MOVE R10 R7
  CALL R9 1 -1
  RETURN R9 -1