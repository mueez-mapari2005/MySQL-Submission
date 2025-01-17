-- Flipkart SQL Project - Phase 1
-- Created By : Mueez Mapari
-- Date : 2025/01/17 
-- Description: This project simulates the database of an E-commerce platform like Flipkart, covering key modules such as user management, product, inventory, orders, payment, subscription, and more.
-- Notes: This project inculdes 25 table with logical relatinships and attributes designed to represent Flipkart's core operations.

-- Creating The Flipkart Database
CREATE DATABASE Flipkart ;
-- Or Create Database If not Exists
CREATE DATABASE IF NOT EXISTS Flipkart ;

-- Using the 'Flipkart' database
USE Flipkart ;

-- Table 1
-- Creating the User table this the table is used to stores information about registered users on the platform.
CREATE TABLE user (
user_id INT PRIMARY KEY AUTO_INCREMENT , -- Unique identifier for each user
Name VARCHAR (50) ,                      -- Full name of the user
Email VARCHAR (50) ,                     -- User's email address for communication
Phone_number VARCHAR (50) ,              -- Contact number of the user
Address TEXt ,                           -- User's residential address
Membership_Type VARCHAR (50) ,           -- Membership plan chosen by the user (e.g., Basic, Premium)
Join_Date DATE                           -- The date when the user registered on the platform
);

-- Insert values into the user table
INSERT INTO user (Name,Email,Phone_number,Address,Membership_Type,Join_Date) VALUES 
('Rajesh Kumar', 'rajesh.kumar@example.com', '9876543210', 'Flat 23, Galaxy Apartments, Andheri West, Mumbai, Maharashtra, 400058', 'Premium', '2023-01-15'),
('Priya Sharma', 'priya.sharma@example.com', '9123456789', 'House No. 12, Green Park Colony, Saket, New Delhi, Delhi, 110017', 'Basic', '2023-03-20'),
('Amit Verma', 'amit.verma@example.com', '9988776655', 'Block 4, Sector 5, Salt Lake City, Kolkata, West Bengal, 700064', 'Gold', '2023-07-05'),
('Sneha Gupta', 'sneha.gupta@example.com', '9876544321', 'Villa 7, Orchid Enclave, Anna Nagar, Chennai, Tamil Nadu, 600101', 'Basic', '2024-01-10'),
('Rohan Das', 'rohan.das@example.com', '9765432187', 'Plot No. 15, Whitefield Road, Marathahalli, Bangalore, Karnataka, 560037', 'Premium', '2024-05-25'),
('Anjali Singh', 'anjali.singh@example.com', '9112233445', 'Apartment 8B, Sunshine Towers, Civil Lines, Jaipur, Rajasthan, 302006', 'Gold', '2022-11-18'),
('Manoj Tiwari', 'manoj.tiwari@example.com', '9123456781', 'Bungalow 14, Heritage Estate, Gomti Nagar, Lucknow, Uttar Pradesh, 226010', 'Basic', '2023-06-30'),
('Neha Kapoor', 'neha.kapoor@example.com', '9898989898', 'Flat 9A, Skyline Residency, Panampilly Nagar, Kochi, Kerala, 682036', 'Premium', '2023-09-12'),
('Kunal Roy', 'kunal.roy@example.com', '9876549876', 'House No. 44, South Extension Part 2, New Delhi, Delhi, 110049', 'Gold', '2024-02-01'),
('Arjun Patel', 'arjun.patel@example.com', '9998887776', 'Penthouse 3, Emerald Heights, Satellite Road, Ahmedabad, Gujarat, 380015', 'Premium', '2024-04-22');

-- Show table Structure of user
SELECT * FROM user ;

-- Table 2
-- Creating the Product table This table Contains details about the products available for sale
CREATE TABLE Product (
product_id INT PRIMARY KEY ,     -- Unique identifier for each product 
Name VARCHAR (50) ,              -- Name of the product
Category VARCHAR (50) ,          -- The category to which the product belongs
Price DECIMAL (10,2) ,           -- Cost of the product 
Rating FLOAT ,                   -- Average user rating for the product
Description TEXT ,               -- Detailed description of the product 
Reviews BIGINT ,                 -- Number of reviews received by the product 
ImageUrl LONGTEXT                --  Url of the product image
);

-- Insert values into the Product table
INSERT INTO Product (Product_id, Name, Category, Price, Rating, Description, Reviews, ImageURL)
VALUES
(1, 'Apple iPhone 14', 'Electronics', 79999.99, 4.8, 'Latest model of Apple iPhone with advanced features and sleek design.', 3200, 'https://example.com/image1.jpg'),
(2, 'Nike Running Shoes', 'Footwear', 4999.50, 4.5, 'Durable and comfortable running shoes for athletes and casual users.', 1500, 'https://example.com/image2.jpg'),
(3, 'Samsung Galaxy S22', 'Electronics', 69999.00, 4.7, 'High-performance smartphone with pro-grade camera features.', 2800, 'https://example.com/image3.jpg'),
(4, 'Levi’s Denim Jacket', 'Fashion', 3499.99, 4.2, 'Stylish and versatile denim jacket perfect for any occasion.', 800, 'https://example.com/image4.jpg'),
(5, 'Sony WH-1000XM5 Headphones', 'Electronics', 29999.00, 4.9, 'Noise-canceling headphones offering premium sound quality.', 1200, 'https://example.com/image5.jpg'),
(6, 'Adidas Backpack', 'Accessories', 1499.99, 4.3, 'Spacious and durable backpack suitable for travel and daily use.', 600, 'https://example.com/image6.jpg'),
(7, 'OnePlus 11', 'Electronics', 58999.00, 4.6, 'Flagship smartphone with top-tier specifications and performance.', 2100, 'https://example.com/image7.jpg'),
(8, 'Puma Sports T-Shirt', 'Fashion', 999.99, 4.4, 'Comfortable sports t-shirt made with sweat-resistant fabric.', 400, 'https://example.com/image8.jpg'),
(9, 'HP Pavilion Laptop', 'Electronics', 65999.99, 4.7, 'Lightweight and powerful laptop suitable for multitasking and gaming.', 1300, 'https://example.com/image9.jpg'),
(10, 'Woodland Hiking Boots', 'Footwear', 4999.00, 4.6, 'Durable hiking boots designed for rough terrains and long treks.', 900, 'https://example.com/image10.jpg');

-- Show table Structure of Product
SELECT * FROM Product ;

-- Table 3
-- Creating the Categories table in this table define different product categories
CREATE TABLE Categories (
Category_id INT PRIMARY KEY ,    -- Unique identifier for each category
Category_Name VARCHAR (50) ,     -- Name of the category (e.g., Electronic, Clothing)
Description TEXT ,               -- Brief description of the category
CreatedDate DATE ,               -- Date when the category was created
BrandName VARCHAR (50) ,         -- Name of the Brand
BrandStockStatus VARCHAR (50)    -- Availability of brand-specific stock in the category 
);

