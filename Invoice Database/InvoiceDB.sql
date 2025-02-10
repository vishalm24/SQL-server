-- tblCountry
USE InvoiceDB;
CREATE TABLE tblCountry (
    CountryId INT PRIMARY KEY,
    CountryName NVARCHAR(100)
);
INSERT INTO tblCountry VALUES 
(1, 'USA'), (2, 'India'), (3, 'Germany'), (4, 'Canada'), (5, 'Australia'),
(6, 'France'), (7, 'Japan'), (8, 'Brazil'), (9, 'China'), (10, 'Russia'),
(11, 'Italy'), (12, 'Spain'), (13, 'South Korea'), (14, 'Mexico'), (15, 'South Africa'),
(16, 'Netherlands'), (17, 'Sweden'), (18, 'Norway'), (19, 'Switzerland'), (20, 'New Zealand');
-- tblArea
CREATE TABLE tblArea (
    AreaId INT PRIMARY KEY,
    AreaName NVARCHAR(100),
    CountryId_fk INT FOREIGN KEY REFERENCES tblCountry(CountryId)
);
INSERT INTO tblArea VALUES 
(1, 'California', 1), (2, 'Maharashtra', 2), (3, 'Bavaria', 3), (4, 'Ontario', 4), (5, 'New South Wales', 5),
(6, 'Île-de-France', 6), (7, 'Tokyo', 7), (8, 'São Paulo', 8), (9, 'Beijing', 9), (10, 'Moscow', 10),
(11, 'Lombardy', 11), (12, 'Catalonia', 12), (13, 'Seoul', 13), (14, 'Jalisco', 14), (15, 'Gauteng', 15),
(16, 'North Holland', 16), (17, 'Stockholm', 17), (18, 'Oslo', 18), (19, 'Zurich', 19), (20, 'Auckland', 20);
-- tblModel
CREATE TABLE tblModel (
    ModelId INT PRIMARY KEY,
    ModelName NVARCHAR(100),
    ModelBrand NVARCHAR(100),
    ManufacturerName NVARCHAR(100),
    CountryId_fk INT FOREIGN KEY REFERENCES tblCountry(CountryId)
);
INSERT INTO tblModel VALUES
-- Electronics
(1, 'Galaxy S21', 'Samsung', 'Samsung Electronics', 1),
(2, 'iPhone 14 Pro', 'Apple', 'Apple Inc.', 2),
(3, 'Pixel 7', 'Google', 'Google LLC', 3),
(4, 'Xperia 5 IV', 'Sony', 'Sony Corporation', 4),
(5, 'OnePlus 11', 'OnePlus', 'BBK Electronics', 5),

-- Furniture
(6, 'Ektorp Sofa', 'IKEA', 'IKEA Group', 6),
(7, 'Poäng Armchair', 'IKEA', 'IKEA Group', 6),
(8, 'Billy Bookcase', 'IKEA', 'IKEA Group', 6),
(9, 'Strandmon Wing Chair', 'IKEA', 'IKEA Group', 6),
(10, 'Friheten Sofa Bed', 'IKEA', 'IKEA Group', 6),

-- Machinery
(11, 'D1250 Excavator', 'Caterpillar', 'Caterpillar Inc.', 7),
(12, 'Fendt 900 Vario', 'Fendt', 'AGCO Corporation', 8),
(13, 'Liebherr LTM 11200', 'Liebherr', 'Liebherr Group', 9),
(14, 'John Deere 8R', 'John Deere', 'Deere & Company', 10),
(15, 'Komatsu PC210', 'Komatsu', 'Komatsu Ltd.', 11),

-- More Electronics
(16, 'Mi 13', 'Xiaomi', 'Xiaomi Corporation', 12),
(17, 'P50 Pro', 'Huawei', 'Huawei Technologies', 13),
(18, 'Vivo X90', 'Vivo', 'Vivo Communication Technology', 14),

-- More Furniture
(19, 'HAY About A Chair', 'HAY', 'HAY Design', 15),
(20, 'Noguchi Table', 'Herman Miller', 'Herman Miller Inc.', 16);
-- tblProduct
CREATE TABLE tblProduct (
    ProductId INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    ProductCost DECIMAL(10,2)
);
INSERT INTO tblProduct VALUES
-- Electronics
(1, 'Samsung Galaxy S21 Smartphone', 799.99),
(2, 'Apple iPhone 14 Pro', 1099.00),
(3, 'Google Pixel 7', 699.00),
(4, 'Sony Xperia 5 IV', 899.99),
(5, 'OnePlus 11 5G', 749.00),

