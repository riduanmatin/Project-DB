CREATE DATABASE SandwEJ

USE SandwEJ

--
CREATE TABLE StaffEJ(
	StaffID CHAR(5) PRIMARY KEY CHECK(StaffID LIKE 'ST[0-9][0-9][0-9]') NOT NULL,
	StaffName VARCHAR(30),
	StaffGender VARCHAR(10) CHECK(StaffGender LIKE 'Male' OR StaffGender LIKE 'Female'),
	StaffSalary NUMERIC(20,2),
	StaffPhone CHAR(12)
)

--
CREATE TABLE ChefEJ(
	ChefID CHAR(5) PRIMARY KEY CHECK(ChefID LIKE 'CH[0-9][0-9][0-9]') NOT NULL,
	ChefName VARCHAR(30),
	ChefExperience VARCHAR(15) 
	CHECK(ChefExperience LIKE 'Beginner' OR ChefExperience LIKE 'Advance' OR ChefExperience LIKE 'Expert')
)

CREATE TABLE CustomerEJ(
	CustomerID CHAR(5) PRIMARY KEY CHECK(CustomerID LIKE 'CS[0-9][0-9][0-9]') NOT NULL,
	CustomerName VARCHAR(30),
	CustomerGender VARCHAR(10) CHECK(CustomerGender LIKE 'Male' OR CustomerGender LIKE 'Female'),
	CustomerDOB DATE,
	CustomerPhone CHAR(12)
)

CREATE TABLE VendorEJ(
	VendorID CHAR(5) PRIMARY KEY CHECK(VendorID LIKE 'VE[0-9][0-9][0-9]') NOT NULL,
	VendorName VARCHAR(30),
	VendorAddress VARCHAR(50),
	VendorPhone CHAR(12),
	VendorEmail VARCHAR(50) CHECK(VendorEmail LIKE '%@%.com')
)

CREATE TABLE IngredientEJ(
	IngredientID CHAR(5) PRIMARY KEY CHECK(IngredientID LIKE 'IG[0-9][0-9][0-9]') NOT NULL,
	IngredientName VARCHAR(30),
	IngredientPrice INT
)

CREATE TABLE SandwichEJ(
	SandwichID CHAR(5) PRIMARY KEY CHECK(SandwichID LIKE 'SW[0-9][0-9][0-9]') NOT NULL,
	SandwichName VARCHAR(30),
	SandwichSauce VARCHAR(30),
	SandwichPrice INT CHECK(SandwichPrice BETWEEN 5000 AND 500000)
)

CREATE TABLE PurchaseTransactionHeaderEJ(
	PurchaseTransactionID CHAR(5) PRIMARY KEY CHECK(PurchaseTransactionID LIKE 'PH[0-9][0-9][0-9]') NOT NULL,
	StaffID CHAR(5) FOREIGN KEY REFERENCES StaffEJ(StaffID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	VendorID CHAR(5) FOREIGN KEY REFERENCES VendorEJ(VendorID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	TransactionDate DATE CHECK(TransactionDate LIKE GETDATE() OR TransactionDate < GETDATE())
)

CREATE TABLE PurchaseTransactionDetailEJ(
	PurchaseTransactionID CHAR(5) FOREIGN KEY REFERENCES PurchaseTransactionHeaderEJ(PurchaseTransactionID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	IngredientID CHAR(5) FOREIGN KEY REFERENCES IngredientEJ(IngredientID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	PurchaseQty INT NOT NULL,
	PRIMARY KEY(PurchaseTransactionID, IngredientID)
)

CREATE TABLE SalesTransactionHeaderEJ(
	SalesTransactionID CHAR(5) PRIMARY KEY CHECK(SalesTransactionID LIKE 'SH[0-9][0-9][0-9]') NOT NULL,
	StaffID CHAR(5) FOREIGN KEY REFERENCES StaffEJ(StaffID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	CustomerID CHAR(5) FOREIGN KEY REFERENCES CustomerEJ(CustomerID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	TransactionDate DATE CHECK(TransactionDate LIKE GETDATE() OR TransactionDate < GETDATE())
)

CREATE TABLE SalesTransactionDetailEJ(
	SalesTransactionID CHAR(5) FOREIGN KEY REFERENCES SalesTransactionHeaderEJ(SalesTransactionID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	SandwichID CHAR(5) FOREIGN KEY REFERENCES SandwichEJ(SandwichID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	ChefID CHAR(5) FOREIGN KEY REFERENCES ChefEJ(ChefID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	SalesQty INT NOT NULL,
	PRIMARY KEY(SalesTransactionID,SandwichID)
)