CREATE DATABASE HaLLoPharmacy
GO
USE HaLLoPharmacy
GO

-- Question : A. Create a database system using DDL syntax that relevant with sales and purchase transactions.

-- Create Table Employee
CREATE TABLE Employee( 
	EmployeeID CHAR(5)PRIMARY KEY CHECK (EmployeeID LIKE 'EM[0-9][0-9][0-9]') NOT NULL,
	EmployeeName VARCHAR(100) NOT NULL,
	EmployeeEmail VARCHAR(100) CHECK(EmployeeEmail LIKE '%@hallo.com') NOT NULL,
	EmployeePhoneNumber VARCHAR(20) NOT NULL,
	EmployeeAddress VARCHAR(200) NOT NULL,
	EmployeeDoB DATE NOT NULL,
	EmployeeGender VARCHAR(20) CHECK(EmployeeGender = 'Male' OR EmployeeGender ='Female') NOT NULL,
	EmployeeSalary VARCHAR(100) NOT NULL
)
-- Create Table Customer
CREATE TABLE Customer(
	CustomerID CHAR(5) PRIMARY KEY CHECK(CustomerId LIKE 'CU[0-9][0-9][0-9]') NOT NULL,
	CustomerName VARCHAR(100) NOT NULL,
	CustomerEmail VARCHAR(100) CHECK(CustomerEmail LIKE '%@hallo.com') NOT NULL,
	CustomerPhoneNumber varchar(20) NOT NULL,
	CustomerAddress VARCHAR(200) NOT NULL,
	CustomerDoB DATE NOT NULL,
	CustomerGender VARCHAR(20) CHECK(CustomerGender = 'Male' OR CustomerGender ='Female') NOT NULL,
	CustomerPassword VARCHAR(100) NOT NULL
)
-- Create Table Vendor
CREATE TABLE Vendor(
	VendorID CHAR(5) PRIMARY KEY CHECK (VendorID LIKE 'VN[0-9][0-9][0-9]') NOT NULL,
	VendorName VARCHAR(100) CHECK (LEN(VendorName)>=3) NOT NULL,
	VendorEmail VARCHAR(100) CHECK(VendorEmail LIKE '%.com') NOT NULL,
	VendorPhoneNumber VARCHAR (20) NOT NULL,
	VendorAddress VARCHAR(200) NOT NULL,
	EstablishedYear VARCHAR(20) NOT NULL
)
-- Create Table Medicine
CREATE TABLE Medicine(
	MedicineID char(5) PRIMARY KEY CHECK(MedicineId LIKE 'MD[0-9][0-9][0-9]') NOT NULL,
	MedicineName VARCHAR(20) NOT NULL,
	MedicineDescription VARCHAR(1000) NOT NULL,
	MedicinePrice INT CHECK(MedicinePrice BETWEEN 5000 AND 100000) NOT NULL,
	MedicineStock INT NOT NULL,
	CategoryID char(5) CHECK(CategoryID LIKE 'CT[0-9][0-9][0-9]') NOT NULL
)
-- Create Table Category
CREATE TABLE MedicineCategory(
	CategoryID char(5) PRIMARY KEY CHECK(CategoryID LIKE 'CT[0-9][0-9][0-9]') NOT NULL,
	CategoryName VARCHAR(100) CHECK(CategoryName NOT LIKE 'Amidopyrine' OR CategoryName NOT LIKE 'Phenacetin' OR CategoryName NOT LIKE 'Methaqualone') NOT NULL
)
-- Create Table Sales Transaction
CREATE TABLE SalesTransaction(
	SalesTransactionID CHAR(5) PRIMARY KEY CHECK(SalesTransactionID LIKE 'SL[0-9][0-9][0-9]') NOT NULL,
	EmployeeID CHAR(5) FOREIGN KEY REFERENCES Employee(EmployeeID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	CustomerID CHAR(5) FOREIGN KEY REFERENCES Customer(CustomerID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	SalesTransactionDate DATE NOT NULL
)
-- Create Table Sales Transaction Detail
CREATE TABLE SalesTransactionDetail(
	SalesTransactionID CHAR(5) FOREIGN KEY REFERENCES SalesTransaction(SalesTransactionID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	MedicineID CHAR(5) FOREIGN KEY REFERENCES Medicine(MedicineID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	SalesQuantityEach INT NOT NULL
)
-- Create Table Purchase Transaction
CREATE TABLE PurchaseTransaction(
	PurchaseTransactionID CHAR(5) PRIMARY KEY CHECK(PurchaseTransactionID LIKE 'PC[0-9][0-9][0-9]') NOT NULL,
	VendorID CHAR(5) FOREIGN KEY REFERENCES Vendor(VendorID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	EmployeeID CHAR(5) FOREIGN KEY REFERENCES Employee(EmployeeID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	PurchaseTransactionDate DATE NOT NULL
)
-- Create Table Purchase Transaction Detail
CREATE TABLE PurchaseTransactionDetail(
	PurchaseTransactionID CHAR(5) FOREIGN KEY REFERENCES PurchaseTransaction(PurchaseTransactionID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	MedicineID CHAR(5) FOREIGN KEY REFERENCES Medicine(MedicineID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	PurchaseQuantityEach INT NOT NULL
)