-- Insert values into the Categories table
INSERT INTO Categories (Category_id, Category_Name, Description, CreatedDate, BrandName, BrandStockStatus) VALUES
(1, 'Electronics', 'Products including smartphones, laptops, and accessories.', '2023-01-01', 'Samsung', 'In Stock'),
(2, 'Footwear', 'Casual, sports, and hiking footwear for all age groups.', '2023-02-15', 'Nike', 'Limited Stock'),
(3, 'Fashion', 'Trendy clothing and accessories for men and women.', '2023-03-10', 'Levi’s', 'In Stock'),
(4, 'Accessories', 'Backpacks, watches, and other daily-use items.', '2023-04-05', 'Adidas', 'Out of Stock'),
(5, 'Home Appliances', 'Kitchen and home utility appliances for daily use.', '2023-05-20', 'Philips', 'In Stock'),
(6, 'Books', 'Wide range of books across various genres and topics.', '2023-06-18', 'Penguin', 'Limited Stock'),
(7, 'Toys', 'Educational and entertainment toys for children.', '2023-07-22', 'LEGO', 'In Stock'),
(8, 'Beauty & Personal Care', 'Cosmetics, skincare, and grooming products.', '2023-08-30', 'L’Oréal', 'Out of Stock'),
(9, 'Sports Equipment', 'Fitness and sports gear for outdoor and indoor activities.', '2023-09-25', 'Yonex', 'Limited Stock'),
(10, 'Automotive', 'Accessories and spare parts for vehicles.', '2023-10-10', 'Bosch', 'In Stock');

-- Show table Structure of Categories
SELECT * FROM Categories ;

-- Table 4
-- Creating Orders table This table records information about customers orders
CREATE TABLE Orders (
OrderId INT PRIMARY KEY ,                                          -- Unique identifier for each Orders
UserId INT ,                                                       -- ID of the user who placed the order
OrderDate DATE ,                                                   -- Date when order was placed
OrderStatus SET ('Shipped','Delivered','Cancelled','Processing'),  -- Current status of the order (e.g., pending , delivered)
PaymentId BIGINT ,                                                 -- ID of the associated payment
ShippingAddress TEXT ,                                             -- Address where the order willbe delivered
TotalAmount DECIMAL(10,2)                                          -- Total cost of the order
) ;

-- Insert values into the Orders table
INSERT INTO Orders (OrderId, UserId, OrderDate, OrderStatus, PaymentId, ShippingAddress, TotalAmount) VALUES
(1, 1, '2024-12-20', 'Delivered', 101, 'Flat 23, Galaxy Apartments, Andheri West, Mumbai, Maharashtra, 400058', 79999.99),
(2, 2, '2024-12-22', 'Shipped', 102, 'House No. 12, Green Park Colony, Saket, New Delhi, Delhi, 110017', 4999.50),
(3, 3, '2024-12-23', 'Processing', 103, 'Block 4, Sector 5, Salt Lake City, Kolkata, West Bengal, 700064', 69999.00),
(4, 4, '2024-12-25', 'Cancelled', 104, 'Villa 7, Orchid Enclave, Anna Nagar, Chennai, Tamil Nadu, 600101', 3499.99),
(5, 5, '2024-12-26', 'Delivered', 105, 'Plot No. 15, Whitefield Road, Marathahalli, Bangalore, Karnataka, 560037', 29999.00),
(6, 6, '2024-12-28', 'Shipped', 106, 'Apartment 8B, Sunshine Towers, Civil Lines, Jaipur, Rajasthan, 302006', 1499.99),
(7, 7, '2024-12-29', 'Delivered', 107, 'Bungalow 14, Heritage Estate, Gomti Nagar, Lucknow, Uttar Pradesh, 226010', 58999.00),
(8, 8, '2024-12-30', 'Processing', 108, 'Flat 9A, Skyline Residency, Panampilly Nagar, Kochi, Kerala, 682036', 999.99),
(9, 9, '2024-12-31', 'Delivered', 109, 'House No. 44, South Extension Part 2, New Delhi, Delhi, 110049', 65999.99),
(10, 10, '2025-01-02', 'Shipped', 110, 'Penthouse 3, Emerald Heights, Satellite Road, Ahmedabad, Gujarat, 380015', 4999.00);

-- Show table Structure of Orders
SELECT * FROM Orders ;


-- Table 5
-- Creating Order Details table This table tracks detailed information about each order
CREATE TABLE OrderDetails (
OrderId INT NOT NULL ,    -- ID of the order
ProductId INT ,           -- ID of the product in the order
UserId INT ,              -- ID of the user who placed the order
PaymentId INT ,           -- Payment identifier for the order
ShippingFees FLOAT  ,     -- Charges for shipping
Quantity INT ,            -- Number of units purchased
Discount DECIMAL (10,2)   -- Discount applied to the order
);

-- Insert values into the OrderDetails table
INSERT INTO OrderDetails (OrderId, ProductId, UserId, PaymentId, ShippingFees, Quantity, Discount) VALUES
(1, 1, 1, 101, 99.99, 1, 5000.00),
(2, 2, 2, 102, 49.99, 1, 300.00),
(3, 3, 3, 103, 79.99, 1, 1000.00),
(4, 4, 4, 104, 29.99, 1, 200.00),
(5, 5, 5, 105, 59.99, 1, 1500.00),
(6, 6, 6, 106, 39.99, 1, 100.00),
(7, 7, 7, 107, 69.99, 1, 2000.00),
(8, 8, 8, 108, 19.99, 2, 50.00),
(9, 9, 9, 109, 89.99, 1, 3000.00),
(10, 10, 10, 110, 49.99, 1, 500.00);

-- Show table Structure of OrderDetails
SELECT * FROM OrderDetails ;

-- Table 6
-- Creating Payment Table This table logs all payment transactions
CREATE TABLE Payment (
PaymentId INT PRIMARY KEY ,                           -- Unique identifier for each Payment 
PaymentStatus SET ('Completed','Failed','Pending') ,  -- Status of the payment (e.g.,Completed,Failed)
OrderId INT ,                                         -- ID of the associated order
Userid INT ,                                          -- ID of the user who made the payment 
PaymentMethod VARCHAR (50) ,                          -- Mode of payment (e.g., Card, UPI)
PaymentDate DATE                                      -- Date when the payment was made
);

