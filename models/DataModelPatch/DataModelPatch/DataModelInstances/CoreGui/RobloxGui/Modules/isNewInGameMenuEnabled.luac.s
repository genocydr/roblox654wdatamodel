PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["VREnabled"]
  JUMPIFNOT R0 [+2]
  LOADB R0 1
  RETURN R0 1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["LocalPlayer"]
  JUMPIF R0 [+12]
  GETUPVAL R1 1
  LOADK R3 K1 ["LocalPlayer"]
  NAMECALL R1 R1 K2 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NAMECALL R1 R1 K3 ["Wait"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["LocalPlayer"]
  JUMPBACK [-13]
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["NewInGameMenuForcedUserIds"]
  NAMECALL R1 R1 K7 ["GetFastString"]
  CALL R1 2 1
  LOADK R4 K8 ["%d+"]
  NAMECALL R2 R1 K9 ["gmatch"]
  CALL R2 2 3
  FORGPREP R2
  FASTCALL1 TONUMBER R5 [+3]
  MOVE R8 R5
  GETIMPORT R7 K11 [tonumber]
  CALL R7 1 1
  GETTABLEKS R8 R0 K12 ["UserId"]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADB R7 1
  RETURN R7 1
  FORGLOOP R2 1 [-12]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+9]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K13 ["default"]
  NAMECALL R2 R2 K14 ["isV3MenuEnabled"]
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K15 ["NewInGameMenuPercentRollout3"]
  NAMECALL R2 R2 K16 ["GetFastInt"]
  CALL R2 2 1
  GETTABLEKS R4 R0 K12 ["UserId"]
  MODK R3 R4 K17 [100]
  JUMPIFLT R3 R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+2]
  LOADB R5 1
  RETURN R5 1
  LOADB R5 0
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["VRService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CorePackages"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K11 ["IsExperienceMenuABTestEnabled"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETIMPORT R7 K9 [script]
  GETTABLEKS R6 R7 K10 ["Parent"]
  GETTABLEKS R5 R6 K12 ["ExperienceMenuABTestManager"]
  CALL R4 1 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K13 ["NewInGameMenuPercentRollout3"]
  LOADN R8 0
  NAMECALL R5 R5 K14 ["DefineFastInt"]
  CALL R5 3 0
  GETIMPORT R5 K1 [game]
  LOADK R7 K15 ["NewInGameMenuForcedUserIds"]
  LOADK R8 K16 [""]
  NAMECALL R5 R5 K17 ["DefineFastString"]
  CALL R5 3 0
  GETIMPORT R5 K1 [game]
  LOADK R7 K18 ["NewInGameMenuDisabledInVR"]
  LOADB R8 0
  NAMECALL R5 R5 K19 ["DefineFastFlag"]
  CALL R5 3 0
  GETIMPORT R5 K1 [game]
  LOADK R7 K20 ["CoreGui"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  LOADK R8 K21 ["RobloxGui"]
  NAMECALL R6 R5 K22 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R8 K7 [require]
  GETTABLEKS R11 R2 K23 ["Workspace"]
  GETTABLEKS R10 R11 K24 ["Packages"]
  GETTABLEKS R9 R10 K25 ["SharedFlags"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K26 ["isSubjectToDesktopPolicies"]
  DUPCLOSURE R8 K27 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R8 1
