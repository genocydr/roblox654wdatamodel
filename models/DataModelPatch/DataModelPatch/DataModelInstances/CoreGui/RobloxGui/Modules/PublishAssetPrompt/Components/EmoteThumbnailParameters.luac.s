PROTO_0:
  NEWTABLE R1 0 0
  LOADN R2 3
  SETTABLEKS R2 R1 K0 ["ThumbnailBundleId"]
  GETTABLEKS R2 R0 K1 ["thumbnailCharacterRotation"]
  SETTABLEKS R2 R1 K2 ["ThumbnailCharacterRotation"]
  GETTABLEKS R2 R0 K3 ["thumbnailHorizontalOffset"]
  SETTABLEKS R2 R1 K4 ["ThumbnailHorizontalOffset"]
  GETTABLEKS R2 R0 K5 ["thumbnailVerticalOffset"]
  SETTABLEKS R2 R1 K6 ["ThumbnailVerticalOffset"]
  GETTABLEKS R2 R0 K7 ["thumbnailZoom"]
  SETTABLEKS R2 R1 K8 ["ThumbnailZoom"]
  GETTABLEKS R2 R0 K9 ["thumbnailKeyframe"]
  SETTABLEKS R2 R1 K10 ["ThumbnailKeyframe"]
  GETTABLEKS R2 R0 K11 ["thumbnailTime"]
  SETTABLEKS R2 R1 K12 ["ThumbnailTime"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["t"]
  CALL R1 1 1
  NEWTABLE R2 4 0
  GETTABLEKS R3 R1 K8 ["strictInterface"]
  DUPTABLE R4 K15 [{"thumbnailKeyframe", "thumbnailTime", "thumbnailZoom", "thumbnailVerticalOffset", "thumbnailHorizontalOffset", "thumbnailCharacterRotation"}]
  GETTABLEKS R5 R1 K16 ["number"]
  SETTABLEKS R5 R4 K9 ["thumbnailKeyframe"]
  GETTABLEKS R5 R1 K16 ["number"]
  SETTABLEKS R5 R4 K10 ["thumbnailTime"]
  GETTABLEKS R5 R1 K16 ["number"]
  SETTABLEKS R5 R4 K11 ["thumbnailZoom"]
  GETTABLEKS R5 R1 K16 ["number"]
  SETTABLEKS R5 R4 K12 ["thumbnailVerticalOffset"]
  GETTABLEKS R5 R1 K16 ["number"]
  SETTABLEKS R5 R4 K13 ["thumbnailHorizontalOffset"]
  GETTABLEKS R5 R1 K16 ["number"]
  SETTABLEKS R5 R4 K14 ["thumbnailCharacterRotation"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K17 ["validate"]
  DUPTABLE R3 K15 [{"thumbnailKeyframe", "thumbnailTime", "thumbnailZoom", "thumbnailVerticalOffset", "thumbnailHorizontalOffset", "thumbnailCharacterRotation"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K9 ["thumbnailKeyframe"]
  LOADN R4 0
  SETTABLEKS R4 R3 K10 ["thumbnailTime"]
  LOADN R4 1
  SETTABLEKS R4 R3 K11 ["thumbnailZoom"]
  LOADN R4 0
  SETTABLEKS R4 R3 K12 ["thumbnailVerticalOffset"]
  LOADN R4 0
  SETTABLEKS R4 R3 K13 ["thumbnailHorizontalOffset"]
  LOADN R4 0
  SETTABLEKS R4 R3 K14 ["thumbnailCharacterRotation"]
  SETTABLEKS R3 R2 K18 ["defaultParameters"]
  DUPCLOSURE R3 K19 [PROTO_0]
  SETTABLEKS R3 R2 K20 ["encodeAsATable"]
  RETURN R2 1
