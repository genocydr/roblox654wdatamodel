PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["PreAnimation"]
  NAMECALL R0 R0 K1 ["Wait"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["PostSimulation"]
  NAMECALL R0 R0 K1 ["Wait"]
  CALL R0 1 0
  GETIMPORT R0 K5 [Instance.new]
  LOADK R1 K6 ["Folder"]
  CALL R0 1 1
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K7 ["Parent"]
  NAMECALL R1 R0 K8 ["Destroy"]
  CALL R1 1 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K9 ["GetModelCFrame"]
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K10 ["ThumbnailZoomExtents"]
  GETUPVAL R3 1
  LOADN R4 20
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K11 ["thumbnailHorizontalOffset"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K12 ["thumbnailVerticalOffset"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K13 ["thumbnailZoom"]
  CALL R2 5 1
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K14 ["updateCameraCFrameBinding"]
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K15 ["updateCameraFocusBinding"]
  MOVE R4 R1
  CALL R3 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["character"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["props"]
  GETTABLEKS R2 R0 K0 ["character"]
  GETTABLEKS R3 R1 K2 ["animationClip"]
  GETTABLEKS R4 R1 K3 ["thumbnailParameters"]
  GETTABLEKS R5 R4 K4 ["thumbnailTime"]
  GETTABLEKS R6 R4 K5 ["thumbnailKeyframe"]
  GETTABLEKS R7 R4 K6 ["thumbnailCharacterRotation"]
  LOADNIL R8
  LOADK R11 K7 ["CurveAnimation"]
  NAMECALL R9 R3 K8 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+9]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K9 ["GetThumbnailKeyframeFromCurve"]
  MOVE R10 R5
  MOVE R11 R3
  MOVE R12 R7
  CALL R9 3 1
  MOVE R8 R9
  JUMP [+20]
  LOADK R11 K10 ["KeyframeSequence"]
  NAMECALL R9 R3 K8 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+9]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["GetThumbnailKeyframe"]
  MOVE R10 R6
  MOVE R11 R3
  MOVE R12 R7
  CALL R9 3 1
  MOVE R8 R9
  JUMP [+6]
  GETIMPORT R9 K13 [error]
  LOADK R10 K14 ["Unsupported Animation data:"]
  GETTABLEKS R11 R3 K15 ["ClassName"]
  CALL R9 2 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K16 ["SetPlayerCharacterNeutralPose"]
  MOVE R10 R2
  CALL R9 1 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K17 ["ApplyKeyframe"]
  MOVE R10 R2
  MOVE R11 R8
  CALL R9 2 0
  GETIMPORT R9 K20 [task.spawn]
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R4
  CAPTURE VAL R0
  CALL R9 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["character"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R2 R0 K0 ["character"]
  GETTABLEKS R1 R2 K1 ["Parent"]
  JUMPIFEQKNIL R1 [+2]
  RETURN R0 0
  GETTABLEKS R1 R0 K2 ["worldModelRef"]
  NAMECALL R1 R1 K3 ["getValue"]
  CALL R1 1 1
  JUMPIFNOT R1 [+16]
  GETTABLEKS R1 R0 K0 ["character"]
  JUMPIFEQKNIL R1 [+13]
  GETTABLEKS R1 R0 K0 ["character"]
  GETTABLEKS R2 R0 K2 ["worldModelRef"]
  NAMECALL R2 R2 K3 ["getValue"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K1 ["Parent"]
  NAMECALL R1 R0 K4 ["updateCameraAndCharacterPose"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 [1342485078]
  NAMECALL R0 R0 K1 ["GetHumanoidDescriptionFromOutfitId"]
  CALL R0 2 1
  RETURN R0 1

PROTO_4:
  GETIMPORT R0 K1 [pcall]
  DUPCLOSURE R1 K2 [PROTO_3]
  CAPTURE UPVAL U0
  CALL R0 1 2
  JUMPIF R0 [+5]
  GETIMPORT R2 K5 [Instance.new]
  LOADK R3 K6 ["HumanoidDescription"]
  CALL R2 1 1
  MOVE R1 R2
  GETUPVAL R2 1
  GETUPVAL R3 0
  MOVE R5 R1
  GETIMPORT R6 K10 [Enum.HumanoidRigType.R15]
  NAMECALL R3 R3 K11 ["CreateHumanoidModelFromDescription"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K12 ["character"]
  GETUPVAL R2 1
  NAMECALL R2 R2 K13 ["addCharacterToViewportIfNeeded"]
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["cameraRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["worldModelRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createBinding"]
  GETIMPORT R2 K6 [CFrame.new]
  CALL R2 0 -1
  CALL R1 -1 2
  SETTABLEKS R1 R0 K7 ["cameraCFrameBinding"]
  SETTABLEKS R2 R0 K8 ["updateCameraCFrameBinding"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createBinding"]
  GETIMPORT R2 K6 [CFrame.new]
  CALL R2 0 -1
  CALL R1 -1 2
  SETTABLEKS R1 R0 K9 ["cameraFocusBinding"]
  SETTABLEKS R2 R0 K10 ["updateCameraFocusBinding"]
  GETIMPORT R1 K13 [task.spawn]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K7 [{"BackgroundTransparency", "Position", "AnchorPoint", "Size", "BackgroundColor3"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K2 ["BackgroundTransparency"]
  GETTABLEKS R5 R0 K8 ["props"]
  GETTABLEKS R4 R5 K9 ["position"]
  JUMPIF R4 [+5]
  GETIMPORT R4 K12 [UDim2.fromScale]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["Position"]
  GETTABLEKS R5 R0 K8 ["props"]
  GETTABLEKS R4 R5 K13 ["anchorPoint"]
  JUMPIF R4 [+5]
  GETIMPORT R4 K16 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["AnchorPoint"]
  GETTABLEKS R5 R0 K8 ["props"]
  GETTABLEKS R4 R5 K17 ["size"]
  JUMPIF R4 [+5]
  GETIMPORT R4 K12 [UDim2.fromScale]
  LOADN R5 1
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Size"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 200
  LOADN R6 200
  LOADN R7 200
  CALL R4 3 1
  SETTABLEKS R4 R3 K6 ["BackgroundColor3"]
  DUPTABLE R4 K24 [{"UICorner", "AspectRatioConstraint", "ViewportFrame"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K21 ["UICorner"]
  DUPTABLE R7 K26 [{"CornerRadius"}]
  GETIMPORT R8 K28 [UDim.new]
  LOADN R9 0
  LOADN R10 8
  CALL R8 2 1
  SETTABLEKS R8 R7 K25 ["CornerRadius"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K21 ["UICorner"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K29 ["UIAspectRatioConstraint"]
  DUPTABLE R7 K33 [{"AspectRatio", "AspectType", "DominantAxis"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K30 ["AspectRatio"]
  GETIMPORT R8 K36 [Enum.AspectType.FitWithinMaxSize]
  SETTABLEKS R8 R7 K31 ["AspectType"]
  GETIMPORT R8 K38 [Enum.DominantAxis.Width]
  SETTABLEKS R8 R7 K32 ["DominantAxis"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K22 ["AspectRatioConstraint"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K23 ["ViewportFrame"]
  DUPTABLE R7 K42 [{"Size", "Position", "AnchorPoint", "ImageColor3", "ImageTransparency", "BackgroundTransparency", "CurrentCamera"}]
  GETIMPORT R8 K12 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K5 ["Size"]
  GETIMPORT R8 K12 [UDim2.fromScale]
  LOADK R9 K43 [0.5]
  LOADK R10 K43 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K3 ["Position"]
  GETIMPORT R8 K16 [Vector2.new]
  LOADK R9 K43 [0.5]
  LOADK R10 K43 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K4 ["AnchorPoint"]
  GETIMPORT R8 K44 [Color3.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R8 3 1
  SETTABLEKS R8 R7 K39 ["ImageColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K40 ["ImageTransparency"]
  LOADN R8 1
  SETTABLEKS R8 R7 K2 ["BackgroundTransparency"]
  GETTABLEKS R8 R0 K45 ["cameraRef"]
  SETTABLEKS R8 R7 K41 ["CurrentCamera"]
  DUPTABLE R8 K48 [{"Camera", "WorldModel"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K46 ["Camera"]
  NEWTABLE R11 8 0
  GETIMPORT R12 K51 [Enum.CameraType.Scriptable]
  SETTABLEKS R12 R11 K49 ["CameraType"]
  LOADN R12 20
  SETTABLEKS R12 R11 K52 ["FieldOfView"]
  GETTABLEKS R12 R0 K53 ["cameraCFrameBinding"]
  SETTABLEKS R12 R11 K54 ["CFrame"]
  GETTABLEKS R12 R0 K55 ["cameraFocusBinding"]
  SETTABLEKS R12 R11 K56 ["Focus"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K57 ["Ref"]
  GETTABLEKS R13 R0 K45 ["cameraRef"]
  SETTABLE R13 R11 R12
  CALL R9 2 1
  SETTABLEKS R9 R8 K46 ["Camera"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K47 ["WorldModel"]
  NEWTABLE R11 1 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K57 ["Ref"]
  GETTABLEKS R13 R0 K58 ["worldModelRef"]
  SETTABLE R13 R11 R12
  CALL R9 2 1
  SETTABLEKS R9 R8 K47 ["WorldModel"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K23 ["ViewportFrame"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_7:
  NAMECALL R1 R0 K0 ["addCharacterToViewportIfNeeded"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  NAMECALL R2 R0 K0 ["updateCameraAndCharacterPose"]
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RunService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Thumbnailing"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K10 ["EmoteUtility"]
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R0 K8 ["Packages"]
  GETTABLEKS R6 R7 K12 ["t"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETIMPORT R9 K14 [script]
  GETTABLEKS R8 R9 K15 ["Parent"]
  GETTABLEKS R7 R8 K16 ["EmoteThumbnailParameters"]
  CALL R6 1 1
  GETTABLEKS R7 R4 K17 ["PureComponent"]
  LOADK R9 K18 ["EmoteThumbnailView"]
  NAMECALL R7 R7 K19 ["extend"]
  CALL R7 2 1
  GETTABLEKS R8 R5 K20 ["strictInterface"]
  DUPTABLE R9 K26 [{"animationClip", "thumbnailParameters", "position", "anchorPoint", "size"}]
  GETTABLEKS R10 R5 K27 ["instanceIsA"]
  LOADK R11 K28 ["AnimationClip"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K21 ["animationClip"]
  GETTABLEKS R10 R6 K29 ["validate"]
  SETTABLEKS R10 R9 K22 ["thumbnailParameters"]
  GETTABLEKS R10 R5 K30 ["optional"]
  GETTABLEKS R11 R5 K31 ["UDim2"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K23 ["position"]
  GETTABLEKS R10 R5 K30 ["optional"]
  GETTABLEKS R11 R5 K32 ["Vector2"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["anchorPoint"]
  GETTABLEKS R10 R5 K30 ["optional"]
  GETTABLEKS R11 R5 K31 ["UDim2"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K25 ["size"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K33 ["validateProps"]
  DUPCLOSURE R8 K34 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K35 ["updateCameraAndCharacterPose"]
  DUPCLOSURE R8 K36 [PROTO_2]
  SETTABLEKS R8 R7 K37 ["addCharacterToViewportIfNeeded"]
  DUPCLOSURE R8 K38 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K39 ["init"]
  DUPCLOSURE R8 K40 [PROTO_6]
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K41 ["render"]
  DUPCLOSURE R8 K42 [PROTO_7]
  SETTABLEKS R8 R7 K43 ["didMount"]
  DUPCLOSURE R8 K44 [PROTO_8]
  SETTABLEKS R8 R7 K45 ["didUpdate"]
  RETURN R7 1
