DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
	`id` int NOT NULL AUTO_INCREMENT,
    `branch_id` int NOT NULL,
    `cust_id` varchar(5) NOT NULL,
    `address_id` int NOT NULL,
    `emp_id` varchar(5) NOT NULL,
    `product_id` int NOT NULL,
    `type` text NOT NULL,
    `price` int NOT NULL,
    `status` varchar(10) NOT NULL,
    `order_date` datetime NOT NULL,
    
    CONSTRAINT `PK_Order` PRIMARY KEY (`id`)
);

INSERT INTO `order` (branch_id, cust_id, address_id, emp_id, product_id, type, price, status, order_date)
VALUES 
    (15768,'C0125',1,'E0002',16902,'Furniture',2000000,'PAID','2022-03-28 18:06'),
    (15773,'C0126',2,'E0001',16907,'Electrical',4550000,'PAID','2022-03-28 18:06'),
    (15737,'C0127',3,'E0001',16870,'Electrical',3225000,'PAID','2022-03-29 6:16'),
    (15683,'C0128',4,'E0001',16816,'Electrical',500000,'PAID','2022-03-29 6:16'),
    (15721,'C0129',5,'E0002',16854,'Furniture',1345000,'PAID','2022-03-29 6:16'),
    (15688,'C0130',6,'E0002',16821,'Furniture',445200,'PAID','2022-03-27 6:16'),
    (15752,'C0137',7,'E0001',16885,'Electrical',732000,'PAID','2022-03-28 6:16');

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
	`id` int NOT NULL AUTO_INCREMENT,
    `cust_id` varchar(5) NOT NULL,
    `address` text NOT NULL,
    `district` varchar(255) NOT NULL,
    `province` varchar(255) NOT NULL,
    
    CONSTRAINT `PK_Address` PRIMARY KEY (`id`)
);

INSERT INTO `address` (cust_id, address, district, province)
    VALUES
    ('C0125', 'Jl.Satelit Indah II, Surabaya', 'Manukan Kulon', 'Jawa Timur'),
    ('C0126', 'Ji.Indah IV, Bogor', 'Bogor', 'Jawa barat'),
    ('C0127', 'Jl Margonda raya Pancoran mas Depok', 'Depok', 'Jawa barat'),
    ('C0128', 'Perumahan Gading Griya', 'Jakarta', 'DKI Jakarta'),
    ('C0129', 'Griya Tanjung 2 No.15', 'Jakarta', 'DKI Jakarta'),
    ('C0130', 'Kemang Raya IV', 'Jakarta', 'DKI Jakarta'),
    ('C0137', 'JI. Sunter No 55 Jakarta', 'Jakarta', 'DKI Jakarta'),
    ('C0144', 'JI. Bintaro Utama 3', 'Tangerang', 'Banten'),
    ('C0151', 'II Pasar Minggu', 'Jakarta', 'DKI Jakarta'),
    ('C0158', 'Jl. Gurame No. 22C', 'Jakarta', 'DKI Jakarta'),
    ('C0165', 'JI. Pagelaran, Ciomas', 'Bogor', 'Jawa barat');

ALTER TABLE `order`
    ADD CONSTRAINT fk_order_to_address
        FOREIGN KEY (address_id) REFERENCES address(id);
        

SELECT * FROM `order`;
SELECT * FROM `address`;



