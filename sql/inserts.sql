-- Users Data
INSERT INTO dbo.Users (username, password, state, email)
VALUES ('jonathan', 'mypassword', 'CA', 'jon@gmail.com');

INSERT INTO dbo.Users (username, password, state, age, email)
VALUES ('chris', 'mypassword', 'TX', 19, 'chris@yahoo.com');

INSERT INTO dbo.Users (username, password, state, age, email)
VALUES ('mikey', 'juicyfruit', 'NY', 29, 'mike@hotmail.com');

-- Products Data
INSERT INTO dbo.Products (sku, description, price)
VALUES ('ASD-123', 'Apples 1 lb', 2.99);

INSERT INTO dbo.Products (sku, description, price)
VALUES ('ZXC-789', 'Oranges 2 lb', 4.99);

INSERT INTO dbo.Products (sku, description, price)
VALUES ('BNM-456', 'Beer Bud Light 16 oz', 5.99);

-- Suppliers
INSERT INTO dbo.Suppliers (BusinessName, Address, PhoneNumber)
VALUES ('Swanson', '123 Sesame St New York NY', '563-231-7899');

INSERT INTO dbo.Suppliers (BusinessName, Address, PhoneNumber)
VALUES ('Kraft', '456 Sunshine Dr Miami FL','305-852-7531');

INSERT INTO dbo.Suppliers (BusinessName, Address, PhoneNumber)
VALUES ('Anheuser Busch', '789 Forest Rd Denver CO', '520-946-0864');