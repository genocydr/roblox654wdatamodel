MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Workspace"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["ToastNotification"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["renderToastNotificationContainer"]
  MOVE R3 R2
  DUPTABLE R4 K11 [{"renderLocation"}]
  LOADK R5 K12 ["coreScript"]
  SETTABLEKS R5 R4 K10 ["renderLocation"]
  CALL R3 1 0
  RETURN R0 0
