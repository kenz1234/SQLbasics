create database ORGANIZATION;

use ORGANIZATION;
create table Worker(
WORKER_ID INT NOT NULL, 
FIRST_NAME varchar(255) NOT NULL,
LAST_NAME varchar(255) NOT NULL,
SALARY float NOT NULL , 
JOINING_DATE DATE NOT NULL, 
DEPARTMENT varchar(255) NOT NULL, 
primary key(WORKER_ID));


create table Bonus(
WORKER_REF_ID INT NOT NULL, 
BONUS_DATE DATE NOT NULL, 
BONUS_AMOUNT float NOT NULL,
foreign key(WORKER_REF_ID) references Worker(WORKER_ID));


insert INTO Worker(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
VALUES('001', 'Monika', 'Arora', '100000', '2014-02-20', 'HR'),
('002', 'Niharika', 'Verma', '80000', '2014-06-11', 'Admin'),
('003', 'Vishal', 'Singhal', '300000', '2014-02-20', 'HR'),
('004', 'Amitabh', 'Singh', '500000', '2014-02-20', 'Admin'),
('005', 'Vivek', 'Bhati', '500000', '2014-06-11', 'Admin'),
('006', 'Vipul', 'Diwan', '200000', '2014-06-11', 'Account'),
('007', 'Satish', 'Kumar', '75000', '2014-01-20', 'Account'),
('008', 'Geetika', 'Chauhan', '90000', '2014-04-11', 'Admin');



INSERT INTO Bonus(WORKER_REF_ID,BONUS_DATE,BONUS_AMOUNT)
VALUES('1', '2016-02-20', '5000'),
('2', '2016-06-11', '3000'),
('3', '2016-02-20', '4000'),
('1', '2016-02-20', '4500'),
('2', '2016-06-11', '3500');


SELECT FIRST_NAME AS WORKER_NAME
FROM Worker;

SELECT UPPER(FIRST_NAME) AS FIRST_NAME_UPPER
FROM Worker;

SELECT FIRST_NAME
FROM Worker
ORDER BY FIRST_NAME ASC;

SELECT *
FROM Worker
WHERE FIRST_NAME in ('Satish','Abin');

SELECT *
FROM Worker
WHERE FIRST_NAME not in ('Vipul','Satish');

SELECT *
FROM Worker
WHERE DEPARTMENT = 'Admin';

SELECT *
FROM Worker
WHERE FIRST_NAME LIKE '%a%';

SELECT *
FROM Worker
WHERE FIRST_NAME LIKE '%a';

SELECT *
FROM Worker
WHERE SALARY BETWEEN 100000 AND 500000;

SELECT *
FROM Worker
WHERE JOINING_DATE LIKE '2014-02-__';