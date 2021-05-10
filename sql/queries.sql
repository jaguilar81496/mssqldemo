SELECT *
FROM Users
WHERE Age != 29;

SELECT *
FROM Products
WHERE Price < 5;

SELECT *
FROM Suppliers;

SELECT *
FROM Products
JOIN Suppliers ON Products.Supplier=Suppliers.id;

SELECT p.Supplier, p.Category, p.Temp, p.Description, p.Price, s.BusinessName, s.Address, s.PhoneNumber
FROM Products p
JOIN Suppliers s ON p.Supplier=s.id
WHERE p.Temp LIKE 'Heated';

SELECT p.Temp, SUM(p.Price) AS TotalLoss 
FROM Products p
WHERE p.Temp LIKE 'Heated'
GROUP BY p.Temp;

SELECT p.temp, COUNT(*) AS Total
FROM Products p
GROUP BY p.temp;