-- Insert values into the Payment table
INSERT INTO Payment (PaymentId, PaymentStatus, OrderId, UserId, PaymentMethod, PaymentDate)
VALUES
(101, 'Completed', 1, 1, 'Credit Card', '2024-12-20'),
(102, 'Completed', 2, 2, 'UPI', '2024-12-22'),
(103, 'Pending', 3, 3, 'Net Banking', '2024-12-23'),
(104, 'Failed', 4, 4, 'Debit Card', '2024-12-25'),
(105, 'Completed', 5, 5, 'UPI', '2024-12-26'),
(106, 'Completed', 6, 6, 'Cash on Delivery', '2024-12-28'),
(107, 'Completed', 7, 7, 'Credit Card', '2024-12-29'),
(108, 'Pending', 8, 8, 'Wallet', '2024-12-30'),
(109, 'Completed', 9, 9, 'Net Banking', '2024-12-31'),
(110, 'Completed', 10, 10, 'Credit Card', '2025-01-02');

-- Show table Structure of Payment
SELECT * FROM Payment ;

-- Table 7
-- Creating Reviews table This table Stores customer reviews for products
CREATE TABLE Reviews (
ReviewId INT PRIMARY KEY ,    -- Unique identifier for each Payment 
UserId INT ,                  -- ID of the User who wrote the review
ProductId INT ,               -- ID of the reviewed product
Comment TEXT ,                -- Textual Feedback from the user
IsVerified BOOL,              -- Indicates if the review is from a verified user
Rating FLOAT ,                -- Rating given by the user
Improvement TEXT              -- Suggestions for product improment 
);

-- Insert values into the Reviews table
INSERT INTO Reviews (ReviewId, UserId, ProductId, Comment, IsVerified, Rating, Improvement) VALUES
(1, 1, 1, 'Amazing product! Worth the price.', TRUE, 5, 'None'),
(2, 2, 2, 'Comfortable and great for running.', TRUE, 4, 'Add more color options'),
(3, 3, 3, 'Excellent performance, but expensive.', TRUE, 4.5, 'Reduce price'),
(4, 4, 4, 'Stylish jacket but limited size options.', FALSE, 3.5, 'Increase size variety'),
(5, 5, 5, 'Superb noise cancellation.', TRUE, 5, 'None'),
(6, 6, 6, 'Good quality backpack, spacious.', TRUE, 4, 'Add more compartments'),
(7, 7, 7, 'Smooth performance, great camera.', TRUE, 4.5, 'Improve battery life'),
(8, 8, 8, 'Decent quality for the price.', FALSE, 3.8, 'Better fabric quality'),
(9, 9, 9, 'Fast and reliable laptop.', TRUE, 5, 'None'),
(10, 10, 10, 'Durable boots, perfect for trekking.', TRUE, 4.5, 'Make them lighter');

-- Show table Structure of Reviews
SELECT * FROM Reviews ;

-- Table 8 
-- Creating Inventory Table This table Manages product stock in warehouses
CREATE TABLE Inventory (
InventoryId INT PRIMARY KEY ,                                  -- Unique identifier for each Inventory records 
ProductId INT ,                                                -- ID of the product 
WarehouseId INT ,                                              -- ID of the Warehouse
StockStatus SET ('In Stock','Out of Stock','Limited Stock') ,  -- Current stock status (e.g., In stock, out of stock and more )
SupplierId INT ,                                               -- ID of the supplier providing stock 
IncomingStockStatus SET ('Arriving Soon','Arrived','Pending')  -- Quantity of incoming stock
);

-- Insert values into the Inventory table
INSERT INTO Inventory (InventoryId, ProductId, WarehouseId, StockStatus, SupplierId, IncomingStockStatus)
VALUES
(1, 1, 101, 'In Stock', 201, 'Arriving Soon'),
(2, 2, 102, 'Limited Stock', 202, 'Arrived'),
(3, 3, 103, 'Out of Stock', 203, 'Pending'),
(4, 4, 104, 'In Stock', 204, 'Arriving Soon'),
(5, 5, 105, 'In Stock', 205, 'Arrived'),
(6, 6, 106, 'Limited Stock', 206, 'Pending'),
(7, 7, 107, 'In Stock', 207, 'Arrived'),
(8, 8, 108, 'Out of Stock', 208, 'Arriving Soon'),
(9, 9, 109, 'In Stock', 209, 'Arrived'),
(10, 10, 110, 'Limited Stock', 210, 'Pending');

-- Show table Structure of Inventory
SELECT * FROM Inventory ;

-- Table 9
-- Creating Warehouse table This table Details of warehouses storing products
CREATE TABLE Warehouse (
WarehouseId INT PRIMARY KEY ,                                   -- Unique identifier for each Warehouse
Location VARCHAR (50) ,                                         -- Geographical location of the Warehouse
Capacity BIGINT ,                                               -- Storage capacity of the warehouse
EstablishedDate DATE ,                                          -- Date when the warehousewas established
StaffDetails VARCHAR (50) ,                                     -- Details of the Staff who working at the warehouse
ProductStatus SET ('Active','Inactive') ,                       -- Status of products stored
IncomingStockStatus SET ('Arriving Soon','Pending','Arrived')   -- Status of incoming stock 
);

 -- Insert values into the Warehouse table
INSERT INTO Warehouse (WarehouseId, Location, Capacity, EstablishedDate, StaffDetails, ProductStatus, IncomingStockStatus) VALUES
(101, 'Mumbai, Maharashtra', 5000, '2015-03-10', '50 Staff Members', 'Active', 'Arriving Soon'),
(102, 'Delhi, Delhi', 4000, '2016-06-15', '40 Staff Members', 'Active', 'Arrived'),
(103, 'Kolkata, West Bengal', 3000, '2014-09-20', '35 Staff Members', 'Inactive', 'Pending'),
(104, 'Chennai, Tamil Nadu', 4500, '2017-02-05', '45 Staff Members', 'Active', 'Arriving Soon'),
(105, 'Bangalore, Karnataka', 6000, '2018-11-12', '55 Staff Members', 'Active', 'Arrived'),
(106, 'Jaipur, Rajasthan', 3500, '2013-08-25', '30 Staff Members', 'Active', 'Pending'),
(107, 'Lucknow, Uttar Pradesh', 3200, '2019-05-18', '28 Staff Members', 'Active', 'Arrived'),
(108, 'Kochi, Kerala', 2800, '2020-01-10', '25 Staff Members', 'Inactive', 'Arriving Soon'),
(109, 'Ahmedabad, Gujarat', 5200, '2016-12-07', '48 Staff Members', 'Active', 'Arrived'),
(110, 'Hyderabad, Telangana', 4700, '2012-04-22', '40 Staff Members', 'Active', 'Pending');

-- Show table Structure of Warehouse
SELECT * FROM Warehouse ;

-- Table 10
-- Creating Shipping Table This table tracks shipping information for orders
CREATE TABLE Shipping (
ShippingId INT PRIMARY KEY ,    -- Unique identifier for each shipment
ShippingAddress TEXT ,          -- Destination address
DeliveryBoyName VARCHAR (50) ,  -- Name of the delivery Person
ShippingCharges FLOAT ,         -- Cost of shipping
DeliveryDate DATE ,             -- Estimated delivery date 
ProductInformation VARCHAR (50) -- Details of shipped products 
);

