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

--Storage Temps
INSERT INTO StorageTemperatures (Name, MinimumF, MaximumF)
VALUES ('Room Temperature', 40.00, 120.00);
INSERT INTO StorageTemperatures (Name, MinimumF, MaximumF)
VALUES ('Frozen', 20.00, 39.99);
INSERT INTO StorageTemperatures (Name, MinimumF, MaximumF)
VALUES ('Heated', 120.01, 999.00);

-- Products Data
INSERT INTO Products (sku, supplier, temp, description, price)
VALUES ('ASD-123', 1, 'Room Temperature', 'Apples 1 lb', 2.99);

INSERT INTO Products (sku, supplier, temp, description, price)
VALUES ('ZXC-789', 2, 'Room Temperature' ,'Oranges 2 lb', 4.99);

INSERT INTO Products (sku, category, supplier, temp, description, price)
VALUES ('BNM-456', 'Alcohol', 3, 'Frozen', 'Beer Bud Light 16 oz', 5.99);
INSERT INTO Products (sku, category, supplier, temp, description, price)
VALUES ('POI-963', 'Alcohol', 3, 'Room Temperature', 'Vodka', 10.99);
INSERT INTO Products (sku, category, supplier, temp, description, price)
VALUES ('HJK-892', 'Food', 1, 'Heated', '4 piece Fried Chicken', 7.99);
INSERT INTO Products (sku, category, supplier, temp, description, price)
VALUES ('IKN-741', 'Food', 2, 'Heated', 'Steamed Broccoli', 1.99);
INSERT INTO Products (sku, category, supplier, temp, description, price)
VALUES ('WER-036', 'Food', 2, 'Frozen', '1/2g Vanilla Ice Cream', 6.99);