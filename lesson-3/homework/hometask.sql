Easy-Level Tasks (10)

--1.BLUK INSERT -  bu katta hajmdagi ma'lumotlarni tashqi fayllarda (text,exel) va boshqa manbaalarni tezda SQL Serverga yuklash uchun ishlatiladi
--2. -TXT(matn fayl)
     --CSV(vergul bilan ajratilgan qiymatlar)
	 --XLS/XLSX(exel)
	 --XML(ma'lumotlarni almashish farmati)
--3. Products jadvalini yaratish uchun: 
--CREATE TABLE Products(
--ProductID INT PRIMARY KEY,
--Productname VARCHAR(50),
--PRICE DECIMAL(10,2));


--4. Products jadvaliga yozuv va ma'lumotlar kiritish uchun: 
--INSERT INTO orqali ya'ni,
INSERT INTO Products (ProductID, Productname, Price)
VALUES
(1, 'Car', 250),
(2, 'mobile', 300),
(3, 'laptop', 350);   ko'rinishda bo'ladi.


--5. NULL and NOT NULL.
-- NUT - qiymat kiritilmasa bo'ladi, bo'sh qoldirish mumkin.
-- NUT NULL - bunga albatta qiymat kiritilishi kerak.

--6. Add a UNIQUE constraint to the ProductName 
-- ALERT TABLE Products
--ADD CONSTRATION uq_Productname UNIQUE (Productname);

--7. Write a comment in a SQL query explaining its purpose.
-- kommentariya yozish (--) shu usulda SQLda yoziladi

--8. Add CategoryID column to the Products table.

--Products jadvaliga CategoryID qo'shish uchun:
-- ALERT TABLE Products
--ADD CategoryID INT; 

--9.Create a table Categories with a CategoryID as PRIMARY.

--Categories jadvalini yartish uchun

-- CREATE TABLE Categories (
--   CategoryID INT  PRIMARY KEY,
--   Categoryname VARCHAR(50) UNIQUE);

-- PRIMARY KEY va Categoryname UNIQUE qilish uchun:
--CREATE TABLE Categories (
    --CategoryID INT PRIMARY KEY,       -Har bir CategoryID yagona bo‘ladi.
    --Categoryname VARCHAR(50) UNIQUE   -Har bir CategoryName takrorlanmaydi.
);

--10.Explain the purpose of the IDENTITY column in SQL Server.


--IDENTITY ustunining SQL maqsadi- bu ustun jadvaliga yangi qator qo'shilganda qimatni avtamatik oshirib borady ya'ni 1, 2, 3.. ko'rinishida .


Medium-Level Tasks (10)

--11. I DO'NT KNOW

--12. Create a FOREIGN KEY in the Products table that references the Categories table.

CREATE TABLE Categories (
   CategoryID INT PRIMARY key,
   CategoryName VARCHAR(50) UNIQUE
 );
 ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
    FOREIGN KEY (CategoryID)
    REFERENCES Categories(CategoryID);

 --13. PRIMARY KEY va UNIQUE KEY farqlari
 --PRIMARY KEY- qatorni noyob indentify qiladi, null qo'yi;maydi.
 --UNIQUE KEY- Ustundasi qiymatlar takrorlanmaydi, Odatda 1ta null ga qo'ysa bo'ladi, 1 ustunda bir nechta bo'lishi mumkin.

 --14. Add a CHECK constraint to the Products table ensuring Price > 0.

 ALTER TABLE Products
ADD CONSTRAINT CHK_Products_Price_Positive
    CHECK (Price > 0);


	--15.Modify the Products table to add a column Stock (INT, NOT NULL).
	ALTER TABLE dbo.Products
ADD Stock INT NOT NULL CONSTRAINT DF_Products_Stock DEFAULT (0);

--16. Use the ISNULL function to replace NULL values in Price column with a 0.


UPDATE dbo.Products
SET Price = ISNULL(Price, 0)
WHERE Price IS NULL;

--17.Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.

--FOREIGN KEY- bu bir jadvaldagi ustun (jadval) boshqa jadvaldagi PRIMARY KEY yoki UNIQUE ustun bilan bog‘lanishini ta’minlaydi.

Hard-Level Tasks (10)
--18.Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.

CREATE TABLE Customerss(
    CustomerssID int primary key,
	Name Varchar(50),
	Age int check (age>=18)
	);
--19.Create a table with an IDENTITY column starting at 100 and incrementing by 10.	
Create table TestIdentity(
    ID int identity(100,10) primary key,
	Name Nvarchar(50)
	);

--20. Write a query to create a composite PRIMARY KEY in a new table OrderDetails.

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);

--21. Explain the use of COALESCE and ISNULL functions for handling NULL values.
--ISNULL - Agar qiymat NULL bo‘lsa, replacement qaytaradi. (faqat 2 argument).

--COALESCE- Null bo‘lmagan birinchi qiymatni qaytaradi (ko‘p argument).

--22. Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.

Create table Employees (
    EmpID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE 
);
--23.Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.
