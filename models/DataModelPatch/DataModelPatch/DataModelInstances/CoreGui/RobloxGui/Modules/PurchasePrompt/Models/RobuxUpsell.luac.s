PROTO_0:
  DUPTABLE R4 K4 [{"id", "providerId", "productName", "robuxAmount"}]
  SETTABLEKS R0 R4 K0 ["id"]
  SETTABLEKS R1 R4 K1 ["providerId"]
  SETTABLEKS R2 R4 K2 ["productName"]
  SETTABLEKS R3 R4 K3 ["robuxAmount"]
  RETURN R4 1

PROTO_1:
  DUPTABLE R1 K4 [{"id", "providerId", "productName", "robuxAmount"}]
  GETTABLEKS R2 R0 K5 ["roblox_product_id"]
  SETTABLEKS R2 R1 K0 ["id"]
  GETTABLEKS R2 R0 K6 ["provider_product_id"]
  SETTABLEKS R2 R1 K1 ["providerId"]
  GETTABLEKS R2 R0 K7 ["roblox_product_name"]
  SETTABLEKS R2 R1 K2 ["productName"]
  GETTABLEKS R2 R0 K8 ["robux_amount"]
  SETTABLEKS R2 R1 K3 ["robuxAmount"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  NEWTABLE R1 2 0
  DUPCLOSURE R2 K3 [PROTO_0]
  SETTABLEKS R2 R1 K4 ["new"]
  DUPCLOSURE R2 K5 [PROTO_1]
  SETTABLEKS R2 R1 K6 ["fromJson"]
  RETURN R1 1
