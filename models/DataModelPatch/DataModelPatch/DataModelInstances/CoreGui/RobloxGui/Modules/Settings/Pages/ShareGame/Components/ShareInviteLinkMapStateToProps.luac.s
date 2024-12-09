PROTO_0:
  DUPTABLE R1 K2 [{"shareInviteLink", "fetchShareInviteLinkNetworkStatus"}]
  GETTABLEKS R4 R0 K3 ["ShareLinks"]
  GETTABLEKS R3 R4 K4 ["Invites"]
  GETTABLEKS R2 R3 K5 ["ShareInviteLink"]
  SETTABLEKS R2 R1 K0 ["shareInviteLink"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["GenerateLink"]
  GETTABLEKS R2 R3 K7 ["getStatus"]
  MOVE R3 R0
  DUPTABLE R4 K9 [{"linkType"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K10 ["Enums"]
  GETTABLEKS R7 R8 K11 ["LinkType"]
  GETTABLEKS R6 R7 K12 ["ExperienceInvite"]
  GETTABLEKS R5 R6 K13 ["rawValue"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K8 ["linkType"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K1 ["fetchShareInviteLinkNetworkStatus"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["NotificationsCommon"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["ReducerDependencies"]
  GETTABLEKS R2 R1 K10 ["NetworkingShareLinks"]
  GETTABLEKS R3 R1 K11 ["RoduxShareLinks"]
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
