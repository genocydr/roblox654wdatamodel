PROTO_0:
  PREPVARARGS 1
  NEWTABLE R1 0 0
  GETVARARGS R2 -1
  SETLIST R1 R2 -1 [1]
  SETUPVAL R1 0
  LOADK R2 K0 ["#"]
  FASTCALL1 SELECT_VARARG R2 [+3]
  GETIMPORT R1 K2 [select]
  GETVARARGS R3 -1
  CALL R1 -1 1
  SETUPVAL R1 1
  GETUPVAL R1 2
  NAMECALL R1 R1 K3 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADN R3 1
  GETUPVAL R4 2
  FASTCALL TABLE_UNPACK [+2]
  GETIMPORT R1 K1 [unpack]
  CALL R1 3 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  JUMPIF R1 [+5]
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["connect(nil)"]
  LOADN R4 2
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["Event"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R2 R2 K4 ["connect"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Event"]
  NAMECALL R1 R1 K1 ["wait"]
  CALL R1 1 0
  GETUPVAL R2 1
  FASTCALL2K ASSERT R2 K2 [+4]
  LOADK R3 K2 ["Missing arg data, likely due to :TweenSize/Position corrupting threadrefs."]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  LOADN R3 1
  GETUPVAL R4 2
  FASTCALL TABLE_UNPACK [+2]
  GETIMPORT R1 K6 [unpack]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_4:
  NEWTABLE R0 4 0
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["BindableEvent"]
  CALL R1 1 1
  LOADNIL R2
  LOADNIL R3
  NEWCLOSURE R4 P0
  CAPTURE REF R2
  CAPTURE REF R3
  CAPTURE VAL R1
  SETTABLEKS R4 R0 K4 ["fire"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R1
  CAPTURE REF R2
  CAPTURE REF R3
  SETTABLEKS R4 R0 K5 ["connect"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R1
  CAPTURE REF R2
  CAPTURE REF R3
  SETTABLEKS R4 R0 K6 ["wait"]
  CLOSEUPVALS R2
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPCLOSURE R1 K0 [PROTO_4]
  SETTABLEKS R1 R0 K1 ["Signal"]
  RETURN R0 1
