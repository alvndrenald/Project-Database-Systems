-- Question : D. To support database management process in HaLLo Pharmacy, the owner asked you to provide some query that resulting important data. 
-- The requirements that asked from the owner are:

USE HaLLoPharmacy
GO
-- 1
SELECT st.CustomerID AS 'Customer ID', CustomerName AS 'Customer Name', 
CONVERT(VARCHAR, SalesTransactionDate, 107) AS 'Transaction Date', SUM(SalesQuantityEach) AS 'Medicine Bought'
FROM SalesTransaction st  JOIN Employee em
ON st.EmployeeID = em.EmployeeID JOIN Customer cus
ON St.CustomerID = Cus.CustomerID JOIN SalesTransactionDetail std
ON st.SalesTransactionID =std.SalesTransactionID
WHERE Day(SalesTransactionDate) BETWEEN 20 AND 30 AND CustomerGender='Female' 
GROUP BY st.CustomerID, CustomerName,SalesTransactionDate

--2
SELECT RIGHT(st.EmployeeID,3) AS 'Employee Number', EmployeeName AS 'Employee Name', 
CAST(COUNT(SalesTransactionID) AS VARCHAR(100))  + ' customer(s)' AS 'Customer Served'
from Employee em join SalesTransaction st
ON st.EmployeeID =em.EmployeeID
WHERE EmployeeName like '%b%' and EmployeeGender = 'Female'
GROUP BY st.EmployeeID, EmployeeName

--3
SELECT st.CustomerID AS 'Customer ID',CustomerName AS 'Customer Name',
CONVERT(VARCHAR,CustomerDoB,113) AS 'DATE of Birth',
COUNT(std.SalesTransactionID) AS 'Transction Count', 
SUM(std.SalesQuantityEach*med.MedicinePrice) AS 'Total Purchase'
FROM SalesTransaction st JOIN Customer cu
ON st.CustomerID = cu.CustomerID 
JOIN SalesTransactionDetail std
ON st.SalesTransactionID = std.SalesTransactionID JOIN Medicine med
ON std.MedicineID = med.MedicineID
WHERE MONTH(st.SalesTransactionDate)BETWEEN 1 AND 6 AND st.EmployeeID = 'EM004' or st.EmployeeID = 'EM006' or st.EmployeeID ='EM008'
GROUP BY st.CustomerID, CustomerName,cu.CustomerDob,st.SalesTransactionID

-- 4
SELECT pt.EmployeeID AS 'Employee ID', EmployeeName AS 'Employee Name', 
REPLACE(EmployeePhoneNumber, LEFT(EmployeePhoneNumber, 2), '62') AS 'Local Phone Number', 
CAST(COUNT(pt.purchaseTransactionID) AS VARCHAR(100))  + ' customer(s)' AS 'Transaction Date', 
CAST(SUM(PurchaseQuantityEach) AS VARCHAR) + 'item(s)' AS 'Total Medicine Bought'
FROM PurchaseTransaction pt JOIN Employee em 
ON pt.EmployeeID = em.EmployeeID JOIN Vendor ven 
ON pt.VendorID = ven.VendorID JOIN PurchaseTransactionDetail ptd 
ON pt.purchaseTransactionID = ptd.purchaseTransactionID
WHERE DAY(PurchaseTransactionDate) BETWEEN '10' AND '20' AND EstablishedYear>2000
GROUP BY pt.EmployeeID, EmployeeName, EmployeePhoneNumber

--5
SELECT RIGHT(MedicineID,3) AS 'Numeric Medicine ID', UPPER(MedicineName) AS 'Medicine Name', CategoryName,
'Rp. '+ CAST(MedicinePrice AS VARCHAR) AS 'Price',MedicineStock AS 'Medicine Stock'
FROM Medicine md JOIN MedicineCategory mc
ON  md.CategoryID = mc.CategoryID,(
	SELECT AVG(SalesQuantityEach) AS'Average' FROM SalesTransaction st 
	JOIN SalesTransactionDetail std
	ON st.SalesTransactionID = std.SalesTransactionID
)x
WHERE MedicinePrice>50000
GROUP BY x.Average, MedicineID, MedicineName, MedicineStock, CategoryName, MedicinePrice
HAVING MedicineStock < x.Average