-- Insert values into the Shipping table
INSERT INTO Shipping (ShippingId, ShippingAddress, DeliveryBoyName, ShippingCharges, DeliveryDate, ProductInformation) VALUES
(1, 'Flat 23, Galaxy Apartments, Andheri West, Mumbai, Maharashtra, 400058', 'Ravi Kumar', 99.99, '2024-12-21', 'Apple iPhone 14'),
(2, 'House No. 12, Green Park Colony, Saket, New Delhi, Delhi, 110017', 'Amit Sharma', 49.99, '2024-12-23', 'Nike Running Shoes'),
(3, 'Block 4, Sector 5, Salt Lake City, Kolkata, West Bengal, 700064', 'Rajesh Singh', 79.99, '2024-12-25', 'Samsung Galaxy S22'),
(4, 'Villa 7, Orchid Enclave, Anna Nagar, Chennai, Tamil Nadu, 600101', 'Suresh Nair', 29.99, '2024-12-26', 'Levi’s Denim Jacket'),
(5, 'Plot No. 15, Whitefield Road, Marathahalli, Bangalore, Karnataka, 560037', 'Manoj Das', 59.99, '2024-12-27', 'Sony WH-1000XM5 Headphones'),
(6, 'Apartment 8B, Sunshine Towers, Civil Lines, Jaipur, Rajasthan, 302006', 'Deepak Verma', 39.99, '2024-12-29', 'Adidas Backpack'),
(7, 'Bungalow 14, Heritage Estate, Gomti Nagar, Lucknow, Uttar Pradesh, 226010', 'Vikas Gupta', 69.99, '2024-12-30', 'OnePlus 11'),
(8, 'Flat 9A, Skyline Residency, Panampilly Nagar, Kochi, Kerala, 682036', 'Arun Menon', 19.99, '2024-12-31', 'Puma Sports T-Shirt'),
(9, 'House No. 44, South Extension Part 2, New Delhi, Delhi, 110049', 'Mohit Joshi', 89.99, '2025-01-01', 'HP Pavilion Laptop'),
(10, 'Penthouse 3, Emerald Heights, Satellite Road, Ahmedabad, Gujarat, 380015', 'Kiran Patel', 49.99, '2025-01-03', 'Woodland Hiking Boots');

-- Show table Structure of Shipping
SELECT * FROM Shipping ;

-- TABLE 11
-- Creating Employees table This table Stores information about employees working for the company 
CREATE TABLE Employees (
EmployeeId INT PRIMARY KEY ,        -- Unique identifier for each employee
Name VARCHAR (50) ,                 -- Full name of the employee
PhoneNumber VARCHAR (50)  ,         -- Contact number of the employee
Position VARCHAR (50) ,             -- Job position of the employee (e.g., Manager, Team leader and more)
Department VARCHAR (50) ,           -- Department where the employee work 
Salary DECIMAL (10,2)               -- Monthly salary of the employee
);

-- Insert values into the Employees table
INSERT INTO Employees (EmployeeId, Name, PhoneNumber, Position, Department, Salary)
VALUES
(1, 'Rohan Gupta', '9876543210', 'Manager', 'Sales', 75000.00),
(2, 'Sneha Sharma', '9876543211', 'Executive', 'Customer Support', 45000.00),
(3, 'Amit Mehta', '9876543212', 'Team Leader', 'Logistics', 60000.00),
(4, 'Priya Desai', '9876543213', 'Data Analyst', 'IT', 70000.00),
(5, 'Vikas Khanna', '9876543214', 'HR Manager', 'Human Resources', 80000.00),
(6, 'Neha Verma', '9876543215', 'Supervisor', 'Warehouse', 50000.00),
(7, 'Kunal Roy', '9876543216', 'Delivery Agent', 'Shipping', 30000.00),
(8, 'Ankita Jain', '9876543217', 'Marketing Specialist', 'Marketing', 55000.00),
(9, 'Rajeev Kumar', '9876543218', 'Finance Analyst', 'Finance', 65000.00),
(10, 'Pooja Reddy', '9876543219', 'Software Engineer', 'IT', 90000.00);

-- Show table Structure of Employees
SELECT * FROM Employees ;

-- TABLE 12
-- Creating Returns table This table Logs details about product returns by users
CREATE TABLE Returns (
ReturnId INT PRIMARY KEY ,                             -- Unique identifier for each return
OrderId INT ,                                          -- ID of the associated order
ProductId INT ,                                        -- ID of the returned product 
Reason TEXT ,                                          -- Reason for returning the product 
ReturnDate DATE ,                                      -- Date when the return was initiated
ApprovalStatus SET ('Approved','Rejected','Pending'),  -- Current Status of the return request (e.g., Approved, Rejected)
Refund DECIMAL (10,2)                                  -- Amount refunded to the user
);

-- Insert values into the Returns table
INSERT INTO Returns (ReturnId, OrderId, ProductId, Reason, ReturnDate, ApprovalStatus, Refund)
VALUES
(1, 4, 4, 'Size not suitable', '2024-12-27', 'Approved', 3499.99),
(2, 8, 8, 'Defective product', '2024-12-31', 'Pending', 999.99),
(3, 3, 3, 'Not as described', '2024-12-24', 'Rejected', 0.00),
(4, 6, 6, 'Late delivery', '2024-12-29', 'Approved', 1499.99),
(5, 9, 9, 'Damaged in transit', '2025-01-02', 'Approved', 65999.99),
(6, 2, 2, 'Changed mind', '2024-12-23', 'Rejected', 0.00),
(7, 7, 7, 'Better deal found elsewhere', '2024-12-30', 'Pending', 58999.00),
(8, 5, 5, 'Missing accessories', '2024-12-28', 'Approved', 29999.00),
(9, 1, 1, 'Faulty hardware', '2024-12-21', 'Approved', 79999.99),
(10, 10, 10, 'Uncomfortable fit', '2025-01-04', 'Pending', 4999.00);

-- Show table Structure of Returns
SELECT * FROM Returns ;

-- TABLE 13
-- Creating Suppliers table This table Contains information about suppliers
CREATE TABLE Suppliers (
SupplierId INT PRIMARY KEY ,     -- Unique identifier for each Suppliers
Name VARCHAR (50) ,              -- Name of the Suppliers
PhoneNumber VARCHAR (50) ,       -- Contact Number of the suppliers
Email Varchar (50) ,             -- Email address of the suppliers
SupplierProduct VARCHAR (50)     -- Details of the products supplieds by the suppliers 
);

