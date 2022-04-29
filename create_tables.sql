DROP TABLE IF EXISTS  Merchant_category CASCADE;
DROP TABLE IF EXISTS  Card_holder CASCADE;
DROP TABLE IF EXISTS  Credit_card CASCADE;
DROP TABLE IF EXISTS  Merchant CASCADE;
DROP TABLE IF EXISTS  Transaction CASCADE;

CREATE TABLE Merchant_category (
	id INT PRIMARY KEY NOT NULL,
	name VARCHAR(255)
);

CREATE TABLE Card_holder(
	id INT PRIMARY KEY NOT NULL,
	name VARCHAR(255)
);

CREATE TABLE Credit_card(
	card VARCHAR(20) NOT NULL,
	cardholder_id INT,
	FOREIGN KEY (cardholder_id) REFERENCES Card_holder(id)
);

CREATE TABLE Merchant(
	id INT PRIMARY KEY NOT NULL,
	name VARCHAR(255),
	id_merchant_category INT,
	FOREIGN KEY (id_merchant_category) REFERENCES Merchant_category(id)
);

CREATE TABLE Transaction (
	id INT PRIMARY KEY NOT NULL,
	date TIMESTAMP,
	amount DECIMAL,
	card VARCHAR(20),
	id_merchant INT,
	FOREIGN KEY (id_merchant) REFERENCES Merchant(id)
);