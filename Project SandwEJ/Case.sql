--1
SELECT CustomerName,
CustomerPhoneNumber = CustomerPhone
FROM CustomerEJ C JOIN SalesTransactionHeaderEJ ST
ON C.CustomerID =  ST.CustomerID 
JOIN SalesTransactionDetailEJ STD
ON STD.SalesTransactionID = ST.SalesTransactionID
WHERE YEAR(TransactionDate) = 2019
GROUP BY CustomerName, CustomerPhone
HAVING SUM(SalesQty) > 3

--2
SELECT StaffName,
[Transaction Count] = COUNT(SalesTransactionID)
FROM StaffEJ S JOIN SalesTransactionHeaderEJ ST
ON S.StaffID = ST.StaffID 
JOIN CustomerEJ C
ON C.CustomerID = ST.CustomerID
WHERE LEFT(CustomerName,1) = 'T' AND
MONTH(CustomerDOB) > 9
GROUP BY StaffName

--3
SELECT [Chef Name] = LOWER(ChefName),
[Average Sandwich per Transaction] = AVG(SalesQty)
FROM ChefEJ CH JOIN SalesTransactionDetailEJ STD
ON CH.ChefID = STD.ChefID
WHERE ChefExperience NOT LIKE 'Beginner'
GROUP BY ChefName
HAVING SUM(SalesQty) > 3

--4
SELECT [Vendor Code] = RIGHT(V.VendorID,3),
[Vendor Name] = REPLACE(VendorName, 'Company', 'Co.'),
[Minimum Item Price] = MIN(IngredientPrice),
[Maximum Item Price] = MAX(IngredientPrice)
FROM VendorEJ V JOIN PurchaseTransactionHeaderEJ PTH
ON V.VendorID = PTH.VendorID
JOIN PurchaseTransactionDetailEJ PTD
ON PTD.PurchaseTransactionID = PTH.PurchaseTransactionID
JOIN IngredientEJ I
ON I.IngredientID = PTD.IngredientID
WHERE VendorEmail LIKE '%@gmail.com' AND 
VendorName LIKE '% % %'
GROUP BY V.VendorID, VendorName

--5
SELECT [Staff Nickname] = LEFT(StaffName, 1) + RIGHT(StaffName, 1),
StaffSalary
FROM StaffEJ S JOIN SalesTransactionHeaderEJ STH
ON S.StaffID = STH.StaffID,
(
	SELECT [Average Salary] = AVG(StaffSalary)
	FROM StaffEJ
) AS ST
WHERE ST.[Average Salary] < StaffSalary
AND CustomerID IN (
	SELECT CustomerID
	FROM CustomerEJ
	WHERE CustomerGender = 'Female'
)
GROUP BY StaffName, StaffSalary


--6
SELECT CustomerName,
[Customer Age] = DATEDIFF(YEAR, CustomerDOB, GETDATE()),
SandwichName,
Quantity = CAST(SalesQty AS VARCHAR) + ' Piece(s)'
FROM SalesTransactionHeaderEJ STH JOIN SalesTransactionDetailEJ STD
ON STH.SalesTransactionID = STD.SalesTransactionID
JOIN SandwichEJ SA
ON SA.SandwichID = STD.SandwichID
JOIN CustomerEJ C
ON C.CustomerID = STH.CustomerID,
(
	SELECT [Average Age] = AVG(DATEDIFF(YEAR, CustomerDOB, GETDATE()))
	FROM CustomerEJ
) AS CU
WHERE SalesQty < 5 AND
DATEDIFF(YEAR, CustomerDOB, GETDATE()) > CU.[Average Age]
GROUP BY CustomerName, CustomerDOB, SalesQty

--7
SELECT [Price] = SandwichPrice + A.[Minimum Price],
SandwichName
FROM SandwichEJ SA JOIN SalesTransactionDetailEJ STD
ON STD.SandwichID = SA.SandwichID,
(
	SELECT [Minimum Price] = MIN(SandwichPrice)
	FROM SandwichEJ
) AS A
WHERE SandwichName LIKE '% %'
GROUP BY SandwichName, SandwichPrice, A.[Minimum Price]
HAVING SUM(SalesQty) BETWEEN 5 AND 25
ORDER BY SandwichName ASC

--8
SELECT StaffName,
[Staff Salary] = 'Rp. ' + REPLACE(CAST(StaffSalary AS VARCHAR), '.00', ''),
Gender = LEFT(StaffGender,1)
FROM StaffEJ,
(
	SELECT [AVG Salary] = AVG(StaffSalary),
	[Minimum Salary] = MIN(StaffSalary)
	FROM StaffEJ
	WHERE StaffGender = 'Male'
) AS S
WHERE StaffSalary BETWEEN S.[Minimum Salary] AND S.[AVG Salary] 

--9
CREATE VIEW [Staff Sales Statistic]
AS
	SELECT StaffName,
	SandwichName,
	[Sales Count] = COUNT(STH.SalesTransactionID),
	[Sales Total] = SUM(SalesQty)
	FROM StaffEJ ST JOIN SalesTransactionHeaderEJ STH
	ON STH.StaffID = ST.StaffID 
	JOIN SalesTransactionDetailEJ STD
	ON STD.SalesTransactionID = STH.SalesTransactionID
	JOIN SandwichEJ SA
	ON SA.SandwichID = STD.SandwichID
	WHERE SandwichName LIKE '% %'
	GROUP BY StaffName, SandwichName
	HAVING SUM(SalesQty) > 1 
GO

SELECT *
FROM [Staff Sales Statistic]

--10
CREATE VIEW [Vendor Statistic]
AS
	SELECT VendorName,
	[Price Range] = MAX(IngredientPrice) - MIN(IngredientPrice),
	[Minimum Item Purchased] = MIN(IngredientPrice),
	[Maximum Item Purchased] = MAX(IngredientPrice)
	FROM VendorEJ V JOIN PurchaseTransactionHeaderEJ PTH
	ON V.VendorID = PTH.VendorID 
	JOIN PurchaseTransactionDetailEJ PTD
	ON PTD.PurchaseTransactionID = PTH.PurchaseTransactionID
	JOIN IngredientEJ IG
	ON PTD.IngredientID = IG.IngredientID
	WHERE VendorAddress NOT LIKE '%Gold%'
	GROUP BY VendorName
	HAVING (MAX(IngredientPrice) - MIN(IngredientPrice)) > 1
GO

SELECT *
FROM [Vendor Statistic]