MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContentProvider"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["BaseUrl"]
  NAMECALL R1 R1 K5 ["lower"]
  CALL R1 1 1
  GETIMPORT R2 K8 [string.gsub]
  MOVE R3 R1
  LOADK R4 K9 ["/m."]
  LOADK R5 K10 ["/www."]
  CALL R2 3 1
  MOVE R1 R2
  GETIMPORT R2 K8 [string.gsub]
  MOVE R3 R1
  LOADK R4 K10 ["/www."]
  LOADK R5 K11 ["/thumbnails."]
  CALL R2 3 1
  MOVE R1 R2
  GETIMPORT R2 K8 [string.gsub]
  MOVE R3 R1
  LOADK R4 K12 ["http:"]
  LOADK R5 K13 ["https:"]
  CALL R2 3 1
  MOVE R1 R2
  DUPTABLE R2 K17 [{"Headshot", "Bust", "Thumbnail"}]
  LOADK R3 K18 ["rbxthumb://type=AvatarHeadShot&id=%d&w=%d&h=%d"]
  SETTABLEKS R3 R2 K14 ["Headshot"]
  MOVE R4 R1
  LOADK R5 K19 ["v1/users/avatar-bust?userIds=%d&size=%dx%d&format=Png&isCircular=false"]
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K15 ["Bust"]
  LOADK R3 K20 ["rbxthumb://type=Avatar&id=%d&w=%d&h=%d"]
  SETTABLEKS R3 R2 K16 ["Thumbnail"]
  RETURN R2 1
