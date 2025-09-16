create database product;

USE product ;
CREATE TABLE product(Product_ID int NOT NULL,Product_Name varchar(255) NOT NULL, Product_Price float NOT NULL );

INSERT INTO product(Product_ID,Product_Name,Product_Price)
VALUES('1','Harpic','150'),('22','Dettol','100'),('19','EXO','50'),('4','Comfort','250');


SELECT min(Product_price) AS Smallest_Price
FROM product;

SELECT max(Product_price) AS Largest_Price
FROM product;




SELECT COUNT(Product_price) AS COUNTS
FROM product;

SELECT AVG(Product_price) AS Average
FROM product;

SELECT SUM(Product_price) AS Total
FROM product;




SELECT * FROM product
where Product_Name LIKE 'h%';

SELECT * FROM product
where Product_Name LIKE '%o';

SELECT * FROM product
where Product_Name LIKE '%to%';

SELECT * FROM product
where Product_Name LIKE '__O%';




SELECT * FROM product 
where Product_Price BETWEEN 100 AND 150;




SELECT * FROM product
where Product_Price in ('150','100');


