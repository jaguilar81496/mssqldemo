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

SELECT *
FROM ProductsCategories;