-- Insert values into the Suppliers table
INSERT INTO Suppliers (SupplierId, Name, PhoneNumber, Email, SupplierProduct) VALUES
(201, 'Tech Distributors Pvt Ltd', '9876512340', 'contact@techdistributors.com', 'Smartphones'),
(202, 'Fashion Forward Ltd', '9876512341', 'support@fashionforward.com', 'Clothing & Accessories'),
(203, 'Gadget World', '9876512342', 'sales@gadgetworld.com', 'Electronics'),
(204, 'Sports Gear Hub', '9876512343', 'info@sportsgearhub.com', 'Sports Equipment'),
(205, 'Comfort Living', '9876512344', 'help@comfortliving.com', 'Furniture'),
(206, 'Books and Beyond', '9876512345', 'orders@booksandbeyond.com', 'Books'),
(207, 'Kitchen Essentials Co.', '9876512346', 'service@kitchenessentials.com', 'Kitchen Appliances'),
(208, 'Auto Parts Depot', '9876512347', 'support@autopartsdepot.com', 'Automobile Accessories'),
(209, 'Beauty Bliss', '9876512348', 'care@beautybliss.com', 'Cosmetics'),
(210, 'Green Grocers', '9876512349', 'fresh@greengrocers.com', 'Groceries');

-- Show table Structure of Suppliers
SELECT * FROM Suppliers ;

-- TABLE 14
-- Creating Subscription Plan table This table Defines various subscription plan available for user
CREATE TABLE SubscriptionPlan (
PlanId INT PRIMARY KEY ,        -- Unique identifier for each Plan
Name VARCHAR (50) ,             -- Name of the subscription plan
Price DECIMAL (10,2) ,          -- Cost of the subscription Plan
Duration VARCHAR (50) ,         -- Duration of the subscription (e.g., Monthly, Yearly)
StartDate DATE ,                -- Date When the plan became active
EndDate DATE DEFAULT (NULL) ,   -- Expiry date of the plan 
Features VARCHAR (50)           -- Key Features of the subscription plan
);

-- Insert values into the SubscriptionPlan table
INSERT INTO SubscriptionPlan (PlanId, Name, Price, Duration, StartDate, EndDate, Features) VALUES
(1, 'Basic Plan', 199.99, '1 Month', '2025-01-01', '2025-01-31', 'Standard delivery, Limited offers'),
(2, 'Standard Plan', 499.99, '3 Months', '2025-01-01', '2025-03-31', 'Fast delivery, Exclusive discounts'),
(3, 'Premium Plan', 999.99, '6 Months', '2025-01-01', '2025-06-30', 'Priority delivery, Premium offers'),
(4, 'Student Plan', 149.99, '1 Month', '2025-01-01', '2025-01-31', 'Student discounts, Limited offers'),
(5, 'Family Plan', 1499.99, '1 Year', '2025-01-01', '2025-12-31', 'Shared access, Priority support'),
(6, 'Trial Plan', 0.00, '7 Days', '2025-01-01', '2025-01-07', 'Limited features, Standard delivery'),
(7, 'Business Plan', 2999.99, '1 Year', '2025-01-01', '2025-12-31', 'Business tools, Bulk discounts'),
(8, 'Lifetime Plan', 9999.99, 'Lifetime', '2025-01-01', NULL, 'All features, Priority support'),
(9, 'Seasonal Plan', 599.99, '3 Months', '2025-01-01', '2025-03-31', 'Seasonal discounts, Free gifts'),
(10, 'Exclusive Plan', 1999.99, '1 Year', '2025-01-01', '2025-12-31', 'Exclusive events, Priority delivery');

-- Show table Structure of SubscriptionPlan
SELECT * FROM SubscriptionPlan ;

-- Table 15
-- Creating User Subscription Plan table This table Track user subscriptions and their Details
CREATE TABLE User_Subscription_Plan (
UserId INT PRIMARY KEY ,         -- ID of the user
Name VARCHAR (50) ,              -- Full name of the user
PlanDetails VARCHAR (50),        -- Details of the Subscription Plan
SubscriptionType  VARCHAR (50),  -- Type of Subscription (e.g., Individual, Family)
AmountPaid DECIMAL (10,2) ,      -- Total amount paid by the user
StartDate DATE ,                 -- Start Date of the subscription
EndDate DATE DEFAULT (NULL)      -- Expiry date of the subscription
);

-- Insert values into the UserSubscriptionPlan table
INSERT INTO User_Subscription_Plan (UserId, Name, PlanDetails, SubscriptionType, AmountPaid, StartDate, EndDate) VALUES
(1, 'Rohit Sharma', 'Basic Plan', 'Monthly', 199.99, '2025-01-01', '2025-01-31'),
(2, 'Anjali Verma', 'Standard Plan', 'Quarterly', 499.99, '2025-01-01', '2025-03-31'),
(3, 'Karan Mehta', 'Premium Plan', 'Semi-Annual', 999.99, '2025-01-01', '2025-06-30'),
(4, 'Priya Gupta', 'Student Plan', 'Monthly', 149.99, '2025-01-01', '2025-01-31'),
(5, 'Amit Desai', 'Family Plan', 'Annual', 1499.99, '2025-01-01', '2025-12-31'),
(6, 'Sneha Kapoor', 'Trial Plan', 'Trial', 0.00, '2025-01-01', '2025-01-07'),
(7, 'Vikas Khanna', 'Business Plan', 'Annual', 2999.99, '2025-01-01', '2025-12-31'),
(8, 'Neha Singh', 'Lifetime Plan', 'Lifetime', 9999.99, '2025-01-01', NULL),
(9, 'Rajesh Agarwal', 'Seasonal Plan', 'Quarterly', 599.99, '2025-01-01', '2025-03-31'),
(10, 'Pooja Reddy', 'Exclusive Plan', 'Annual', 1999.99, '2025-01-01', '2025-12-31');

-- Show table Structure of User_Subscription_Plan
SELECT * FROM User_Subscription_Plan ;

-- TABLE 16
-- Creating Support Tickets table This table Records user issues and support tickets
CREATE TABLE SupportTickets (
SupportTicketsId INT PRIMARY KEY ,     -- Unique identifier for each Tickets
UserId INT ,                           -- ID of the user raising the issues
OrderId INT ,                          -- Associated order ID, if applicable 
IssuesType VARCHAR (50) ,              -- Type of issues reported (e.g., Payment Issue, Product Issues )
Status VARCHAR (50) ,                 -- Current status of the ticket (e.g., Open, Resolved)
AssignerName VARCHAR (50) ,           -- Name of the support staff assigned to resolve the issues
IssuesDetails TEXT                    -- Detailed description of the issues
);

