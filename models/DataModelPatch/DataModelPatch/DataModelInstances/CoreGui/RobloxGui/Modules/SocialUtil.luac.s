PROTO_0:
  JUMPIF R1 [+1]
  GETUPVAL R1 0
  JUMPIF R2 [+1]
  GETUPVAL R2 1
  LOADN R4 0
  GETIMPORT R5 K3 [Enum.ThumbnailType.HeadShot]
  JUMPIFEQ R2 R5 [+5]
  GETIMPORT R5 K5 [Enum.ThumbnailType.AvatarBust]
  JUMPIFNOTEQ R2 R5 [+24]
  GETIMPORT R5 K8 [Enum.ThumbnailSize.Size48x48]
  JUMPIFNOTEQ R1 R5 [+3]
  LOADN R4 48
  JUMP [+7]
  GETIMPORT R5 K10 [Enum.ThumbnailSize.Size60x60]
  JUMPIFNOTEQ R1 R5 [+3]
  LOADN R4 60
  JUMP [+1]
  LOADN R4 150
  GETUPVAL R5 2
  MOVE R6 R0
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K11 ["RbxthumbTypes"]
  GETTABLEKS R7 R8 K12 ["AvatarHeadShot"]
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1
  GETIMPORT R5 K14 [Enum.ThumbnailType.AvatarThumbnail]
  JUMPIFNOTEQ R2 R5 [+44]
  GETIMPORT R5 K8 [Enum.ThumbnailSize.Size48x48]
  JUMPIFEQ R1 R5 [+9]
  GETIMPORT R5 K10 [Enum.ThumbnailSize.Size60x60]
  JUMPIFEQ R1 R5 [+5]
  GETIMPORT R5 K16 [Enum.ThumbnailSize.Size100x100]
  JUMPIFNOTEQ R1 R5 [+3]
  LOADN R4 100
  JUMP [+19]
  GETIMPORT R5 K18 [Enum.ThumbnailSize.Size150x150]
  JUMPIFEQ R1 R5 [+9]
  GETIMPORT R5 K20 [Enum.ThumbnailSize.Size180x180]
  JUMPIFEQ R1 R5 [+5]
  GETIMPORT R5 K22 [Enum.ThumbnailSize.Size352x352]
  JUMPIFNOTEQ R1 R5 [+3]
  LOADN R4 96
  JUMP [+5]
  GETIMPORT R5 K24 [Enum.ThumbnailSize.Size420x420]
  JUMPIFNOTEQ R1 R5 [+2]
  LOADN R4 208
  GETUPVAL R5 2
  MOVE R6 R0
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K11 ["RbxthumbTypes"]
  GETTABLEKS R7 R8 K25 ["Avatar"]
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1
  LOADK R5 K26 ["ThumbnailErrorForSocialUtil.GetPlayerImage"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R1 K6 ["Workspace"]
  GETTABLEKS R6 R7 K7 ["Packages"]
  GETTABLEKS R5 R6 K8 ["UserLib"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K9 ["Utils"]
  GETTABLEKS R2 R3 K10 ["getRbxthumbWithTypeSizeAndOptions"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R1 K6 ["Workspace"]
  GETTABLEKS R7 R8 K7 ["Packages"]
  GETTABLEKS R6 R7 K8 ["UserLib"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K9 ["Utils"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  GETIMPORT R4 K15 [Enum.ThumbnailSize.Size100x100]
  GETIMPORT R5 K18 [Enum.ThumbnailType.AvatarThumbnail]
  DUPCLOSURE R6 K19 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R6 R0 K20 ["GetPlayerImage"]
  RETURN R0 1