-- Furniture
(6, 'IKEA Ektorp Sofa', 499.00),
(7, 'IKEA Poäng Armchair', 129.00),
(8, 'IKEA Billy Bookcase', 69.99),
(9, 'IKEA Strandmon Wing Chair', 279.00),
(10, 'IKEA Friheten Sofa Bed', 649.00),

-- Machinery
(11, 'Caterpillar D1250 Excavator', 250000.00),
(12, 'Fendt 900 Vario Tractor', 310000.00),
(13, 'Liebherr LTM 11200 Crane', 1200000.00),
(14, 'John Deere 8R Tractor', 280000.00),
(15, 'Komatsu PC210 Excavator', 220000.00),

-- More Electronics
(16, 'Xiaomi Mi 13 Smartphone', 599.00),
(17, 'Huawei P50 Pro', 899.00),
(18, 'Vivo X90', 749.00),

-- More Furniture
(19, 'HAY About A Chair', 299.00),
(20, 'Herman Miller Noguchi Table', 1695.00);
-- tblProductBackup
CREATE TABLE tblProductBackup (
    ProductId INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    ProductCost DECIMAL(10,2)
);
INSERT INTO tblProductBackup VALUES
-- Electronics
(1, 'Samsung Galaxy S21 Smartphone', 799.99),
(2, 'Apple iPhone 14 Pro', 1099.00),
(3, 'Google Pixel 7', 699.00),
(4, 'Sony Xperia 5 IV', 899.99),
(5, 'OnePlus 11 5G', 749.00),

-- Furniture
(6, 'IKEA Ektorp Sofa', 499.00),
(7, 'IKEA Poäng Armchair', 129.00),
(8, 'IKEA Billy Bookcase', 69.99),
(9, 'IKEA Strandmon Wing Chair', 279.00),
(10, 'IKEA Friheten Sofa Bed', 649.00),

-- Machinery
(11, 'Caterpillar D1250 Excavator', 250000.00),
(12, 'Fendt 900 Vario Tractor', 310000.00),
(13, 'Liebherr LTM 11200 Crane', 1200000.00),
(14, 'John Deere 8R Tractor', 280000.00),
(15, 'Komatsu PC210 Excavator', 220000.00),

-- More Electronics
(16, 'Xiaomi Mi 13 Smartphone', 599.00),
(17, 'Huawei P50 Pro', 899.00),
(18, 'Vivo X90', 749.00),

-- More Furniture
(19, 'HAY About A Chair', 299.00),
(20, 'Herman Miller Noguchi Table', 1695.00);
-- tblAncillary
CREATE TABLE tblAncillary (
    Id INT PRIMARY KEY,
    AncillaryName NVARCHAR(100),
    AncillaryCost DECIMAL(10,2)
);
INSERT INTO tblAncillary VALUES
(101, 'Samsung Galaxy S21 Smartphone', 799.99),
(102, 'Apple iPhone 14 Pro', 1099.00),
(103, 'IKEA Ektorp Sofa', 499.00),
(104, 'Caterpillar D1250 Excavator', 250000.00),
(105, 'OnePlus 11 5G', 749.00),
(106, 'IKEA Billy Bookcase', 69.99),
(107, 'John Deere 8R Tractor', 280000.00),
(108, 'Google Pixel 7', 699.00),
(109, 'IKEA Poäng Armchair', 129.00),
(110, 'Fendt 900 Vario Tractor', 310000.00);
-- tblCustomer
CREATE TABLE tblCustomer (
    CustomerId INT PRIMARY KEY,
    CustomerName NVARCHAR(100),
    CustomerCode NVARCHAR(50),
    CustomerPhoneNumber NVARCHAR(15),
    CustomerSSN NVARCHAR(11),
    CustomerReferenceId_fk INT
);
INSERT INTO tblCustomer VALUES
(1, 'John Doe', 'CUST001', '555-123-4567', '123-45-6789', NULL),             -- No reference (first customer)
(2, 'Jane Smith', 'CUST002', '555-987-6543', '987-65-4321', 1),              -- Referred by John Doe
(3, 'Michael Johnson', 'CUST003', '555-456-7890', '456-78-9012', 1),        -- Referred by John Doe
(4, 'Emily Davis', 'CUST004', '555-321-0987', '321-09-8765', 2),            -- Referred by Jane Smith
(5, 'William Brown', 'CUST005', '555-654-3210', '654-32-1098', 2),          -- Referred by Jane Smith
(6, 'Olivia Wilson', 'CUST006', '555-789-0123', '789-01-2345', 3),          -- Referred by Michael Johnson
(7, 'James Taylor', 'CUST007', '555-147-2580', '147-25-8036', NULL),        -- No reference
(8, 'Sophia Anderson', 'CUST008', '555-258-3691', '258-36-9147', 7),        -- Referred by James Taylor
(9, 'Liam Martinez', 'CUST009', '555-369-1472', '369-14-7258', 4),          -- Referred by Emily Davis
(10, 'Isabella Thomas', 'CUST010', '555-741-8520', '741-85-2036', 5);       -- Referred by William Brown

