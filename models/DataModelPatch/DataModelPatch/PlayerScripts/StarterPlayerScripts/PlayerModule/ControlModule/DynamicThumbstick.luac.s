PROTO_0:
  GETIMPORT R0 K1 [UserSettings]
  CALL R0 0 1
  LOADK R2 K2 ["UserDynamicThumbstickMoveOverButtons2"]
  NAMECALL R0 R0 K3 ["IsUserFeatureEnabled"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [UserSettings]
  CALL R0 0 1
  LOADK R2 K2 ["UserDynamicThumbstickSafeAreaUpdate"]
  NAMECALL R0 R0 K3 ["IsUserFeatureEnabled"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R2 1
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K2 [setmetatable]
  CALL R0 2 1
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["moveTouchObject"]
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["moveTouchLockedIn"]
  LOADB R1 0
  SETTABLEKS R1 R0 K5 ["moveTouchFirstChanged"]
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["moveTouchStartPosition"]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["startImage"]
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["endImage"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K9 ["middleImages"]
  LOADNIL R1
  SETTABLEKS R1 R0 K10 ["startImageFadeTween"]
  LOADNIL R1
  SETTABLEKS R1 R0 K11 ["endImageFadeTween"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K12 ["middleImageFadeTweens"]
  LOADB R1 1
  SETTABLEKS R1 R0 K13 ["isFirstTouch"]
  LOADNIL R1
  SETTABLEKS R1 R0 K14 ["thumbstickFrame"]
  LOADNIL R1
  SETTABLEKS R1 R0 K15 ["onRenderSteppedConn"]
  LOADK R1 K16 [0.5]
  SETTABLEKS R1 R0 K17 ["fadeInAndOutBalance"]
  LOADK R1 K18 [0.3]
  SETTABLEKS R1 R0 K19 ["fadeInAndOutHalfDuration"]
  LOADB R1 0
  SETTABLEKS R1 R0 K20 ["hasFadedBackgroundInPortrait"]
  LOADB R1 0
  SETTABLEKS R1 R0 K21 ["hasFadedBackgroundInLandscape"]
  LOADNIL R1
  SETTABLEKS R1 R0 K22 ["tweenInAlphaStart"]
  LOADNIL R1
  SETTABLEKS R1 R0 K23 ["tweenOutAlphaStart"]
  RETURN R0 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["isJumping"]
  LOADB R2 0
  SETTABLEKS R2 R0 K0 ["isJumping"]
  RETURN R1 1

PROTO_4:
  JUMPIFNOTEQKNIL R1 [+3]
  LOADB R3 0
  RETURN R3 1
  JUMPIFNOT R1 [+2]
  LOADB R3 1
  JUMP [+1]
  LOADB R3 0
  MOVE R1 R3
  GETTABLEKS R3 R0 K0 ["enabled"]
  JUMPIFNOTEQ R3 R1 [+3]
  LOADB R3 1
  RETURN R3 1
  JUMPIFNOT R1 [+11]
  GETTABLEKS R3 R0 K1 ["thumbstickFrame"]
  JUMPIF R3 [+4]
  MOVE R5 R2
  NAMECALL R3 R0 K2 ["Create"]
  CALL R3 2 0
  NAMECALL R3 R0 K3 ["BindContextActions"]
  CALL R3 1 0
  JUMP [+14]
  GETUPVAL R3 0
  JUMPIFNOT R3 [+4]
  NAMECALL R3 R0 K4 ["UnbindContextActions"]
  CALL R3 1 0
  JUMP [+5]
  GETUPVAL R3 1
  LOADK R5 K5 ["DynamicThumbstickAction"]
  NAMECALL R3 R3 K6 ["UnbindAction"]
  CALL R3 2 0
  NAMECALL R3 R0 K7 ["OnInputEnded"]
  CALL R3 1 0
  SETTABLEKS R1 R0 K0 ["enabled"]
  GETTABLEKS R3 R0 K1 ["thumbstickFrame"]
  SETTABLEKS R1 R3 K8 ["Visible"]
  LOADNIL R3
  RETURN R3 1

PROTO_5:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["moveTouchObject"]
  LOADK R1 K1 [{0, 0, 0}]
  SETTABLEKS R1 R0 K2 ["moveVector"]
  LOADB R3 0
  NAMECALL R1 R0 K3 ["FadeThumbstick"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  JUMPIF R1 [+4]
  GETTABLEKS R2 R0 K0 ["moveTouchObject"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["isFirstTouch"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K2 ["startImageFadeTween"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K2 ["startImageFadeTween"]
  NAMECALL R2 R2 K3 ["Cancel"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K4 ["endImageFadeTween"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K4 ["endImageFadeTween"]
  NAMECALL R2 R2 K3 ["Cancel"]
  CALL R2 1 0
  LOADN R4 1
  GETTABLEKS R5 R0 K5 ["middleImages"]
  LENGTH R2 R5
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R6 R0 K6 ["middleImageFadeTweens"]
  GETTABLE R5 R6 R4
  JUMPIFNOT R5 [+6]
  GETTABLEKS R6 R0 K6 ["middleImageFadeTweens"]
  GETTABLE R5 R6 R4
  NAMECALL R5 R5 K3 ["Cancel"]
  CALL R5 1 0
  FORNLOOP R2
  JUMPIFNOT R1 [+66]
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K7 ["startImage"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"ImageTransparency"}]
  LOADN R7 0
  SETTABLEKS R7 R6 K8 ["ImageTransparency"]
  NAMECALL R2 R2 K10 ["Create"]
  CALL R2 4 1
  SETTABLEKS R2 R0 K2 ["startImageFadeTween"]
  GETTABLEKS R2 R0 K2 ["startImageFadeTween"]
  NAMECALL R2 R2 K11 ["Play"]
  CALL R2 1 0
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K12 ["endImage"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"ImageTransparency"}]
  LOADK R7 K13 [0.2]
  SETTABLEKS R7 R6 K8 ["ImageTransparency"]
  NAMECALL R2 R2 K10 ["Create"]
  CALL R2 4 1
  SETTABLEKS R2 R0 K4 ["endImageFadeTween"]
  GETTABLEKS R2 R0 K4 ["endImageFadeTween"]
  NAMECALL R2 R2 K11 ["Play"]
  CALL R2 1 0
  LOADN R4 1
  GETTABLEKS R5 R0 K5 ["middleImages"]
  LENGTH R2 R5
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R5 R0 K6 ["middleImageFadeTweens"]
  GETUPVAL R6 0
  GETTABLEKS R9 R0 K5 ["middleImages"]
  GETTABLE R8 R9 R4
  GETUPVAL R9 1
  DUPTABLE R10 K9 [{"ImageTransparency"}]
  GETUPVAL R12 2
  GETTABLE R11 R12 R4
  SETTABLEKS R11 R10 K8 ["ImageTransparency"]
  NAMECALL R6 R6 K10 ["Create"]
  CALL R6 4 1
  SETTABLE R6 R5 R4
  GETTABLEKS R6 R0 K6 ["middleImageFadeTweens"]
  GETTABLE R5 R6 R4
  NAMECALL R5 R5 K11 ["Play"]
  CALL R5 1 0
  FORNLOOP R2
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K7 ["startImage"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"ImageTransparency"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K8 ["ImageTransparency"]
  NAMECALL R2 R2 K10 ["Create"]
  CALL R2 4 1
  SETTABLEKS R2 R0 K2 ["startImageFadeTween"]
  GETTABLEKS R2 R0 K2 ["startImageFadeTween"]
  NAMECALL R2 R2 K11 ["Play"]
  CALL R2 1 0
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K12 ["endImage"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"ImageTransparency"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K8 ["ImageTransparency"]
  NAMECALL R2 R2 K10 ["Create"]
  CALL R2 4 1
  SETTABLEKS R2 R0 K4 ["endImageFadeTween"]
  GETTABLEKS R2 R0 K4 ["endImageFadeTween"]
  NAMECALL R2 R2 K11 ["Play"]
  CALL R2 1 0
  LOADN R4 1
  GETTABLEKS R5 R0 K5 ["middleImages"]
  LENGTH R2 R5
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R5 R0 K6 ["middleImageFadeTweens"]
  GETUPVAL R6 0
  GETTABLEKS R9 R0 K5 ["middleImages"]
  GETTABLE R8 R9 R4
  GETUPVAL R9 1
  DUPTABLE R10 K9 [{"ImageTransparency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K8 ["ImageTransparency"]
  NAMECALL R6 R6 K10 ["Create"]
  CALL R6 4 1
  SETTABLE R6 R5 R4
  GETTABLEKS R6 R0 K6 ["middleImageFadeTweens"]
  GETTABLE R5 R6 R4
  NAMECALL R5 R5 K11 ["Play"]
  CALL R5 1 0
  FORNLOOP R2
  RETURN R0 0

PROTO_7:
  MULK R3 R1 K0 [0.5]
  SETTABLEKS R3 R0 K1 ["fadeInAndOutHalfDuration"]
  SETTABLEKS R2 R0 K2 ["fadeInAndOutBalance"]
  GETIMPORT R3 K4 [tick]
  CALL R3 0 1
  SETTABLEKS R3 R0 K5 ["tweenInAlphaStart"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["thumbstickFrame"]
  GETTABLEKS R2 R3 K1 ["AbsolutePosition"]
  GETTABLEKS R5 R0 K0 ["thumbstickFrame"]
  GETTABLEKS R4 R5 K2 ["AbsoluteSize"]
  ADD R3 R2 R4
  GETTABLEKS R4 R1 K3 ["Position"]
  GETTABLEKS R5 R4 K4 ["X"]
  GETTABLEKS R6 R2 K4 ["X"]
  JUMPIFNOTLE R6 R5 [+21]
  GETTABLEKS R5 R4 K5 ["Y"]
  GETTABLEKS R6 R2 K5 ["Y"]
  JUMPIFNOTLE R6 R5 [+15]
  GETTABLEKS R5 R4 K4 ["X"]
  GETTABLEKS R6 R3 K4 ["X"]
  JUMPIFNOTLE R5 R6 [+9]
  GETTABLEKS R5 R4 K5 ["Y"]
  GETTABLEKS R6 R3 K5 ["Y"]
  JUMPIFNOTLE R5 R6 [+3]
  LOADB R5 1
  RETURN R5 1
  LOADB R5 0
  RETURN R5 1

PROTO_9:
  GETUPVAL R1 0
  LOADK R3 K0 ["PlayerGui"]
  NAMECALL R1 R1 K1 ["FindFirstChildOfClass"]
  CALL R1 2 1
  LOADB R2 0
  JUMPIFNOT R1 [+29]
  GETTABLEKS R3 R1 K2 ["CurrentScreenOrientation"]
  GETIMPORT R4 K6 [Enum.ScreenOrientation.LandscapeLeft]
  JUMPIFEQ R3 R4 [+7]
  GETTABLEKS R3 R1 K2 ["CurrentScreenOrientation"]
  GETIMPORT R4 K8 [Enum.ScreenOrientation.LandscapeRight]
  JUMPIFNOTEQ R3 R4 [+7]
  GETTABLEKS R2 R0 K9 ["hasFadedBackgroundInLandscape"]
  LOADB R3 1
  SETTABLEKS R3 R0 K9 ["hasFadedBackgroundInLandscape"]
  JUMP [+11]
  GETTABLEKS R3 R1 K2 ["CurrentScreenOrientation"]
  GETIMPORT R4 K11 [Enum.ScreenOrientation.Portrait]
  JUMPIFNOTEQ R3 R4 [+6]
  GETTABLEKS R2 R0 K12 ["hasFadedBackgroundInPortrait"]
  LOADB R3 1
  SETTABLEKS R3 R0 K12 ["hasFadedBackgroundInPortrait"]
  JUMPIF R2 [+11]
  LOADK R3 K13 [0.3]
  SETTABLEKS R3 R0 K14 ["fadeInAndOutHalfDuration"]
  LOADK R3 K15 [0.5]
  SETTABLEKS R3 R0 K16 ["fadeInAndOutBalance"]
  GETIMPORT R3 K18 [tick]
  CALL R3 0 1
  SETTABLEKS R3 R0 K19 ["tweenInAlphaStart"]
  RETURN R0 0

PROTO_10:
  MOVE R2 R1
  GETTABLEKS R3 R2 K0 ["Magnitude"]
  GETTABLEKS R4 R0 K1 ["radiusOfDeadZone"]
  JUMPIFNOTLT R3 R4 [+3]
  LOADK R2 K2 [{0, 0, 0}]
  JUMP [+28]
  GETTABLEKS R4 R2 K3 ["Unit"]
  LOADN R7 0
  GETTABLEKS R10 R0 K5 ["radiusOfMaxSpeed"]
  GETTABLEKS R11 R2 K0 ["Magnitude"]
  SUB R9 R10 R11
  GETTABLEKS R10 R0 K5 ["radiusOfMaxSpeed"]
  DIV R8 R9 R10
  FASTCALL2 MATH_MAX R7 R8 [+3]
  GETIMPORT R6 K8 [math.max]
  CALL R6 2 1
  SUBRK R5 R4 K6 ["math"]
  MUL R2 R4 R5
  GETTABLEKS R5 R2 K9 ["X"]
  LOADN R6 0
  GETTABLEKS R7 R2 K10 ["Y"]
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K13 [Vector3.new]
  CALL R4 3 1
  MOVE R2 R4
  SETTABLEKS R2 R0 K14 ["moveVector"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R5 R0 K1 ["thumbstickSize"]
  DIVK R4 R5 K0 [2]
  GETTABLEKS R5 R0 K2 ["middleSize"]
  ADD R3 R4 R5
  SUB R4 R2 R1
  GETTABLEKS R7 R4 K3 ["Magnitude"]
  GETTABLEKS R9 R0 K4 ["thumbstickRingSize"]
  DIVK R8 R9 K0 [2]
  SUB R6 R7 R8
  GETTABLEKS R7 R0 K2 ["middleSize"]
  SUB R5 R6 R7
  GETTABLEKS R6 R4 K5 ["Unit"]
  GETTABLEKS R8 R0 K6 ["middleSpacing"]
  GETUPVAL R9 0
  MUL R7 R8 R9
  GETTABLEKS R8 R0 K6 ["middleSpacing"]
  JUMPIFNOTLT R7 R5 [+3]
  GETUPVAL R9 0
  DIV R8 R5 R9
  LOADN R11 1
  GETUPVAL R9 0
  LOADN R10 1
  FORNPREP R9
  GETTABLEKS R13 R0 K7 ["middleImages"]
  GETTABLE R12 R13 R11
  SUBK R15 R11 K0 [2]
  MUL R14 R8 R15
  ADD R13 R3 R14
  SUBK R16 R11 K8 [1]
  MUL R15 R8 R16
  ADD R14 R3 R15
  JUMPIFNOTLT R13 R5 [+40]
  MUL R16 R6 R14
  SUB R15 R2 R16
  SUB R19 R14 R5
  DIV R18 R19 R8
  SUBRK R17 R8 K18 ["Position"]
  LOADN R18 0
  LOADN R19 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R16 K11 [math.clamp]
  CALL R16 3 1
  LOADB R17 1
  SETTABLEKS R17 R12 K12 ["Visible"]
  GETIMPORT R17 K15 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R19 R15 K16 ["X"]
  LOADN R20 0
  GETTABLEKS R21 R15 K17 ["Y"]
  CALL R17 4 1
  SETTABLEKS R17 R12 K18 ["Position"]
  GETIMPORT R17 K15 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R20 R0 K2 ["middleSize"]
  MUL R19 R20 R16
  LOADN R20 0
  GETTABLEKS R22 R0 K2 ["middleSize"]
  MUL R21 R22 R16
  CALL R17 4 1
  SETTABLEKS R17 R12 K19 ["Size"]
  JUMP [+3]
  LOADB R15 0
  SETTABLEKS R15 R12 K12 ["Visible"]
  FORNLOOP R9
  RETURN R0 0

PROTO_12:
  GETIMPORT R2 K2 [Vector2.new]
  GETTABLEKS R4 R0 K3 ["moveTouchStartPosition"]
  GETTABLEKS R3 R4 K4 ["X"]
  GETTABLEKS R5 R0 K3 ["moveTouchStartPosition"]
  GETTABLEKS R4 R5 K5 ["Y"]
  CALL R2 2 1
  GETTABLEKS R5 R0 K6 ["thumbstickFrame"]
  GETTABLEKS R4 R5 K7 ["AbsolutePosition"]
  SUB R3 R2 R4
  GETIMPORT R5 K2 [Vector2.new]
  GETTABLEKS R6 R1 K4 ["X"]
  GETTABLEKS R7 R1 K5 ["Y"]
  CALL R5 2 1
  GETTABLEKS R7 R0 K6 ["thumbstickFrame"]
  GETTABLEKS R6 R7 K7 ["AbsolutePosition"]
  SUB R4 R5 R6
  GETTABLEKS R5 R0 K8 ["endImage"]
  GETIMPORT R6 K10 [UDim2.new]
  LOADN R7 0
  GETTABLEKS R8 R4 K4 ["X"]
  LOADN R9 0
  GETTABLEKS R10 R4 K5 ["Y"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K11 ["Position"]
  MOVE R7 R3
  MOVE R8 R4
  NAMECALL R5 R0 K12 ["LayoutMiddleImages"]
  CALL R5 3 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["moveTouchObject"]
  JUMPIFNOT R1 [+3]
  GETIMPORT R1 K4 [Enum.ContextActionResult.Pass]
  RETURN R1 1
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K5 ["InputInFrame"]
  CALL R1 2 1
  JUMPIF R1 [+3]
  GETIMPORT R1 K4 [Enum.ContextActionResult.Pass]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["isFirstTouch"]
  JUMPIFNOT R1 [+69]
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K6 ["isFirstTouch"]
  GETIMPORT R1 K9 [TweenInfo.new]
  LOADK R2 K10 [0.5]
  GETIMPORT R3 K13 [Enum.EasingStyle.Quad]
  GETIMPORT R4 K16 [Enum.EasingDirection.Out]
  LOADN R5 0
  LOADB R6 0
  LOADN R7 0
  CALL R1 6 1
  GETUPVAL R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K17 ["startImage"]
  MOVE R5 R1
  DUPTABLE R6 K19 [{"Size"}]
  GETIMPORT R7 K21 [UDim2.new]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K18 ["Size"]
  NAMECALL R2 R2 K22 ["Create"]
  CALL R2 4 1
  NAMECALL R2 R2 K23 ["Play"]
  CALL R2 1 0
  GETUPVAL R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K24 ["endImage"]
  MOVE R5 R1
  DUPTABLE R6 K26 [{"Size", "ImageColor3"}]
  GETIMPORT R7 K21 [UDim2.new]
  LOADN R8 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K27 ["thumbstickSize"]
  LOADN R10 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K27 ["thumbstickSize"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K18 ["Size"]
  GETIMPORT R7 K29 [Color3.new]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R7 3 1
  SETTABLEKS R7 R6 K25 ["ImageColor3"]
  NAMECALL R2 R2 K22 ["Create"]
  CALL R2 4 1
  NAMECALL R2 R2 K23 ["Play"]
  CALL R2 1 0
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K30 ["moveTouchLockedIn"]
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["moveTouchObject"]
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K31 ["Position"]
  SETTABLEKS R2 R1 K32 ["moveTouchStartPosition"]
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLEKS R2 R1 K33 ["moveTouchFirstChanged"]
  GETUPVAL R1 0
  NAMECALL R1 R1 K34 ["DoFadeInBackground"]
  CALL R1 1 0
  GETIMPORT R1 K4 [Enum.ContextActionResult.Pass]
  RETURN R1 1

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["moveTouchObject"]
  JUMPIFNOTEQ R0 R1 [+142]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["moveTouchFirstChanged"]
  JUMPIFNOT R1 [+78]
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["moveTouchFirstChanged"]
  GETIMPORT R1 K4 [Vector2.new]
  GETTABLEKS R4 R0 K5 ["Position"]
  GETTABLEKS R3 R4 K6 ["X"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["thumbstickFrame"]
  GETTABLEKS R5 R6 K8 ["AbsolutePosition"]
  GETTABLEKS R4 R5 K6 ["X"]
  SUB R2 R3 R4
  GETTABLEKS R5 R0 K5 ["Position"]
  GETTABLEKS R4 R5 K9 ["Y"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["thumbstickFrame"]
  GETTABLEKS R6 R7 K8 ["AbsolutePosition"]
  GETTABLEKS R5 R6 K9 ["Y"]
  SUB R3 R4 R5
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["startImage"]
  LOADB R3 1
  SETTABLEKS R3 R2 K11 ["Visible"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["startImage"]
  GETIMPORT R3 K13 [UDim2.new]
  LOADN R4 0
  GETTABLEKS R5 R1 K6 ["X"]
  LOADN R6 0
  GETTABLEKS R7 R1 K9 ["Y"]
  CALL R3 4 1
  SETTABLEKS R3 R2 K5 ["Position"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K14 ["endImage"]
  LOADB R3 1
  SETTABLEKS R3 R2 K11 ["Visible"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K14 ["endImage"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["startImage"]
  GETTABLEKS R3 R4 K5 ["Position"]
  SETTABLEKS R3 R2 K5 ["Position"]
  GETUPVAL R2 0
  LOADB R4 1
  NAMECALL R2 R2 K15 ["FadeThumbstick"]
  CALL R2 2 0
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K5 ["Position"]
  NAMECALL R2 R2 K16 ["MoveStick"]
  CALL R2 2 0
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLEKS R2 R1 K17 ["moveTouchLockedIn"]
  GETIMPORT R1 K4 [Vector2.new]
  GETTABLEKS R4 R0 K5 ["Position"]
  GETTABLEKS R3 R4 K6 ["X"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K18 ["moveTouchStartPosition"]
  GETTABLEKS R4 R5 K6 ["X"]
  SUB R2 R3 R4
  GETTABLEKS R5 R0 K5 ["Position"]
  GETTABLEKS R4 R5 K9 ["Y"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K18 ["moveTouchStartPosition"]
  GETTABLEKS R5 R6 K9 ["Y"]
  SUB R3 R4 R5
  CALL R1 2 1
  GETTABLEKS R3 R1 K6 ["X"]
  FASTCALL1 MATH_ABS R3 [+2]
  GETIMPORT R2 K21 [math.abs]
  CALL R2 1 1
  LOADN R3 0
  JUMPIFLT R3 R2 [+10]
  GETTABLEKS R3 R1 K9 ["Y"]
  FASTCALL1 MATH_ABS R3 [+2]
  GETIMPORT R2 K21 [math.abs]
  CALL R2 1 1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+12]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K22 ["DoMove"]
  CALL R2 2 0
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K5 ["Position"]
  NAMECALL R2 R2 K16 ["MoveStick"]
  CALL R2 2 0
  GETIMPORT R2 K26 [Enum.ContextActionResult.Sink]
  RETURN R2 1
  GETIMPORT R1 K28 [Enum.ContextActionResult.Pass]
  RETURN R1 1

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["moveTouchObject"]
  JUMPIFNOTEQ R0 R1 [+12]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["OnInputEnded"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["moveTouchLockedIn"]
  JUMPIFNOT R1 [+3]
  GETIMPORT R1 K6 [Enum.ContextActionResult.Sink]
  RETURN R1 1
  GETIMPORT R1 K8 [Enum.ContextActionResult.Pass]
  RETURN R1 1

PROTO_16:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R3 [+5]
  GETUPVAL R3 0
  MOVE R4 R2
  CALL R3 1 1
  RETURN R3 1
  GETIMPORT R3 K5 [Enum.UserInputState.Change]
  JUMPIFNOTEQ R1 R3 [+18]
  GETUPVAL R3 1
  JUMPIFNOT R3 [+11]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["moveTouchObject"]
  JUMPIFNOTEQ R2 R3 [+4]
  GETIMPORT R3 K9 [Enum.ContextActionResult.Sink]
  RETURN R3 1
  GETIMPORT R3 K11 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETUPVAL R3 3
  MOVE R4 R2
  CALL R3 1 1
  RETURN R3 1
  GETIMPORT R3 K13 [Enum.UserInputState.End]
  JUMPIFNOTEQ R1 R3 [+20]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["moveTouchObject"]
  JUMPIFNOTEQ R2 R4 [+12]
  GETUPVAL R4 2
  NAMECALL R4 R4 K14 ["OnInputEnded"]
  CALL R4 1 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K15 ["moveTouchLockedIn"]
  JUMPIFNOT R4 [+3]
  GETIMPORT R3 K9 [Enum.ContextActionResult.Sink]
  RETURN R3 1
  GETIMPORT R3 K11 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETIMPORT R3 K17 [Enum.UserInputState.Cancel]
  JUMPIFNOTEQ R1 R3 [+5]
  GETUPVAL R3 2
  NAMECALL R3 R3 K14 ["OnInputEnded"]
  CALL R3 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_18:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  NEWCLOSURE R4 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R2
  GETUPVAL R5 2
  LOADK R7 K0 ["DynamicThumbstickAction"]
  MOVE R8 R4
  LOADB R9 0
  GETUPVAL R10 3
  GETIMPORT R11 K4 [Enum.UserInputType.Touch]
  NAMECALL R5 R5 K5 ["BindActionAtPriority"]
  CALL R5 6 0
  GETUPVAL R5 1
  JUMPIFNOT R5 [+10]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K6 ["TouchMoved"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R2
  NAMECALL R5 R5 K7 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K8 ["TouchMovedCon"]
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  LOADK R3 K0 ["DynamicThumbstickAction"]
  NAMECALL R1 R1 K1 ["UnbindAction"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K2 ["TouchMovedCon"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["TouchMovedCon"]
  NAMECALL R1 R1 K3 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_20:
  JUMPIFNOT R0 [+26]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["thumbstickFrame"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 1
  GETUPVAL R4 1
  LOADK R5 K4 [0.4]
  GETUPVAL R6 1
  CALL R2 4 1
  SETTABLEKS R2 R1 K5 ["Size"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["thumbstickFrame"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 0
  GETUPVAL R5 1
  MINUS R4 R5
  LOADK R5 K6 [0.6]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K7 ["Position"]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["thumbstickFrame"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADK R3 K4 [0.4]
  GETUPVAL R4 1
  LOADK R5 K8 [0.666666666666667]
  GETUPVAL R6 1
  CALL R2 4 1
  SETTABLEKS R2 R1 K5 ["Size"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["thumbstickFrame"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 0
  GETUPVAL R5 1
  MINUS R4 R5
  LOADK R5 K9 [0.333333333333333]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K7 ["Position"]
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AbsoluteSize"]
  GETTABLEKS R3 R0 K1 ["X"]
  GETTABLEKS R4 R0 K2 ["Y"]
  FASTCALL2 MATH_MIN R3 R4 [+3]
  GETIMPORT R2 K5 [math.min]
  CALL R2 2 1
  LOADN R3 244
  JUMPIFLT R3 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+25]
  GETUPVAL R2 1
  LOADN R3 90
  SETTABLEKS R3 R2 K6 ["thumbstickSize"]
  GETUPVAL R2 1
  LOADN R3 40
  SETTABLEKS R3 R2 K7 ["thumbstickRingSize"]
  GETUPVAL R2 1
  LOADN R3 20
  SETTABLEKS R3 R2 K8 ["middleSize"]
  GETUPVAL R2 1
  LOADN R3 28
  SETTABLEKS R3 R2 K9 ["middleSpacing"]
  GETUPVAL R2 1
  LOADN R3 4
  SETTABLEKS R3 R2 K10 ["radiusOfDeadZone"]
  GETUPVAL R2 1
  LOADN R3 40
  SETTABLEKS R3 R2 K11 ["radiusOfMaxSpeed"]
  JUMP [+24]
  GETUPVAL R2 1
  LOADN R3 45
  SETTABLEKS R3 R2 K6 ["thumbstickSize"]
  GETUPVAL R2 1
  LOADN R3 20
  SETTABLEKS R3 R2 K7 ["thumbstickRingSize"]
  GETUPVAL R2 1
  LOADN R3 10
  SETTABLEKS R3 R2 K8 ["middleSize"]
  GETUPVAL R2 1
  LOADN R3 14
  SETTABLEKS R3 R2 K9 ["middleSpacing"]
  GETUPVAL R2 1
  LOADN R3 2
  SETTABLEKS R3 R2 K10 ["radiusOfDeadZone"]
  GETUPVAL R2 1
  LOADN R3 20
  SETTABLEKS R3 R2 K11 ["radiusOfMaxSpeed"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K12 ["startImage"]
  GETIMPORT R3 K15 [UDim2.new]
  LOADN R4 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["thumbstickRingSize"]
  MULK R6 R7 K16 [3.3]
  GETUPVAL R7 2
  ADD R5 R6 R7
  LOADN R6 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["thumbstickRingSize"]
  MINUS R9 R10
  MULK R8 R9 K17 [2.8]
  GETUPVAL R9 2
  SUB R7 R8 R9
  CALL R3 4 1
  SETTABLEKS R3 R2 K18 ["Position"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K12 ["startImage"]
  GETIMPORT R3 K15 [UDim2.new]
  LOADN R4 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["thumbstickRingSize"]
  MULK R5 R6 K19 [3.7]
  LOADN R6 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["thumbstickRingSize"]
  MULK R7 R8 K19 [3.7]
  CALL R3 4 1
  SETTABLEKS R3 R2 K20 ["Size"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K21 ["endImage"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K12 ["startImage"]
  GETTABLEKS R3 R4 K18 ["Position"]
  SETTABLEKS R3 R2 K18 ["Position"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K21 ["endImage"]
  GETIMPORT R3 K15 [UDim2.new]
  LOADN R4 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["thumbstickSize"]
  MULK R5 R6 K22 [0.8]
  LOADN R6 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["thumbstickSize"]
  MULK R7 R8 K22 [0.8]
  CALL R3 4 1
  SETTABLEKS R3 R2 K20 ["Size"]
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ViewportSize"]
  GETTABLEKS R2 R0 K1 ["X"]
  GETTABLEKS R3 R0 K2 ["Y"]
  JUMPIFLT R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETIMPORT R1 K2 [workspace]
  GETTABLEKS R0 R1 K3 ["CurrentCamera"]
  JUMPIFNOT R0 [+25]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  LOADK R4 K4 ["ViewportSize"]
  NAMECALL R2 R0 K5 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  MOVE R4 R1
  NAMECALL R2 R2 K6 ["Connect"]
  CALL R2 2 1
  SETUPVAL R2 0
  GETTABLEKS R2 R0 K4 ["ViewportSize"]
  GETTABLEKS R4 R2 K7 ["X"]
  GETTABLEKS R5 R2 K8 ["Y"]
  JUMPIFLT R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R4 1
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["tweenInAlphaStart"]
  JUMPIFEQKNIL R0 [+44]
  GETIMPORT R1 K2 [tick]
  CALL R1 0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["tweenInAlphaStart"]
  SUB R0 R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["fadeInAndOutHalfDuration"]
  MULK R2 R3 K3 [2]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["fadeInAndOutBalance"]
  MUL R1 R2 R3
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["thumbstickFrame"]
  LOADK R5 K8 [0.35]
  DIV R7 R0 R1
  FASTCALL2K MATH_MIN R7 K7 [+4]
  LOADK R8 K7 [1]
  GETIMPORT R6 K11 [math.min]
  CALL R6 2 1
  MUL R4 R5 R6
  SUBRK R3 R7 K4 ["fadeInAndOutHalfDuration"]
  SETTABLEKS R3 R2 K12 ["BackgroundTransparency"]
  JUMPIFNOTLT R1 R0 [+59]
  GETUPVAL R2 0
  GETIMPORT R3 K2 [tick]
  CALL R3 0 1
  SETTABLEKS R3 R2 K13 ["tweenOutAlphaStart"]
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["tweenInAlphaStart"]
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K13 ["tweenOutAlphaStart"]
  JUMPIFEQKNIL R0 [+43]
  GETIMPORT R1 K2 [tick]
  CALL R1 0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K13 ["tweenOutAlphaStart"]
  SUB R0 R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["fadeInAndOutHalfDuration"]
  MULK R2 R3 K3 [2]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["fadeInAndOutHalfDuration"]
  MULK R4 R5 K3 [2]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["fadeInAndOutBalance"]
  MUL R3 R4 R5
  SUB R1 R2 R3
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["thumbstickFrame"]
  LOADK R4 K14 [0.65]
  LOADK R6 K8 [0.35]
  DIV R8 R0 R1
  FASTCALL2K MATH_MIN R8 K7 [+4]
  LOADK R9 K7 [1]
  GETIMPORT R7 K11 [math.min]
  CALL R7 2 1
  MUL R5 R6 R7
  ADD R3 R4 R5
  SETTABLEKS R3 R2 K12 ["BackgroundTransparency"]
  JUMPIFNOTLT R1 R0 [+5]
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLEKS R3 R2 K13 ["tweenOutAlphaStart"]
  RETURN R0 0

PROTO_25:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["moveTouchObject"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["OnInputEnded"]
  CALL R1 1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["moveTouchObject"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["OnInputEnded"]
  CALL R0 1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R0 0
  LOADK R1 K0 [2.5]
  SETTABLEKS R1 R0 K1 ["fadeInAndOutHalfDuration"]
  GETUPVAL R0 0
  LOADK R1 K2 [0.05]
  SETTABLEKS R1 R0 K3 ["fadeInAndOutBalance"]
  GETUPVAL R0 0
  GETIMPORT R1 K5 [tick]
  CALL R1 0 1
  SETTABLEKS R1 R0 K6 ["tweenInAlphaStart"]
  RETURN R0 0

PROTO_28:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["CurrentScreenOrientation"]
  GETIMPORT R1 K4 [Enum.ScreenOrientation.Portrait]
  JUMPIFEQ R0 R1 [+10]
  GETUPVAL R0 0
  JUMPIF R0 [+36]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["CurrentScreenOrientation"]
  GETIMPORT R1 K4 [Enum.ScreenOrientation.Portrait]
  JUMPIFEQ R0 R1 [+30]
  GETUPVAL R0 2
  NAMECALL R0 R0 K5 ["disconnect"]
  CALL R0 1 0
  GETUPVAL R0 3
  LOADK R1 K6 [2.5]
  SETTABLEKS R1 R0 K7 ["fadeInAndOutHalfDuration"]
  GETUPVAL R0 3
  LOADK R1 K8 [0.05]
  SETTABLEKS R1 R0 K9 ["fadeInAndOutBalance"]
  GETUPVAL R0 3
  GETIMPORT R1 K11 [tick]
  CALL R1 0 1
  SETTABLEKS R1 R0 K12 ["tweenInAlphaStart"]
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 3
  LOADB R1 1
  SETTABLEKS R1 R0 K13 ["hasFadedBackgroundInPortrait"]
  RETURN R0 0
  GETUPVAL R0 3
  LOADB R1 1
  SETTABLEKS R1 R0 K14 ["hasFadedBackgroundInLandscape"]
  RETURN R0 0

PROTO_29:
  GETIMPORT R1 K1 [game]
  GETTABLEKS R0 R1 K2 ["Loaded"]
  NAMECALL R0 R0 K3 ["Wait"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADK R1 K4 [2.5]
  SETTABLEKS R1 R0 K5 ["fadeInAndOutHalfDuration"]
  GETUPVAL R0 0
  LOADK R1 K6 [0.05]
  SETTABLEKS R1 R0 K7 ["fadeInAndOutBalance"]
  GETUPVAL R0 0
  GETIMPORT R1 K9 [tick]
  CALL R1 0 1
  SETTABLEKS R1 R0 K10 ["tweenInAlphaStart"]
  RETURN R0 0

PROTO_30:
  GETTABLEKS R2 R0 K0 ["thumbstickFrame"]
  JUMPIFNOT R2 [+30]
  GETTABLEKS R2 R0 K0 ["thumbstickFrame"]
  NAMECALL R2 R2 K1 ["Destroy"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K0 ["thumbstickFrame"]
  GETTABLEKS R2 R0 K2 ["onRenderSteppedConn"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K2 ["onRenderSteppedConn"]
  NAMECALL R2 R2 K3 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K2 ["onRenderSteppedConn"]
  GETTABLEKS R2 R0 K4 ["absoluteSizeChangedConn"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K4 ["absoluteSizeChangedConn"]
  NAMECALL R2 R2 K3 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K4 ["absoluteSizeChangedConn"]
  GETUPVAL R3 0
  JUMPIFNOT R3 [+2]
  LOADN R2 100
  JUMP [+1]
  LOADN R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  GETIMPORT R4 K7 [Instance.new]
  LOADK R5 K8 ["Frame"]
  CALL R4 1 1
  SETTABLEKS R4 R0 K0 ["thumbstickFrame"]
  GETTABLEKS R4 R0 K0 ["thumbstickFrame"]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["BorderSizePixel"]
  GETTABLEKS R4 R0 K0 ["thumbstickFrame"]
  LOADK R5 K10 ["DynamicThumbstickFrame"]
  SETTABLEKS R5 R4 K11 ["Name"]
  GETTABLEKS R4 R0 K0 ["thumbstickFrame"]
  LOADB R5 0
  SETTABLEKS R5 R4 K12 ["Visible"]
  GETTABLEKS R4 R0 K0 ["thumbstickFrame"]
  LOADN R5 1
  SETTABLEKS R5 R4 K13 ["BackgroundTransparency"]
  GETTABLEKS R4 R0 K0 ["thumbstickFrame"]
  GETIMPORT R5 K16 [Color3.fromRGB]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLEKS R5 R4 K17 ["BackgroundColor3"]
  GETTABLEKS R4 R0 K0 ["thumbstickFrame"]
  LOADB R5 0
  SETTABLEKS R5 R4 K18 ["Active"]
  MOVE R4 R3
  LOADB R5 0
  CALL R4 1 0
  GETIMPORT R4 K7 [Instance.new]
  LOADK R5 K19 ["ImageLabel"]
  CALL R4 1 1
  SETTABLEKS R4 R0 K20 ["startImage"]
  GETTABLEKS R4 R0 K20 ["startImage"]
  LOADK R5 K21 ["ThumbstickStart"]
  SETTABLEKS R5 R4 K11 ["Name"]
  GETTABLEKS R4 R0 K20 ["startImage"]
  LOADB R5 1
  SETTABLEKS R5 R4 K12 ["Visible"]
  GETTABLEKS R4 R0 K20 ["startImage"]
  LOADN R5 1
  SETTABLEKS R5 R4 K13 ["BackgroundTransparency"]
  GETTABLEKS R4 R0 K20 ["startImage"]
  LOADK R5 K22 ["rbxasset://textures/ui/Input/TouchControlsSheetV2.png"]
  SETTABLEKS R5 R4 K23 ["Image"]
  GETTABLEKS R4 R0 K20 ["startImage"]
  GETIMPORT R5 K25 [Vector2.new]
  LOADN R6 1
  LOADN R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K26 ["ImageRectOffset"]
  GETTABLEKS R4 R0 K20 ["startImage"]
  GETIMPORT R5 K25 [Vector2.new]
  LOADN R6 144
  LOADN R7 144
  CALL R5 2 1
  SETTABLEKS R5 R4 K27 ["ImageRectSize"]
  GETTABLEKS R4 R0 K20 ["startImage"]
  GETIMPORT R5 K28 [Color3.new]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLEKS R5 R4 K29 ["ImageColor3"]
  GETTABLEKS R4 R0 K20 ["startImage"]
  GETIMPORT R5 K25 [Vector2.new]
  LOADK R6 K30 [0.5]
  LOADK R7 K30 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K31 ["AnchorPoint"]
  GETTABLEKS R4 R0 K20 ["startImage"]
  LOADN R5 10
  SETTABLEKS R5 R4 K32 ["ZIndex"]
  GETTABLEKS R4 R0 K20 ["startImage"]
  GETTABLEKS R5 R0 K0 ["thumbstickFrame"]
  SETTABLEKS R5 R4 K33 ["Parent"]
  GETIMPORT R4 K7 [Instance.new]
  LOADK R5 K19 ["ImageLabel"]
  CALL R4 1 1
  SETTABLEKS R4 R0 K34 ["endImage"]
  GETTABLEKS R4 R0 K34 ["endImage"]
  LOADK R5 K35 ["ThumbstickEnd"]
  SETTABLEKS R5 R4 K11 ["Name"]
  GETTABLEKS R4 R0 K34 ["endImage"]
  LOADB R5 1
  SETTABLEKS R5 R4 K12 ["Visible"]
  GETTABLEKS R4 R0 K34 ["endImage"]
  LOADN R5 1
  SETTABLEKS R5 R4 K13 ["BackgroundTransparency"]
  GETTABLEKS R4 R0 K34 ["endImage"]
  LOADK R5 K22 ["rbxasset://textures/ui/Input/TouchControlsSheetV2.png"]
  SETTABLEKS R5 R4 K23 ["Image"]
  GETTABLEKS R4 R0 K34 ["endImage"]
  GETIMPORT R5 K25 [Vector2.new]
  LOADN R6 1
  LOADN R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K26 ["ImageRectOffset"]
  GETTABLEKS R4 R0 K34 ["endImage"]
  GETIMPORT R5 K25 [Vector2.new]
  LOADN R6 144
  LOADN R7 144
  CALL R5 2 1
  SETTABLEKS R5 R4 K27 ["ImageRectSize"]
  GETTABLEKS R4 R0 K34 ["endImage"]
  GETIMPORT R5 K25 [Vector2.new]
  LOADK R6 K30 [0.5]
  LOADK R7 K30 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K31 ["AnchorPoint"]
  GETTABLEKS R4 R0 K34 ["endImage"]
  LOADN R5 10
  SETTABLEKS R5 R4 K32 ["ZIndex"]
  GETTABLEKS R4 R0 K34 ["endImage"]
  GETTABLEKS R5 R0 K0 ["thumbstickFrame"]
  SETTABLEKS R5 R4 K33 ["Parent"]
  LOADN R6 1
  GETUPVAL R4 1
  LOADN R5 1
  FORNPREP R4
  GETTABLEKS R7 R0 K36 ["middleImages"]
  GETIMPORT R8 K7 [Instance.new]
  LOADK R9 K19 ["ImageLabel"]
  CALL R8 1 1
  SETTABLE R8 R7 R6
  GETTABLEKS R8 R0 K36 ["middleImages"]
  GETTABLE R7 R8 R6
  LOADK R8 K37 ["ThumbstickMiddle"]
  SETTABLEKS R8 R7 K11 ["Name"]
  GETTABLEKS R8 R0 K36 ["middleImages"]
  GETTABLE R7 R8 R6
  LOADB R8 0
  SETTABLEKS R8 R7 K12 ["Visible"]
  GETTABLEKS R8 R0 K36 ["middleImages"]
  GETTABLE R7 R8 R6
  LOADN R8 1
  SETTABLEKS R8 R7 K13 ["BackgroundTransparency"]
  GETTABLEKS R8 R0 K36 ["middleImages"]
  GETTABLE R7 R8 R6
  LOADK R8 K22 ["rbxasset://textures/ui/Input/TouchControlsSheetV2.png"]
  SETTABLEKS R8 R7 K23 ["Image"]
  GETTABLEKS R8 R0 K36 ["middleImages"]
  GETTABLE R7 R8 R6
  GETIMPORT R8 K25 [Vector2.new]
  LOADN R9 1
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K26 ["ImageRectOffset"]
  GETTABLEKS R8 R0 K36 ["middleImages"]
  GETTABLE R7 R8 R6
  GETIMPORT R8 K25 [Vector2.new]
  LOADN R9 144
  LOADN R10 144
  CALL R8 2 1
  SETTABLEKS R8 R7 K27 ["ImageRectSize"]
  GETTABLEKS R8 R0 K36 ["middleImages"]
  GETTABLE R7 R8 R6
  GETUPVAL R9 2
  GETTABLE R8 R9 R6
  SETTABLEKS R8 R7 K38 ["ImageTransparency"]
  GETTABLEKS R8 R0 K36 ["middleImages"]
  GETTABLE R7 R8 R6
  GETIMPORT R8 K25 [Vector2.new]
  LOADK R9 K30 [0.5]
  LOADK R10 K30 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K31 ["AnchorPoint"]
  GETTABLEKS R8 R0 K36 ["middleImages"]
  GETTABLE R7 R8 R6
  LOADN R8 9
  SETTABLEKS R8 R7 K32 ["ZIndex"]
  GETTABLEKS R8 R0 K36 ["middleImages"]
  GETTABLE R7 R8 R6
  GETTABLEKS R8 R0 K0 ["thumbstickFrame"]
  SETTABLEKS R8 R7 K33 ["Parent"]
  FORNLOOP R4
  NEWCLOSURE R4 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  MOVE R5 R4
  CALL R5 0 0
  LOADK R7 K39 ["AbsoluteSize"]
  NAMECALL R5 R1 K40 ["GetPropertyChangedSignal"]
  CALL R5 2 1
  MOVE R7 R4
  NAMECALL R5 R5 K41 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K4 ["absoluteSizeChangedConn"]
  LOADNIL R5
  NEWCLOSURE R6 P2
  CAPTURE REF R5
  CAPTURE VAL R3
  GETIMPORT R7 K43 [workspace]
  LOADK R9 K44 ["CurrentCamera"]
  NAMECALL R7 R7 K40 ["GetPropertyChangedSignal"]
  CALL R7 2 1
  MOVE R9 R6
  NAMECALL R7 R7 K41 ["Connect"]
  CALL R7 2 0
  GETIMPORT R8 K43 [workspace]
  GETTABLEKS R7 R8 K44 ["CurrentCamera"]
  JUMPIFNOT R7 [+2]
  MOVE R7 R6
  CALL R7 0 0
  LOADNIL R7
  SETTABLEKS R7 R0 K45 ["moveTouchStartPosition"]
  LOADNIL R7
  SETTABLEKS R7 R0 K46 ["startImageFadeTween"]
  LOADNIL R7
  SETTABLEKS R7 R0 K47 ["endImageFadeTween"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R0 K48 ["middleImageFadeTweens"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K49 ["RenderStepped"]
  NEWCLOSURE R9 P3
  CAPTURE VAL R0
  NAMECALL R7 R7 K41 ["Connect"]
  CALL R7 2 1
  SETTABLEKS R7 R0 K2 ["onRenderSteppedConn"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K50 ["TouchEnded"]
  NEWCLOSURE R9 P4
  CAPTURE VAL R0
  NAMECALL R7 R7 K51 ["connect"]
  CALL R7 2 1
  SETTABLEKS R7 R0 K52 ["onTouchEndedConn"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K53 ["MenuOpened"]
  NEWCLOSURE R9 P5
  CAPTURE VAL R0
  NAMECALL R7 R7 K51 ["connect"]
  CALL R7 2 0
  GETUPVAL R7 6
  LOADK R9 K54 ["PlayerGui"]
  NAMECALL R7 R7 K55 ["FindFirstChildOfClass"]
  CALL R7 2 1
  JUMPIF R7 [+13]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K56 ["ChildAdded"]
  NAMECALL R8 R8 K57 ["wait"]
  CALL R8 1 0
  GETUPVAL R8 6
  LOADK R10 K54 ["PlayerGui"]
  NAMECALL R8 R8 K55 ["FindFirstChildOfClass"]
  CALL R8 2 1
  MOVE R7 R8
  JUMPBACK [-14]
  LOADNIL R8
  LOADB R9 1
  GETTABLEKS R10 R7 K58 ["CurrentScreenOrientation"]
  GETIMPORT R11 K62 [Enum.ScreenOrientation.LandscapeLeft]
  JUMPIFEQ R10 R11 [+9]
  GETTABLEKS R10 R7 K58 ["CurrentScreenOrientation"]
  GETIMPORT R11 K64 [Enum.ScreenOrientation.LandscapeRight]
  JUMPIFEQ R10 R11 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  NEWCLOSURE R10 P6
  CAPTURE VAL R0
  LOADK R13 K58 ["CurrentScreenOrientation"]
  NAMECALL R11 R7 K40 ["GetPropertyChangedSignal"]
  CALL R11 2 1
  NEWCLOSURE R13 P7
  CAPTURE VAL R9
  CAPTURE REF R7
  CAPTURE REF R8
  CAPTURE VAL R0
  NAMECALL R11 R11 K41 ["Connect"]
  CALL R11 2 1
  MOVE R8 R11
  GETTABLEKS R11 R0 K0 ["thumbstickFrame"]
  SETTABLEKS R1 R11 K33 ["Parent"]
  GETIMPORT R11 K66 [game]
  NAMECALL R11 R11 K67 ["IsLoaded"]
  CALL R11 1 1
  JUMPIFNOT R11 [+12]
  LOADK R11 K68 [2.5]
  SETTABLEKS R11 R0 K69 ["fadeInAndOutHalfDuration"]
  LOADK R11 K70 [0.05]
  SETTABLEKS R11 R0 K71 ["fadeInAndOutBalance"]
  GETIMPORT R11 K73 [tick]
  CALL R11 0 1
  SETTABLEKS R11 R0 K74 ["tweenInAlphaStart"]
  JUMP [+6]
  GETIMPORT R11 K77 [coroutine.wrap]
  NEWCLOSURE R12 P8
  CAPTURE VAL R0
  CALL R11 1 1
  CALL R11 0 0
  CLOSEUPVALS R5
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K3 [Enum.ContextActionPriority.High]
  GETTABLEKS R0 R1 K4 ["Value"]
  NEWTABLE R1 0 7
  LOADK R2 K5 [0.11]
  LOADK R3 K6 [0.3]
  LOADK R4 K7 [0.4]
  LOADK R5 K8 [0.5]
  LOADK R6 K9 [0.6]
  LOADK R7 K10 [0.7]
  LOADK R8 K11 [0.75]
  SETLIST R1 R2 7 [1]
  LENGTH R2 R1
  GETIMPORT R3 K14 [TweenInfo.new]
  LOADK R4 K15 [0.15]
  GETIMPORT R5 K18 [Enum.EasingStyle.Quad]
  GETIMPORT R6 K21 [Enum.EasingDirection.InOut]
  CALL R3 3 1
  GETIMPORT R4 K23 [game]
  LOADK R6 K24 ["Players"]
  NAMECALL R4 R4 K25 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K23 [game]
  LOADK R7 K26 ["GuiService"]
  NAMECALL R5 R5 K25 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K23 [game]
  LOADK R8 K27 ["UserInputService"]
  NAMECALL R6 R6 K25 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K23 [game]
  LOADK R9 K28 ["ContextActionService"]
  NAMECALL R7 R7 K25 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K23 [game]
  LOADK R10 K29 ["RunService"]
  NAMECALL R8 R8 K25 ["GetService"]
  CALL R8 2 1
  GETIMPORT R9 K23 [game]
  LOADK R11 K30 ["TweenService"]
  NAMECALL R9 R9 K25 ["GetService"]
  CALL R9 2 1
  LOADNIL R10
  GETIMPORT R11 K32 [pcall]
  DUPCLOSURE R12 K33 [PROTO_0]
  CALL R11 1 2
  AND R10 R11 R12
  LOADNIL R11
  GETIMPORT R12 K32 [pcall]
  DUPCLOSURE R13 K34 [PROTO_1]
  CALL R12 1 2
  AND R11 R12 R13
  GETTABLEKS R12 R4 K35 ["LocalPlayer"]
  JUMPIF R12 [+9]
  LOADK R15 K35 ["LocalPlayer"]
  NAMECALL R13 R4 K36 ["GetPropertyChangedSignal"]
  CALL R13 2 1
  NAMECALL R13 R13 K37 ["Wait"]
  CALL R13 1 0
  GETTABLEKS R12 R4 K35 ["LocalPlayer"]
  GETIMPORT R13 K39 [require]
  GETIMPORT R15 K41 [script]
  GETTABLEKS R14 R15 K42 ["Parent"]
  LOADK R16 K43 ["BaseCharacterController"]
  NAMECALL R14 R14 K44 ["WaitForChild"]
  CALL R14 2 -1
  CALL R13 -1 1
  NEWTABLE R15 16 0
  FASTCALL2 SETMETATABLE R15 R13 [+4]
  MOVE R16 R13
  GETIMPORT R14 K46 [setmetatable]
  CALL R14 2 1
  SETTABLEKS R14 R14 K47 ["__index"]
  DUPCLOSURE R15 K48 [PROTO_2]
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R15 R14 K13 ["new"]
  DUPCLOSURE R15 K49 [PROTO_3]
  SETTABLEKS R15 R14 K50 ["GetIsJumping"]
  NEWCLOSURE R15 P4
  CAPTURE REF R10
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K51 ["Enable"]
  DUPCLOSURE R15 K52 [PROTO_5]
  SETTABLEKS R15 R14 K53 ["OnInputEnded"]
  DUPCLOSURE R15 K54 [PROTO_6]
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R15 R14 K55 ["FadeThumbstick"]
  DUPCLOSURE R15 K56 [PROTO_7]
  SETTABLEKS R15 R14 K57 ["FadeThumbstickFrame"]
  DUPCLOSURE R15 K58 [PROTO_8]
  SETTABLEKS R15 R14 K59 ["InputInFrame"]
  NEWCLOSURE R15 P9
  CAPTURE REF R12
  SETTABLEKS R15 R14 K60 ["DoFadeInBackground"]
  DUPCLOSURE R15 K61 [PROTO_10]
  SETTABLEKS R15 R14 K62 ["DoMove"]
  DUPCLOSURE R15 K63 [PROTO_11]
  CAPTURE VAL R2
  SETTABLEKS R15 R14 K64 ["LayoutMiddleImages"]
  DUPCLOSURE R15 K65 [PROTO_12]
  SETTABLEKS R15 R14 K66 ["MoveStick"]
  NEWCLOSURE R15 P13
  CAPTURE VAL R9
  CAPTURE REF R10
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R6
  SETTABLEKS R15 R14 K67 ["BindContextActions"]
  DUPCLOSURE R15 K68 [PROTO_19]
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K69 ["UnbindContextActions"]
  NEWCLOSURE R15 P15
  CAPTURE REF R11
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE REF R12
  SETTABLEKS R15 R14 K70 ["Create"]
  CLOSEUPVALS R10
  RETURN R14 1