--6
SELECT REPLACE(em.EmployeeID,'EM','EMPLOYEE') AS 'Employee Code' 
,EmployeeName AS 'Employee Name', CONVERT(VARCHAR,SalesTransactionDate,101) AS 'Transaction Date', MedicineName AS 'Medicine Name'
,MedicinePrice AS 'Medicine Price', SalesQuantityEach AS 'Quantity'
FROM Employee em JOIN SalesTransaction st 
ON st.EmployeeID = em.EmployeeID JOIN
SalesTransactionDetail std 
ON st.SalesTransactionID = std.SalesTransactionID 
JOIN Medicine md ON std.MedicineID = md.MedicineID,(
	SELECT AVG(CAST(EmployeeSalary AS INT)) AS 'AVGSalary' FROM Employee
)av
WHERE DAY(SalesTransactionDate) = 2
GROUP BY em.EmployeeID,av.AVGSalary,EmployeeName,SalesTransactionDate, EmployeeSalary, MedicineName, MedicinePrice,SalesQuantityEach
HAVING EmployeeSalary < av.AVGSalary

-- 7
SELECT cu.CustomerID AS 'Customer ID', CustomerName AS 'Customer Name',
REPLACE(CustomerPhoneNumber,SUBSTRING(CustomerPhoneNumber,1,2),'62') AS 'Customer Phone',
CONVERT(VARCHAR,CustomerDoB,107) AS 'Date of Birth',CAST(SUM(SalesQuantityEach) AS VARCHAR) +' item(s)'
FROM Customer cu JOIN SalesTransaction st
ON st.CustomerID = cu.CustomerID JOIN SalesTransactionDetail std
ON st.SalesTransactionID = std.SalesTransactionID,(
	SELECT AVG(SalesQuantityEach) AS 'Average' FROM SalesTransactionDetail 
)AvgPrice
WHERE NOT CustomerGender ='Male'
GROUP BY AvgPrice.Average,cu.CustomerID, CustomerName, CustomerPhoneNumber, CustomerDoB
HAVING CAST(SUM(SalesQuantityEach) AS VARCHAR) > AvgPrice.Average

-- 8
SELECT DISTINCT e.EmployeeID AS [Employee ID], SUBSTRING(EmployeeName, 1, ' ') AS [Employee Name], 
'Rp.' + CAST(EmployeeSalary AS VARCHAR) AS [Salary], CONVERT(VARCHAR, EmployeeDoB, 107), COUNT(std.SalesTransactionID) AS [Transaction Served]
FROM SalesTransactionDetail std JOIN SalesTransaction st ON std.SalesTransactionID = st.SalesTransactionID JOIN Employee e ON e.EmployeeID = st.EmployeeID, (
	SELECT DISTINCT AVG(COUNT(SalesTransactionID)) AS [AverageTransaction]
	FROM SalesTransactionDetail
)c
GROUP BY e.EmployeeID, EmployeeName, EmployeeSalary, EmployeeDoB
HAVING SUM(std.SalesTransactionID) > c.AverageTransaction AND EmployeeName LIKE '% %'

-- 9
CREATE VIEW VendorMaximumAverageQuantityViewer AS
SELECT v.VendorID AS [Vendor ID], VendorName AS [Vendor Name], 
CAST(AVG(PurchaseQuantityEach) AS VARCHAR) + ' item(s)' AS [Average Supplied Quantity],
CAST(MAX(PurchaseQuantityEach) AS VARCHAR) + ' item(s)' AS [Maximum Supplied Quantity]
FROM Vendor v JOIN PurchaseTransaction pt ON v.VendorID = pt.VendorID JOIN PurchaseTransactionDetail ptd ON pt.PurchaseTransactionID = ptd.PurchaseTransactionID
GROUP BY v.VendorID, VendorName
HAVING MAX(PurchaseQuantityEach) > 5 AND VendorName LIKE '%a%'

-- 10
CREATE VIEW VendorSupplyViewer AS
SELECT DISTINCT RIGHT(v.VendorID, 3) AS [Vendor Number], VendorName AS [Vendor Name], VendorAddress AS [Vendor Address], 
'Rp.' + CAST(SUM(MedicinePrice*PurchaseQuantityEach) AS VARCHAR)  AS [Total Supplied Value],
CAST(COUNT(ptd.MedicineID) AS VARCHAR)  + ' medicine(s)' AS [Medicine Type Supplied]
FROM Vendor v JOIN PurchaseTransaction pt ON v.VendorID = pt.VendorID JOIN PurchaseTransactionDetail ptd 
ON pt.PurchaseTransactionID = ptd.PurchaseTransactionID JOIN Medicine m ON ptd.MedicineID = m.MedicineID
GROUP BY v.VendorID, VendorName, VendorAddress, MedicinePrice, PurchaseQuantityEach
HAVING SUM(MedicinePrice*PurchaseQuantityEach) > 150000 AND COUNT(ptd.MedicineID) > 2