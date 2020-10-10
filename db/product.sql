DROP TABLE IF EXISTS product.category;
CREATE TABLE product.category(
	pc_id serial,
	pc_title VARCHAR(40) NOT NULL,
	pc_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	pc_update_at TIMESTAMP,
	pc_delete_at TIMESTAMP,
	PRIMARY KEY (pc_id)
);
INSERT INTO "product"."category" VALUES (1, 'Flats', '2020-10-09 13:22:08.360773', NULL, NULL);
INSERT INTO "product"."category" VALUES (6, 'Sneakers', '2020-10-09 13:22:40.967468', NULL, NULL);
INSERT INTO "product"."category" VALUES (7, 'Wedges', '2020-10-09 13:22:51.724208', NULL, NULL);
INSERT INTO "product"."category" VALUES (2, 'Boots', '2020-10-09 13:23:04.694652', NULL, NULL);
INSERT INTO "product"."category" VALUES (25, 'Sandals', '2020-10-09 13:23:27.233125', NULL, NULL);
INSERT INTO "product"."category" VALUES (3, 'test', '2020-10-09 18:35:09', '2020-10-09 18:37:44', '2020-10-09 18:37:44');
INSERT INTO "product"."category" VALUES (4, 'ok', '2020-10-09 18:35:16', '2020-10-09 18:37:46', '2020-10-09 18:37:46');

DROP TABLE IF EXISTS product.brand;
CREATE TABLE product.brand(
	pb_id serial,
	pb_title VARCHAR(40) NOT NULL,
	pb_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	pb_update_at TIMESTAMP,
	pb_delete_at TIMESTAMP,
	PRIMARY KEY (pb_id)
);
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