-- Insert values into the SupportTickets table
INSERT INTO SupportTickets (SupportTicketsId, UserId, OrderId, IssuesType, Status, AssignerName, IssuesDetails) VALUES
(1, 1, 4, 'Late Delivery', 'Resolved', 'Ravi Kumar', 'The order was delayed by 3 days.'),
(2, 2, 2, 'Wrong Item Received', 'Pending', 'Sneha Sharma', 'Customer received a different product.'),
(3, 3, 8, 'Defective Product', 'In Progress', 'Amit Mehta', 'The product was found to be non-functional.'),
(4, 4, 6, 'Refund Issue', 'Resolved', 'Priya Desai', 'The refund was not processed on time.'),
(5, 5, 9, 'Damaged Item', 'Pending', 'Vikas Khanna', 'The product was damaged during transit.'),
(6, 6, 5, 'Account Login Issue', 'Resolved', 'Neha Verma', 'Customer faced issues logging into their account.'),
(7, 7, 7, 'Payment Failure', 'In Progress', 'Kunal Roy', 'Payment did not go through for the order.'),
(8, 8, 1, 'Order Cancellation', 'Resolved', 'Ankita Jain', 'Customer requested to cancel the order.'),
(9, 9, 3, 'Discount Not Applied', 'Pending', 'Rajeev Kumar', 'The applied discount was not reflected.'),
(10, 10, 10, 'Incorrect Billing', 'Resolved', 'Pooja Reddy', 'The billing details were incorrect.');

-- Show table Structure of SupportTickets
SELECT * FROM SupportTickets ;

-- Table 17
-- Creating table Suppliers Product table This table track the product supplied by suppliers
CREATE TABLE SuppliersProduct (
SupplierId INT PRIMARY KEY ,      -- ID of the suppliers
SuppliersName VARCHAR (50) ,      -- Name of the suppliers
ProductId INT ,                   -- ID of the product supplied
Price FLOAT,                      -- Cost of the supplied product
DiscountOffered DECIMAL (10,2) ,  -- Discount offered by the suppliers on the product
SuppliedDate DATE                 -- Date when the product was supplied
);

-- Insert values into the SuppliersProduct table
INSERT INTO SuppliersProduct (SupplierId, SuppliersName, ProductId, Price, DiscountOffered, SuppliedDate) VALUES
(201, 'Tech Distributors Pvt Ltd', 1, 69999.99, 10.00, '2024-12-20'),
(202, 'Fashion Forward Ltd', 2, 3499.99, 15.00, '2024-12-22'),
(203, 'Gadget World', 3, 25999.99, 5.00, '2024-12-24'),
(204, 'Sports Gear Hub', 4, 1499.99, 20.00, '2024-12-26'),
(205, 'Comfort Living', 5, 29999.99, 8.00, '2024-12-28'),
(206, 'Books and Beyond', 6, 499.99, 12.00, '2024-12-30'),
(207, 'Kitchen Essentials Co.', 7, 7999.99, 10.00, '2025-01-02'),
(208, 'Auto Parts Depot', 8, 1999.99, 18.00, '2025-01-03'),
(209, 'Beauty Bliss', 9, 599.99, 25.00, '2025-01-05'),
(210, 'Green Grocers', 10, 99.99, 30.00, '2025-01-07');

-- Show table Structure of SuppliersProduct
SELECT * FROM SuppliersProduct ;

-- Table 18
-- Creating Department table This table Stores details about company department
CREATE TABLE Department (
DepartmentId INT PRIMARY KEY ,           -- Unique identifier for each Department
Name VARCHAR (50) ,                      -- Name of the department (e.g., HR, Logistics)
TotalEmployees BIGINT ,                  -- Total number of employees in the department
TotalResources BIGINT ,                   -- Number of resources allocated to the department
TotalSalariesPaid DECIMAL (10,2) ,       -- Cumulative salary paid to employees
TotalResourcesPrice DECIMAL (10,2)       -- Total cost of resources allocated
);

-- Insert values into the Department table
INSERT INTO Department (DepartmentId, Name, TotalEmployees, TotalResources, TotalSalariesPaid, TotalResourcesPrice) VALUES
(1, 'Sales', 25, 50, 1875000.00, 500000.00),
(2, 'Customer Support', 40, 70, 1800000.00, 300000.00),
(3, 'Logistics', 30, 40, 1800000.00, 200000.00),
(4, 'IT', 20, 80, 1400000.00, 800000.00),
(5, 'Human Resources', 15, 30, 1200000.00, 150000.00),
(6, 'Warehouse', 35, 60, 1750000.00, 400000.00),
(7, 'Shipping', 50, 35, 1500000.00, 250000.00),
(8, 'Marketing', 18, 25, 990000.00, 120000.00),
(9, 'Finance', 10, 20, 650000.00, 100000.00),
(10, 'Admin', 12, 15, 720000.00, 50000.00);

-- Show table Structure of Department
SELECT * FROM Department ;

-- Table 19
-- Creating Resources table This table track resources allocated to different department
CREATE TABLE Resources (
ResourcesId INT PRIMARY KEY  ,   -- Unique identifier for each Resources
Name VARCHAR (50) ,              -- Name of the resources (e.g., Vehicle, Computer)
UsedResources INT ,              -- Numbers of resources currently in use
RequiredResources INT ,          -- Number of additonal resources required
ResourcesCondition VARCHAR (50)  -- Current condition of the resources (e.g., Good, Average, Excellent)
) ;

-- Insert values into the Resources table
INSERT INTO Resources (ResourcesId, Name, UsedResources, RequiredResources, ResourcesCondition) VALUES
(1, 'Laptops', 25, 30, 'Good'),
(2, 'Desks', 50, 60, 'Excellent'),
(3, 'Printers', 5, 10, 'Average'),
(4, 'Projectors', 3, 5, 'Good'),
(5, 'Phones', 40, 50, 'Good'),
(6, 'Warehouse Racks', 20, 25, 'Excellent'),
(7, 'Delivery Vehicles', 15, 20, 'Good'),
(8, 'Office Chairs', 45, 50, 'Good'),
(9, 'Servers', 8, 10, 'Excellent'),
(10, 'Air Conditioners', 12, 15, 'Good');

-- Show table Structure of Resources
SELECT * FROM Resources ;

-- Table 20
-- Creating Discount table This table Manages discounts applicable to products or categories
CREATE TABLE Discounts (
DiscountId INT PRIMARY KEY ,    -- Unique identifier for each Discounts
DiscountName VARCHAR (50) ,     -- Name or title of the discount (e.g., Festive Offer)
ProductId INT ,                 -- ID of the product eligible for discount 
ApplicableFor VARCHAR (50) ,    -- Define the target (e.g., All users, Premium Users)
StartDate DATE ,                -- Start date of the discount period
EndDate DATE ,                  -- End date of the discount period
Status SET ('Active','Expired') -- Current status of the discount (e.g., Active, Expired)
);