-- tblAddress
CREATE TABLE tblAddress (
    AddressId INT PRIMARY KEY,
    CustomerId INT FOREIGN KEY REFERENCES tblCustomer(CustomerId),
    Address1 NVARCHAR(255),
    City NVARCHAR(100)
);
INSERT INTO tblAddress VALUES
(101, 1, '123 Maple Street', 'New York'),         -- John Doe
(102, 2, '456 Oak Avenue', 'Los Angeles'),        -- Jane Smith
(103, 3, '789 Pine Road', 'Chicago'),             -- Michael Johnson
(104, 4, '321 Birch Lane', 'Houston'),            -- Emily Davis
(105, 5, '654 Cedar Blvd', 'Phoenix'),            -- William Brown
(106, 6, '987 Spruce Street', 'Philadelphia'),    -- Olivia Wilson
(107, 7, '147 Willow Court', 'San Antonio'),      -- James Taylor
(108, 8, '258 Elm Drive', 'San Diego'),           -- Sophia Anderson
(109, 9, '369 Aspen Terrace', 'Dallas'),          -- Liam Martinez
(110, 10, '741 Redwood Circle', 'San Jose');      -- Isabella Thomas

-- tblProductCustomer
CREATE TABLE tblProductCustomer(
	ProductCustomerId INT PRIMARY KEY,
	CustomerId_fk INT FOREIGN KEY REFERENCES tblCustomer(CustomerId),
	ProuctId_fk INT FOREIGN KEY REFERENCES tblProduct(ProductId),
	ModelId_fk INT FOREIGN KEY REFERENCES tblModel(ModelId),
	AncillaryId_fk INT FOREIGN KEY REFERENCES tblAncillary(Id),
	SalesDate DATETIME
);
INSERT INTO tblProductCustomer VALUES
(1, 1, 1, 1, 101, '2024-01-15'),   -- John Doe bought Samsung Galaxy S21
(2, 1, 3, 3, 108, '2024-02-20'),   -- John Doe bought Google Pixel 7
(3, 2, 2, 2, 102, '2024-03-10'),   -- Jane Smith bought iPhone 14 Pro
(4, 3, 6, 6, 103, '2024-03-15'),   -- Michael Johnson bought IKEA Ektorp Sofa
(5, 3, 4, 4, 108, '2024-04-01'),   -- Michael Johnson bought Sony Xperia 5 IV
(6, 4, 5, 5, 105, '2024-04-20'),   -- Emily Davis bought OnePlus 11 5G
(7, 5, 7, 7, 109, '2024-05-05'),   -- William Brown bought IKEA Poäng Armchair
(8, 5, 9, 9, 106, '2024-05-15'),   -- William Brown bought IKEA Strandmon Wing Chair
(9, 6, 11, 11, 104, '2024-06-10'), -- Olivia Wilson bought Caterpillar D1250 Excavator
(10, 7, 8, 8, 106, '2024-06-25'),  -- James Taylor bought IKEA Billy Bookcase
(11, 7, 12, 12, 110, '2024-07-05'),-- James Taylor bought Fendt 900 Vario Tractor
(12, 8, 10, 10, 103, '2024-07-20'),-- Sophia Anderson bought IKEA Friheten Sofa Bed
(13, 9, 14, 14, 107, '2024-08-01'),-- Liam Martinez bought John Deere 8R Tractor
(14, 9, 15, 15, 107, '2024-08-15'),-- Liam Martinez bought Komatsu PC210 Excavator
(15, 10, 16, 16, 101, '2024-09-05'),-- Isabella Thomas bought Xiaomi Mi 13 Smartphone
(16, 1, 17, 17, 102, '2024-09-15'),-- John Doe bought Huawei P50 Pro
(17, 4, 18, 18, 105, '2024-10-01'),-- Emily Davis bought Vivo X90
(18, 8, 19, 19, 109, '2024-10-15'),-- Sophia Anderson bought HAY About A Chair
(19, 9, 20, 20, 110, '2024-11-01'),-- Liam Martinez bought Herman Miller Noguchi Table
(20, 6, 13, 13, 104, '2024-11-20');-- Olivia Wilson bought Liebherr LTM 11200 Crane