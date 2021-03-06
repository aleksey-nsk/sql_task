/* Create managers table */
CREATE TABLE managers
(
	manager     int             NOT NULL,
	first_name  varchar(50)     NOT NULL,
	surname     varchar(50)     NOT NULL,
	birthday    varchar(100)    NULL,
	category    int             NOT NULL,
	activated   datetime        NOT NULL,
	removed     datetime        NULL,
	phone       varchar(100)    NULL,
	bonus       numeric(18,4)   NULL
);

/* Create dogovors table */
CREATE TABLE dogovors
(
	dogovor     int             NOT NULL,
	first_name  varchar(50)     NOT NULL,
	surname     varchar(50)     NOT NULL,
	birthday    varchar(100)    NULL,
	manager     int             NOT NULL,
	activated   datetime        NOT NULL,
	removed     datetime        NULL,
	phone       varchar(100)    NULL
);

/* Create sales table */
CREATE TABLE sales
(
	sale_id         int             NOT NULL,
	sale_date       varchar(50)     NOT NULL,
	dogovor         int             NOT NULL,
	product         varchar(100)    NOT NULL,
	product_count   int             NOT NULL,
	price           numeric(18,4)   NOT NULL,
	discount        numeric(12,4)   NULL,
	summ            numeric(18,4)   NOT NULL
);

/* ============================================================================ */

/* Fill managers table */
INSERT managers(manager, first_name, surname, birthday, category, activated, removed, phone, bonus)
VALUES 
	('124', 'Петр', 'Александров', '12.06.85', '1', '08.10.10', '12.08.12', '89131245789', '500'),
	('214', 'Дмитрий', 'Каспаров', '18.09.91', '2', '09.12.11', NULL, '89133265987', '2000'),
	('512', 'Виктор', 'Батуров', '20.01.75', '5', '01.05.12', NULL, '89132536148', '10000') 

/* Fill dogovors table */
INSERT dogovors(dogovor, first_name, surname, birthday, manager, activated, removed, phone)
VALUES 
	('124578', 'Иван', 'Сидоров', '25.06.77', '124', '01.06.12', NULL, '89231234567'),
	('4578', 'Александр', 'Чубайс', '16.09.85', '214', '24.06.12', '16.08.12', '89239874563'),
	('9874546', 'Мария', 'Вексельберг', '26.02.80', '512', '15.07.12', NULL, '89239632587'),
	('4457', 'Алена', 'Абрамович', '21.11.91', '214', '30.06.12', '05.08.12', '89231478523'),
	('4575', 'Василий', 'Медведев', '30.01.92', '512', '30.07.12', NULL, '89239513578')

/* Fill sales table */
INSERT sales(sale_id, sale_date, dogovor, product, product_count, price, discount, summ)
VALUES 
	('1', '01.08.12', '124578', 'продукт_А', '1', '100', NULL, '100'),
	('2', '01.08.12', '4578', 'продукт_Б', '2', '500', NULL, '1000'),
	('3', '01.08.12', '9874546', 'продукт_А', '3', '100', NULL, '300'),
	('4', '01.08.12', '4457', 'продукт_Б', '4', '500', NULL, '2000'),
	('5', '02.08.12', '124578', 'продукт_В', '5', '300', NULL, '1500'),
	('6', '01.08.12', '4575', 'продукт_Б', '6', '500', NULL, '3000')

/* ============================================================================ */

/* Create Primary Keys and Foreign Keys */

ALTER TABLE managers
ADD PRIMARY KEY (manager);

ALTER TABLE dogovors
ADD PRIMARY KEY (dogovor);

ALTER TABLE sales
ADD PRIMARY KEY (sale_id);

ALTER TABLE dogovors
ADD FOREIGN KEY (manager) REFERENCES managers;

ALTER TABLE sales
ADD FOREIGN KEY (dogovor) REFERENCES dogovors;

/* ============================================================================ */


