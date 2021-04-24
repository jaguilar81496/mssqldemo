DROP TABLE IF EXISTS dbo.Users;

CREATE TABLE dbo.Users
(
	  Username char(255) NOT NULL PRIMARY KEY 
	, Password char(255) NOT NULL
	, State char(2)
	, Age int
	, Email char(255) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS dbo.Products;

CREATE TABLE dbo.Products
(
      SKU char(255) NOT NULL PRIMARY KEY
	, Description char(255) NOT NULL UNIQUE 
	, Price money NOT NULL
);


DROP TABLE IF EXISTS dbo.Suppliers;

CREATE TABLE dbo.Suppliers
(
      Id int IDENTITY(1,1) NOT NULL PRIMARY KEY
	, BusinessName char(255) NOT NULL
	, Address char(255) NOT NULL UNIQUE
	, PhoneNumber char(255) NOT NULL
);

