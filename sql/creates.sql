DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Suppliers;
DROP TABLE IF EXISTS StorageTemperatures;
DROP TABLE IF EXISTS ProductsCategories;

CREATE TABLE Users
(
	  Username char(255) NOT NULL PRIMARY KEY 
	, Password char(255) NOT NULL
	, State char(2)
	, Age int
	, Email char(255) NOT NULL UNIQUE
);

CREATE TABLE Suppliers
(
      Id int IDENTITY(1,1) NOT NULL PRIMARY KEY
	, BusinessName char(255) NOT NULL
	, Address char(255) NOT NULL UNIQUE
	, PhoneNumber char(255) NOT NULL
);

CREATE TABLE StorageTemperatures
(
        Name char(255) PRIMARY KEY
	  , MinimumF decimal(9, 2) NOT NULL
	  , MaximumF decimal(9, 2) NOT NULL
);

CREATE TABLE ProductsCategories
(
      Name char(255) NOT NULL PRIMARY KEY 
);

	CREATE TABLE Products
	(
		  SKU char(255) NOT NULL PRIMARY KEY
		, Supplier int FOREIGN KEY REFERENCES Suppliers(Id) NOT NULL 
		, Category char(255) FOREIGN KEY REFERENCES ProductsCategories(name) 
		, Temp char(255) FOREIGN KEY REFERENCES StorageTemperatures(name)
		, Description char(255) NOT NULL UNIQUE 
		, Price money NOT NULL
	);

