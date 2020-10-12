/*
 Navicat Premium Data Transfer

 Source Server         : Postgre PC
 Source Server Type    : PostgreSQL
 Source Server Version : 120003
 Source Host           : localhost:5432
 Source Catalog        : shoesmart
 Source Schema         : transaction

 Target Server Type    : PostgreSQL
 Target Server Version : 120003
 File Encoding         : 65001

 Date: 13/10/2020 04:43:48
*/


-- ----------------------------
-- Sequence structure for cart_product_tcp_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "transaction"."cart_product_tcp_id_seq";
CREATE SEQUENCE "transaction"."cart_product_tcp_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cart_tc_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "transaction"."cart_tc_id_seq";
CREATE SEQUENCE "transaction"."cart_tc_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for transaction_product_ttp_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "transaction"."transaction_product_ttp_id_seq";
CREATE SEQUENCE "transaction"."transaction_product_ttp_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for transaction_tt_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "transaction"."transaction_tt_id_seq";
CREATE SEQUENCE "transaction"."transaction_tt_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS "transaction"."cart";
CREATE TABLE "transaction"."cart" (
  "tc_id" int4 NOT NULL DEFAULT nextval('"transaction".cart_tc_id_seq'::regclass),
  "tc_ip_guest" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tc_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "tc_update_at" timestamp(6),
  "tc_deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO "transaction"."cart" VALUES (1, '127.0.0.1', '2020-10-12 10:48:32', '2020-10-12 10:48:32', NULL);

-- ----------------------------
-- Table structure for cart_product
-- ----------------------------
DROP TABLE IF EXISTS "transaction"."cart_product";
CREATE TABLE "transaction"."cart_product" (
  "tcp_id" int4 NOT NULL DEFAULT nextval('"transaction".cart_product_tcp_id_seq'::regclass),
  "tcp_id_cart" int4 NOT NULL,
  "tcp_id_variant" int4 NOT NULL,
  "tcp_qty" int4 NOT NULL,
  "tcp_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "tcp_update_at" timestamp(6)
)
;

-- ----------------------------
-- Records of cart_product
-- ----------------------------

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS "transaction"."transaction";
CREATE TABLE "transaction"."transaction" (
  "tt_id" int4 NOT NULL DEFAULT nextval('"transaction".transaction_tt_id_seq'::regclass),
  "tt_id_cart" int4 NOT NULL,
  "tt_code_order" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "tt_total_price" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tt_status" int4 NOT NULL,
  "tt_resi" varchar(50) COLLATE "pg_catalog"."default",
  "tt_img_path" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "tt_address" varchar(1000) COLLATE "pg_catalog"."default" NOT NULL,
  "tt_country" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "tt_zip_code" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "tt_phone" int8 NOT NULL,
  "tt_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "tt_update_at" timestamp(6),
  "tt_deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO "transaction"."transaction" VALUES (1, 1, 'PpxX1NUuCY', '1160000', 2, 'sip', '1602535237_Adidas.png', 'Wiyung', 'Indonesia', '60213', 22321, '2020-10-12 20:40:37', '2020-10-12 21:06:53', NULL);

-- ----------------------------
-- Table structure for transaction_product
-- ----------------------------
DROP TABLE IF EXISTS "transaction"."transaction_product";
CREATE TABLE "transaction"."transaction_product" (
  "ttp_id" int4 NOT NULL DEFAULT nextval('"transaction".transaction_product_ttp_id_seq'::regclass),
  "ttp_id_transaction" int4 NOT NULL,
  "ttp_id_variant" int4 NOT NULL,
  "ttp_qty" int4 NOT NULL,
  "ttp_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "ttp_update_at" timestamp(6),
  "ttp_delete_at" timestamp(6)
)
;

-- ----------------------------
-- Records of transaction_product
-- ----------------------------
INSERT INTO "transaction"."transaction_product" VALUES (1, 1, 428, 2, '2020-10-12 20:40:37', '2020-10-12 20:40:37', NULL);
INSERT INTO "transaction"."transaction_product" VALUES (2, 1, 30, 1, '2020-10-12 20:40:37', '2020-10-12 20:40:37', NULL);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "transaction"."cart_product_tcp_id_seq"
OWNED BY "transaction"."cart_product"."tcp_id";
SELECT setval('"transaction"."cart_product_tcp_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "transaction"."cart_tc_id_seq"
OWNED BY "transaction"."cart"."tc_id";
SELECT setval('"transaction"."cart_tc_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "transaction"."transaction_product_ttp_id_seq"
OWNED BY "transaction"."transaction_product"."ttp_id";
SELECT setval('"transaction"."transaction_product_ttp_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "transaction"."transaction_tt_id_seq"
OWNED BY "transaction"."transaction"."tt_id";
SELECT setval('"transaction"."transaction_tt_id_seq"', 2, true);

-- ----------------------------
-- Primary Key structure for table cart
-- ----------------------------
ALTER TABLE "transaction"."cart" ADD CONSTRAINT "cart_pkey" PRIMARY KEY ("tc_id");

-- ----------------------------
-- Primary Key structure for table cart_product
-- ----------------------------
ALTER TABLE "transaction"."cart_product" ADD CONSTRAINT "cart_product_pkey" PRIMARY KEY ("tcp_id");

-- ----------------------------
-- Primary Key structure for table transaction
-- ----------------------------
ALTER TABLE "transaction"."transaction" ADD CONSTRAINT "transaction_pkey" PRIMARY KEY ("tt_id");

-- ----------------------------
-- Primary Key structure for table transaction_product
-- ----------------------------
ALTER TABLE "transaction"."transaction_product" ADD CONSTRAINT "transaction_product_pkey" PRIMARY KEY ("ttp_id");

-- ----------------------------
-- Foreign Keys structure for table cart_product
-- ----------------------------
ALTER TABLE "transaction"."cart_product" ADD CONSTRAINT "cart_product_tcp_id_cart_fkey" FOREIGN KEY ("tcp_id_cart") REFERENCES "transaction"."cart" ("tc_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "transaction"."cart_product" ADD CONSTRAINT "cart_product_tcp_id_variant_fkey" FOREIGN KEY ("tcp_id_variant") REFERENCES "product"."variant" ("pv_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table transaction
-- ----------------------------
ALTER TABLE "transaction"."transaction" ADD CONSTRAINT "transaction_tt_id_cart_fkey" FOREIGN KEY ("tt_id_cart") REFERENCES "transaction"."cart" ("tc_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table transaction_product
-- ----------------------------
ALTER TABLE "transaction"."transaction_product" ADD CONSTRAINT "transaction_product_ttp_id_transaction_fkey" FOREIGN KEY ("ttp_id_transaction") REFERENCES "transaction"."transaction" ("tt_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "transaction"."transaction_product" ADD CONSTRAINT "transaction_product_ttp_id_variant_fkey" FOREIGN KEY ("ttp_id_variant") REFERENCES "product"."variant" ("pv_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
