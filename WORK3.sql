create database OC;

USE OC;

create table Persons(ID int NOT NULL, FirstName varchar(255) NOT NULL, LastName varchar(255), Age int NOT NULL, unique(ID), primary key(ID));




INSERT into Persons(ID,FirstName,LastName,Age)
Values('1','Heisen','Berg','27'),('2','Biju','Mon','44'),('3','Narendra','Modi','90');


create table orders(OrderID int NOT NULL, OrderNo int  NOT NULL, PersonID int NOT NULL, primary key(OrderID), foreign key(PersonID) references Persons(ID));

INSERT into orders(OrderID,OrderNo,PersonID)
values('11','1234','2'),('12','1034','2'),('23','1023','1');



SELECT OrderID, FirstName, OrderNo
FROM oc.orders
INNER JOIN persons ON persons.ID = orders.PersonID;

SELECT OrderID, FirstName, OrderNo 
FROM oc.orders
LEFT JOIN persons ON persons.ID = orders.PersonID
ORDER BY persons.FirstName;

SELECT OrderID, FirstName, OrderNo
FROM oc.orders
RIGHT JOIN persons ON persons.ID = orders.PersonID
ORDER BY persons.FirstName;

SELECT OrderID, FirstName, OrderNo
FROM oc.orders
CROSS JOIN persons;