-- Insert values into the Discounts table
INSERT INTO Discounts (DiscountId, DiscountName, ProductId, ApplicableFor, StartDate, EndDate, Status) VALUES
(1, 'New Year Sale', 1, 'All Users', '2025-01-01', '2025-01-10', 'Active'),
(2, 'Festive Offer', 2, 'Prime Members', '2024-12-25', '2025-01-05', 'Expired'),
(3, 'Clearance Sale', 3, 'All Users', '2024-12-15', '2024-12-31', 'Expired'),
(4, 'Student Discount', 4, 'Students', '2025-01-01', '2025-03-31', 'Active'),
(5, 'Bulk Purchase', 5, 'Business Users', '2025-01-01', '2025-02-28', 'Active'),
(6, 'Flash Sale', 6, 'All Users', '2025-01-05', '2025-01-06', 'Active'),
(7, 'Loyalty Reward', 7, 'Loyal Customers', '2025-01-01', '2025-01-31', 'Active'),
(8, 'Seasonal Discount', 8, 'All Users', '2024-12-20', '2025-01-10', 'Active'),
(9, 'New Launch Offer', 9, 'New Users', '2025-01-01', '2025-01-15', 'Active'),
(10, 'Special Deal', 10, 'Prime Members', '2024-12-30', '2025-01-15', 'Active');

-- Show table Structure of Discounts
SELECT * FROM Discounts ;

-- Table 21
-- Creating table Office location This table track details of company office locations
CREATE TABLE OfficeLocation (
OfficeId INT PRIMARY KEY ,     -- Unique identifier for each Office
Location VARCHAR (50) ,        -- City area where the office is located
Country VARCHAR (50) ,         -- Country where the office is situated
Address TEXT ,                 -- Complete address of the office
ManagerName VARCHAR (50) ,     -- Name of the office manager
TotalEmployees BIGINT ,        -- Total number of employees in the office
TotalDepartments BIGINT         -- Total Department in the office
);

-- Insert values into the OfficeLocation table
INSERT INTO OfficeLocation (OfficeId, Location, Country, Address, ManagerName, TotalEmployees, TotalDepartments) VALUES
(1, 'Mumbai', 'India', 'Plot No. 23, Sector 2, Andheri East, Mumbai, Maharashtra', 'Ravi Sharma', 200, 8),
(2, 'Bangalore', 'India', 'Block B, Electronics City, Bangalore, Karnataka', 'Sneha Verma', 150, 6),
(3, 'Hyderabad', 'India', 'Tech Park Road, HITEC City, Hyderabad, Telangana', 'Rajesh Gupta', 120, 5),
(4, 'Delhi', 'India', 'DLF Tower, Barakhamba Road, New Delhi', 'Priya Singh', 100, 4),
(5, 'Chennai', 'India', 'Olympia Tech Park, Guindy, Chennai, Tamil Nadu', 'Ankita Kumar', 140, 5),
(6, 'Pune', 'India', 'Phase 1, Hinjawadi IT Park, Pune, Maharashtra', 'Vikas Khanna', 160, 7),
(7, 'Kolkata', 'India', 'Salt Lake Sector V, Kolkata, West Bengal', 'Neha Jain', 110, 4),
(8, 'Ahmedabad', 'India', 'Shivranjani Cross Road, Ahmedabad, Gujarat', 'Amit Desai', 90, 3),
(9, 'Jaipur', 'India', 'Mansarovar Industrial Area, Jaipur, Rajasthan', 'Pooja Mehta', 70, 3),
(10, 'Lucknow', 'India', 'Hazratganj Business Hub, Lucknow, Uttar Pradesh', 'Kunal Roy', 50, 2);


-- Show table Structure of OfficeLocation
SELECT * FROM OfficeLocation ;

-- Table 22
-- Creating Collaboration table This table stores information about banks partnered with the company (Flipkart)
CREATE TABLE CollaborationBank (
BankId INT PRIMARY KEY ,   -- Unique identifier for each Collaborating Bank
BankName VARCHAR (50) ,    -- Nameof the bank
StartDate DATE ,           -- Date when the collaboration Started
Reason TEXT ,              -- Reason for collaboration (e.g., Customer Loan, Offers)
Benefits TEXT              -- Benifits offered by the bank to customers (e.g., Discounts, EMI, Options)
);

-- Insert values into the CollaborationBank table
INSERT INTO CollaborationBank (BankId, BankName, StartDate, Reason, Benefits) VALUES
(1, 'State Bank of India', '2025-01-01', 'Promote Digital Payments', '5% Cashback on all online transactions'),
(2, 'HDFC Bank', '2024-12-15', 'Festival Offers', '0% EMI on selected products'),
(3, 'ICICI Bank', '2025-01-05', 'Customer Retention', 'Additional 2% Reward Points'),
(4, 'Axis Bank', '2024-12-20', 'Encourage Card Usage', 'Flat ₹500 off on orders above ₹5000'),
(5, 'Kotak Mahindra Bank', '2025-01-10', 'New Year Promotions', 'Free Movie Tickets for every ₹2000 spent'),
(6, 'Bank of Baroda', '2024-12-25', 'Partnership for Growth', 'Waiver on Annual Credit Card Fees'),
(7, 'Punjab National Bank', '2025-01-08', 'Attract New Customers', 'Exclusive Deals on Flipkart'),
(8, 'IDFC First Bank', '2025-01-03', 'Expand Market Reach', 'Flat 10% off on all purchases'),
(9, 'Yes Bank', '2024-12-30', 'Holiday Season Offers', 'Cashback up to ₹200 on select transactions'),
(10, 'Union Bank of India', '2025-01-12', 'Strengthen Partnership', 'Special Discounts for Union Bank Cardholders');

-- Show table Structure of CollaborationBank
SELECT * FROM CollaborationBank ;

-- Table 23
-- Creating Brand table This table Store details about product brands
CREATE TABLE Brand (
BrandId INT PRIMARY KEY ,   -- Unique identifier for each Brand
BrandName VARCHAR (50) ,    -- Name of the brand
Price DECIMAL (10,2) ,      -- Average price range of the brand
Offered VARCHAR (50) ,      -- Offered provided by the brand
Discount VARCHAR (50) ,     -- Discount associated with the brand
Rating FLOAT ,              -- Overall rating of the brand
Reviews TEXT                -- Number of reviews received by the brand
);

