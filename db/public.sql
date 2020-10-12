/*
 Navicat Premium Data Transfer

 Source Server         : Postgre PC
 Source Server Type    : PostgreSQL
 Source Server Version : 120003
 Source Host           : localhost:5432
 Source Catalog        : shoesmart
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120003
 File Encoding         : 65001

 Date: 13/10/2020 04:43:36
*/


-- ----------------------------
-- Sequence structure for failed_jobs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."failed_jobs_id_seq";
CREATE SEQUENCE "public"."failed_jobs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for guest_pg_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."guest_pg_id_seq";
CREATE SEQUENCE "public"."guest_pg_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."migrations_id_seq";
CREATE SEQUENCE "public"."migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."failed_jobs";
CREATE TABLE "public"."failed_jobs" (
  "id" int8 NOT NULL DEFAULT nextval('failed_jobs_id_seq'::regclass),
  "uuid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "connection" text COLLATE "pg_catalog"."default" NOT NULL,
  "queue" text COLLATE "pg_catalog"."default" NOT NULL,
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "exception" text COLLATE "pg_catalog"."default" NOT NULL,
  "failed_at" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for guest
-- ----------------------------
DROP TABLE IF EXISTS "public"."guest";
CREATE TABLE "public"."guest" (
  "pg_id" int4 NOT NULL DEFAULT nextval('guest_pg_id_seq'::regclass),
  "pg_ip_address" text COLLATE "pg_catalog"."default" NOT NULL,
  "pg_browser" text COLLATE "pg_catalog"."default",
  "pg_created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "pg_update_at" timestamp(6),
  "pg_deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of guest
-- ----------------------------
INSERT INTO "public"."guest" VALUES (1, '127.0.0.1', 'Chrome', '2020-10-11 08:58:04', '2020-10-11 08:58:04', NULL);
INSERT INTO "public"."guest" VALUES (2, '127.0.0.1', 'Chrome', '2020-10-11 09:50:31', '2020-10-11 09:50:31', NULL);
INSERT INTO "public"."guest" VALUES (3, '127.0.0.1', 'Chrome', '2020-10-11 09:50:53', '2020-10-11 09:50:53', NULL);
INSERT INTO "public"."guest" VALUES (4, '127.0.0.1', 'Chrome', '2020-10-11 10:03:52', '2020-10-11 10:03:52', NULL);
INSERT INTO "public"."guest" VALUES (5, '127.0.0.1', 'Chrome', '2020-10-11 10:08:38', '2020-10-11 10:08:38', NULL);
INSERT INTO "public"."guest" VALUES (6, '127.0.0.1', 'Chrome', '2020-10-11 10:14:31', '2020-10-11 10:14:31', NULL);
INSERT INTO "public"."guest" VALUES (7, '127.0.0.1', 'Chrome', '2020-10-11 10:36:07', '2020-10-11 10:36:07', NULL);
INSERT INTO "public"."guest" VALUES (8, '127.0.0.1', 'Chrome', '2020-10-11 13:40:52', '2020-10-11 13:40:52', NULL);
INSERT INTO "public"."guest" VALUES (9, '127.0.0.1', 'Chrome', '2020-10-11 15:53:40', '2020-10-11 15:53:40', NULL);
INSERT INTO "public"."guest" VALUES (10, '127.0.0.1', 'Chrome', '2020-10-11 16:00:27', '2020-10-11 16:00:27', NULL);
INSERT INTO "public"."guest" VALUES (11, '127.0.0.1', 'Chrome', '2020-10-11 16:01:04', '2020-10-11 16:01:04', NULL);
INSERT INTO "public"."guest" VALUES (12, '127.0.0.1', 'Chrome', '2020-10-11 17:23:37', '2020-10-11 17:23:37', NULL);
INSERT INTO "public"."guest" VALUES (13, '127.0.0.1', 'Chrome', '2020-10-11 20:04:47', '2020-10-11 20:04:47', NULL);
INSERT INTO "public"."guest" VALUES (14, '127.0.0.1', 'Chrome', '2020-10-11 20:05:53', '2020-10-11 20:05:53', NULL);
INSERT INTO "public"."guest" VALUES (15, '127.0.0.1', 'Chrome', '2020-10-11 20:14:25', '2020-10-11 20:14:25', NULL);
INSERT INTO "public"."guest" VALUES (16, '127.0.0.1', 'Chrome', '2020-10-11 20:17:23', '2020-10-11 20:17:23', NULL);
INSERT INTO "public"."guest" VALUES (17, '127.0.0.1', 'Chrome', '2020-10-11 20:24:37', '2020-10-11 20:24:37', NULL);
INSERT INTO "public"."guest" VALUES (18, '127.0.0.1', 'Chrome', '2020-10-11 20:24:58', '2020-10-11 20:24:58', NULL);
INSERT INTO "public"."guest" VALUES (19, '127.0.0.1', 'Chrome', '2020-10-11 20:36:54', '2020-10-11 20:36:54', NULL);
INSERT INTO "public"."guest" VALUES (20, '127.0.0.1', 'Chrome', '2020-10-11 20:41:33', '2020-10-11 20:41:33', NULL);
INSERT INTO "public"."guest" VALUES (21, '127.0.0.1', 'Chrome', '2020-10-11 20:42:45', '2020-10-11 20:42:45', NULL);
INSERT INTO "public"."guest" VALUES (22, '127.0.0.1', 'Chrome', '2020-10-11 20:44:02', '2020-10-11 20:44:02', NULL);
INSERT INTO "public"."guest" VALUES (23, '127.0.0.1', 'Chrome', '2020-10-11 20:48:38', '2020-10-11 20:48:38', NULL);
INSERT INTO "public"."guest" VALUES (24, '127.0.0.1', 'Chrome', '2020-10-12 10:13:37', '2020-10-12 10:13:37', NULL);
INSERT INTO "public"."guest" VALUES (25, '127.0.0.1', 'Chrome', '2020-10-12 11:27:20', '2020-10-12 11:27:20', NULL);
INSERT INTO "public"."guest" VALUES (26, '127.0.0.1', 'Chrome', '2020-10-12 11:27:27', '2020-10-12 11:27:27', NULL);
INSERT INTO "public"."guest" VALUES (27, '127.0.0.1', 'Chrome', '2020-10-12 11:38:42', '2020-10-12 11:38:42', NULL);
INSERT INTO "public"."guest" VALUES (28, '127.0.0.1', 'Chrome', '2020-10-12 12:12:05', '2020-10-12 12:12:05', NULL);
INSERT INTO "public"."guest" VALUES (29, '127.0.0.1', 'Chrome', '2020-10-12 12:12:54', '2020-10-12 12:12:54', NULL);
INSERT INTO "public"."guest" VALUES (30, '127.0.0.1', 'Chrome', '2020-10-12 12:12:58', '2020-10-12 12:12:58', NULL);
INSERT INTO "public"."guest" VALUES (31, '127.0.0.1', 'Chrome', '2020-10-12 12:13:28', '2020-10-12 12:13:28', NULL);
INSERT INTO "public"."guest" VALUES (32, '127.0.0.1', 'Chrome', '2020-10-12 12:13:43', '2020-10-12 12:13:43', NULL);
INSERT INTO "public"."guest" VALUES (33, '127.0.0.1', 'Chrome', '2020-10-12 12:13:49', '2020-10-12 12:13:49', NULL);
INSERT INTO "public"."guest" VALUES (34, '127.0.0.1', 'Chrome', '2020-10-12 12:15:50', '2020-10-12 12:15:50', NULL);
INSERT INTO "public"."guest" VALUES (35, '127.0.0.1', 'Chrome', '2020-10-12 12:44:33', '2020-10-12 12:44:33', NULL);
INSERT INTO "public"."guest" VALUES (36, '127.0.0.1', 'Chrome', '2020-10-12 13:13:05', '2020-10-12 13:13:05', NULL);
INSERT INTO "public"."guest" VALUES (37, '127.0.0.1', 'Chrome', '2020-10-12 14:05:24', '2020-10-12 14:05:24', NULL);
INSERT INTO "public"."guest" VALUES (38, '127.0.0.1', 'Chrome', '2020-10-12 14:09:43', '2020-10-12 14:09:43', NULL);
INSERT INTO "public"."guest" VALUES (39, '127.0.0.1', 'Chrome', '2020-10-12 14:37:08', '2020-10-12 14:37:08', NULL);
INSERT INTO "public"."guest" VALUES (40, '127.0.0.1', 'Chrome', '2020-10-12 14:41:06', '2020-10-12 14:41:06', NULL);
INSERT INTO "public"."guest" VALUES (41, '127.0.0.1', 'Chrome', '2020-10-12 15:24:38', '2020-10-12 15:24:38', NULL);
INSERT INTO "public"."guest" VALUES (42, '127.0.0.1', 'Chrome', '2020-10-12 16:59:47', '2020-10-12 16:59:47', NULL);
INSERT INTO "public"."guest" VALUES (43, '127.0.0.1', 'Chrome', '2020-10-12 17:04:50', '2020-10-12 17:04:50', NULL);
INSERT INTO "public"."guest" VALUES (44, '127.0.0.1', 'Chrome', '2020-10-12 18:43:50', '2020-10-12 18:43:50', NULL);
INSERT INTO "public"."guest" VALUES (45, '127.0.0.1', 'Chrome', '2020-10-12 18:53:38', '2020-10-12 18:53:38', NULL);
INSERT INTO "public"."guest" VALUES (46, '127.0.0.1', 'Chrome', '2020-10-12 18:53:42', '2020-10-12 18:53:42', NULL);
INSERT INTO "public"."guest" VALUES (47, '127.0.0.1', 'Chrome', '2020-10-12 19:26:15', '2020-10-12 19:26:15', NULL);
INSERT INTO "public"."guest" VALUES (48, '127.0.0.1', 'Chrome', '2020-10-12 20:39:33', '2020-10-12 20:39:33', NULL);
INSERT INTO "public"."guest" VALUES (49, '127.0.0.1', 'Chrome', '2020-10-12 21:11:56', '2020-10-12 21:11:56', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."migrations";
CREATE TABLE "public"."migrations" (
  "id" int4 NOT NULL DEFAULT nextval('migrations_id_seq'::regclass),
  "migration" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "batch" int4 NOT NULL
)
;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO "public"."migrations" VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO "public"."migrations" VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO "public"."migrations" VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS "public"."password_resets";
CREATE TABLE "public"."password_resets" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0)
)
;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO "public"."password_resets" VALUES ('admin@admin.com', '$2y$10$fJpnijVNA1tI8bGG9ozdreP01yxQ73v1ZqByKM97DefC1TOlGsr8S', '2020-10-09 13:25:35');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" int8 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email_verified_at" timestamp(0),
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "remember_token" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (1, 'Admin User', 'admin@admin.com', NULL, '$2y$10$Rw6gYQeESlpuGKcNMnJJG.t1UQZIJ6r2EfMTI8Vwl6/h2Z6aO87P6', 'dTmCe1YpnSqv53TTrni4rVBCSQfxytxBb0zUZKPBScrr6HmSUDMucgPS2BEP', '2020-10-08 20:37:22', '2020-10-08 20:37:22');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."failed_jobs_id_seq"
OWNED BY "public"."failed_jobs"."id";
SELECT setval('"public"."failed_jobs_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."guest_pg_id_seq"
OWNED BY "public"."guest"."pg_id";
SELECT setval('"public"."guest_pg_id_seq"', 50, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."migrations_id_seq"
OWNED BY "public"."migrations"."id";
SELECT setval('"public"."migrations_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq"
OWNED BY "public"."users"."id";
SELECT setval('"public"."users_id_seq"', 2, true);

-- ----------------------------
-- Uniques structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_uuid_unique" UNIQUE ("uuid");

-- ----------------------------
-- Primary Key structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table guest
-- ----------------------------
ALTER TABLE "public"."guest" ADD CONSTRAINT "guest_pkey" PRIMARY KEY ("pg_id");

-- ----------------------------
-- Primary Key structure for table migrations
-- ----------------------------
ALTER TABLE "public"."migrations" ADD CONSTRAINT "migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table password_resets
-- ----------------------------
CREATE INDEX "password_resets_email_index" ON "public"."password_resets" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_email_unique" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");
