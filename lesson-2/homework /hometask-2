Basic-Level Tasks (10)

CREATE DATABASE Employees1
USE Employees1


CREATE TABLE Employees1 (Emp_ID INT, first_Name VARCHAR(50), Salary DECIMAL(10,2));




INSERT INTO Employees1 (Emp_ID, first_Name, Salary)
VALUES
(1, 'Ali', 4000),
(2, 'Dilshod', 5000),
(3, 'Malika', 6000);


UPDATE Employees1
SET Salary = 7000
WHERE Emp_ID = 1;

DELETE FROM Employees1
WHERE Emp_ID=2

--DELETE, TRUNCATE, DROP

--DELETE - satrlarni o'chiradi va WHERE bilan filtirlash mumkin.
--TRUNCATE - bu butun jadvaldagi barcha satrlarni tezda o'chiradi
--DROP -  bu jadvalni butunlayda o'chiradi va tuzulma o'chib ketadi.



ALTER TABLE employees1
ALTER COLUMN first_Name VARCHAR(100);


ALTER TABLE Employees1
ADD Department VARCHAR(50);

ALTER TABLE employees1
ALTER COLUMN Salary FLOAT;

CREATE TABLE Departments1 (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50));

TRUNCATE TABLE Employees1

Intermediate-Level Tasks (6)

INSERT INTO Departments1 (DepartmentID, DepartmentName)
SELECT v.DepartmentID, v.DepartmentName
FROM (VALUES
    (1, 'Management'),
    (2, 'Sales'),
    (3, 'Production'),
    (4, 'Logistics'),
    (5, 'HR')
) AS v(DepartmentID, DepartmentName);


UPDATE Employees1
SET Department='Management'
WHERE Salary>5000;
Select * from Employees1

TRUNCATE TABLE Employees1

ALTER TABLE Employees1
DROP COLUMN Department;

EXEC sp_rename 'Employees1', 'StafMembers';


DROP TABLE Departments1

Advanced-Level Tasks (9)


CREATE TABLE Products 
(ProductID INT PRIMARY KEY, 
ProductName VARCHAR(50), 
Category VARCHAR(50),
Price DECIMAL(10,2));


ALTER TABLE Products
ADD CONSTRAINT CK_Products_Price_Positive CHECK (Price > 0);

ALTER TABLE Products
ADD StockQuantity INT CONSTRAINT DF_Products_Stock Default(50);

EXEC sp_rename 'Products.Category', 'ProductsCategory';

Select * from Products

INSERT INTO  Products (ProductID, ProductName, ProductsCategory, Price, StockQuantity)
VALUES
 (1, 'Computer', 'Technical', 1500, 65),
 (2, 'Mobilephone', 'Technical', 900, 44),
 (3, 'Carpet', 'Textile', 400, 25),
 (4, 'Sneakers', 'Footwear', 150, 18),
 (5, 'Ball', 'Sportsgoods', 100, 10);
 

 SELECT * 
 INTO Products_Backup from Products

 EXEC sp_rename 'Products', 'Inventory';
 Select * from Inventory

 ALTER TABLE Inventory
ALTER COLUMN Price FLOAT NOT NULL;

ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000,5);