DROP TABLE IF EXISTS product.product;
CREATE TABLE product.product(
	pp_id serial,
	pp_id_brand int4 NOT NULL,
	pp_name varchar(200) NOT NULL,
	pp_slug varchar(200) NOT NULL,
	pp_sku varchar(40) NOT NULL,
	pp_price int8 NOT NULL,
	pp_description VARCHAR(200),
	pp_is_displayed BOOL NOT NULL DEFAULT TRUE,
	pp_start_promo TIMESTAMP,
	pp_end_promo TIMESTAMP,
	pp_promo_price int8,
	pp_gender varchar(15) NOT NULL,
	pp_material_upper varchar(50),
	PP_material_outer_sole VARCHAR(50),
	PP_care_label VARCHAR(200),
	PP_measurements VARCHAR(200),
	pp_total_stock int4 NOT NULL,
	pp_final_price int8 NOT NULL,
	pp_most_sold_product_color_id int4 NOT NULL,
	pp_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	pp_update_at TIMESTAMP,
	pp_delete_at TIMESTAMP,
	PRIMARY KEY (pp_id),
	FOREIGN KEY (pp_id_brand) REFERENCES product.brand (pb_id)
);
INSERT INTO "product"."product" VALUES (3700, 78, '4U Sneakers Rose', '401', 160000, '<p>Material : Kanvas, Inner : Double Suede, Outsole : Karet pvc Panjang Insole : 25.5cm<\/p>', 't', '2019-09-14 00:01:00', '2020-06-30 23:30:00', 50000, 'female', 'Kanvas', 'Karet pvc', 'Hindari mencuci dengan detergent berlebih. Gunakan shampoo untuk mempertahankan warna produk.', '<p>36= 22cm.<br \/><br\/>37= 23cm.<br \/><br\/>38= 24cm.<br \/><br\/>39= 25cm.<br \/><br\/>40= 25.5cm.<\/p>', 10, 160000, 6762, '2020-03-03 15:20:00', '2020-07-30 18:09:33', NULL, '4u-sneakers-rose');
INSERT INTO "product"."product" VALUES (3702, 78, '4U Flats Cutaway', '601', 160000, '<p>Material : Kanvas, Inner : Double Suede, Outsole : Javarino antislip Panjang Insole : 25.5cm<\/p>', 't', '2019-09-14 00:01:00', '2020-06-30 23:30:00', 50000, 'female', 'Kanvas', 'Javarino', 'Hindari mencuci dengan detergent berlebih. Gunakan shampoo untuk mempertahankan warna produk.', '<p>36= 22cm.<br \/><br\/>37= 23cm.<br \/><br\/>38= 24cm.<br \/><br\/>39= 25cm.<br \/><br\/>40= 25.5cm.<\/p>', 8, 160000, 6764, '2020-03-03 15:20:00', '2020-07-30 18:09:34', NULL, '4u-flats-cutaway');
INSERT INTO "product"."product" VALUES (3697, 78, '4U Wedges Fanta', '101', 160000, '<p>Material : Kanvas, Inner : Double Suede, Outsole : Javarino antislip Panjang Insole : 25.5cm<\/p>', 't', '2019-09-14 00:01:00', '2020-06-30 23:30:00', 50000, 'female', 'Kanvas', 'Javarino', 'Hindari mencuci dengan detergent berlebih. Gunakan shampoo untuk mempertahankan warna produk.', '<p>36= 22cm.<br \/><br\/>37= 23cm.<br \/><br\/>38= 24cm.<br \/><br\/>39= 25cm.<br \/><br\/>40= 25.5cm.<\/p>', 10, 160000, 6759, '2020-03-03 15:20:00', '2020-07-30 18:09:30', NULL, '4u-wedges-fanta');
INSERT INTO "product"."product" VALUES (2427, 32, 'Alseno Kids Boots Aston', 'T612ALB06B', 649000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/>- Terdapat motif jahit dan aksesoris zipper<br \/><br\/><br \/><br\/>- Warna Brown<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 99000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/>33 = 21 cm<br \/><br\/><br \/><br\/>34 = 21,5 cm<br \/><br\/><br \/><br\/>35 = 22,5 cm<\/p>', 5, 99000, 4711, '2019-04-23 19:40:43', '2020-08-14 15:44:15', NULL, 'alseno-kids-boots-aston');
INSERT INTO "product"."product" VALUES (3701, 78, '4U Flats Strapped', '501', 160000, '<p>Material : Kanvas, Inner : Double Suede, Outsole : Javarino antislip Panjang Insole : 25.5cm<\/p>', 't', '2019-09-14 00:01:00', '2020-10-11 23:30:00', 50000, 'female', 'Kanvas', 'Javarino', 'Hindari mencuci dengan detergent berlebih. Gunakan shampoo untuk mempertahankan warna produk.', '<p>36= 22cm.<br \/><br\/>37= 23cm.<br \/><br\/>38= 24cm.<br \/><br\/>39= 25cm.<br \/><br\/>40= 25.5cm.<\/p>', 8, 160000, NULL, '2020-03-03 15:20:00', '2020-07-30 18:09:34', NULL, '4u-flats-strapped');
INSERT INTO "product"."product" VALUES (2424, 32, 'Alseno Kids Sandal Alfonse', 'A612ALA014', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Black dan White<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 'f', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/>33 = 21 cm<br \/><br\/><br \/><br\/>34 = 21,5 cm<br \/><br\/><br \/><br\/>35 = 22 cm<\/p>', 3, 89000, 4706, '2019-04-23 19:40:43', '2020-10-09 15:15:18', NULL, 'alseno-kids-sandal-alfonse');
INSERT INTO "product"."product" VALUES (2440, 32, 'Alseno Kids Sandals Bruce', 'T704ALA17A', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Black<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>22 = 13,5 cm<br \/><br\/><br \/><br\/>23 = 14 cm<br \/><br\/><br \/><br\/>24 = 14,5 cm<br \/><br\/><br \/><br\/>25 = 15,5 cm<\/p>', 0, 89000, NULL, '2019-04-23 19:40:45', '2020-08-14 15:44:17', NULL, 'alseno-kids-sandals-bruce');
INSERT INTO "product"."product" VALUES (2423, 32, 'Alseno Kids Sandal Alistair', 'A612ALA013', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Orange<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/>33 = 21 cm<br \/><br\/><br \/><br\/>34 = 21,5 cm<br \/><br\/><br \/><br\/>35 = 22 cm<\/p>', 5, 89000, 4705, '2019-04-23 19:40:43', '2020-10-09 15:31:05', '2020-10-09 15:31:05', 'alseno-kids-sandal-alistair');
INSERT INTO "product"."product" VALUES (2426, 32, 'Alseno Kids Sandals Barry', 'A704ALA20', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Orange<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>22 = 15 cm<br \/><br\/><br \/><br\/>23 = 15,5 cm<br \/><br\/><br \/><br\/>24 = 16 cm<br \/><br\/><br \/><br\/>25 = 16,5 cm<br \/><br\/><br \/><br\/>26 = 17,5 cm<\/p>', 4, 89000, NULL, '2019-04-23 19:40:43', '2020-08-14 15:41:43', NULL, 'alseno-kids-sandals-barry');
INSERT INTO "product"."product" VALUES (2437, 32, 'Alseno Kids Sandals Bastian', 'T704ALA15B', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/>- Terdapat motif jahit<br \/><br\/><br \/><br\/>- Warna Beige dan Red<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>26 = 16 cm<br \/><br\/><br \/><br\/>27 = 17 cm<br \/><br\/><br \/><br\/>28 = 17,5 cm<br \/><br\/><br \/><br\/>29 = 18 cm<br \/><br\/><br \/><br\/>30 = 18,5 cm<\/p>', 0, 89000, NULL, '2019-04-23 19:40:44', '2020-08-14 15:44:16', NULL, 'alseno-kids-sandals-bastian');
INSERT INTO "product"."product" VALUES (2439, 32, 'Alseno Kids Sandals Beck', 'T704ALA16B', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Navy dan Grey<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>26 = 16 cm<br \/><br\/><br \/><br\/>27 = 17 cm<br \/><br\/><br \/><br\/>28 = 17,5 cm<br \/><br\/><br \/><br\/>29 = 18 cm<br \/><br\/><br \/><br\/>30 = 18,5 cm<\/p>', 11, 89000, 4728, '2019-04-23 19:40:45', '2020-08-14 15:44:17', NULL, 'alseno-kids-sandals-beck');
INSERT INTO "product"."product" VALUES (2441, 32, 'Alseno Kids Sandals Benedict', 'T704ALA17B', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Black dan Navy<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>26 = 16,5 cm<br \/><br\/><br \/><br\/>27 = 17 cm<br \/><br\/><br \/><br\/>28 = 17,5 cm<br \/><br\/><br \/><br\/>29 = 18 cm<br \/><br\/><br \/><br\/>30 = 18,5 cm<\/p>', 10, 89000, NULL, '2019-04-23 19:40:45', '2020-08-14 15:44:17', NULL, 'alseno-kids-sandals-benedict');
INSERT INTO "product"."product" VALUES (2443, 32, 'Alseno Kids Sandals Bennett', 'T704ALA18B', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Warna Brown dan Red<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>26 = 16 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>27 = 17 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>28 = 17,5 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>29 = 18 cm<br \/><br\/><br \/><br', 12, 89000, NULL, '2019-04-23 19:40:45', '2020-08-14 15:44:17', NULL, 'alseno-kids-sandals-bennett');
INSERT INTO "product"."product" VALUES (3698, 78, '4U Flats Side 201', '201', 160000, '<p>Material : Kanvas, Inner : Double Suede, Outsole : Javarino antislip Panjang Insole : 25.5cm<\/p>', 't', '2019-09-14 00:01:00', '2020-06-30 23:30:00', 50000, 'female', 'Kanvas', 'Javarino', 'Hindari mencuci dengan detergent berlebih. Gunakan shampoo untuk mempertahankan warna produk.', '<p>36= 22cm.<br \/><br\/>37= 23cm.<br \/><br\/>38= 24cm.<br \/><br\/>39= 25cm.<br \/><br\/>40= 25.5cm.<\/p>', 10, 160000, 6760, '2020-03-03 15:20:00', '2020-07-30 18:09:30', NULL, '4u-flats-side-201');
INSERT INTO "product"."product" VALUES (3699, 78, '4U Flats Side 301', '301', 160000, '<p>Material : Kanvas, Inner : Double Suede, Outsole : Karet lentur dan anti licin Panjang Insole : 25.5cm<\/p>', 't', '2019-09-14 00:01:00', '2020-06-30 23:30:00', 50000, 'female', 'Kanvas', 'Karet', 'Hindari mencuci dengan detergent berlebih. Gunakan shampoo untuk mempertahankan warna produk.', '<p>36= 22cm.<br \/><br\/>37= 23cm.<br \/><br\/>38= 24cm.<br \/><br\/>39= 25cm.<br \/><br\/>40= 25.5cm.<\/p>', 9, 160000, 6761, '2020-03-03 15:20:00', '2020-07-30 18:09:32', NULL, '4u-flats-side-301');
INSERT INTO "product"."product" VALUES (2442, 32, 'Alseno Kids Sandals Buck', 'T704ALA18A', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Brown<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>22 = 13,5 cm<br \/><br\/><br \/><br\/>23 = 14 cm<br \/><br\/><br \/><br\/>24 = 14,5 cm<br \/><br\/><br \/><br\/>25 = 15,5 cm<\/p>', 0, 89000, NULL, '2019-04-23 19:40:45', '2020-08-14 15:44:17', NULL, 'alseno-kids-sandals-buck');
INSERT INTO "product"."product" VALUES (2425, 32, 'Alseno Kids Sandals Buster', 'A704ALA19', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Black dan Brown<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>22 = 15 cm<br \/><br\/><br \/><br\/>23 = 15,5 cm<br \/><br\/><br \/><br\/>24 = 16 cm<br \/><br\/><br \/><br\/>25 = 16,5 cm<br \/><br\/><br \/><br\/>26 = 17,5 cm<\/p>', 5, 89000, NULL, '2019-04-23 19:40:43', '2020-10-09 15:17:25', NULL, 'alseno-kids-sandals-buster');
INSERT INTO "product"."product" VALUES (2429, 32, 'Alseno Kids Sneakers Alois Jr', 'T612ALB08A', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/>- Terdapat motif jahit<br \/><br\/><br \/><br\/>- Warna Orange dan Brown.<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 99000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>26 = 17 cm<br \/><br\/><br \/><br\/>27 = 17,5 cm<br \/><br\/><br \/><br\/>28 = 18 cm<br \/><br\/><br \/><br\/>29 = 18,5 cm<br \/><br\/><br \/><br\/>30 = 19 cm<\/p>', 12, 99000, NULL, '2019-04-23 19:40:44', '2020-08-14 15:44:15', NULL, 'alseno-kids-sneakers-alois-jr');
INSERT INTO "product"."product" VALUES (2436, 32, 'Alseno Kids Sneakers Arkana', 'T612ALB14B', 649000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/>- Terdapat motif jahit dan hook-pile<br \/><br\/><br \/><br\/>- Warna Beige dan Brown.<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 99000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/>33 = 21 cm<br \/><br\/><br \/><br\/>34 = 21,5 cm<br \/><br\/><br \/><br\/>35 = 22,5 cm<\/p>', 4, 99000, NULL, '2019-04-23 19:40:44', '2020-08-14 15:44:15', NULL, 'alseno-kids-sneakers-arkana');
INSERT INTO "product"."product" VALUES (2434, 32, 'Alseno Kids Sneakers Arlen', 'T612ALB10B', 649000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/>- Terdapat motif jahit<br \/><br\/><br \/><br\/>- Warna Black dan Beige<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 99000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/>33 = 21 cm<br \/><br\/><br \/><br\/>34 = 21,5 cm<br \/><br\/><br \/><br\/>35 = 22,5 cm<\/p>', 8, 99000, NULL, '2019-04-23 19:40:44', '2020-08-14 15:44:15', NULL, 'alseno-kids-sneakers-arlen');
INSERT INTO "product"."product" VALUES (2431, 32, 'Alseno Kids Sneakers Amire Jr', 'T612ALB09A', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/>- Terdapat motif jahit dan hook-pile<br \/><br\/><br \/><br\/>- Warna Brown.<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 99000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>26 = 17 cm<br \/><br\/><br \/><br\/>27 = 17,5 cm<br \/><br\/><br \/><br\/>28 = 18 cm<br \/><br\/><br \/><br\/>29 = 18,5 cm<br \/><br\/><br \/><br\/>30 = 19 cm<\/p>', 0, 99000, NULL, '2019-04-23 19:40:44', '2020-08-14 15:44:15', NULL, 'alseno-kids-sneakers-amire-jr');
INSERT INTO "product"."product" VALUES (2428, 32, 'Alseno Kids Boots Archibald', 'T612ALB07B', 649000, '<p>Product Description:<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Sepatu Alseno Kids boots dengan motif simple.<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Terdapat motif jahit dan hook-pile<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Warna Brown.<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 99000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><', 0, 99000, 4712, '2019-04-23 19:40:44', '2020-08-14 15:44:15', NULL, 'alseno-kids-boots-archibald');
INSERT INTO "product"."product" VALUES (2422, 32, 'Alseno Kids Sandal Ayrton', 'A612ALA012', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Warna Navy<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>31 = 20 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/><br \/><br\/>32 = 20,5 cm<br \/><br\/><br \/><br\/><br \/><br\/><br \/><', 4, 89000, 4704, '2019-04-23 19:40:43', '2020-08-14 15:41:43', NULL, 'alseno-kids-sandal-ayrton');
INSERT INTO "product"."product" VALUES (2438, 32, 'Alseno Kids Sandals Brodie', 'T704ALA16A', 589000, '<p>Product Description:<br \/><br\/><br \/><br\/>- Sepatu Alseno Kids sandal dengan motif yang lucu.<br \/><br\/><br \/><br\/>- Terdapat motif jahit.<br \/><br\/><br \/><br\/>- Warna Navy dan Grey<br \/><br\/><br \/><br\/>- Upper Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Lining Material Polyurethane Leather<br \/><br\/><br \/><br\/>- Insole Material Polyurethane<br \/><br\/><br \/><br\/>- Outsole Material Rubber Sole<\/p>', 't', '2020-01-02 00:00:00', '2020-12-31 23:59:00', 89000, 'male', 'Polyurethane Leather', 'Rubber Sole', 'Hindari dari oli, tinta, detergent, dan air kotor. Penanganan: Air, sikat lembut dan soft cloth', '<p>Measurements :<br \/><br\/><br \/><br\/>22 = 13,5 cm<br \/><br\/><br \/><br\/>23 = 14 cm<br \/><br\/><br \/><br\/>24 = 14,5 cm<br \/><br\/><br \/><br\/>25 = 15,5 cm<\/p>', 2, 89000, 4726, '2019-04-23 19:40:45', '2020-08-14 15:44:17', NULL, 'alseno-kids-sandals-brodie');

DROP TABLE IF EXISTS product.product_category;
CREATE TABLE product.product_category(
	ppc_id serial,
	ppc_id_product int4 not null,
	ppc_id_category int4 NOT NULL,
	ppc_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	ppc_update_at TIMESTAMP,
	ppc_deleted_at TIMESTAMP,
	PRIMARY KEY (ppc_id),
	FOREIGN KEY (ppc_id_product) REFERENCES product.product (pp_id),
	FOREIGN KEY (ppc_id_category) REFERENCES product.category (pc_id)
);
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

DROP TABLE IF EXISTS product.img_product;
CREATE TABLE product.img_product(
	pip_id serial,
	pip_id_product int4 NOT NULL,
	pip_img_path VARCHAR(200) NOT NULL,
	pip_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	pip_update_at TIMESTAMP,
	pip_deleted_at TIMESTAMP,
	PRIMARY KEY (pip_id),
	FOREIGN KEY (pip_id_product) REFERENCES product.product (pp_id)
);

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