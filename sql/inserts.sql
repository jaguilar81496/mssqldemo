-- Users Data
INSERT INTO Users (username, password, state, email)
VALUES ('jonathan', 'mypassword', 'CA', 'jon@gmail.com');

INSERT INTO Users (username, password, state, age, email)
VALUES ('chris', 'mypassword', 'TX', 19, 'chris@yahoo.com');

INSERT INTO Users (username, password, state, age, email)
VALUES ('mikey', 'juicyfruit', 'NY', 29, 'mike@hotmail.com');

-- Suppliers
INSERT INTO Suppliers (BusinessName, Address, PhoneNumber)
VALUES ('Swanson', '123 Sesame St New York NY', '563-231-7899');

INSERT INTO Suppliers (BusinessName, Address, PhoneNumber)
VALUES ('Kraft', '456 Sunshine Dr Miami FL','305-852-7531');

INSERT INTO Suppliers (BusinessName, Address, PhoneNumber)
VALUES ('Anheuser Busch', '789 Forest Rd Denver CO', '520-946-0864');

--Categories
INSERT INTO ProductsCategories (Name)
VALUES ('Food')

INSERT INTO ProductsCategories (Name)
VALUES ('Alcohol')

INSERT INTO ProductsCategories (Name)
VALUES ('Produce')
-- Products Data
INSERT INTO Products (sku, supplier, description, price)
VALUES ('ASD-123', 1, 'Apples 1 lb', 2.99);

INSERT INTO Products (sku, supplier, description, price)
VALUES ('ZXC-789', 2, 'Oranges 2 lb', 4.99);

INSERT INTO Products (sku, category, supplier, description, price)
VALUES ('BNM-456', 'Alcohol', 3, 'Beer Bud Light 16 oz', 5.99);

INSERT INTO Products (sku, category, supplier, description, price)
VALUES ('POI-963', 'Alcohol', 3, 'Vodka', 10.99);