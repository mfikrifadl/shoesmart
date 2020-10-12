/*
 Navicat Premium Data Transfer

 Source Server         : Postgre PC
 Source Server Type    : PostgreSQL
 Source Server Version : 120003
 Source Host           : localhost:5432
 Source Catalog        : shoesmart
 Source Schema         : product

 Target Server Type    : PostgreSQL
 Target Server Version : 120003
 File Encoding         : 65001

 Date: 13/10/2020 04:43:19
*/


-- ----------------------------
-- Sequence structure for brand_pb_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "product"."brand_pb_id_seq";
CREATE SEQUENCE "product"."brand_pb_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for category_pc_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "product"."category_pc_id_seq";
CREATE SEQUENCE "product"."category_pc_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for color_pc_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "product"."color_pc_id_seq";
CREATE SEQUENCE "product"."color_pc_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for color_product_pcp_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "product"."color_product_pcp_id_seq";
CREATE SEQUENCE "product"."color_product_pcp_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for img_product_pip_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "product"."img_product_pip_id_seq";
CREATE SEQUENCE "product"."img_product_pip_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for product_category_ppc_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "product"."product_category_ppc_id_seq";
CREATE SEQUENCE "product"."product_category_ppc_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for product_pp_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "product"."product_pp_id_seq";
CREATE SEQUENCE "product"."product_pp_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for size_ps_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "product"."size_ps_id_seq";
CREATE SEQUENCE "product"."size_ps_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for variant_pv_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "product"."variant_pv_id_seq";
CREATE SEQUENCE "product"."variant_pv_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS "product"."brand";
CREATE TABLE "product"."brand" (
  "pb_id" int4 NOT NULL DEFAULT nextval('"product".brand_pb_id_seq'::regclass),
  "pb_title" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "pb_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "pb_update_at" timestamp(6),
  "pb_delete_at" timestamp(6)
)
;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO "product"."brand" VALUES (1, 'Tony Perotti', '2020-10-09 01:34:19.392624', NULL, NULL);
INSERT INTO "product"."brand" VALUES (2, 'Austin', '2020-10-09 01:34:25.237446', NULL, NULL);
INSERT INTO "product"."brand" VALUES (3, 'Bettina', '2020-10-09 01:34:29.954785', NULL, NULL);
INSERT INTO "product"."brand" VALUES (4, 'Bettina Collection', '2020-10-09 01:34:38.666308', NULL, NULL);
INSERT INTO "product"."brand" VALUES (5, 'Clarette', '2020-10-09 01:34:43.547832', NULL, NULL);
INSERT INTO "product"."brand" VALUES (6, 'Clarette Signature', '2020-10-09 01:34:51.2743', NULL, NULL);
INSERT INTO "product"."brand" VALUES (7, 'Inside', '2020-10-09 01:34:58.064116', NULL, NULL);
INSERT INTO "product"."brand" VALUES (8, 'Ghirardelli', '2020-10-09 01:35:15.857749', NULL, NULL);
INSERT INTO "product"."brand" VALUES (9, 'Alseno', '2020-10-09 01:35:22.099006', NULL, NULL);
INSERT INTO "product"."brand" VALUES (10, 'Luis Kremer', '2020-10-09 01:35:34.044811', NULL, NULL);
INSERT INTO "product"."brand" VALUES (78, '4U Footware', '2020-10-09 01:36:31.422726', NULL, NULL);
INSERT INTO "product"."brand" VALUES (32, 'Alseno Kids', '2020-10-09 01:37:24.49096', NULL, NULL);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS "product"."category";
CREATE TABLE "product"."category" (
  "pc_id" int4 NOT NULL DEFAULT nextval('"product".category_pc_id_seq'::regclass),
  "pc_title" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "pc_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "pc_update_at" timestamp(6),
  "pc_delete_at" timestamp(6)
)
;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO "product"."category" VALUES (1, 'Flats', '2020-10-09 13:22:08.360773', NULL, NULL);
INSERT INTO "product"."category" VALUES (6, 'Sneakers', '2020-10-09 13:22:40.967468', NULL, NULL);
INSERT INTO "product"."category" VALUES (7, 'Wedges', '2020-10-09 13:22:51.724208', NULL, NULL);
INSERT INTO "product"."category" VALUES (2, 'Boots', '2020-10-09 13:23:04.694652', NULL, NULL);
INSERT INTO "product"."category" VALUES (25, 'Sandals', '2020-10-09 13:23:27.233125', NULL, NULL);
INSERT INTO "product"."category" VALUES (3, 'test', '2020-10-09 18:35:09', '2020-10-09 18:37:44', '2020-10-09 18:37:44');
INSERT INTO "product"."category" VALUES (4, 'ok', '2020-10-09 18:35:16', '2020-10-09 18:37:46', '2020-10-09 18:37:46');

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS "product"."color";
CREATE TABLE "product"."color" (
  "pc_id" int4 NOT NULL DEFAULT nextval('"product".color_pc_id_seq'::regclass),
  "pc_name" varchar(50) COLLATE "pg_catalog"."default",
  "pc_rgb" varchar(50) COLLATE "pg_catalog"."default",
  "pc_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "pc_update_at" timestamp(6),
  "pc_deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO "product"."color" VALUES (10, 'Blue', '#55b2ca', '2020-10-10 17:58:08.482077', NULL, NULL);
INSERT INTO "product"."color" VALUES (13, 'Purple', '#bf00ff', '2020-10-10 17:58:27.312304', NULL, NULL);
INSERT INTO "product"."color" VALUES (1, 'Black', '#000000', '2020-10-10 17:58:46.709562', NULL, NULL);
INSERT INTO "product"."color" VALUES (20, 'White', '#ffffff', '2020-10-10 17:59:52.247528', NULL, NULL);
INSERT INTO "product"."color" VALUES (9, 'Pink', '#e89bab', '2020-10-10 18:00:44.911994', NULL, NULL);
INSERT INTO "product"."color" VALUES (14, 'Orange', '#ffa500', '2020-10-10 18:01:29.466913', NULL, NULL);
INSERT INTO "product"."color" VALUES (11, 'Navy', '#000080', '2020-10-10 18:02:18.59345', NULL, NULL);
INSERT INTO "product"."color" VALUES (5, 'Beige', '#fff4c6', '2020-10-10 18:02:30.520755', NULL, NULL);
INSERT INTO "product"."color" VALUES (18, 'Grey', '#909497', '2020-10-10 18:02:56.026448', NULL, NULL);
INSERT INTO "product"."color" VALUES (7, 'Red', '#e50b26', '2020-10-10 18:03:37.261581', NULL, NULL);
INSERT INTO "product"."color" VALUES (2, 'Brown', '#964b00', '2020-10-10 18:00:55.696639', '2020-10-11 19:39:28', NULL);

-- ----------------------------
-- Table structure for color_product
-- ----------------------------
DROP TABLE IF EXISTS "product"."color_product";
CREATE TABLE "product"."color_product" (
  "pcp_id" int4 NOT NULL DEFAULT nextval('"product".color_product_pcp_id_seq'::regclass),
  "pcp_id_product" int4 NOT NULL,
  "pcp_id_color" int4 NOT NULL,
  "pcp_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "pcp_update_at" timestamp(6),
  "pcp_deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of color_product
-- ----------------------------
INSERT INTO "product"."color_product" VALUES (1, 3702, 10, '2020-10-10 21:13:21.508211', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (2, 3698, 13, '2020-10-10 21:13:40.834943', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (3, 3699, 1, '2020-10-10 21:14:02.051135', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (4, 3701, 13, '2020-10-10 21:14:13.790392', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (5, 3700, 20, '2020-10-10 21:14:25.994144', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (6, 3697, 9, '2020-10-10 21:14:40.708114', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (7, 2428, 2, '2020-10-10 21:14:51.701409', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (8, 2427, 2, '2020-10-10 21:15:01.947799', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (9, 2424, 1, '2020-10-10 21:15:14.823392', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (10, 2424, 20, '2020-10-10 21:15:20.504339', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (11, 2423, 14, '2020-10-10 21:15:39.553323', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (12, 2422, 11, '2020-10-10 21:16:38.778233', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (13, 2426, 14, '2020-10-10 21:16:54.133332', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (16, 2437, 5, '2020-10-10 21:17:25.409736', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (17, 2437, 7, '2020-10-10 21:17:32.451302', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (18, 2439, 18, '2020-10-10 21:17:49.873724', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (19, 2439, 11, '2020-10-10 21:17:57.753298', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (20, 2441, 1, '2020-10-10 21:18:14.794627', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (21, 2441, 11, '2020-10-10 21:18:22.056095', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (22, 2443, 2, '2020-10-10 21:18:43.148309', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (23, 2443, 7, '2020-10-10 21:18:46.142936', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (24, 2438, 18, '2020-10-10 21:18:58.86643', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (25, 2438, 11, '2020-10-10 21:19:03.90934', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (26, 2440, 1, '2020-10-10 21:20:14.003551', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (27, 2442, 2, '2020-10-10 21:20:22.816997', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (28, 2425, 1, '2020-10-10 21:20:36.722826', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (29, 2425, 2, '2020-10-10 21:20:44.165025', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (30, 2429, 2, '2020-10-10 21:21:02.256213', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (32, 2429, 14, '2020-10-10 21:21:17.260587', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (33, 2431, 2, '2020-10-10 21:21:26.068991', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (34, 2436, 5, '2020-10-10 21:21:41.24323', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (35, 2434, 5, '2020-10-10 21:22:13.933934', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (37, 2434, 1, '2020-10-10 21:22:37.880451', NULL, NULL);
INSERT INTO "product"."color_product" VALUES (38, 1954001120, 11, '2020-10-11 15:46:45', '2020-10-11 15:46:45', NULL);
INSERT INTO "product"."color_product" VALUES (39, 1063940320, 10, '2020-10-11 15:49:35', '2020-10-11 15:49:35', NULL);
INSERT INTO "product"."color_product" VALUES (69, 1682775643, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."color_product" VALUES (70, 1682775643, 1, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."color_product" VALUES (73, 1632173260, 10, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."color_product" VALUES (74, 1632173260, 11, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);

-- ----------------------------
-- Table structure for img_product
-- ----------------------------
DROP TABLE IF EXISTS "product"."img_product";
CREATE TABLE "product"."img_product" (
  "pip_id" int4 NOT NULL DEFAULT nextval('"product".img_product_pip_id_seq'::regclass),
  "pip_id_product" int4 NOT NULL,
  "pip_img_path" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "pip_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "pip_update_at" timestamp(6),
  "pip_deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of img_product
-- ----------------------------
INSERT INTO "product"."img_product" VALUES (2, 3702, 'thumb_601.BLUE.2.jpeg', '2020-10-09 14:45:33.315201', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (3, 3698, 'thumb_201.PURPLE.1.jpeg', '2020-10-09 14:49:37.680508', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (5, 3698, 'thumb_201.PURPLE.2.jpeg', '2020-10-09 14:50:08.59722', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (6, 3699, 'thumb_301.BLACK.1.jpeg', '2020-10-09 14:51:42.218302', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (7, 3699, 'thumb_301.BLACK.2.jpeg', '2020-10-09 14:51:55.988665', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (8, 3701, 'thumb_501.PURPLE.1.jpeg', '2020-10-09 14:53:14.260301', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (9, 3701, 'thumb_501.PURPLE.2.jpeg', '2020-10-09 14:53:26.168465', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (10, 3700, 'thumb_401.WHITE.1.jpeg', '2020-10-09 14:54:54.671513', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (11, 3700, 'thumb_401.WHITE.2.jpeg', '2020-10-09 14:55:05.918233', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (12, 3697, 'thumb_101.PINK.1.jpeg', '2020-10-09 14:56:48.908433', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (13, 3697, 'thumb_101.PINK.2.jpeg', '2020-10-09 14:57:02.981452', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (17, 2428, 'thumb_T612ALB07B.BROWN.2.jpeg', '2020-10-09 14:59:40.052999', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (16, 2428, 'thumb_T612ALB07B.BROWN.1.jpeg', '2020-10-09 14:59:32.307558', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (20, 2427, 'thumb_T612ALB06B.BROWN.2.jpeg', '2020-10-09 15:06:08.246105', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (18, 2427, 'thumb_T612ALB06B.BROWN.1.jpeg', '2020-10-09 15:04:50.663509', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (21, 2424, 'thumb_A612ALA014.BLACK.1.jpeg', '2020-10-09 15:14:40', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (22, 2424, 'thumb_A612ALA014.BLACK.2.jpeg', '2020-10-09 15:19:46', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (23, 2424, 'thumb_A612ALA014.WHITE.1.jpeg', '2020-10-09 15:20:55', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (24, 2424, 'thumb_A612ALA014.WHITE.2.jpeg', '2020-10-09 15:21:20', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (25, 2423, 'thumb_A612ALA013.ORANGE.1.jpeg', '2020-10-09 15:23:59', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (26, 2423, 'thumb_A612ALA013.ORANGE.2.jpeg', '2020-10-09 15:24:20', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (27, 2422, 'thumb_A612ALA012.NAVY.1.jpeg', '2020-10-09 15:26:12', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (28, 2422, 'thumb_A612ALA012.NAVY.2.jpeg', '2020-10-09 15:26:30', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (29, 2426, 'thumb_A704ALA20.ORANGE.1.jpeg', '2020-10-09 15:28:10', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (30, 2426, 'thumb_A704ALA20.ORANGE.2.jpeg', '2020-10-09 15:28:26', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (31, 2437, 'thumb_T704ALA15B.BEIGE.1.jpeg', '2020-10-09 15:32:42', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (32, 2437, 'thumb_T704ALA15B.BEIGE.2.jpeg', '2020-10-09 15:33:00', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (33, 2437, 'thumb_T704ALA15B.RED.1.jpeg', '2020-10-09 15:33:33', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (34, 2437, 'thumb_T704ALA15B.RED.2.jpeg', '2020-10-09 15:33:49', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (35, 2439, 'thumb_T704ALA16B.GREY.1.jpeg', '2020-10-09 15:35:49', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (36, 2439, 'thumb_T704ALA16B.GREY.2.jpeg', '2020-10-09 15:36:04', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (37, 2439, 'thumb_T704ALA16B.NAVY.1.jpeg', '2020-10-09 15:36:21', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (38, 2439, 'thumb_T704ALA16B.NAVY.2.jpeg', '2020-10-09 15:36:35', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (39, 2441, 'thumb_T704ALA17B.BLACK.1.jpeg', '2020-10-09 15:40:55', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (40, 2441, 'thumb_T704ALA17B.BLACK.2.jpeg', '2020-10-09 15:41:10', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (41, 2441, 'thumb_T704ALA17B.NAVY.1.jpeg', '2020-10-09 15:41:28', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (42, 2441, 'thumb_T704ALA17B.NAVY.2.jpeg', '2020-10-09 15:41:43', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (43, 2443, 'thumb_T704ALA18B.BROWN.1.jpeg', '2020-10-09 15:43:37', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (44, 2443, 'thumb_T704ALA18B.BROWN.2.jpeg', '2020-10-09 15:43:50', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (45, 2443, 'thumb_T704ALA18B.RED.1.jpeg', '2020-10-09 15:44:06', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (46, 2443, 'thumb_T704ALA18B.RED.2.jpeg', '2020-10-09 16:28:35', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (47, 2438, 'thumb_T704ALA16A.GREY.1.jpeg', '2020-10-09 16:34:47', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (48, 2438, 'thumb_T704ALA16A.GREY.2.jpeg', '2020-10-09 16:35:11', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (49, 2438, 'thumb_T704ALA16A.NAVY.1.jpeg', '2020-10-09 16:35:24', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (50, 2438, 'thumb_T704ALA16A.NAVY.2.jpeg', '2020-10-09 16:35:40', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (51, 2440, 'thumb_T704ALA17A.BLACK.1.jpeg', '2020-10-09 16:37:19', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (52, 2440, 'thumb_T704ALA17A.BLACK.2.jpeg', '2020-10-09 16:37:39', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (53, 2442, 'thumb_T704ALA18A.BROWN.1.jpeg', '2020-10-09 16:38:43', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (54, 2442, 'thumb_T704ALA18A.BROWN.2.jpeg', '2020-10-09 16:38:56', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (55, 2425, 'thumb_A704ALA19.BLACK.1.jpeg', '2020-10-09 16:40:20', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (56, 2425, 'thumb_A704ALA19.BLACK.2.jpeg', '2020-10-09 16:40:36', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (57, 2425, 'thumb_A704ALA19.BROWN.1.jpeg', '2020-10-09 16:40:50', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (58, 2425, 'thumb_A704ALA19.BROWN.2.jpeg', '2020-10-09 16:41:02', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (59, 2429, 'thumb_T612ALB08A.BROWN.1.jpeg', '2020-10-09 16:42:53', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (60, 2429, 'thumb_T612ALB08A.BROWN.2.jpeg', '2020-10-09 16:43:07', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (61, 2429, 'thumb_T612ALB08A.ORANGE.1.jpeg', '2020-10-09 16:43:18', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (62, 2429, 'thumb_T612ALB08A.ORANGE.2.jpeg', '2020-10-09 16:43:31', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (63, 2431, 'thumb_T612ALB09A.BROWN.1.jpeg', '2020-10-09 16:44:26', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (64, 2431, 'thumb_T612ALB09A.BROWN.2.jpeg', '2020-10-09 16:44:39', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (65, 2436, 'thumb_T612ALB14B.BEIGE.1.jpeg', '2020-10-09 16:46:42', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (66, 2436, 'thumb_T612ALB14B.BEIGE.2.jpeg', '2020-10-09 16:46:58', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (67, 2434, 'thumb_T612ALB10B.BEIGE.1.jpeg', '2020-10-09 16:48:38', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (68, 2434, 'thumb_T612ALB10B.BEIGE.2.jpeg', '2020-10-09 16:48:56', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (69, 2434, 'thumb_T612ALB10B.BLACK.1.jpeg', '2020-10-09 16:49:08', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (70, 2434, 'thumb_T612ALB10B.BLACK.2.jpeg', '2020-10-09 16:49:22', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (1, 3702, 'thumb_601.BLUE.1.jpeg', '2020-10-09 14:45:08.720069', NULL, NULL);
INSERT INTO "product"."img_product" VALUES (71, 930903235, '1602431181_paris-2017-home.jpeg', '2020-10-11 15:46:21', '2020-10-11 15:46:21', NULL);
INSERT INTO "product"."img_product" VALUES (72, 1954001120, '1602431205_paris-2017-home.jpeg', '2020-10-11 15:46:45', '2020-10-11 15:46:45', NULL);
INSERT INTO "product"."img_product" VALUES (73, 1063940320, '1602431375_presiden-amerika-serikat-donald-trump.jpg', '2020-10-11 15:49:35', '2020-10-11 15:49:35', NULL);
INSERT INTO "product"."img_product" VALUES (74, 1682775643, '1602431452_adidas.jpg', '2020-10-11 15:50:52', '2020-10-11 19:14:57', '2020-10-11 19:14:57');
INSERT INTO "product"."img_product" VALUES (75, 1682775643, '1602446651_adidas.jpg', '2020-10-11 20:04:11', '2020-10-11 20:04:11', NULL);
INSERT INTO "product"."img_product" VALUES (76, 1632173260, '1602529654_adidas.jpg', '2020-10-12 19:07:34', '2020-10-12 19:07:34', NULL);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS "product"."product";
CREATE TABLE "product"."product" (
  "pp_id" int4 NOT NULL DEFAULT nextval('"product".product_pp_id_seq'::regclass),
  "pp_id_brand" int4 NOT NULL,
  "pp_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "pp_sku" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "pp_price" int8 NOT NULL,
  "pp_description" varchar(5000) COLLATE "pg_catalog"."default",
  "pp_is_displayed" bool NOT NULL DEFAULT true,
  "pp_start_promo" timestamp(6),
  "pp_end_promo" timestamp(6),
  "pp_promo_price" int8,
  "pp_gender" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "pp_material_upper" varchar(50) COLLATE "pg_catalog"."default",
  "pp_material_outer_sole" varchar(50) COLLATE "pg_catalog"."default",
  "pp_care_label" varchar(1000) COLLATE "pg_catalog"."default",
  "pp_measurements" varchar(5000) COLLATE "pg_catalog"."default",
  "pp_final_price" int8 NOT NULL,
  "pp_most_sold_product_color_id" int4,
  "pp_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "pp_update_at" timestamp(6),
  "pp_delete_at" timestamp(6),
  "pp_slug" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO "product"."product" VALUES (3697, 78, '4U Wedges Fanta', '101', 160000, '<p>Material : Kanvas, Inner : Double Suede, Outsole : Javarino antislip Panjang Insole : 25.5cm<\/p>', 't', '2019-09-14 00:01:00', '2020-06-30 23:30:00', 50000, 'female', 'Kanvas', 'Javarino', 'Hindari mencuci dengan detergent berlebih. Gunakan shampoo untuk mempertahankan warna produk.', '<p>36= 22cm.<br \/><br\/>37= 23cm.<br \/><br\/>38= 24cm.<br \/><br\/>39= 25cm.<br \/><br\/>40= 25.5cm.</p>', 160000, 6759, '2020-03-03 15:20:00', '2020-07-30 18:09:30', NULL, '4u-wedges-fanta');
INSERT INTO "product"."product" VALUES (3700, 78, '4U Sneakers Rose', '401', 160000, '<p>Material : Kanvas, Inner : Double Suede, Outsole : Karet pvc Panjang Insole : 25.5cm<\/p>', 't', '2019-09-14 00:01:00', '2020-06-30 23:30:00', 50000, 'female', 'Kanvas', 'Karet pvc', 'Hindari mencuci dengan detergent berlebih. Gunakan shampoo untuk mempertahankan warna produk.', '<p>36= 22cm.<br \/><br\/>37= 23cm.<br \/><br\/>38= 24cm.<br \/><br\/>39= 25cm.<br \/><br\/>40= 25.5cm.<\/p>', 160000, 6762, '2020-03-03 15:20:00', '2020-07-30 18:09:33', NULL, '4u-sneakers-rose');
INSERT INTO "product"."product" VALUES (3701, 78, '4U Flats Strapped', '501', 160000, '<p>Material : Kanvas, Inner : Double Suede, Outsole : Javarino antislip Panjang Insole : 25.5cm<\/p>', 't', '2019-09-14 00:01:00', '2020-10-11 23:30:00', 50000, 'female', 'Kanvas', 'Javarino', 'Hindari mencuci dengan detergent berlebih. Gunakan shampoo untuk mempertahankan warna produk.', '<p>36= 22cm.<br \/><br\/>37= 23cm.<br \/><br\/>38= 24cm.<br \/><br\/>39= 25cm.<br \/><br\/>40= 25.5cm.<\/p>', 160000, NULL, '2020-03-03 15:20:00', '2020-07-30 18:09:34', NULL, '4u-flats-strapped');
INSERT INTO "product"."product" VALUES (2440, 32, 'Alseno Kids Sandals Bruce', 'T704ALA17A', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Black<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>22 = 13,5 cm<br \/><br\/><br \/><br\/>23 = 14 cm<br \/><br\/><br \/><br\/>24 = 14,5 cm<br \/><br\/><br \/><br\/>25 = 15,5 cm<\/p>', 89000, NULL, '2019-04-23 19:40:45', '2020-08-14 15:44:17', NULL, 'alseno-kids-sandals-bruce');
INSERT INTO "product"."product" VALUES (2424, 32, 'Alseno Kids Sandal Alfonse', 'A612ALA014', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Black dan White<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/>33 = 21 cm<br \/><br\/><br \/><br\/>34 = 21,5 cm<br \/><br\/><br \/><br\/>35 = 22 cm<\/p>', 89000, 4706, '2019-04-23 19:40:43', '2020-10-10 13:29:26', NULL, 'alseno-kids-sandal-alfonse');
INSERT INTO "product"."product" VALUES (2423, 32, 'Alseno Kids Sandal Alistair', 'A612ALA013', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Orange<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/>33 = 21 cm<br \/><br\/><br \/><br\/>34 = 21,5 cm<br \/><br\/><br \/><br\/>35 = 22 cm<\/p>', 89000, 4705, '2019-04-23 19:40:43', '2020-10-09 15:31:05', '2020-10-09 15:31:05', 'alseno-kids-sandal-alistair');
INSERT INTO "product"."product" VALUES (3702, 78, '4U Flats Cutaway', '601', 160000, '<p>Material : Kanvas, Inner : Double Suede, Outsole : Javarino antislip Panjang Insole : 25.5cm</p>', 't', '2019-09-14 00:01:00', '2020-06-30 23:30:00', 50000, 'female', 'Kanvas', 'Javarino', 'Hindari mencuci dengan detergent berlebih. Gunakan shampoo untuk mempertahankan warna produk.', '<p>36= 22cm.<br \/><br\/>37= 23cm.<br \/><br\/>38= 24cm.<br \/><br\/>39= 25cm.<br \/><br\/>40= 25.5cm.<\/p>', 160000, 6764, '2020-03-03 15:20:00', '2020-07-30 18:09:34', NULL, '4u-flats-cutaway');
INSERT INTO "product"."product" VALUES (2437, 32, 'Alseno Kids Sandals Bastian', 'T704ALA15B', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/>- Terdapat motif jahit<br \/><br\/><br \/><br\/>- Warna Beige dan Red<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>26 = 16 cm<br \/><br\/><br \/><br\/>27 = 17 cm<br \/><br\/><br \/><br\/>28 = 17,5 cm<br \/><br\/><br \/><br\/>29 = 18 cm<br \/><br\/><br \/><br\/>30 = 18,5 cm<\/p>', 89000, NULL, '2019-04-23 19:40:44', '2020-08-14 15:44:16', NULL, 'alseno-kids-sandals-bastian');
INSERT INTO "product"."product" VALUES (2439, 32, 'Alseno Kids Sandals Beck', 'T704ALA16B', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Navy dan Grey<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>26 = 16 cm<br \/><br\/><br \/><br\/>27 = 17 cm<br \/><br\/><br \/><br\/>28 = 17,5 cm<br \/><br\/><br \/><br\/>29 = 18 cm<br \/><br\/><br \/><br\/>30 = 18,5 cm<\/p>', 89000, 4728, '2019-04-23 19:40:45', '2020-08-14 15:44:17', NULL, 'alseno-kids-sandals-beck');
INSERT INTO "product"."product" VALUES (2441, 32, 'Alseno Kids Sandals Benedict', 'T704ALA17B', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Black dan Navy<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>26 = 16,5 cm<br \/><br\/><br \/><br\/>27 = 17 cm<br \/><br\/><br \/><br\/>28 = 17,5 cm<br \/><br\/><br \/><br\/>29 = 18 cm<br \/><br\/><br \/><br\/>30 = 18,5 cm<\/p>', 89000, NULL, '2019-04-23 19:40:45', '2020-08-14 15:44:17', NULL, 'alseno-kids-sandals-benedict');
INSERT INTO "product"."product" VALUES (2443, 32, 'Alseno Kids Sandals Bennett', 'T704ALA18B', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Warna Brown dan Red<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>26 = 16 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>27 = 17 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>28 = 17,5 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>29 = 18 cm<br \/><br\/><br \/><br', 89000, NULL, '2019-04-23 19:40:45', '2020-08-14 15:44:17', NULL, 'alseno-kids-sandals-bennett');
INSERT INTO "product"."product" VALUES (2426, 32, 'Alseno Kids Sandals Barry', 'A704ALA20', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Orange<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>22 = 15 cm<br \/><br\/><br \/><br\/>23 = 15,5 cm<br \/><br\/><br \/><br\/>24 = 16 cm<br \/><br\/><br \/><br\/>25 = 16,5 cm<br \/><br\/><br \/><br\/>26 = 17,5 cm<\/p>', 89000, NULL, '2019-04-23 19:40:43', '2020-10-11 16:04:14', NULL, 'alseno-kids-sandals-barry');
INSERT INTO "product"."product" VALUES (3698, 78, '4U Flats Side 201', '201', 160000, '<p>Material : Kanvas, Inner : Double Suede, Outsole : Javarino antislip Panjang Insole : 25.5cm<\/p>', 't', '2019-09-14 00:01:00', '2020-06-30 23:30:00', 50000, 'female', 'Kanvas', 'Javarino', 'Hindari mencuci dengan detergent berlebih. Gunakan shampoo untuk mempertahankan warna produk.', '<p>36= 22cm.<br \/><br\/>37= 23cm.<br \/><br\/>38= 24cm.<br \/><br\/>39= 25cm.<br \/><br\/>40= 25.5cm.<\/p>', 160000, 6760, '2020-03-03 15:20:00', '2020-07-30 18:09:30', NULL, '4u-flats-side-201');
INSERT INTO "product"."product" VALUES (3699, 78, '4U Flats Side 301', '301', 160000, '<p>Material : Kanvas, Inner : Double Suede, Outsole : Karet lentur dan anti licin Panjang Insole : 25.5cm<\/p>', 't', '2019-09-14 00:01:00', '2020-06-30 23:30:00', 50000, 'female', 'Kanvas', 'Karet', 'Hindari mencuci dengan detergent berlebih. Gunakan shampoo untuk mempertahankan warna produk.', '<p>36= 22cm.<br \/><br\/>37= 23cm.<br \/><br\/>38= 24cm.<br \/><br\/>39= 25cm.<br \/><br\/>40= 25.5cm.<\/p>', 160000, 6761, '2020-03-03 15:20:00', '2020-07-30 18:09:32', NULL, '4u-flats-side-301');
INSERT INTO "product"."product" VALUES (2442, 32, 'Alseno Kids Sandals Buck', 'T704ALA18A', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Brown<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>22 = 13,5 cm<br \/><br\/><br \/><br\/>23 = 14 cm<br \/><br\/><br \/><br\/>24 = 14,5 cm<br \/><br\/><br \/><br\/>25 = 15,5 cm<\/p>', 89000, NULL, '2019-04-23 19:40:45', '2020-08-14 15:44:17', NULL, 'alseno-kids-sandals-buck');
INSERT INTO "product"."product" VALUES (2425, 32, 'Alseno Kids Sandals Buster', 'A704ALA19', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Black dan Brown<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>22 = 15 cm<br \/><br\/><br \/><br\/>23 = 15,5 cm<br \/><br\/><br \/><br\/>24 = 16 cm<br \/><br\/><br \/><br\/>25 = 16,5 cm<br \/><br\/><br \/><br\/>26 = 17,5 cm<\/p>', 89000, NULL, '2019-04-23 19:40:43', '2020-10-09 15:17:25', NULL, 'alseno-kids-sandals-buster');
INSERT INTO "product"."product" VALUES (2429, 32, 'Alseno Kids Sneakers Alois Jr', 'T612ALB08A', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/>- Terdapat motif jahit<br \/><br\/><br \/><br\/>- Warna Orange dan Brown.<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 99000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>26 = 17 cm<br \/><br\/><br \/><br\/>27 = 17,5 cm<br \/><br\/><br \/><br\/>28 = 18 cm<br \/><br\/><br \/><br\/>29 = 18,5 cm<br \/><br\/><br \/><br\/>30 = 19 cm<\/p>', 99000, NULL, '2019-04-23 19:40:44', '2020-08-14 15:44:15', NULL, 'alseno-kids-sneakers-alois-jr');
INSERT INTO "product"."product" VALUES (2436, 32, 'Alseno Kids Sneakers Arkana', 'T612ALB14B', 649000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/>- Terdapat motif jahit dan hook-pile<br \/><br\/><br \/><br\/>- Warna Beige dan Brown.<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 99000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/>33 = 21 cm<br \/><br\/><br \/><br\/>34 = 21,5 cm<br \/><br\/><br \/><br\/>35 = 22,5 cm<\/p>', 99000, NULL, '2019-04-23 19:40:44', '2020-08-14 15:44:15', NULL, 'alseno-kids-sneakers-arkana');
INSERT INTO "product"."product" VALUES (2434, 32, 'Alseno Kids Sneakers Arlen', 'T612ALB10B', 649000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/>- Terdapat motif jahit<br \/><br\/><br \/><br\/>- Warna Black dan Beige<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 99000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/>33 = 21 cm<br \/><br\/><br \/><br\/>34 = 21,5 cm<br \/><br\/><br \/><br\/>35 = 22,5 cm<\/p>', 99000, NULL, '2019-04-23 19:40:44', '2020-08-14 15:44:15', NULL, 'alseno-kids-sneakers-arlen');
INSERT INTO "product"."product" VALUES (2431, 32, 'Alseno Kids Sneakers Amire Jr', 'T612ALB09A', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/>- Terdapat motif jahit dan hook-pile<br \/><br\/><br \/><br\/>- Warna Brown.<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 99000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>26 = 17 cm<br \/><br\/><br \/><br\/>27 = 17,5 cm<br \/><br\/><br \/><br\/>28 = 18 cm<br \/><br\/><br \/><br\/>29 = 18,5 cm<br \/><br\/><br \/><br\/>30 = 19 cm<\/p>', 99000, NULL, '2019-04-23 19:40:44', '2020-08-14 15:44:15', NULL, 'alseno-kids-sneakers-amire-jr');
INSERT INTO "product"."product" VALUES (2428, 32, 'Alseno Kids Boots Archibald', 'T612ALB07B', 649000, '<p>Product Description:<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Terdapat motif jahit dan hook-pile<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Warna Brown.<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 99000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><', 99000, 4712, '2019-04-23 19:40:44', '2020-08-14 15:44:15', NULL, 'alseno-kids-boots-archibald');
INSERT INTO "product"."product" VALUES (2422, 32, 'Alseno Kids Sandal Ayrton', 'A612ALA012', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Warna Navy<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><', 89000, 4704, '2019-04-23 19:40:43', '2020-08-14 15:41:43', NULL, 'alseno-kids-sandal-ayrton');
INSERT INTO "product"."product" VALUES (2438, 32, 'Alseno Kids Sandals Brodie', 'T704ALA16A', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Navy dan Grey<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>22 = 13,5 cm<br \/><br\/><br \/><br\/>23 = 14 cm<br \/><br\/><br \/><br\/>24 = 14,5 cm<br \/><br\/><br \/><br\/>25 = 15,5 cm<\/p>', 89000, 4726, '2019-04-23 19:40:45', '2020-08-14 15:44:17', NULL, 'alseno-kids-sandals-brodie');
INSERT INTO "product"."product" VALUES (1954001120, 78, 'vans', '123123', 300000, '<p>Semangat</p>', 'f', '2020-10-15 00:00:00', '2020-10-29 00:00:00', 100000, 'male', 'Suede', 'Gum', 'OK', '<p>Siap</p>', 300000, NULL, '2020-10-11 15:46:45', '2020-10-11 15:46:57', '2020-10-11 15:46:57', 'vans');
INSERT INTO "product"."product" VALUES (930903235, 78, 'vans', '123123', 300000, '<p>Semangat</p>', 'f', '2020-10-15 00:00:00', '2020-10-29 00:00:00', 100000, 'male', 'Suede', 'Gum', 'OK', '<p>Siap</p>', 300000, NULL, '2020-10-11 15:46:21', '2020-10-11 15:47:00', '2020-10-11 15:47:00', 'vans');
INSERT INTO "product"."product" VALUES (1063940320, 5, 'Alseno Kids Sandals Barry', '123123', 123213, '<p>qwdqwd</p>', 't', NULL, NULL, NULL, 'male', 'qcq', 'qwdqwd', 'qwdqwd', '<p>qwdqwd</p>', 123213, NULL, '2020-10-11 15:49:35', '2020-10-11 15:56:59', '2020-10-11 15:56:59', 'alseno-kids-sandals-barry');
INSERT INTO "product"."product" VALUES (2427, 32, 'Alseno Kids Boots Aston', 'T612ALB06B', 649000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/>- Terdapat motif jahit dan aksesoris zipper<br \/><br\/><br \/><br\/>- Warna Brown<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 99000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/>33 = 21 cm<br \/><br\/><br \/><br\/>34 = 21,5 cm<br \/><br\/><br \/><br\/>35 = 22,5 cm<\/p>', 99000, 4711, '2019-04-23 19:40:43', '2020-10-11 17:50:34', NULL, 'alseno-kids-boots-aston');
INSERT INTO "product"."product" VALUES (1632173260, 78, 'Adidas Gazelle', 'V123', 500000, '<p>Tahan 5 tahun</p>', 't', NULL, NULL, 100000, 'male', 'Suede', 'Gum', 'Siap Tempur', '<p>Tidak Mudah Sobek</p>', 500000, NULL, '2020-10-12 19:07:34', '2020-10-12 19:09:02', NULL, 'adidas-gazelle');
INSERT INTO "product"."product" VALUES (1682775643, 78, 'Adidas', '123123', 500000, '<p>ko</p>', 't', '2020-10-09 00:00:00', '2020-10-14 00:00:00', 100000, 'male', 'Suede', 'Gum', 'ok', '<p>ok</p>', 500000, NULL, '2020-10-11 15:50:52', '2020-10-12 19:00:45', '2020-10-12 19:00:45', 'adidas');

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS "product"."product_category";
CREATE TABLE "product"."product_category" (
  "ppc_id" int4 NOT NULL DEFAULT nextval('"product".product_category_ppc_id_seq'::regclass),
  "ppc_id_product" int4 NOT NULL,
  "ppc_id_category" int4 NOT NULL,
  "ppc_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "ppc_update_at" timestamp(6),
  "ppc_deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO "product"."product_category" VALUES (1, 3702, 1, '2020-10-09 13:30:49.039494', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (2, 3698, 1, '2020-10-09 13:31:08.940321', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (3, 3699, 1, '2020-10-09 13:31:38.621955', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (4, 3701, 1, '2020-10-09 13:31:56.465797', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (5, 3700, 6, '2020-10-09 13:34:41.408729', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (6, 3697, 7, '2020-10-09 13:34:59.931698', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (7, 2428, 2, '2020-10-09 13:36:02.330035', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (8, 2427, 2, '2020-10-09 13:36:20.460463', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (9, 2424, 25, '2020-10-09 13:37:22.923461', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (10, 2423, 25, '2020-10-09 13:37:47.432327', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (11, 2422, 25, '2020-10-09 13:41:00.608789', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (12, 2426, 25, '2020-10-09 13:41:20.156223', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (13, 2437, 25, '2020-10-09 13:42:19.82776', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (14, 2439, 25, '2020-10-09 13:50:56.249623', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (15, 2441, 25, '2020-10-09 13:52:53.020573', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (16, 2443, 25, '2020-10-09 13:54:03.402089', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (17, 2438, 25, '2020-10-09 13:54:32.406363', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (18, 2440, 25, '2020-10-09 13:55:15.500391', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (19, 2442, 25, '2020-10-09 13:55:33.214334', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (20, 2425, 25, '2020-10-09 13:55:56.043485', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (21, 2429, 6, '2020-10-09 13:56:16.962194', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (22, 2431, 6, '2020-10-09 13:56:43.102195', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (23, 2436, 6, '2020-10-09 13:57:04.275566', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (24, 2434, 6, '2020-10-09 13:57:27.46288', NULL, NULL);
INSERT INTO "product"."product_category" VALUES (25, 930903235, 6, '2020-10-11 15:46:21', '2020-10-11 15:46:21', NULL);
INSERT INTO "product"."product_category" VALUES (26, 1954001120, 6, '2020-10-11 15:46:45', '2020-10-11 15:46:45', NULL);
INSERT INTO "product"."product_category" VALUES (27, 1063940320, 1, '2020-10-11 15:49:35', '2020-10-11 15:49:35', NULL);
INSERT INTO "product"."product_category" VALUES (28, 1063940320, 6, '2020-10-11 15:49:35', '2020-10-11 15:49:35', NULL);
INSERT INTO "product"."product_category" VALUES (29, 1063940320, 7, '2020-10-11 15:49:35', '2020-10-11 15:49:35', NULL);
INSERT INTO "product"."product_category" VALUES (45, 1682775643, 6, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."product_category" VALUES (47, 1632173260, 6, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);

-- ----------------------------
-- Table structure for size
-- ----------------------------
DROP TABLE IF EXISTS "product"."size";
CREATE TABLE "product"."size" (
  "ps_id" int4 NOT NULL DEFAULT nextval('"product".size_ps_id_seq'::regclass),
  "ps_size" int4 NOT NULL,
  "ps_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "ps_update_at" timestamp(6),
  "ps_deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO "product"."size" VALUES (5, 5, '2020-10-10 18:53:39.201358', NULL, NULL);
INSERT INTO "product"."size" VALUES (15, 15, '2020-10-10 18:53:48.159083', NULL, NULL);
INSERT INTO "product"."size" VALUES (16, 16, '2020-10-10 18:53:54.031712', NULL, NULL);
INSERT INTO "product"."size" VALUES (20, 20, '2020-10-10 18:54:19.643545', NULL, NULL);
INSERT INTO "product"."size" VALUES (21, 21, '2020-10-10 18:54:23.911952', NULL, NULL);
INSERT INTO "product"."size" VALUES (22, 22, '2020-10-10 18:54:29.623588', NULL, NULL);
INSERT INTO "product"."size" VALUES (23, 23, '2020-10-10 18:54:37.136518', NULL, NULL);
INSERT INTO "product"."size" VALUES (24, 24, '2020-10-10 18:54:42.087303', NULL, NULL);
INSERT INTO "product"."size" VALUES (25, 25, '2020-10-10 18:54:46.766138', NULL, NULL);
INSERT INTO "product"."size" VALUES (26, 26, '2020-10-10 18:54:53.384083', NULL, NULL);
INSERT INTO "product"."size" VALUES (27, 27, '2020-10-10 18:54:57.482124', NULL, NULL);
INSERT INTO "product"."size" VALUES (28, 28, '2020-10-10 18:55:01.315732', NULL, NULL);
INSERT INTO "product"."size" VALUES (29, 29, '2020-10-10 18:55:05.486066', NULL, NULL);
INSERT INTO "product"."size" VALUES (30, 30, '2020-10-10 18:55:09.410969', NULL, NULL);
INSERT INTO "product"."size" VALUES (31, 31, '2020-10-10 18:55:14.913793', NULL, NULL);
INSERT INTO "product"."size" VALUES (32, 32, '2020-10-10 18:55:18.608892', NULL, NULL);
INSERT INTO "product"."size" VALUES (33, 33, '2020-10-10 18:55:25.492078', NULL, NULL);
INSERT INTO "product"."size" VALUES (34, 34, '2020-10-10 18:55:30.974699', NULL, NULL);
INSERT INTO "product"."size" VALUES (35, 35, '2020-10-10 18:55:35.89954', NULL, NULL);
INSERT INTO "product"."size" VALUES (36, 36, '2020-10-10 18:55:40.972482', NULL, NULL);
INSERT INTO "product"."size" VALUES (37, 37, '2020-10-10 18:55:44.983355', NULL, NULL);
INSERT INTO "product"."size" VALUES (38, 38, '2020-10-10 18:55:48.704048', NULL, NULL);
INSERT INTO "product"."size" VALUES (39, 39, '2020-10-10 18:55:52.317242', NULL, NULL);
INSERT INTO "product"."size" VALUES (40, 40, '2020-10-10 18:55:57.573659', NULL, NULL);
INSERT INTO "product"."size" VALUES (41, 41, '2020-10-10 18:56:02.031543', NULL, NULL);
INSERT INTO "product"."size" VALUES (42, 42, '2020-10-10 18:56:08.093473', NULL, NULL);
INSERT INTO "product"."size" VALUES (43, 43, '2020-10-10 18:56:12.887916', NULL, NULL);
INSERT INTO "product"."size" VALUES (44, 44, '2020-10-10 18:56:49.939656', NULL, NULL);
INSERT INTO "product"."size" VALUES (45, 45, '2020-10-10 18:56:53.539979', NULL, NULL);
INSERT INTO "product"."size" VALUES (46, 46, '2020-10-10 18:57:04.365904', NULL, NULL);
INSERT INTO "product"."size" VALUES (47, 47, '2020-10-10 18:57:09.623666', NULL, NULL);
INSERT INTO "product"."size" VALUES (17, 17, '2020-10-10 18:54:01.596937', '2020-10-11 19:41:03', NULL);
INSERT INTO "product"."size" VALUES (18, 18, '2020-10-10 18:54:10.321421', '2020-10-11 19:41:03', NULL);
INSERT INTO "product"."size" VALUES (19, 19, '2020-10-10 18:54:13.884237', '2020-10-11 19:41:03', NULL);

-- ----------------------------
-- Table structure for variant
-- ----------------------------
DROP TABLE IF EXISTS "product"."variant";
CREATE TABLE "product"."variant" (
  "pv_id" int4 NOT NULL DEFAULT nextval('"product".variant_pv_id_seq'::regclass),
  "pv_id_product" int4 NOT NULL,
  "pv_id_color" int4 NOT NULL,
  "pv_id_size" int4 NOT NULL,
  "pv_stock" int4 NOT NULL DEFAULT 0,
  "pv_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "pv_update_at" timestamp(6),
  "pv_deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of variant
-- ----------------------------
INSERT INTO "product"."variant" VALUES (1, 3702, 10, 36, 2, '2020-10-10 19:06:04.514745', NULL, NULL);
INSERT INTO "product"."variant" VALUES (2, 3702, 10, 37, 2, '2020-10-10 19:06:04.514745', NULL, NULL);
INSERT INTO "product"."variant" VALUES (3, 3702, 10, 38, 2, '2020-10-10 19:07:58.742206', NULL, NULL);
INSERT INTO "product"."variant" VALUES (4, 3702, 10, 39, 2, '2020-10-10 19:08:26.271905', NULL, NULL);
INSERT INTO "product"."variant" VALUES (6, 3698, 13, 36, 2, '2020-10-10 19:25:57.889472', NULL, NULL);
INSERT INTO "product"."variant" VALUES (8, 3698, 13, 37, 2, '2020-10-10 19:26:32.344977', NULL, NULL);
INSERT INTO "product"."variant" VALUES (9, 3698, 13, 38, 2, '2020-10-10 19:26:44.741947', NULL, NULL);
INSERT INTO "product"."variant" VALUES (12, 3698, 13, 40, 2, '2020-10-10 19:27:47.861423', NULL, NULL);
INSERT INTO "product"."variant" VALUES (10, 3698, 13, 29, 2, '2020-10-10 19:27:19.41916', NULL, NULL);
INSERT INTO "product"."variant" VALUES (26, 3700, 20, 38, -1, '2020-10-10 19:38:59.918196', '2020-10-12 19:24:18', NULL);
INSERT INTO "product"."variant" VALUES (14, 3699, 1, 36, 2, '2020-10-10 19:33:42.133728', NULL, NULL);
INSERT INTO "product"."variant" VALUES (15, 3699, 1, 37, 1, '2020-10-10 19:34:02.566997', NULL, NULL);
INSERT INTO "product"."variant" VALUES (16, 3699, 1, 38, 2, '2020-10-10 19:34:15.358285', NULL, NULL);
INSERT INTO "product"."variant" VALUES (17, 3699, 1, 39, 2, '2020-10-10 19:34:28.621099', NULL, NULL);
INSERT INTO "product"."variant" VALUES (18, 3699, 1, 40, 2, '2020-10-10 19:34:40.386604', NULL, NULL);
INSERT INTO "product"."variant" VALUES (20, 3701, 13, 36, 2, '2020-10-10 19:35:51.067376', NULL, NULL);
INSERT INTO "product"."variant" VALUES (21, 3701, 13, 37, 2, '2020-10-10 19:36:05.291766', NULL, NULL);
INSERT INTO "product"."variant" VALUES (22, 3701, 13, 39, 2, '2020-10-10 19:36:26.587447', NULL, NULL);
INSERT INTO "product"."variant" VALUES (23, 3701, 13, 40, 2, '2020-10-10 19:36:41.855942', NULL, NULL);
INSERT INTO "product"."variant" VALUES (24, 3700, 20, 36, 2, '2020-10-10 19:38:33.963545', NULL, NULL);
INSERT INTO "product"."variant" VALUES (25, 3700, 20, 37, 2, '2020-10-10 19:38:47.567721', NULL, NULL);
INSERT INTO "product"."variant" VALUES (27, 3700, 20, 39, 2, '2020-10-10 19:39:10.331325', NULL, NULL);
INSERT INTO "product"."variant" VALUES (28, 3700, 20, 40, 2, '2020-10-10 19:39:25.390251', NULL, NULL);
INSERT INTO "product"."variant" VALUES (29, 3697, 9, 36, 2, '2020-10-10 19:40:07.600008', NULL, NULL);
INSERT INTO "product"."variant" VALUES (31, 3697, 9, 38, 2, '2020-10-10 19:40:36.389139', NULL, NULL);
INSERT INTO "product"."variant" VALUES (32, 3697, 9, 39, 2, '2020-10-10 19:40:52.221963', NULL, NULL);
INSERT INTO "product"."variant" VALUES (33, 3697, 9, 40, 2, '2020-10-10 19:42:39.406924', NULL, NULL);
INSERT INTO "product"."variant" VALUES (34, 2428, 2, 31, 0, '2020-10-10 20:13:59.938417', NULL, NULL);
INSERT INTO "product"."variant" VALUES (35, 2428, 2, 32, 0, '2020-10-10 20:14:19.837415', NULL, NULL);
INSERT INTO "product"."variant" VALUES (36, 2428, 2, 33, 0, '2020-10-10 20:14:32.885777', NULL, NULL);
INSERT INTO "product"."variant" VALUES (37, 2428, 2, 34, 0, '2020-10-10 20:14:43.646423', NULL, NULL);
INSERT INTO "product"."variant" VALUES (38, 2428, 2, 35, 0, '2020-10-10 20:15:01.908088', NULL, NULL);
INSERT INTO "product"."variant" VALUES (39, 2427, 2, 31, 0, '2020-10-10 20:15:37.159066', NULL, NULL);
INSERT INTO "product"."variant" VALUES (40, 2427, 2, 32, 0, '2020-10-10 20:22:01.27507', NULL, NULL);
INSERT INTO "product"."variant" VALUES (41, 2427, 2, 33, 2, '2020-10-10 20:30:29.44455', NULL, NULL);
INSERT INTO "product"."variant" VALUES (42, 2427, 2, 34, 2, '2020-10-10 20:30:41.820334', NULL, NULL);
INSERT INTO "product"."variant" VALUES (43, 2427, 2, 35, 1, '2020-10-10 20:31:02.045653', NULL, NULL);
INSERT INTO "product"."variant" VALUES (44, 2424, 1, 31, 0, '2020-10-10 20:31:56.519901', NULL, NULL);
INSERT INTO "product"."variant" VALUES (45, 2424, 1, 32, 0, '2020-10-10 20:32:12.739029', NULL, NULL);
INSERT INTO "product"."variant" VALUES (46, 2424, 1, 33, 0, '2020-10-10 20:32:24.145266', NULL, NULL);
INSERT INTO "product"."variant" VALUES (47, 2424, 1, 34, 1, '2020-10-10 20:33:47.377625', NULL, NULL);
INSERT INTO "product"."variant" VALUES (48, 2424, 1, 35, 0, '2020-10-10 20:33:59.332342', NULL, NULL);
INSERT INTO "product"."variant" VALUES (49, 2424, 20, 31, 1, '2020-10-10 20:34:38.090752', NULL, NULL);
INSERT INTO "product"."variant" VALUES (50, 2424, 20, 32, 0, '2020-10-10 20:34:50.060858', NULL, NULL);
INSERT INTO "product"."variant" VALUES (51, 2424, 20, 33, 0, '2020-10-10 20:34:59.172467', NULL, NULL);
INSERT INTO "product"."variant" VALUES (52, 2424, 20, 34, 1, '2020-10-10 20:35:07.945789', NULL, NULL);
INSERT INTO "product"."variant" VALUES (53, 2424, 20, 35, 0, '2020-10-10 20:35:30.598316', NULL, NULL);
INSERT INTO "product"."variant" VALUES (54, 2423, 14, 31, 0, '2020-10-10 20:36:06.289721', NULL, NULL);
INSERT INTO "product"."variant" VALUES (55, 2423, 14, 32, 1, '2020-10-10 20:36:14.697976', NULL, NULL);
INSERT INTO "product"."variant" VALUES (56, 2423, 14, 33, 2, '2020-10-10 20:36:24.512307', NULL, NULL);
INSERT INTO "product"."variant" VALUES (57, 2423, 14, 34, 2, '2020-10-10 20:36:32.765538', NULL, NULL);
INSERT INTO "product"."variant" VALUES (58, 2423, 14, 35, 0, '2020-10-10 20:36:42.374375', NULL, NULL);
INSERT INTO "product"."variant" VALUES (59, 2422, 11, 31, 1, '2020-10-10 20:37:13.210735', NULL, NULL);
INSERT INTO "product"."variant" VALUES (60, 2422, 11, 32, 1, '2020-10-10 20:37:22.890767', NULL, NULL);
INSERT INTO "product"."variant" VALUES (61, 2422, 11, 33, 2, '2020-10-10 20:37:31.45474', NULL, NULL);
INSERT INTO "product"."variant" VALUES (62, 2422, 11, 34, 0, '2020-10-10 20:37:42.338457', NULL, NULL);
INSERT INTO "product"."variant" VALUES (63, 2422, 11, 35, 0, '2020-10-10 20:37:54.638183', NULL, NULL);
INSERT INTO "product"."variant" VALUES (64, 2426, 14, 22, 1, '2020-10-10 20:39:02.265325', NULL, NULL);
INSERT INTO "product"."variant" VALUES (65, 2426, 14, 23, 2, '2020-10-10 20:39:09.179126', NULL, NULL);
INSERT INTO "product"."variant" VALUES (66, 2426, 14, 24, 0, '2020-10-10 20:39:18.583527', NULL, NULL);
INSERT INTO "product"."variant" VALUES (67, 2426, 14, 25, 0, '2020-10-10 20:39:28.900052', NULL, NULL);
INSERT INTO "product"."variant" VALUES (68, 2426, 14, 26, 1, '2020-10-10 20:39:40.844289', NULL, NULL);
INSERT INTO "product"."variant" VALUES (69, 2437, 5, 26, 0, '2020-10-10 20:40:15.452361', NULL, NULL);
INSERT INTO "product"."variant" VALUES (70, 2437, 5, 27, 0, '2020-10-10 20:41:16.770969', NULL, NULL);
INSERT INTO "product"."variant" VALUES (71, 2437, 5, 28, 0, '2020-10-10 20:41:26.570643', NULL, NULL);
INSERT INTO "product"."variant" VALUES (72, 2437, 5, 29, 0, '2020-10-10 20:41:42.326735', NULL, NULL);
INSERT INTO "product"."variant" VALUES (74, 2437, 5, 30, 0, '2020-10-10 20:41:56.68586', NULL, NULL);
INSERT INTO "product"."variant" VALUES (75, 2437, 7, 26, 0, '2020-10-10 20:42:13.657422', NULL, NULL);
INSERT INTO "product"."variant" VALUES (76, 2437, 7, 27, 0, '2020-10-10 20:42:27.810325', NULL, NULL);
INSERT INTO "product"."variant" VALUES (77, 2437, 7, 27, 0, '2020-10-10 20:42:38.306589', NULL, NULL);
INSERT INTO "product"."variant" VALUES (78, 2437, 7, 28, 0, '2020-10-10 20:43:01.241419', NULL, NULL);
INSERT INTO "product"."variant" VALUES (79, 2437, 7, 29, 0, '2020-10-10 20:43:11.999886', NULL, NULL);
INSERT INTO "product"."variant" VALUES (80, 2437, 7, 30, 0, '2020-10-10 20:43:24.561082', NULL, NULL);
INSERT INTO "product"."variant" VALUES (81, 2439, 18, 26, 2, '2020-10-10 20:43:49.061948', NULL, NULL);
INSERT INTO "product"."variant" VALUES (82, 2439, 18, 27, 0, '2020-10-10 20:43:59.630678', NULL, NULL);
INSERT INTO "product"."variant" VALUES (83, 2439, 18, 28, 2, '2020-10-10 20:44:07.741888', NULL, NULL);
INSERT INTO "product"."variant" VALUES (84, 2439, 18, 29, 0, '2020-10-10 20:44:15.976002', NULL, NULL);
INSERT INTO "product"."variant" VALUES (85, 2439, 18, 30, 2, '2020-10-10 20:44:26.652411', NULL, NULL);
INSERT INTO "product"."variant" VALUES (86, 2439, 11, 26, 2, '2020-10-10 20:44:43.501669', NULL, NULL);
INSERT INTO "product"."variant" VALUES (87, 2439, 11, 27, 0, '2020-10-10 20:44:53.825702', NULL, NULL);
INSERT INTO "product"."variant" VALUES (88, 2439, 11, 28, 0, '2020-10-10 20:45:03.028241', NULL, NULL);
INSERT INTO "product"."variant" VALUES (89, 2439, 11, 29, 1, '2020-10-10 20:45:15.56139', NULL, NULL);
INSERT INTO "product"."variant" VALUES (90, 2439, 11, 30, 2, '2020-10-10 20:45:46.383984', NULL, NULL);
INSERT INTO "product"."variant" VALUES (91, 2441, 1, 26, 1, '2020-10-10 20:46:33.280393', NULL, NULL);
INSERT INTO "product"."variant" VALUES (92, 2441, 1, 27, 1, '2020-10-10 20:46:54.813593', NULL, NULL);
INSERT INTO "product"."variant" VALUES (93, 2441, 1, 28, 1, '2020-10-10 20:47:03.225357', NULL, NULL);
INSERT INTO "product"."variant" VALUES (94, 2441, 1, 29, 1, '2020-10-10 20:47:10.791678', NULL, NULL);
INSERT INTO "product"."variant" VALUES (95, 2441, 1, 30, 0, '2020-10-10 20:47:19.316309', NULL, NULL);
INSERT INTO "product"."variant" VALUES (96, 2441, 11, 26, 1, '2020-10-10 20:47:39.339506', NULL, NULL);
INSERT INTO "product"."variant" VALUES (97, 2441, 11, 27, 2, '2020-10-10 20:47:55.308627', NULL, NULL);
INSERT INTO "product"."variant" VALUES (98, 2441, 11, 28, 1, '2020-10-10 20:48:02.888541', NULL, NULL);
INSERT INTO "product"."variant" VALUES (99, 2441, 11, 29, 1, '2020-10-10 20:48:11.271735', NULL, NULL);
INSERT INTO "product"."variant" VALUES (100, 2441, 11, 30, 1, '2020-10-10 20:48:18.700801', NULL, NULL);
INSERT INTO "product"."variant" VALUES (101, 2443, 2, 26, 1, '2020-10-10 20:48:49.701024', NULL, NULL);
INSERT INTO "product"."variant" VALUES (102, 2443, 2, 27, 1, '2020-10-10 20:49:06.13844', NULL, NULL);
INSERT INTO "product"."variant" VALUES (103, 2443, 2, 28, 0, '2020-10-10 20:49:15.674977', NULL, NULL);
INSERT INTO "product"."variant" VALUES (104, 2443, 2, 29, 2, '2020-10-10 20:49:22.360167', NULL, NULL);
INSERT INTO "product"."variant" VALUES (105, 2443, 2, 30, 2, '2020-10-10 20:49:29.978904', NULL, NULL);
INSERT INTO "product"."variant" VALUES (106, 2443, 7, 26, 1, '2020-10-10 20:49:55.161773', NULL, NULL);
INSERT INTO "product"."variant" VALUES (107, 2443, 7, 27, 2, '2020-10-10 20:50:07.913983', NULL, NULL);
INSERT INTO "product"."variant" VALUES (108, 2443, 7, 28, 0, '2020-10-10 20:50:18.734615', NULL, NULL);
INSERT INTO "product"."variant" VALUES (109, 2443, 7, 29, 2, '2020-10-10 20:50:25.557601', NULL, NULL);
INSERT INTO "product"."variant" VALUES (110, 2443, 7, 30, 1, '2020-10-10 20:50:34.993974', NULL, NULL);
INSERT INTO "product"."variant" VALUES (111, 2438, 18, 22, 0, '2020-10-10 20:51:01.041217', NULL, NULL);
INSERT INTO "product"."variant" VALUES (112, 2438, 18, 23, 0, '2020-10-10 20:51:14.876471', NULL, NULL);
INSERT INTO "product"."variant" VALUES (113, 2438, 18, 24, 2, '2020-10-10 20:51:19.977309', NULL, NULL);
INSERT INTO "product"."variant" VALUES (115, 2438, 18, 25, 0, '2020-10-10 20:51:35.494797', NULL, NULL);
INSERT INTO "product"."variant" VALUES (116, 2438, 11, 22, 0, '2020-10-10 20:56:15.762676', NULL, NULL);
INSERT INTO "product"."variant" VALUES (117, 2438, 11, 23, 0, '2020-10-10 20:56:45.31921', NULL, NULL);
INSERT INTO "product"."variant" VALUES (118, 2438, 11, 24, 0, '2020-10-10 20:56:52.396151', NULL, NULL);
INSERT INTO "product"."variant" VALUES (119, 2438, 11, 25, 0, '2020-10-10 20:57:00.775907', NULL, NULL);
INSERT INTO "product"."variant" VALUES (120, 2440, 1, 22, 0, '2020-10-10 20:58:00.113656', NULL, NULL);
INSERT INTO "product"."variant" VALUES (121, 2440, 1, 23, 0, '2020-10-10 20:58:12.201458', NULL, NULL);
INSERT INTO "product"."variant" VALUES (122, 2440, 1, 24, 0, '2020-10-10 20:58:21.488521', NULL, NULL);
INSERT INTO "product"."variant" VALUES (123, 2440, 1, 25, 0, '2020-10-10 20:58:36.259443', NULL, NULL);
INSERT INTO "product"."variant" VALUES (124, 2442, 2, 22, 0, '2020-10-10 20:58:58.340413', NULL, NULL);
INSERT INTO "product"."variant" VALUES (125, 2442, 2, 23, 0, '2020-10-10 20:59:10.574303', NULL, NULL);
INSERT INTO "product"."variant" VALUES (126, 2442, 2, 24, 0, '2020-10-10 20:59:17.758685', NULL, NULL);
INSERT INTO "product"."variant" VALUES (127, 2442, 2, 25, 0, '2020-10-10 20:59:25.914378', NULL, NULL);
INSERT INTO "product"."variant" VALUES (128, 2425, 1, 22, 1, '2020-10-10 21:00:29.94359', NULL, NULL);
INSERT INTO "product"."variant" VALUES (129, 2425, 1, 23, 0, '2020-10-10 21:00:44.669008', NULL, NULL);
INSERT INTO "product"."variant" VALUES (130, 2425, 1, 24, 1, '2020-10-10 21:00:51.80962', NULL, NULL);
INSERT INTO "product"."variant" VALUES (131, 2425, 1, 25, 0, '2020-10-10 21:00:59.790135', NULL, NULL);
INSERT INTO "product"."variant" VALUES (132, 2425, 1, 26, 0, '2020-10-10 21:01:09.281557', NULL, NULL);
INSERT INTO "product"."variant" VALUES (133, 2425, 2, 22, 1, '2020-10-10 21:01:23.543432', NULL, NULL);
INSERT INTO "product"."variant" VALUES (134, 2425, 2, 23, 2, '2020-10-10 21:01:34.182849', NULL, NULL);
INSERT INTO "product"."variant" VALUES (135, 2425, 2, 24, 0, '2020-10-10 21:01:49.089454', NULL, NULL);
INSERT INTO "product"."variant" VALUES (136, 2425, 2, 25, 0, '2020-10-10 21:02:00.037463', NULL, NULL);
INSERT INTO "product"."variant" VALUES (137, 2425, 2, 26, 0, '2020-10-10 21:02:09.150281', NULL, NULL);
INSERT INTO "product"."variant" VALUES (139, 2429, 2, 26, 1, '2020-10-10 21:05:13.435074', NULL, NULL);
INSERT INTO "product"."variant" VALUES (140, 2429, 2, 27, 1, '2020-10-10 21:05:27.559017', NULL, NULL);
INSERT INTO "product"."variant" VALUES (141, 2429, 2, 28, 0, '2020-10-10 21:05:34.636041', NULL, NULL);
INSERT INTO "product"."variant" VALUES (142, 2429, 2, 29, 2, '2020-10-10 21:05:40.744259', NULL, NULL);
INSERT INTO "product"."variant" VALUES (30, 3697, 9, 37, 1, '2020-10-10 19:40:21.581085', '2020-10-12 20:40:37', NULL);
INSERT INTO "product"."variant" VALUES (143, 2429, 2, 30, 1, '2020-10-10 21:05:48.917858', NULL, NULL);
INSERT INTO "product"."variant" VALUES (144, 2429, 14, 26, 2, '2020-10-10 21:06:07.970363', NULL, NULL);
INSERT INTO "product"."variant" VALUES (145, 2429, 14, 27, 1, '2020-10-10 21:06:19.993727', NULL, NULL);
INSERT INTO "product"."variant" VALUES (146, 2429, 14, 28, 2, '2020-10-10 21:06:28.468192', NULL, NULL);
INSERT INTO "product"."variant" VALUES (147, 2429, 14, 29, 2, '2020-10-10 21:06:36.539868', NULL, NULL);
INSERT INTO "product"."variant" VALUES (148, 2429, 14, 30, 0, '2020-10-10 21:06:40.119749', NULL, NULL);
INSERT INTO "product"."variant" VALUES (149, 2431, 2, 26, 0, '2020-10-10 21:07:47.985515', NULL, NULL);
INSERT INTO "product"."variant" VALUES (150, 2431, 2, 27, 0, '2020-10-10 21:08:05.229961', NULL, NULL);
INSERT INTO "product"."variant" VALUES (151, 2431, 2, 28, 0, '2020-10-10 21:08:15.517834', NULL, NULL);
INSERT INTO "product"."variant" VALUES (152, 2431, 2, 29, 0, '2020-10-10 21:08:22.695692', NULL, NULL);
INSERT INTO "product"."variant" VALUES (153, 2431, 2, 30, 0, '2020-10-10 21:08:33.906881', NULL, NULL);
INSERT INTO "product"."variant" VALUES (154, 2436, 5, 31, 0, '2020-10-10 21:08:59.763063', NULL, NULL);
INSERT INTO "product"."variant" VALUES (155, 2436, 5, 32, 0, '2020-10-10 21:09:14.327808', NULL, NULL);
INSERT INTO "product"."variant" VALUES (156, 2436, 5, 33, 1, '2020-10-10 21:09:24.569892', NULL, NULL);
INSERT INTO "product"."variant" VALUES (157, 2436, 5, 34, 1, '2020-10-10 21:09:28.082342', NULL, NULL);
INSERT INTO "product"."variant" VALUES (158, 2436, 5, 35, 2, '2020-10-10 21:09:45.132204', NULL, NULL);
INSERT INTO "product"."variant" VALUES (159, 2434, 5, 31, 1, '2020-10-10 21:10:26.432488', NULL, NULL);
INSERT INTO "product"."variant" VALUES (160, 2434, 5, 32, 2, '2020-10-10 21:10:36.67322', NULL, NULL);
INSERT INTO "product"."variant" VALUES (161, 2434, 5, 33, 1, '2020-10-10 21:10:45.856866', NULL, NULL);
INSERT INTO "product"."variant" VALUES (162, 2434, 5, 34, 2, '2020-10-10 21:10:53.748421', NULL, NULL);
INSERT INTO "product"."variant" VALUES (163, 2434, 5, 35, 0, '2020-10-10 21:11:02.259666', NULL, NULL);
INSERT INTO "product"."variant" VALUES (164, 2434, 1, 31, 0, '2020-10-10 21:11:16.159923', NULL, NULL);
INSERT INTO "product"."variant" VALUES (165, 2434, 1, 32, 0, '2020-10-10 21:11:28.701141', NULL, NULL);
INSERT INTO "product"."variant" VALUES (166, 2434, 1, 33, 0, '2020-10-10 21:11:42.757728', NULL, NULL);
INSERT INTO "product"."variant" VALUES (167, 2434, 1, 34, 2, '2020-10-10 21:11:51.458632', NULL, NULL);
INSERT INTO "product"."variant" VALUES (168, 2434, 1, 35, 0, '2020-10-10 21:12:31.030912', NULL, NULL);
INSERT INTO "product"."variant" VALUES (5, 3702, 10, 40, 0, '2020-10-10 19:08:54.41799', NULL, NULL);
INSERT INTO "product"."variant" VALUES (170, 1954001120, 11, 30, 20, '2020-10-11 15:46:45', '2020-10-11 15:46:45', NULL);
INSERT INTO "product"."variant" VALUES (171, 1954001120, 11, 31, 20, '2020-10-11 15:46:45', '2020-10-11 15:46:45', NULL);
INSERT INTO "product"."variant" VALUES (172, 1954001120, 11, 32, 20, '2020-10-11 15:46:45', '2020-10-11 15:46:45', NULL);
INSERT INTO "product"."variant" VALUES (173, 1954001120, 11, 35, 20, '2020-10-11 15:46:45', '2020-10-11 15:46:45', NULL);
INSERT INTO "product"."variant" VALUES (174, 1063940320, 10, 15, 11, '2020-10-11 15:49:35', '2020-10-11 15:49:35', NULL);
INSERT INTO "product"."variant" VALUES (175, 1063940320, 10, 16, 11, '2020-10-11 15:49:35', '2020-10-11 15:49:35', NULL);
INSERT INTO "product"."variant" VALUES (176, 1682775643, 2, 17, 10, '2020-10-11 15:50:52', '2020-10-11 20:04:10', '2020-10-11 20:04:10');
INSERT INTO "product"."variant" VALUES (177, 1682775643, 2, 18, 10, '2020-10-11 15:50:52', '2020-10-11 20:04:10', '2020-10-11 20:04:10');
INSERT INTO "product"."variant" VALUES (178, 1682775643, 2, 19, 10, '2020-10-11 15:50:52', '2020-10-11 20:04:10', '2020-10-11 20:04:10');
INSERT INTO "product"."variant" VALUES (179, 1682775643, 10, 41, 10, '2020-10-11 20:04:10', '2020-10-11 20:39:19', '2020-10-11 20:39:19');
INSERT INTO "product"."variant" VALUES (180, 1682775643, 10, 42, 10, '2020-10-11 20:04:11', '2020-10-11 20:39:19', '2020-10-11 20:39:19');
INSERT INTO "product"."variant" VALUES (181, 1682775643, 10, 43, 10, '2020-10-11 20:04:11', '2020-10-11 20:39:19', '2020-10-11 20:39:19');
INSERT INTO "product"."variant" VALUES (182, 1682775643, 10, 44, 10, '2020-10-11 20:04:11', '2020-10-11 20:39:19', '2020-10-11 20:39:19');
INSERT INTO "product"."variant" VALUES (183, 1682775643, 1, 42, 10, '2020-10-11 20:04:11', '2020-10-11 20:39:19', '2020-10-11 20:39:19');
INSERT INTO "product"."variant" VALUES (184, 1682775643, 1, 43, 10, '2020-10-11 20:04:11', '2020-10-11 20:39:19', '2020-10-11 20:39:19');
INSERT INTO "product"."variant" VALUES (185, 1682775643, 1, 44, 10, '2020-10-11 20:04:11', '2020-10-11 20:39:19', '2020-10-11 20:39:19');
INSERT INTO "product"."variant" VALUES (186, 1682775643, 1, 45, 10, '2020-10-11 20:04:11', '2020-10-11 20:39:19', '2020-10-11 20:39:19');
INSERT INTO "product"."variant" VALUES (187, 1682775643, 10, 17, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (188, 1682775643, 10, 18, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (189, 1682775643, 10, 19, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (190, 1682775643, 10, 41, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (191, 1682775643, 10, 42, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (192, 1682775643, 10, 43, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (193, 1682775643, 10, 44, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (194, 1682775643, 10, 45, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (195, 1682775643, 1, 17, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (196, 1682775643, 1, 18, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (197, 1682775643, 1, 19, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (198, 1682775643, 1, 41, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (199, 1682775643, 1, 42, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (200, 1682775643, 1, 43, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (201, 1682775643, 1, 44, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (202, 1682775643, 1, 45, 10, '2020-10-11 20:39:19', '2020-10-11 20:41:25', '2020-10-11 20:41:25');
INSERT INTO "product"."variant" VALUES (203, 1682775643, 10, 17, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (204, 1682775643, 10, 18, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (205, 1682775643, 10, 19, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (206, 1682775643, 10, 41, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (207, 1682775643, 10, 42, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (208, 1682775643, 10, 43, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (209, 1682775643, 10, 44, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (210, 1682775643, 10, 45, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (211, 1682775643, 1, 17, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (212, 1682775643, 1, 18, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (213, 1682775643, 1, 19, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (214, 1682775643, 1, 41, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (215, 1682775643, 1, 42, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (216, 1682775643, 1, 43, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (217, 1682775643, 1, 44, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (218, 1682775643, 1, 45, 10, '2020-10-11 20:41:25', '2020-10-12 11:27:12', '2020-10-12 11:27:12');
INSERT INTO "product"."variant" VALUES (219, 1682775643, 10, 17, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (220, 1682775643, 10, 18, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (221, 1682775643, 10, 19, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (222, 1682775643, 10, 41, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (223, 1682775643, 10, 42, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (224, 1682775643, 10, 43, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (225, 1682775643, 10, 44, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (226, 1682775643, 10, 45, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (227, 1682775643, 1, 17, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (228, 1682775643, 1, 18, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (229, 1682775643, 1, 19, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (230, 1682775643, 1, 41, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (231, 1682775643, 1, 42, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (232, 1682775643, 1, 43, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (233, 1682775643, 1, 44, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (234, 1682775643, 1, 45, 10, '2020-10-12 11:27:12', '2020-10-12 11:28:54', '2020-10-12 11:28:54');
INSERT INTO "product"."variant" VALUES (235, 1682775643, 10, 17, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (236, 1682775643, 10, 18, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (237, 1682775643, 10, 19, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (238, 1682775643, 10, 41, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (239, 1682775643, 10, 42, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (240, 1682775643, 10, 43, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (241, 1682775643, 10, 44, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (242, 1682775643, 10, 45, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (243, 1682775643, 1, 17, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (244, 1682775643, 1, 18, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (245, 1682775643, 1, 19, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (246, 1682775643, 1, 41, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (247, 1682775643, 1, 42, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (248, 1682775643, 1, 43, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (249, 1682775643, 1, 44, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (250, 1682775643, 1, 45, 10, '2020-10-12 11:28:54', '2020-10-12 11:29:51', '2020-10-12 11:29:51');
INSERT INTO "product"."variant" VALUES (251, 1682775643, 10, 17, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (252, 1682775643, 10, 18, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (253, 1682775643, 10, 19, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (254, 1682775643, 10, 41, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (255, 1682775643, 10, 42, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (256, 1682775643, 10, 43, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (257, 1682775643, 10, 44, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (258, 1682775643, 10, 45, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (259, 1682775643, 1, 17, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (260, 1682775643, 1, 18, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (261, 1682775643, 1, 19, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (262, 1682775643, 1, 41, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (263, 1682775643, 1, 42, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (264, 1682775643, 1, 43, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (265, 1682775643, 1, 44, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (266, 1682775643, 1, 45, 10, '2020-10-12 11:29:51', '2020-10-12 11:30:00', '2020-10-12 11:30:00');
INSERT INTO "product"."variant" VALUES (267, 1682775643, 10, 17, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (268, 1682775643, 10, 18, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (269, 1682775643, 10, 19, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (270, 1682775643, 10, 41, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (271, 1682775643, 10, 42, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (272, 1682775643, 10, 43, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (273, 1682775643, 10, 44, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (274, 1682775643, 10, 45, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (275, 1682775643, 1, 17, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (276, 1682775643, 1, 18, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (277, 1682775643, 1, 19, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (278, 1682775643, 1, 41, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (279, 1682775643, 1, 42, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (280, 1682775643, 1, 43, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (281, 1682775643, 1, 44, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (282, 1682775643, 1, 45, 10, '2020-10-12 11:30:00', '2020-10-12 11:30:40', '2020-10-12 11:30:40');
INSERT INTO "product"."variant" VALUES (283, 1682775643, 10, 17, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (284, 1682775643, 10, 18, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (285, 1682775643, 10, 19, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (286, 1682775643, 10, 41, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (287, 1682775643, 10, 42, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (288, 1682775643, 10, 43, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (289, 1682775643, 10, 44, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (290, 1682775643, 10, 45, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (291, 1682775643, 1, 17, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (292, 1682775643, 1, 18, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (293, 1682775643, 1, 19, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (294, 1682775643, 1, 41, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (295, 1682775643, 1, 42, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (296, 1682775643, 1, 43, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (297, 1682775643, 1, 44, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (298, 1682775643, 1, 45, 10, '2020-10-12 11:30:40', '2020-10-12 11:31:16', '2020-10-12 11:31:16');
INSERT INTO "product"."variant" VALUES (299, 1682775643, 10, 17, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (300, 1682775643, 10, 18, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (301, 1682775643, 10, 19, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (302, 1682775643, 10, 41, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (303, 1682775643, 10, 42, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (304, 1682775643, 10, 43, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (305, 1682775643, 10, 44, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (306, 1682775643, 10, 45, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (307, 1682775643, 1, 17, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (308, 1682775643, 1, 18, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (309, 1682775643, 1, 19, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (310, 1682775643, 1, 41, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (311, 1682775643, 1, 42, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (312, 1682775643, 1, 43, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (313, 1682775643, 1, 44, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (314, 1682775643, 1, 45, 10, '2020-10-12 11:31:16', '2020-10-12 11:32:50', '2020-10-12 11:32:50');
INSERT INTO "product"."variant" VALUES (315, 1682775643, 10, 17, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (316, 1682775643, 10, 18, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (317, 1682775643, 10, 19, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (318, 1682775643, 10, 41, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (319, 1682775643, 10, 42, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (320, 1682775643, 10, 43, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (321, 1682775643, 10, 44, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (322, 1682775643, 10, 45, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (323, 1682775643, 1, 17, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (324, 1682775643, 1, 18, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (325, 1682775643, 1, 19, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (326, 1682775643, 1, 41, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (327, 1682775643, 1, 42, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (328, 1682775643, 1, 43, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (329, 1682775643, 1, 44, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (330, 1682775643, 1, 45, 10, '2020-10-12 11:32:50', '2020-10-12 11:33:07', '2020-10-12 11:33:07');
INSERT INTO "product"."variant" VALUES (331, 1682775643, 10, 17, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (332, 1682775643, 10, 18, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (333, 1682775643, 10, 19, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (334, 1682775643, 10, 41, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (335, 1682775643, 10, 42, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (336, 1682775643, 10, 43, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (337, 1682775643, 10, 44, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (338, 1682775643, 10, 45, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (339, 1682775643, 1, 17, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (340, 1682775643, 1, 18, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (341, 1682775643, 1, 19, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (342, 1682775643, 1, 41, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (343, 1682775643, 1, 42, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (344, 1682775643, 1, 43, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (345, 1682775643, 1, 44, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (346, 1682775643, 1, 45, 10, '2020-10-12 11:33:07', '2020-10-12 11:33:45', '2020-10-12 11:33:45');
INSERT INTO "product"."variant" VALUES (347, 1682775643, 10, 17, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (348, 1682775643, 10, 18, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (349, 1682775643, 10, 19, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (350, 1682775643, 10, 41, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (351, 1682775643, 10, 42, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (352, 1682775643, 10, 43, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (353, 1682775643, 10, 44, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (354, 1682775643, 10, 45, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (355, 1682775643, 1, 17, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (356, 1682775643, 1, 18, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (357, 1682775643, 1, 19, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (358, 1682775643, 1, 41, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (359, 1682775643, 1, 42, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (360, 1682775643, 1, 43, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (361, 1682775643, 1, 44, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (362, 1682775643, 1, 45, 10, '2020-10-12 11:33:45', '2020-10-12 11:34:04', '2020-10-12 11:34:04');
INSERT INTO "product"."variant" VALUES (363, 1682775643, 10, 17, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (364, 1682775643, 10, 18, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (365, 1682775643, 10, 19, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (366, 1682775643, 10, 41, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (367, 1682775643, 10, 42, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (368, 1682775643, 10, 43, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (369, 1682775643, 10, 44, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (370, 1682775643, 10, 45, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (371, 1682775643, 1, 17, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (372, 1682775643, 1, 18, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (373, 1682775643, 1, 19, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (374, 1682775643, 1, 41, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (375, 1682775643, 1, 42, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (376, 1682775643, 1, 43, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (377, 1682775643, 1, 44, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (378, 1682775643, 1, 45, 10, '2020-10-12 11:34:04', '2020-10-12 11:35:15', '2020-10-12 11:35:15');
INSERT INTO "product"."variant" VALUES (379, 1682775643, 10, 17, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (380, 1682775643, 10, 18, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (381, 1682775643, 10, 19, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (382, 1682775643, 10, 41, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (383, 1682775643, 10, 42, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (384, 1682775643, 10, 43, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (385, 1682775643, 10, 44, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (386, 1682775643, 10, 45, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (387, 1682775643, 1, 17, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (388, 1682775643, 1, 18, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (389, 1682775643, 1, 19, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (390, 1682775643, 1, 41, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (391, 1682775643, 1, 42, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (392, 1682775643, 1, 43, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (393, 1682775643, 1, 44, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (394, 1682775643, 1, 45, 10, '2020-10-12 11:35:15', '2020-10-12 11:38:35', '2020-10-12 11:38:35');
INSERT INTO "product"."variant" VALUES (395, 1682775643, 10, 17, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (396, 1682775643, 10, 18, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (397, 1682775643, 10, 19, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (398, 1682775643, 10, 41, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (399, 1682775643, 10, 42, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (400, 1682775643, 10, 43, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (401, 1682775643, 10, 44, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (402, 1682775643, 10, 45, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (403, 1682775643, 1, 17, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (404, 1682775643, 1, 18, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (405, 1682775643, 1, 19, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (406, 1682775643, 1, 41, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (407, 1682775643, 1, 42, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (408, 1682775643, 1, 43, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (410, 1682775643, 1, 45, 10, '2020-10-12 11:38:35', '2020-10-12 11:38:35', NULL);
INSERT INTO "product"."variant" VALUES (409, 1682775643, 1, 44, 6, '2020-10-12 11:38:35', '2020-10-12 18:55:49', NULL);
INSERT INTO "product"."variant" VALUES (411, 1632173260, 11, 43, 6, '2020-10-12 19:07:34', '2020-10-12 19:09:02', '2020-10-12 19:09:02');
INSERT INTO "product"."variant" VALUES (412, 1632173260, 11, 44, 6, '2020-10-12 19:07:34', '2020-10-12 19:09:02', '2020-10-12 19:09:02');
INSERT INTO "product"."variant" VALUES (413, 1632173260, 11, 45, 6, '2020-10-12 19:07:34', '2020-10-12 19:09:02', '2020-10-12 19:09:02');
INSERT INTO "product"."variant" VALUES (414, 1632173260, 11, 46, 6, '2020-10-12 19:07:34', '2020-10-12 19:09:02', '2020-10-12 19:09:02');
INSERT INTO "product"."variant" VALUES (415, 1632173260, 10, 40, 5, '2020-10-12 19:07:34', '2020-10-12 19:09:02', '2020-10-12 19:09:02');
INSERT INTO "product"."variant" VALUES (416, 1632173260, 10, 41, 5, '2020-10-12 19:07:34', '2020-10-12 19:09:02', '2020-10-12 19:09:02');
INSERT INTO "product"."variant" VALUES (417, 1632173260, 10, 42, 5, '2020-10-12 19:07:34', '2020-10-12 19:09:02', '2020-10-12 19:09:02');
INSERT INTO "product"."variant" VALUES (418, 1632173260, 10, 43, 5, '2020-10-12 19:07:34', '2020-10-12 19:09:02', '2020-10-12 19:09:02');
INSERT INTO "product"."variant" VALUES (419, 1632173260, 10, 40, 1, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."variant" VALUES (420, 1632173260, 10, 41, 1, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."variant" VALUES (421, 1632173260, 10, 42, 1, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."variant" VALUES (422, 1632173260, 10, 43, 1, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."variant" VALUES (423, 1632173260, 10, 44, 1, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."variant" VALUES (424, 1632173260, 10, 45, 1, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."variant" VALUES (425, 1632173260, 10, 46, 1, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."variant" VALUES (426, 1632173260, 11, 40, 2, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."variant" VALUES (427, 1632173260, 11, 41, 2, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."variant" VALUES (430, 1632173260, 11, 44, 2, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."variant" VALUES (431, 1632173260, 11, 45, 2, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."variant" VALUES (432, 1632173260, 11, 46, 2, '2020-10-12 19:09:02', '2020-10-12 19:09:02', NULL);
INSERT INTO "product"."variant" VALUES (429, 1632173260, 11, 43, -6, '2020-10-12 19:09:02', '2020-10-12 19:27:30', NULL);
INSERT INTO "product"."variant" VALUES (428, 1632173260, 11, 42, 0, '2020-10-12 19:09:02', '2020-10-12 20:40:37', NULL);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "product"."brand_pb_id_seq"
OWNED BY "product"."brand"."pb_id";
SELECT setval('"product"."brand_pb_id_seq"', 11, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "product"."category_pc_id_seq"
OWNED BY "product"."category"."pc_id";
SELECT setval('"product"."category_pc_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "product"."color_pc_id_seq"
OWNED BY "product"."color"."pc_id";
SELECT setval('"product"."color_pc_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "product"."color_product_pcp_id_seq"
OWNED BY "product"."color_product"."pcp_id";
SELECT setval('"product"."color_product_pcp_id_seq"', 75, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "product"."img_product_pip_id_seq"
OWNED BY "product"."img_product"."pip_id";
SELECT setval('"product"."img_product_pip_id_seq"', 77, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "product"."product_category_ppc_id_seq"
OWNED BY "product"."product_category"."ppc_id";
SELECT setval('"product"."product_category_ppc_id_seq"', 48, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "product"."product_pp_id_seq"
OWNED BY "product"."product"."pp_id";
SELECT setval('"product"."product_pp_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "product"."size_ps_id_seq"
OWNED BY "product"."size"."ps_id";
SELECT setval('"product"."size_ps_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "product"."variant_pv_id_seq"
OWNED BY "product"."variant"."pv_id";
SELECT setval('"product"."variant_pv_id_seq"', 433, true);

-- ----------------------------
-- Primary Key structure for table brand
-- ----------------------------
ALTER TABLE "product"."brand" ADD CONSTRAINT "brand_pkey" PRIMARY KEY ("pb_id");

-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE "product"."category" ADD CONSTRAINT "category_pkey" PRIMARY KEY ("pc_id");

-- ----------------------------
-- Primary Key structure for table color
-- ----------------------------
ALTER TABLE "product"."color" ADD CONSTRAINT "color_pkey" PRIMARY KEY ("pc_id");

-- ----------------------------
-- Primary Key structure for table color_product
-- ----------------------------
ALTER TABLE "product"."color_product" ADD CONSTRAINT "color_product_pkey" PRIMARY KEY ("pcp_id");

-- ----------------------------
-- Primary Key structure for table img_product
-- ----------------------------
ALTER TABLE "product"."img_product" ADD CONSTRAINT "img_product_pkey" PRIMARY KEY ("pip_id");

-- ----------------------------
-- Primary Key structure for table product
-- ----------------------------
ALTER TABLE "product"."product" ADD CONSTRAINT "product_pkey" PRIMARY KEY ("pp_id");

-- ----------------------------
-- Primary Key structure for table product_category
-- ----------------------------
ALTER TABLE "product"."product_category" ADD CONSTRAINT "product_category_pkey" PRIMARY KEY ("ppc_id");

-- ----------------------------
-- Primary Key structure for table size
-- ----------------------------
ALTER TABLE "product"."size" ADD CONSTRAINT "size_pkey" PRIMARY KEY ("ps_id");

-- ----------------------------
-- Primary Key structure for table variant
-- ----------------------------
ALTER TABLE "product"."variant" ADD CONSTRAINT "variant_pkey" PRIMARY KEY ("pv_id");

-- ----------------------------
-- Foreign Keys structure for table color_product
-- ----------------------------
ALTER TABLE "product"."color_product" ADD CONSTRAINT "color_product_pcp_id_color_fkey" FOREIGN KEY ("pcp_id_color") REFERENCES "product"."color" ("pc_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "product"."color_product" ADD CONSTRAINT "color_product_pcp_id_product_fkey" FOREIGN KEY ("pcp_id_product") REFERENCES "product"."product" ("pp_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table img_product
-- ----------------------------
ALTER TABLE "product"."img_product" ADD CONSTRAINT "img_product_pip_id_product_fkey" FOREIGN KEY ("pip_id_product") REFERENCES "product"."product" ("pp_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product
-- ----------------------------
ALTER TABLE "product"."product" ADD CONSTRAINT "product_pp_id_brand_fkey" FOREIGN KEY ("pp_id_brand") REFERENCES "product"."brand" ("pb_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product_category
-- ----------------------------
ALTER TABLE "product"."product_category" ADD CONSTRAINT "product_category_ppc_id_category_fkey" FOREIGN KEY ("ppc_id_category") REFERENCES "product"."category" ("pc_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "product"."product_category" ADD CONSTRAINT "product_category_ppc_id_product_fkey" FOREIGN KEY ("ppc_id_product") REFERENCES "product"."product" ("pp_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table variant
-- ----------------------------
ALTER TABLE "product"."variant" ADD CONSTRAINT "variant_pv_id_color_fkey" FOREIGN KEY ("pv_id_color") REFERENCES "product"."color" ("pc_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "product"."variant" ADD CONSTRAINT "variant_pv_id_product_fkey" FOREIGN KEY ("pv_id_product") REFERENCES "product"."product" ("pp_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "product"."variant" ADD CONSTRAINT "variant_pv_id_size_fkey" FOREIGN KEY ("pv_id_size") REFERENCES "product"."size" ("ps_id") ON DELETE CASCADE ON UPDATE CASCADE;