-- Insert values into the Brand table
INSERT INTO Brand (BrandId, BrandName, Price, Offered, Discount, Rating, Reviews)
VALUES
(1, 'Apple', 99999.99, 'iPhone 15 Pro', '10%', 4.8, 'Excellent performance and premium quality'),
(2, 'Samsung', 79999.99, 'Galaxy S23 Ultra', '12%', 4.7, 'Amazing camera and display quality'),
(3, 'Sony', 24999.99, 'WH-1000XM5 Headphones', '15%', 4.5, 'Top-notch noise cancellation and sound'),
(4, 'Nike', 4999.99, 'Air Max Shoes', '20%', 4.6, 'Comfortable and stylish design'),
(5, 'Adidas', 3999.99, 'Ultraboost Shoes', '18%', 4.4, 'Great for running and casual wear'),
(6, 'LG', 64999.99, 'OLED TV', '8%', 4.7, 'Crystal clear picture quality and features'),
(7, 'Dell', 54999.99, 'Inspiron Laptop', '10%', 4.3, 'Good performance for everyday tasks'),
(8, 'HP', 45999.99, 'Pavilion Laptop', '10%', 4.4, 'Solid build and reliable performance'),
(9, 'Lenovo', 34999.99, 'IdeaPad Laptop', '12%', 4.2, 'Affordable and efficient for students'),
(10, 'Canon', 7999.99, 'EOS Camera', '25%', 4.6, 'Great for photography enthusiasts');

-- Show table Structure of Brand
SELECT * FROM Brand ;

-- Table 24
-- Creating table Brand Detail This table Records detailed information about product brands
CREATE TABLE  BrandDetail (
BrandDetailId INT PRIMARY KEY ,                                           -- Unique identifier for each Brand Detail
BrandName VARCHAR (50) ,                                                  -- Name of the brand 
Description TEXT ,                                                        -- Description of the brand
Owner VARCHAR (50) ,                                                      -- Name of the brand's Owner or company
CreatedDate DATE ,                                                        -- Date when the brand Create
Rating FLOAT ,                                                            -- Average rating of the brand
Reviews TEXT  ,                                                           -- Total reviews received
CustomerReaction SET ('Highly Positive','Positive','Neutral to Positive') -- Customer Reaction from the brand Product when they purchased 
);

-- Insert values into the BrandDetails table
INSERT INTO BrandDetail (BrandDetailId, BrandName, Description, Owner, CreatedDate, Rating, Reviews, CustomerReaction) VALUES
(1, 'Apple', 'Premium technology brand known for innovation and quality.', 'Tim Cook', '1976-04-01', 4.8, 'Exceptional products and service.', 'Highly Positive'),
(2, 'Samsung', 'Leading electronics brand with a wide range of products.', 'Lee Jae-yong', '1938-03-01', 4.7, 'Outstanding features and variety.', 'Positive'),
(3, 'Sony', 'Renowned for electronics, gaming, and entertainment.', 'Kenichiro Yoshida', '1946-05-07', 4.5, 'Impressive sound and display technology.', 'Positive'),
(4, 'Nike', 'Global leader in sportswear and athletic shoes.', 'John Donahoe', '1964-01-25', 4.6, 'Comfortable and durable products.', 'Highly Positive'),
(5, 'Adidas', 'Sportswear brand offering innovation and style.', 'Kasper Rorsted', '1949-08-18', 4.4, 'Great quality and performance.', 'Positive'),
(6, 'LG', 'Top manufacturer of electronics and home appliances.', 'Kwon Bong-seok', '1958-10-01', 4.7, 'Reliable and high-tech solutions.', 'Highly Positive'),
(7, 'Dell', 'Trusted name in computers and IT solutions.', 'Michael Dell', '1984-02-01', 4.3, 'Dependable and innovative products.', 'Neutral to Positive'),
(8, 'HP', 'Global leader in personal computing and printing.', 'Enrique Lores', '1939-07-02', 4.4, 'Efficient and user-friendly.', 'Positive'),
(9, 'Lenovo', 'Affordable computing solutions for all users.', 'Yang Yuanqing', '1984-11-01', 4.2, 'Cost-effective and functional.', 'Neutral to Positive'),
(10, 'Canon', 'Specializes in imaging and optical products.', 'Fujio Mitarai', '1937-08-10', 4.6, 'Excellent for photography.', 'Highly Positive');

-- Show table Structure of BrandDetails
SELECT * FROM BrandDetail ;

-- Table 25
-- Creating Fraud Detection table This tracks potential fraudulent activities related to user orders and payment
CREATE TABLE FraudDetection (
FraudId INT PRIMARY KEY ,           -- Unique identifier for each Fraud Detection records
OrderId INT ,                       -- ID of the suspicious order
UserId INT ,                        -- ID of the user suspected of fraud
PaymentId INT ,                     -- ID of the associated payment
DetectionDate DATE ,                -- Date when the potential fraud was detected
FraudType VARCHAR (100) ,           -- Type of suspected fraud (e.g., Payment Fraud, Account Takeover and more )
Status VARCHAR (50) ,               -- Current status of the fraud case (e.g., Under Investigation, Resolved)
InvestigationNotes TEXT ,           -- Notes or actions taken during the fraud investigation 
Resolution TEXT                     -- Outcome of the fraud investigation (e.g., Confirmed, False Alarm)
);

-- Insert values into the FraudDetection table
INSERT INTO FraudDetection (FraudId, OrderId, UserId, PaymentId, DetectionDate, FraudType, Status, InvestigationNotes, Resolution) VALUES
(1, 1001, 101, 201, '2025-01-05', 'Payment Fraud', 'Under Investigation', 'Suspicious payment method linked to a new user account', 'Pending verification from payment gateway'),
(2, 1002, 102, 202, '2025-01-06', 'Account Takeover', 'Resolved', 'User account accessed from multiple locations in a short period', 'Account secured and password reset'),
(3, 1003, 103, 203, '2025-01-07', 'Chargeback Fraud', 'Under Investigation', 'User initiated chargeback after receiving the product', 'Awaiting confirmation from bank'),
(4, 1004, 104, 204, '2025-01-08', 'Suspicious Return', 'Confirmed', 'Customer returned high-value items after a short time', 'Refund declined and flagged for further monitoring'),
(5, 1005, 105, 205, '2025-01-09', 'Multiple Fraudulent Accounts', 'Under Investigation', 'Multiple accounts linked to the same payment method', 'Cross-referencing with user behavior patterns'),
(6, 1006, 106, 206, '2025-01-10', 'Credit Card Fraud', 'Resolved', 'Payment made using a stolen credit card', 'Transaction refunded and payment method blacklisted'),
(7, 1007, 107, 207, '2025-01-11', 'Suspicious Activity', 'Under Investigation', 'User attempted to place orders with inconsistent shipping addresses', 'Further investigation required on shipping address'),
(8, 1008, 108, 208, '2025-01-12', 'Refund Fraud', 'Pending', 'Refund request made after the product was shipped', 'Investigating timeline for refund request processing'),
(9, 1009, 109, 209, '2025-01-13', 'Fake Reviews', 'Confirmed', 'User posted multiple fraudulent reviews for products', 'Reviews removed and account flagged'),
(10, 1010, 110, 210, '2025-01-14', 'Multiple Cancellations', 'Under Investigation', 'User has canceled multiple high-value orders within a short period', 'Further review of cancellation reasons in progress');

-- Show table Structure of FraudDetection
SELECT * FROM FraudDetection ;
















































































































































































































