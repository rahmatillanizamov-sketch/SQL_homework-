--EASY

--1)DATA - bu ma'lumotlar bazasi faqat tartiblanmagan bo'ladi. Ya'ni xom shaklda bp'ladi
--DATABASE - bu ma'lumotlar ba'zasi bo'lib tartiblangan ma'lumotlar bo'ladi. Uni boshqarish va qayta ishlash mumkin, tahrirlash mumkin.
--RELATIONAL DATABAS - bu qator (row) va ustindan (column) iborat jadvallarni saqlaydi. Va ular o'rtasida bo'g'lanadi.
--TABLE- bu Database ichidagi jadval bo'lib har bir qatorda ma'lumot saqlaydi. Ya'ni ism, raqam, manzil ko'rinishida bo'lishi mumkin.
--2) High Security- Ma'lumotlarni saqlaydi xavsiz saqlaydi.Unga kirishni minimal xavfsiz darajaga tushuradi.
--Scalability and Performance- kichik ma'lumotlardan tortib to eng kattasigacha ma'lumotlarni boshqarish imkonini beradi.
--Data Recovery and Backup- bu  agar  SQLda ma'lumotlar biror xato tufayli yo'qolib qolsa yoki o'chib ketsa uni qayta tiklash va nusxa olishda yordam beradi.
--Integration Services- bu turli xil manbaalardan kelgan ma'lumotlarni birlashtirish, ko'chirish va o'zgartirishga yordam beradi. Va bu o'z navbatida manbaalardan
--kelgan ma'lumotlar bilan ishlash osonlashtiradi.

--Business Intelligence and Reporting- bu SQLda biznes tahlil qilish va hisobat tayyorlashda yordam beradi.
 

--MEDIUM


CREATE DATABASE School

USE School
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
); 

SELECT * FROM Students


6. --SQL Server- bu haqiqiy dasturiy mexanizm (server) bo‘lib, so'rovlarni bajaradi, xavfsizlikni ta'minlaydi, katta hajmdagi ma'lumotlarni boshqaradi, qayta ishlaydi va hakozo. 
 --SSMS (SQL Server Management Studio)- bu dasturchilar, administratorlar va tahlilchilar SQL Server bilan qulay ishlashi uchun mo‘ljallangan. Bu ma'lumotlar bazasi emas balki SQL bilan ishlashni osonlashtiruvchi tizim.

--SQL (Structured Query Language) -bu ma’lumotlarni so‘rash (query), qo‘shish, yangilash va o‘chirish imkonini beradi.


--HARD 


7) --DQL - Faqat so‘rash (SELECT)
--DML - Ma’lumotlarni o‘zgartirish (INSERT, UPDATE, DELETE)

--DDL - Struktura yaratish/yo‘qotish (CREATE, ALTER, DROP)

--DCL - Huquqlar boshqaruvi (GRANT, REVOKE)

--TCL - Tranzaksiyalarni boshqarish (COMMIT, ROLLBACK)
8)   SELECT * FROM Students
INSERT INTO Students (StudentID, Name, Age) VALUES
(1, 'Jahon', 19),
(2, 'Akmal', 20),
(3, 'Shahlo', 21);

9)-- Ketma-ketlikda.
--1.Fayni ko'chirib olingan
--2. SQL serverga save qilingan.
--3. SSMS ochilgan va server bilan bog'langan.
--4. Database orqali ma'lumotlar qayta tiklangan.
--5 Select orqali asosiy ekranga olib chiqilgan.
--6. Tanlangan va qayta ishlangan.

