MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K18 [{"pitchStiffness", "yawStiffness", "autocorrectDelay", "autocorrectMinCarSpeed", "autocorrectMaxCarSpeed", "autocorrectResponse", "cutoffMinAngularVelYaw", "cutoffMaxAngularVelYaw", "cutoffMinAngularVelPitch", "cutoffMaxAngularVelPitch", "pitchBaseAngle", "pitchDeadzoneAngle", "firstPersonResponseMul", "yawReponseDampingRising", "yawResponseDampingFalling", "pitchReponseDampingRising", "pitchResponseDampingFalling", "verticalCenterOffset"}]
  LOADK R1 K19 [0.5]
  SETTABLEKS R1 R0 K0 ["pitchStiffness"]
  LOADK R1 K20 [2.5]
  SETTABLEKS R1 R0 K1 ["yawStiffness"]
  LOADN R1 1
  SETTABLEKS R1 R0 K2 ["autocorrectDelay"]
  LOADN R1 16
  SETTABLEKS R1 R0 K3 ["autocorrectMinCarSpeed"]
  LOADN R1 32
  SETTABLEKS R1 R0 K4 ["autocorrectMaxCarSpeed"]
  LOADK R1 K19 [0.5]
  SETTABLEKS R1 R0 K5 ["autocorrectResponse"]
  LOADN R1 60
  SETTABLEKS R1 R0 K6 ["cutoffMinAngularVelYaw"]
  LOADN R1 180
  SETTABLEKS R1 R0 K7 ["cutoffMaxAngularVelYaw"]
  LOADN R1 15
  SETTABLEKS R1 R0 K8 ["cutoffMinAngularVelPitch"]
  LOADN R1 60
  SETTABLEKS R1 R0 K9 ["cutoffMaxAngularVelPitch"]
  LOADN R1 18
  SETTABLEKS R1 R0 K10 ["pitchBaseAngle"]
  LOADN R1 12
  SETTABLEKS R1 R0 K11 ["pitchDeadzoneAngle"]
  LOADN R1 10
  SETTABLEKS R1 R0 K12 ["firstPersonResponseMul"]
  LOADN R1 1
  SETTABLEKS R1 R0 K13 ["yawReponseDampingRising"]
  LOADN R1 3
  SETTABLEKS R1 R0 K14 ["yawResponseDampingFalling"]
  LOADN R1 1
  SETTABLEKS R1 R0 K15 ["pitchReponseDampingRising"]
  LOADN R1 3
  SETTABLEKS R1 R0 K16 ["pitchResponseDampingFalling"]
  LOADK R1 K21 [0.33]
  SETTABLEKS R1 R0 K17 ["verticalCenterOffset"]
  RETURN R0 1
