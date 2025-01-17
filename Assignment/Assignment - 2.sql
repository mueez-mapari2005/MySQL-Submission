/*
Stock Market Database Assignment-2 
Created By : Mueez Mapari
This database is designed to store and analyze stock market data
It includes 10 table that store information about stocks, dividends, market indices, transactions, etc.
The project uses various SQL commands such as SELECT, UPDATE, DELETE, ORDER BY, GROUP BY, and LIMIT for real world analysis
The table include detailed information and real life scenarios related to stock proces, trading, dividends, and more.
*/

-- Creating The Stock_Market Database
CREATE DATABASE Stock_Market ;
-- Or Create Database If not Exists
CREATE DATABASE IF NOT EXISTS Stock_Market ;

-- Using the 'Stock_Market' database
USE Stock_Market ;

-- Table 1
-- Creating Stock Table this table stores detailed information about each stock, including its current price, market cap, and related company information. 
CREATE TABLE Stock (
Stock_Id INT PRIMARY KEY ,   -- Unique identifier for each stock (primary key)
Stock_Name VARCHAR (50) ,    -- Name of the company whose stock is being traded
Ticket_Symbol VARCHAR (50) , -- Stock Tricker symbol (e.g., APPL for Apple, TSLA for Tesla)
Sector VARCHAR (50) ,        -- Industry sector to which the company belongs (e.g., Technology, Finance)
Market_Cap INT ,             -- Total market capitalization of the company, calculated as stock price * number of shares
Current_Price INT ,          -- The most recent price at which the stock is being traded
Previous_Close INT ,         -- The closing price of the stock from the previous trading day
Open_Price INT ,             -- The price at which the stock opens for trading each day
Volume_Trade INT ,           -- The total number of shares traded on the stock for given period (e.g., daily)
Date DATE                    -- The date the stock data was last updated or recorded
);

-- Insert values into the Stock table
INSERT INTO Stock (Stock_Id, Stock_Name, Ticket_Symbol, Sector, Market_Cap, Current_Price, Previous_Close, Open_Price, Volume_Trade, Date)
VALUES
(1, 'TCS', 'TCS', 'IT', 1500000, 3700, 3680, 3690, 200000, '2025-01-10'),
(2, 'Infosys', 'INFY', 'IT', 1200000, 1500, 1495, 1490, 300000, '2025-01-10'),
(3, 'Reliance', 'RELIANCE', 'Energy', 2000000, 2500, 2490, 2505, 400000, '2025-01-10'),
(4, 'HDFC Bank', 'HDFCBANK', 'Banking', 1800000, 1650, 1645, 1640, 250000, '2025-01-10'),
(5, 'ICICI Bank', 'ICICIBANK', 'Banking', 1300000, 930, 920, 925, 220000, '2025-01-10'),
(6, 'Wipro', 'WIPRO', 'IT', 950000, 420, 415, 418, 100000, '2025-01-10'),
(7, 'Tata Motors', 'TATAMOTORS', 'Automotive', 750000, 540, 530, 535, 180000, '2025-01-10'),
(8, 'SBI', 'SBIN', 'Banking', 900000, 600, 595, 598, 300000, '2025-01-10'),
(9, 'Adani Ports', 'ADANIPORTS', 'Logistics', 670000, 750, 745, 748, 140000, '2025-01-10'),
(10, 'Maruti', 'MARUTI', 'Automotive', 1100000, 8500, 8450, 8480, 90000, '2025-01-10'),
(11, 'Bajaj Auto', 'BAJAJ', 'Automotive', 890000, 4200, 4180, 4190, 60000, '2025-01-10'),
(12, 'L&T', 'LT', 'Construction', 1000000, 2500, 2495, 2502, 80000, '2025-01-10'),
(13, 'Airtel', 'BHARTIARTL', 'Telecom', 1400000, 910, 900, 905, 160000, '2025-01-10'),
(14, 'HUL', 'HINDUNILVR', 'FMCG', 1750000, 2700, 2685, 2690, 150000, '2025-01-10'),
(15, 'ITC', 'ITC', 'FMCG', 1600000, 430, 425, 428, 250000, '2025-01-10'),
(16, 'Axis Bank', 'AXISBANK', 'Banking', 1200000, 890, 880, 885, 200000, '2025-01-10'),
(17, 'Ultratech', 'ULTRACEMCO', 'Cement', 950000, 7200, 7150, 7180, 50000, '2025-01-10'),
(18, 'PowerGrid', 'POWERGRID', 'Utilities', 850000, 240, 235, 238, 400000, '2025-01-10'),
(19, 'NTPC', 'NTPC', 'Energy', 770000, 175, 172, 174, 350000, '2025-01-10'),
(20, 'DLF', 'DLF', 'Real Estate', 620000, 450, 445, 448, 130000, '2025-01-10');

 SET SQL_SAFE_UPDATES = 1;

-- Show table Structure of Stock
SELECT * FROM Stock ;

-- Retrieve all stocks where CurrentPrice is greater than PreviousClose and VolumeTraded is greater than 100,000. Order them by CurrentPrice in descending order.
SELECT * FROM Stock
WHERE Current_Price > Previous_Close
AND Volume_Trade > 100000
ORDER BY Current_Price ASC ;

-- Increase the MarketCap by 5% for all stocks in the Automotive sector where CurrentPrice is less than 1000 and VolumeTraded is greater than 50,000.
UPDATE Stock
SET  Market_Cap = Market_Cap * 1.05
WHERE Sector = 'Automotive'
AND Current_Price < 1000
AND Volume_Trade > 50000 ;

-- Get the average CurrentPrice for each sector where MarketCap is greater than 500,000 and the VolumeTraded is greater than 100,000. Only include sectors with more than 3 stocks.
SELECT Sector ,  AVG(Current_Price) as Avg_Current_Price
from Stock
WHERE Market_Cap > 500000
AND Volume_Trade > 100000 
Group by Sector
having Count(*) > 3 ;

-- Retrieve all stocks from the Banking sector where VolumeTraded is greater than 150,000. Order them by MarketCap in ascending order.
SELECT * from Stock
WHERE Sector = 'Banking'
AND Volume_Trade > 150000
ORDER BY Market_Cap asc ;

-- Update the PreviousClose to the CurrentPrice for all stocks in the Energy sector where VolumeTraded is less than 100,000.
UPDATE Stock
SET Previous_Close = Current_Price
WHERE Sector = 'Energy'
AND Volume_Trade < 100000 ;

-- Retrieve the top 3 stocks from the Telecom sector ordered by CurrentPrice in ascending order, where MarketCap is greater than 1 million.
SELECT * FROM Stock
WHERE Sector = 'Telecom' 
AND Market_Cap > 1000000 
ORDER BY Current_Price asc LIMIT 3 ;

-- Delete stocks from the FMCG sector where the CurrentPrice is below 500 and VolumeTraded is less than 200,000.
DELETE FROM Stock
WHERE Sector = 'FMCG'
AND Current_Price < 500
AND Volume_Trade < 200000 ;

-- Get the total MarketCap for each sector and only include sectors where the total VolumeTraded is greater than 100,000.
SELECT Sector, SUM(Market_Cap) AS TotalMarketCap
FROM Stock
GROUP BY Sector
HAVING SUM(Volume_Trade) > 100000; 

-- Retrieve all stocks where CurrentPrice is greater than 1000 and VolumeTraded is less than 200,000. Order them by VolumeTraded in descending order.
SELECT * FROM Stock
WHERE Current_Price > 1000
AND Volume_Trade < 200000
ORDER BY Volume_Trade DESC ;

-- Update the VolumeTraded by reducing it by 10% for all stocks in the Construction sector where MarketCap is greater than 500,000.
UPDATE Stock
SET Volume_Trade = Volume_Trade * 0.9
WHERE Sector = 'Construction'
AND Market_Cap > 500000 ;

-- Table 2
-- Creating Investors table this table contain information about individual investors, including their demographics, contact details, and investment preferences
CREATE TABLE Investors (
Investors_Id INT PRIMARY KEY ,              -- Unique identifier for each investor (Primary Key)
Investors_Name VARCHAR (50) ,               -- Full name of the investors
Age INT ,                                   -- age of the investors
Gender SET ('Male','Female','Other') ,      -- Gender of the investors (e.g., Male, Female, Other)
Contact_Number BIGINT  ,                    -- Phone number if the investors for communication purposes
Email VARCHAR (50) ,                        -- email address of the investors for correspondence
City VARCHAR (50) ,                         -- City where the investors reides
Country VARCHAR (50) ,                      -- Country where the investors resides
Investment_Budget BIGINT ,                  -- Total Budget the investors has allocated for investment 
Risk_Appetite SET ('High','Medium','Low')   -- Risl tolerance level of the investors ('High','Medium','Low')
);

-- Insert values into the Investors table
INSERT INTO Investors (Investors_Id, Investors_Name, Age, Gender, Contact_Number, Email, City, Country, Investment_Budget, Risk_Appetite)
VALUES
(1, 'Ankit Verma', 35, 'Male', '9876543210', 'ankit@example.com', 'Mumbai', 'India', 500000, 'High'),
(2, 'Priya Sharma', 29, 'Female', '9988776655', 'priya@example.com', 'Delhi', 'India', 300000, 'Medium'),
(3, 'Rahul Mehta', 40, 'Male', '9871234567', 'rahul@example.com', 'Pune', 'India', 700000, 'High'),
(4, 'Sana Khan', 32, 'Female', '9987123456', 'sana@example.com', 'Hyderabad', 'India', 200000, 'Low'),
(5, 'Vikram Singh', 45, 'Male', '9876123454', 'vikram@example.com', 'Bengaluru', 'India', 600000, 'Medium'),
(6, 'Rohan Gupta', 28, 'Male', '9876123478', 'rohan@example.com', 'Jaipur', 'India', 400000, 'High'),
(7, 'Aditi Nair', 31, 'Female', '9845123456', 'aditi@example.com', 'Kochi', 'India', 350000, 'Low'),
(8, 'Manish Desai', 38, 'Male', '9856123459', 'manish@example.com', 'Ahmedabad', 'India', 450000, 'Medium'),
(9, 'Sneha Kulkarni', 30, 'Female', '9891234562', 'sneha@example.com', 'Nagpur', 'India', 250000, 'Low'),
(10, 'Ajay Shetty', 41, 'Male', '9823123498', 'ajay@example.com', 'Mangalore', 'India', 800000, 'High'),
(11, 'Meera Kapoor', 33, 'Female', '9802123450', 'meera@example.com', 'Chennai', 'India', 350000, 'Medium'),
(12, 'Harsh Sinha', 27, 'Male', '9812345678', 'harsh@example.com', 'Lucknow', 'India', 200000, 'Low'),
(13, 'Arjun Das', 39, 'Male', '9812123476', 'arjun@example.com', 'Kolkata', 'India', 550000, 'High'),
(14, 'Pooja Mishra', 36, 'Female', '9878564321', 'pooja@example.com', 'Ranchi', 'India', 320000, 'Medium'),
(15, 'Kunal Bansal', 42, 'Male', '9812123498', 'kunal@example.com', 'Surat', 'India', 500000, 'High'),
(16, 'Sakshi Jain', 34, 'Female', '9823123456', 'sakshi@example.com', 'Chandigarh', 'India', 310000, 'Low'),
(17, 'Vivek Agarwal', 48, 'Male', '9834123458', 'vivek@example.com', 'Kanpur', 'India', 600000, 'Medium'),
(18, 'Nisha Chopra', 37, 'Female', '9800123454', 'nisha@example.com', 'Amritsar', 'India', 450000, 'Low'),
(19, 'Aditya Malhotra', 46, 'Male', '9875123467', 'aditya@example.com', 'Noida', 'India', 700000, 'High'),
(20, 'Rhea Sen', 28, 'Female', '9812323478', 'rhea@example.com', 'Siliguri', 'India', 240000, 'Medium');

-- Show table Structure of Investors
SELECT * FROM Investors ;

-- Retrieve all investors with an Investment_Budget greater than 400,000 and a Risk_Appetite of 'High'. Sort them by Age in descending order.
SELECT * FROM Investors
WHERE Investment_Budget > 400000
AND Risk_Appetite = 'High'
ORDER BY Age DESC ;

-- Update the Investment_Budget by increasing it by 10% for all investors in the city of Delhi who have a Risk_Appetite of 'Medium'.
UPDATE Investors
SET Investment_Budget = Investment_Budget * 1.10
WHERE City = 'Delhi'
AND Risk_Appetite = 'Medium' ;

-- Delete all investors where Age is greater than 45 and Risk_Appetite is 'Low'.
DELETE FROM Investors
WHERE Age > 45 
AND Risk_Appetite = 'Low' ;

-- Find the average Investment_Budget for each Risk_Appetite category, but only include categories where more than 3 investors are present.
SELECT Risk_Appetite , AVG(Investment_Budget) AS Average_Investment_Budget
FROM Investors
GROUP BY Risk_Appetite
HAVING COUNT(*) > 3 ;

-- Retrieve the top 5 youngest investors from the High Risk_Appetite category, ordered by Investment_Budget in descending order.
SELECT * FROM Investors
WHERE Risk_Appetite = 'High'
ORDER BY Age ASC , Investment_Budget DESC
LIMIT 5 ;

-- Update the Contact_Number of investors in the city of Mumbai where their Risk_Appetite is 'Medium' and their Age is less than 35.
UPDATE Investors
SET Contact_Number = ' New_Contact'
WHERE City = 'Mumbai'
AND Risk_Appetite = 'Medium'
AND Age < 35 ;

-- Retrieve the total number of investors grouped by City, but only include cities where the total Investment_Budget exceeds 500,000.
SELECT City, COUNT(*) AS Total_Investors
FROM Investors
GROUP BY City
HAVING SUM(Investment_Budget) > 500000 ;

-- Find all female investors where Investment_Budget is less than 300,000 and their City starts with the letter 'C'. Order the results by Investor_Name alphabetically.
SELECT * FROM Investors
WHERE Gender = 'Female'
AND Investment_Budget < 300000
AND City LIKE 'C%'
ORDER BY Investors_Name ASC ;

-- Retrieve all investors whose Age is between 30 and 40, and their Risk_Appetite is not 'Low'. Sort them by Country and then by Investment_Budget.
SELECT * FROM Investors
WHERE Age between 30 and 40
AND Risk_Appetite != 'Low'
ORDER BY Country , Investment_Budget  ;

-- Delete all investors where Email ends with '@example.com' and their Investment_Budget is less than 250,000.
DELETE FROM Investors
WHERE Email LIKE '%@example.com'
AND Investment_Budget < 250000 ;

-- Table 3
-- Creating Transactions Table this table contains details about stock transactions made by investors, including Transaction date, Quantity, Price, and Fess
CREATE TABLE Transactions (
Transaction_Id INT PRIMARY KEY ,                                                  -- Unique identifier for each transaction (Primary Key)
Investors_Id INT ,                                                                -- The ID of the investors making the transaction (Foreign Key referencing Investors table)
Stock_Id INT ,                                                                    -- The ID of the stock being bought or sold (Foreign Key referencing Stock table)
Transaction_Date DATE ,                                                           -- The date when the transaction was made
Quantity INT ,                                                                    -- The number of shares involved in the transaction 
Price_Per_Stock INT ,                                                             -- The price per stock at which the transaction is conducted
Total_Amount BIGINT ,                                                             -- Total value of the transaction (Quantity * price_per_stock)
Transaction_Type SET('Buy','Sell') ,                                              -- Type of the transaction (e.g., Buy, Sell)
Broker_Fees INT ,                                                                 -- The fees Charged by the Broker for the transaction 
Net_Amount BIGINT ,                                                               -- Final amount after subtracting broker fees from the total amount
FOREIGN KEY (Investors_Id) REFERENCES Investors(Investors_Id) ON DELETE CASCADE,  -- Foreign key constraint linking to Investors table with cascading delete
FOREIGN KEY (Stock_Id) REFERENCES Stock(Stock_Id) ON DELETE CASCADE               -- Foreign key constraint linking to Stock table with cascading delete
);

-- Insert values into the Transactions table
INSERT INTO Transactions (Transaction_Id, Investors_Id, Stock_Id, Transaction_Date, Quantity, Price_Per_Stock, Total_Amount, Transaction_Type, Broker_Fees, Net_Amount)
VALUES
(1, 1, 1, '2025-01-01', 10, 3700, 37000, 'Buy', 500, 36500),
(2, 2, 3, '2025-01-02', 5, 2500, 12500, 'Buy', 250, 12250),
(3, 3, 2, '2025-01-03', 20, 1500, 30000, 'Sell', 600, 29400),
(4, 4, 4, '2025-01-04', 15, 1650, 24750, 'Buy', 450, 24300),
(5, 5, 5, '2025-01-05', 25, 930, 23250, 'Buy', 300, 22950),
(6, 6, 7, '2025-01-06', 30, 540, 16200, 'Sell', 200, 16000),
(7, 7, 8, '2025-01-07', 12, 600, 7200, 'Buy', 150, 7050),
(8, 8, 6, '2025-01-08', 18, 420, 7560, 'Buy', 120, 7440),
(9, 9, 9, '2025-01-09', 22, 750, 16500, 'Sell', 400, 16100),
(10, 10, 10, '2025-01-10', 8, 8500, 68000, 'Buy', 1000, 67000),
(11, 11, 11, '2025-01-11', 5, 4200, 21000, 'Buy', 400, 20600),
(12, 12, 13, '2025-01-12', 15, 910, 13650, 'Sell', 350, 13300),
(13, 13, 14, '2025-01-13', 10, 2700, 27000, 'Buy', 500, 26500),
(14, 14, 15, '2025-01-14', 20, 430, 8600, 'Sell', 250, 8350),
(15, 15, 16, '2025-01-15', 25, 890, 22250, 'Buy', 400, 21850),
(16, 16, 17, '2025-01-16', 7, 7200, 50400, 'Buy', 800, 49600),
(17, 17, 18, '2025-01-17', 40, 240, 9600, 'Sell', 300, 9300),
(18, 18, 19, '2025-01-18', 50, 175, 8750, 'Buy', 200, 8550),
(19, 19, 20, '2025-01-19', 12, 450, 5400, 'Buy', 150, 5250),
(20, 20, 12, '2025-01-20', 6, 2500, 15000, 'Sell', 300, 14700);

-- Show table Structure of Transactions
SELECT * FROM Transactions ;

-- Retrieve all Buy transactions where the Total_Amount is greater than 20,000, and Broker_Fees are less than 500. Sort them by Transaction_Date in descending order.
SELECT * FROM Transactions
WHERE Transaction_Type = 'Buy'
AND Total_Amount > 20000
AND Broker_Fees < 500
ORDER BY Transaction_Date DESC ;

-- Update the Net_Amount to reflect a 5% increase for all Sell transactions where the Quantity is greater than 10 and Price_Per_Stock is less than 3000.
UPDATE Transactions
SET Net_Amount = Net_Amount * 1.05
WHERE Transaction_Type = 'Sell'
AND Quantity > 10
AND Price_Per_Stock < 3000 ;

-- Retrieve the average Broker_Fees for Buy transactions where the Quantity is more than 15 and Transaction_Date is within the first 10 days of January 2025.
SELECT AVG(Broker_Fees) AS AvgBrokerFees
FROM transactions
WHERE Transaction_Type = 'Buy'
  AND Quantity > 15
  AND Transaction_Date BETWEEN '2025-01-01' AND '2025-01-10';
  
-- Delete all Sell transactions where the Total_Amount is less than 10,000 and Transaction_Date is before '2025-01-10'.
DELETE FROM transactions
WHERE Transaction_Type = 'Sell'
AND Total_Amount < 10000
AND YEAR(Transaction_Date) > '2025-01-10' ;

-- Retrieve the total Net_Amount for all Buy transactions of the stock with Stock_Id 10, and sort them by Transaction_Date in ascending order.
SELECT SUM(Net_Amount) AS TotalNetAmount
FROM transactions
WHERE Transaction_Type = 'Buy'
AND Stock_Id = 10
ORDER BY Transaction_Date ASC ;

-- Find all transactions where Transaction_Type is 'Sell', and the Net_Amount is greater than 10,000. Group the results by Investor_Id and include the total Net_Amount for each investor.
SELECT Investors_Id , SUM(Net_Amount) AS TotalNetAmount
FROM Transactions
WHERE Transaction_Type = 'Sell'
AND Net_Amount > 10000
GROUP BY Investors_Id ;

-- Update the Quantity to 20 for all Buy transactions where Broker_Fees is greater than 300, and the Price_Per_Stock is between 1000 and 3000.
UPDATE transactions
SET Quantity = 20
WHERE Transaction_Type = 'Buy'
AND Broker_Fees > 300
AND Price_Per_Stock BETWEEN 1000 AND 3000 ;

-- Retrieve all Sell transactions where Broker_Fees is more than 250 and Net_Amount is less than 20,000. Order them by Transaction_Date in descending order.
SELECT * FROM transactions
WHERE Transaction_Type = 'Sell'
AND Broker_Fees > 250
AND Net_Amount < 20000
ORDER BY Transaction_Date DESC ;

-- Retrieve the total Transaction_Count and total Net_Amount for each Investor_Id, where the Transaction_Type is 'Buy' and the Price_Per_Stock is greater than 500.
SELECT Investors_Id , COUNT(*) AS TOTALTransactionCount , SUM(Net_Amount) AS TotalNetAmount
FROM transactions
WHERE Transaction_Type = 'Buy'
AND Price_Per_Stock > 500
GROUP BY Investors_Id ;

-- Find all Buy transactions where Quantity is greater than 10 and the Total_Amount is greater than 15,000. Update the Net_Amount by subtracting Broker_Fees.
UPDATE transactions
SET Net_Amount = Net_Amount - Broker_Fees
WHERE Transaction_Type = 'Buy'
AND Quantity > 10
AND Total_Amount > 15000 ;

-- Table 4
-- Creating Brokers Table this Contains information about brokers, including their contact details, company information, experience, and the services they offer
CREATE TABLE Brokers (
Broker_Id INT PRIMARY KEY ,   -- Unique identifier for each transaction (Primary Key)
Broker_Name VARCHAR (50) ,    -- Name of the brokers handling stock transactions
Company_Name VARCHAR (50) ,   -- Name of the brokerage company the broker represents
Contact_Numbar VARCHAR (50) , -- Phone Number of the brokers for communication purposes
Email VARCHAR (50) ,          -- Email address of the brokers for correspondence
City VARCHAR (50) ,           -- City where the broker operates
Country VARCHAR (50) ,        -- Country where the broker operates
Expirence_Year INT ,          -- Number of years of experience the broker has in the stock market 
Total_Clients INT ,           -- Total number of clients that the broker manages or has served
Brokerage_Rate DECIMAL (5,2)  -- The rate at which the broker charges for services (could be a percentage or fixed amount)
) ;

-- Insert values into the Brokers table
INSERT INTO Brokers (Broker_Id, Broker_Name, Company_Name, Contact_Numbar, Email, City, Country, Experience_Year, Total_Clients, Brokerage_Rate)
VALUES
(1, 'Rajesh Mehta', 'Zerodha', '9876543210', 'rajesh@zerodha.com', 'Mumbai', 'India', 15, 3000, 0.03),
(2, 'Priya Nair', 'Upstox', '9876543222', 'priya@upstox.com', 'Bengaluru', 'India', 10, 2500, 0.04),
(3, 'Ramesh Iyer', 'Angel Broking', '9876543233', 'ramesh@angel.com', 'Delhi', 'India', 12, 2800, 0.05),
(4, 'Anjali Das', 'Groww', '9876543244', 'anjali@groww.com', 'Kolkata', 'India', 8, 1500, 0.03),
(5, 'Sunil Gupta', 'ICICI Direct', '9876543255', 'sunil@icicidirect.com', 'Chennai', 'India', 18, 4000, 0.02),
(6, 'Sneha Jain', 'HDFC Securities', '9876543266', 'sneha@hdfcsec.com', 'Jaipur', 'India', 14, 3200, 0.02),
(7, 'Vikram Shah', 'Kotak Securities', '9876543277', 'vikram@kotak.com', 'Pune', 'India', 20, 5000, 0.01),
(8, 'Pooja Verma', '5Paisa', '9876543288', 'pooja@5paisa.com', 'Hyderabad', 'India', 6, 1800, 0.05),
(9, 'Karan Arora', 'Sharekhan', '9876543299', 'karan@sharekhan.com', 'Gurgaon', 'India', 22, 5500, 0.02),
(10, 'Deepa Patel', 'Axis Direct', '9876543300', 'deepa@axisdirect.com', 'Surat', 'India', 11, 2700, 0.03),
(11, 'Ajay Kumar', 'Motilal Oswal', '9876543311', 'ajay@motilaloswal.com', 'Lucknow', 'India', 16, 3300, 0.02),
(12, 'Neha Kapoor', 'SBI Securities', '9876543322', 'neha@sbisec.com', 'Nagpur', 'India', 9, 2100, 0.03),
(13, 'Manoj Singh', 'IIFL Securities', '9876543333', 'manoj@iifl.com', 'Noida', 'India', 13, 2900, 0.02),
(14, 'Ankit Tiwari', 'Edelweiss', '9876543344', 'ankit@edelweiss.com', 'Amritsar', 'India', 5, 1200, 0.04),
(15, 'Sonia Gupta', 'Karvy', '9876543355', 'sonia@karvy.com', 'Chandigarh', 'India', 7, 1600, 0.03),
(16, 'Rohit Joshi', 'JM Financial', '9876543366', 'rohit@jmfinancial.com', 'Kanpur', 'India', 12, 2500, 0.04),
(17, 'Meera Kulkarni', 'Religare', '9876543377', 'meera@religare.com', 'Ahmedabad', 'India', 8, 2000, 0.03),
(18, 'Suresh Rao', 'Indiabulls', '9876543388', 'suresh@indiabulls.com', 'Mysore', 'India', 10, 2300, 0.05),
(19, 'Akash Reddy', 'Standard Chartered', '9876543399', 'akash@sc.com', 'Vizag', 'India', 14, 3000, 0.02),
(20, 'Geeta Menon', 'BNP Paribas', '9876543400', 'geeta@bnpparibas.com', 'Kochi', 'India', 15, 3200, 0.01);

-- Show table Structure of Brokers
SELECT * FROM Brokers ;

-- Retrieve all brokers with an experience_years greater than 10, and sort them by brokerage_rate in descending order.
SELECT * FROM Brokers
WHERE Experience_Year > 10
ORDER BY Brokerage_Rate DESC ;

-- Update the brokerage_rate to 0.03% for all brokers whose total_clients are greater than 2500, and their experience_years is less than 15.
UPDATE Brokers
SET Brokerage_Rate = 0.03
WHERE Total_Clients > 2500
AND Experience_Year < 15 ;

-- Retrieve the total_clients and average experience_years for brokers located in Mumbai. Group the results by city.
SELECT city, SUM(Total_Clients) AS TotalClients, AVG(Experience_Year) AS AvgExperienceYears
FROM brokers
WHERE city = 'Mumbai'
GROUP BY city;

-- Delete all brokers whose brokerage_rate is less than 0.02% and total_clients is greater than 3000.
DELETE FROM Brokers
WHERE Brokerage_Rate < 0.02
AND Total_Clients > 3000 ;

-- Find the broker with the highest number of total_clients and retrieve their broker_name, company_name, and brokerage_rate.
SELECT Broker_Name, Company_Name, Brokerage_Rate
FROM Brokers
ORDER BY Total_Clients DESC ; 

-- Update the contact_number for all brokers in Chennai to '9999999999', if their brokerage_rate is 0.02%.
UPDATE Brokers
SET Contact_Numbar = 9999999999
WHERE city = 'Chennai' ;

-- Retrieve all brokers where experience_years is between 10 and 15 years, and brokerage_rate is greater than or equal to 0.03%. Sort by total_clients in ascending order.
SELECT * FROM Brokers
WHERE Experience_Year BETWEEN 10 AND 15
AND Brokerage_Rate >= 0.03
ORDER BY Total_Clients ASC ;

-- Retrieve the average brokerage_rate for brokers who have more than 2500 total_clients and have experience_years between 10 and 20.
SELECT AVG(Brokerage_Rate) AS AVGBrokerage_Rate
FROM Brokers
WHERE Total_Clients > 2500
AND Experience_Year BETWEEN 10 AND 20 ;

-- Retrieve the broker_name and company_name for all brokers in India whose experience_years is greater than or equal to 12 and their brokerage_rate is less than 0.04%.
SELECT Broker_Name, Company_Name 
FROM Brokers
WHERE Country = 'India' 
AND Experience_Year >= 12
AND Brokerage_Rate < 0.04 ;

-- Find all brokers in Kolkata whose experience_years are less than 10. Update their brokerage_rate to 0.05% for all brokers who have total_clients greater than 1000.
UPDATE Brokers
SET Brokerage_Rate = 0.05
WHERE City = 'Kolkata'
AND Experience_Year < 10
AND Total_Clients > 1000 ;

-- Table 5
-- Creating Dividend Table This table Contains information about dividends paid by companies to shareholders, including the dividend amount, payment dates, and status.
CREATE TABLE Dividends (
Dividend_Id INT PRIMARY KEY ,                                        -- Unique identifier for each dividend record (Primary Key)
Stock_Id INT ,                                                       -- The ID of the stock for which the dividend is paid (Foreign Key referencing Stock table)
Company_Id INT ,                                                     -- The ID of the company issuing the dividend 
Dividend_Date DATE ,                                                 -- The date when the dividend was declared
Divident_Per_Share INT ,                                             -- The amount of dividend paid per share
Total_Shares INT ,                                                   -- The total number of shares eligible for receiving the dividend
Total_Divident INT ,                                                 -- The total amount of dividend distributed (dividend_per_share * total_shares)
Record_Date DATE ,                                                   -- The date used to determine which shareholders are eligible for the dividend
Payment_Date DATE ,                                                  -- The date on which the dividend is actually paid to the shareholders
Status SET ('Paid','Pending','Declared') ,                           --  The status of the dividend (e.g., Paid, Pending, Declared)
FOREIGN KEY (Stock_Id) REFERENCES Stock(Stock_Id) ON DELETE CASCADE  -- Foreign key constraint linking to Stock table with cascading delete
);

-- Insert values into the Dividends table
INSERT INTO Dividends (Dividend_Id, Stock_Id, Company_Id, Dividend_Date, Dividend_Per_Share, Total_Shares, Total_Dividend, Record_Date, Payment_Date, Status)
VALUES
(1, 1, 1, '2025-01-01', 15, 1000, 15000, '2025-01-02', '2025-01-10', 'Paid'),
(2, 2, 2, '2025-01-05', 10, 1500, 15000, '2025-01-06', '2025-01-15', 'Paid'),
(3, 3, 3, '2025-01-08', 8, 2000, 16000, '2025-01-09', '2025-01-18', 'Paid'),
(4, 4, 4, '2025-01-10', 12, 1200, 14400, '2025-01-11', '2025-01-20', 'Paid'),
(5, 5, 5, '2025-01-12', 20, 500, 10000, '2025-01-13', '2025-01-22', 'Pending'),
(6, 6, 6, '2025-01-15', 25, 800, 20000, '2025-01-16', '2025-01-25', 'Pending'),
(7, 7, 7, '2025-01-18', 18, 700, 12600, '2025-01-19', '2025-01-28', 'Paid'),
(8, 8, 8, '2025-01-20', 22, 400, 8800, '2025-01-21', '2025-01-30', 'Paid'),
(9, 9, 9, '2025-01-22', 30, 300, 9000, '2025-01-23', '2025-02-01', 'Pending'),
(10, 10, 10, '2025-01-25', 50, 100, 5000, '2025-01-26', '2025-02-04', 'Paid'),
(11, 11, 11, '2025-01-28', 16, 600, 9600, '2025-01-29', '2025-02-07', 'Paid'),
(12, 12, 12, '2025-02-01', 14, 450, 6300, '2025-02-02', '2025-02-10', 'Pending'),
(13, 13, 13, '2025-02-03', 10, 300, 3000, '2025-02-04', '2025-02-13', 'Paid'),
(14, 14, 14, '2025-02-06', 28, 250, 7000, '2025-02-07', '2025-02-15', 'Pending'),
(15, 15, 15, '2025-02-09', 35, 150, 5250, '2025-02-10', '2025-02-19', 'Paid'),
(16, 16, 16, '2025-02-12', 5, 1000, 5000, '2025-02-13', '2025-02-21', 'Pending'),
(17, 17, 17, '2025-02-15', 7, 1200, 8400, '2025-02-16', '2025-02-25', 'Paid'),
(18, 18, 18, '2025-02-18', 3, 1500, 4500, '2025-02-19', '2025-02-27', 'Pending'),
(19, 19, 19, '2025-02-20', 9, 800, 7200, '2025-02-21', '2025-03-01', 'Paid'),
(20, 20, 20, '2025-02-23', 11, 600, 6600, '2025-02-24', '2025-03-03', 'Paid');

-- Show table Structure of Dividends
SELECT * FROM Dividends ;

-- Retrieve all records where the status is 'Paid', and sort them by dividend_date in ascending order.
SELECT * FROM Dividends
WHERE Status = 'Paid'
ORDER BY dividend_date ASC ;

-- Calculate the total total_dividend for all dividends where the status is 'Pending'.
SELECT SUM(total_dividend) AS Totaltotal_dividend
FROM Dividends
WHERE Status = 'Pending' ;

-- Update the status to 'Paid' for all records where the payment_date is before '2025-02-28'.
UPDATE Dividends 
SET Status = 'Paid'
WHERE YEAR(payment_date) < '2025-02-28';

-- Retrieve the company_id with the highest total_dividend and display the corresponding dividend_id, stock_id, and dividend_per_share.
SELECT Company_Id, Dividend_Id, Stock_Id, Dividend_Per_Share
FROM Dividends
GROUP BY Company_Id ; -- Q

-- Group the dividends by status and calculate the count and total total_dividend for each group.
SELECT status , COUNT(*) AS DividendCount , SUM(total_dividend) AS TotalDividend
FROM Dividends
GROUP BY status ;

-- Find all dividends where the dividend_per_share is greater than 20 and display their stock_id, company_id, and dividend_date.
SELECT Stock_Id, Company_Id, Dividend_Date
FROM Dividends
WHERE Dividend_Per_Share > 20 ;

-- Retrieve all dividends where the payment_date is between '2025-02-01' and '2025-02-15'.
SELECT * FROM Dividends
WHERE Payment_date BETWEEN '2025-02-01' AND '2025-02-15' ;

-- Find the total total_shares for all dividends with a status of 'Pending' and group by stock_id.
SELECT Stock_Id , SUM(Total_Shares) AS TotalShares
FROM Dividends
WHERE status = 'Pending'
GROUP BY Stock_Id ;

-- Delete all dividend records where the record_date is before '2025-01-15' and the status is 'Paid'.
SELECT * FROM Dividends
WHERE YEAR(Record_Date) < '2025-01-15'
AND Status = 'Paid' ;

-- Table 6
-- Creating Market Trends Table this table Contains daily market trends for individual stocks, tracking price fluctuations, trading volume, and sector performance.
CREATE TABLE Market_Trends (
Trend_Id INT PRIMARY KEY ,                                                                     -- Unique identifier for each market trend record (Primary Key)
Stock_Id INT ,                                                                                 -- The ID of the stock being tracked (Foreign Key referencing Stock table)
Date DATE ,                                                                                    -- The date for which the market trend data is recorded
Opening_Price INT ,                                                                            -- The price of the stock at the beginning of the trading day
Highest_Price INT ,                                                                            -- The highest price reached by the stock during the trading day
Lowest_Price INT ,                                                                             -- The lowest price reached by the stock during the trading day
Closing_Price INT ,                                                                            -- The price of the stock at the end of the trading day
Volume_Traded BIGINT ,                                                                         -- The total number of shares traded during the day 
Market_Cap VARCHAR (50) ,                                                                      -- The market capitalization of the stock on the given date
Sector VARCHAR (50) ,                                                                          -- The sector to which the stock belongs (e.g., IT, Finance, Healthcare)
FOREIGN KEY (Stock_Id) REFERENCES Stock(Stock_Id) ON DELETE CASCADE ON UPDATE CASCADE          -- Foreign key constraint linking to Stock table with cascading delete or update
) ;

-- Insert values into the Market Trends table
INSERT INTO Market_Trends (Trend_Id, Stock_Id, Date, Opening_Price, Highest_Price, Lowest_Price, Closing_Price, Volume_Traded, Market_Cap, Sector)
VALUES
(1, 1, '2025-01-01', 3650, 3700, 3600, 3675, 100000, 1000000000, 'IT'),
(2, 2, '2025-01-02', 1480, 1500, 1460, 1490, 150000, 750000000, 'Pharma'),
(3, 3, '2025-01-03', 2450, 2500, 2400, 2475, 120000, 500000000, 'Banking'),
(4, 4, '2025-01-04', 1600, 1650, 1550, 1625, 80000, 300000000, 'Energy'),
(5, 5, '2025-01-05', 920, 930, 910, 925, 50000, 100000000, 'FMCG'),
(6, 6, '2025-01-06', 530, 540, 520, 535, 30000, 200000000, 'Real Estate'),
(7, 7, '2025-01-07', 590, 600, 580, 595, 70000, 150000000, 'Retail'),
(8, 8, '2025-01-08', 410, 420, 400, 415, 40000, 75000000, 'Metals'),
(9, 9, '2025-01-09', 740, 750, 730, 745, 60000, 120000000, 'IT'),
(10, 10, '2025-01-10', 8450, 8500, 8400, 8475, 10000, 3000000000, 'Automobile'),
(11, 11, '2025-01-11', 4180, 4200, 4160, 4190, 40000, 1250000000, 'Telecom'),
(12, 12, '2025-01-12', 900, 910, 890, 905, 80000, 400000000, 'Media'),
(13, 13, '2025-01-13', 2650, 2700, 2600, 2675, 30000, 800000000, 'Banking'),
(14, 14, '2025-01-14', 425, 430, 420, 427, 25000, 50000000, 'Energy'),
(15, 15, '2025-01-15', 880, 890, 870, 885, 20000, 150000000, 'FMCG'),
(16, 16, '2025-01-16', 7150, 7200, 7100, 7175, 5000, 2500000000, 'Automobile'),
(17, 17, '2025-01-17', 230, 240, 220, 235, 10000, 20000000, 'IT'),
(18, 18, '2025-01-18', 170, 175, 165, 172, 15000, 5000000, 'Retail'),
(19, 19, '2025-01-19', 440, 450, 430, 445, 30000, 75000000, 'Telecom'),
(20, 20, '2025-01-20', 2450, 2500, 2400, 2475, 5000, 100000000, 'Media');

-- Show table Structure of Market_Trends
SELECT * FROM Market_Trends ;

-- Retrieve all records where the Volume_Traded is greater than 50,000, and sort them by Volume_Traded in descending order.
SELECT * FROM Market_Trends
WHERE Volume_Traded > 50000
ORDER BY Volume_Traded DESC ;

-- Group the records by Sector and calculate the average Closing_Price for each sector.
SELECT Sector , AVG(Closing_Price) AS AVGClosing_Price
FROM Market_Trends
GROUP BY Sector ;

-- Update the Market_Cap for all records in the 'IT' sector, increasing it by 10%.
UPDATE Market_Trends
SET Market_Cap = Market_Cap * 1.10
WHERE Sector = 'IT' ;

-- Group the records by Sector and calculate the total Volume_Traded and the count of stocks for each sector.
SELECT Sector , COUNT(*) AS StockCount , SUM(Volume_Traded) AS TotalVolume_Traded
FROM Market_Trends
GROUP BY Sector ;

-- Retrieve all Market Trends where the Market_Cap is less than 100,000,000 and display Trend_Id, Stock_Id, Sector, and Market_Cap.
SELECT Trend_Id, Stock_Id, Sector, Market_Cap
FROM Market_Trends
WHERE Market_Cap < 100000000 ;

-- Retrieve all Market Trends with a Date between '2025-01-15' and '2025-01-20', and sort them by Date in ascending order.
SELECT * FROM Market_Trends
WHERE Date BETWEEN '2025-01-15' AND '2025-01-20'
ORDER BY Date ASC ;

-- Find the Stock_Id and Trend_Id with the highest difference between Highest_Price and Lowest_Price.
SELECT Stock_Id, Trend_Id
FROM Market_Trends
ORDER BY (Highest_Price - Lowest_Price) DESC
LIMIT 1;


-- Delete all records where the Date is before '2025-01-10' and the Market_Cap is less than 200,000,000.
DELETE FROM Market_Trends
WHERE YEAR(Date) < '2025-01-10'
AND Market_Cap < 200000000 ;

-- Use an ALTER query to add a new column Trend_Category (VARCHAR(50)) to the MarketTrends table for categorizing trends (e.g., 'Bullish', 'Bearish').
ALTER TABLE Market_Trends
ADD COLUMN Trend_Category VARCHAR (50) ;

-- Table 7
-- Creating IPO Details Table this table Contains details about companies going public through Initial Public Offerings (IPOs), including financial and market data.
CREATE TABLE IPO_Details (
IPO_Id  INT PRIMARY KEY  ,                       -- Unique identifier for each IPO record (Primary Key)
Company_Id INT ,                                 -- The ID of the company launching the IPO 
Company_Name VARCHAR (50) ,                      -- Name of the company launching the IPO
IPO_Date DATE ,                                  -- The date when the IPO was launched
IPO_Price INT ,                                  -- The price per share set during the IPO
Total_Shares INT ,                               -- The total number of shares issued in the IPO
Raised_Amount INT ,                              -- The total amount raised through the IPO (ipo_price * total_shares)
Market_Cap BIGINT ,                              -- The market capitalization of the company post-IPO
Oversubscription VARCHAR (50) ,                  --  The level of oversubscription for the IPO (e.g., 2x, 3x)
Status  VARCHAR (50)                             --  The current status of the IPO (e.g., Open, Closed, Successful)
);

-- Insert values into the IPO Details table
INSERT INTO IPO_Details (IPO_Id, Company_Id, Company_Name, IPO_Date, IPO_Price, Total_Shares, Raised_Amount, Market_Cap, Oversubscription, Status)
VALUES
(1, 1, 'Reliance Retail', '2025-01-01', 400, 1000000, 400000000, 1000000000, '2.5x', 'Listed'),
(2, 2, 'TCS', '2025-01-05', 2000, 500000, 1000000000, 3000000000, '3.0x', 'Listed'),
(3, 3, 'Infosys', '2025-01-10', 1500, 300000, 450000000, 2000000000, '2.8x', 'Listed'),
(4, 4, 'HDFC Bank', '2025-01-15', 1800, 400000, 720000000, 2500000000, '3.2x', 'Listed'),
(5, 5, 'Hindustan Unilever', '2025-01-20', 2500, 250000, 625000000, 1500000000, '2.0x', 'Listed'),
(6, 6, 'Asian Paints', '2025-01-25', 3100, 200000, 620000000, 1800000000, '1.8x', 'Listed'),
(7, 7, 'Wipro', '2025-01-30', 2200, 150000, 330000000, 1200000000, '3.5x', 'Listed'),
(8, 8, 'SBI', '2025-02-01', 1000, 800000, 800000000, 2000000000, '2.2x', 'Listed'),
(9, 9, 'ICICI Bank', '2025-02-05', 1500, 600000, 900000000, 2100000000, '3.0x', 'Listed'),
(10, 10, 'ITC', '2025-02-10', 2800, 300000, 840000000, 1800000000, '1.9x', 'Listed'),
(11, 11, 'L&T', '2025-02-15', 3200, 100000, 320000000, 1100000000, '1.5x', 'Listed'),
(12, 12, 'Tata Motors', '2025-02-20', 2000, 500000, 1000000000, 2500000000, '3.1x', 'Listed'),
(13, 13, 'Adani Ports', '2025-02-25', 1500, 300000, 450000000, 1000000000, '2.0x', 'Listed'),
(14, 14, 'Bajaj Finance', '2025-03-01', 2700, 250000, 675000000, 1500000000, '1.7x', 'Listed'),
(15, 15, 'Bharti Airtel', '2025-03-05', 800, 700000, 560000000, 1000000000, '2.5x', 'Listed'),
(16, 16, 'NTPC', '2025-03-10', 1200, 400000, 480000000, 900000000, '2.0x', 'Listed'),
(17, 17, 'Power Grid', '2025-03-15', 1400, 350000, 490000000, 800000000, '1.9x', 'Listed'),
(18, 18, 'Axis Bank', '2025-03-20', 1800, 300000, 540000000, 1400000000, '3.3x', 'Listed'),
(19, 19, 'Kotak Mahindra', '2025-03-25', 1600, 200000, 320000000, 1200000000, '2.8x', 'Listed'),
(20, 20, 'Vedanta', '2025-03-30', 1100, 500000, 550000000, 1300000000, '3.0x', 'Listed');

-- Show table Structure of IPO_Details
SELECT * FROM IPO_Details ;

-- Retrieve all IPOs where the Oversubscription is greater than '3.0x' and sort them by IPO_Date in ascending order.
SELECT * FROM IPO_Details
WHERE Oversubscription > '3.0x'
ORDER BY IPO_Date ASC;

-- Group the records by Status and calculate the total Raised_Amount and count of IPOs for each status.
SELECT Status , COUNT(*) AS CountIPO_Id , SUM(Raised_Amount) AS TotalRaised_Amount
FROM IPO_Details
GROUP BY Status ;

-- Retrieve all records where the IPO_Price is greater than 2000, and display IPO_Id, Company_Name, and Market_Cap.
SELECT IPO_Id , Company_Name, Market_Cap
FROM IPO_Details
WHERE IPO_Price > 2000 ;

-- Update the Market_Cap for all IPOs with a Status of 'Listed', increasing it by 5%.
UPDATE IPO_Details
SET Market_Cap = Market_Cap * 1.05
WHERE Status = 'Listed' ;

-- Group the IPOs by Status and calculate the average IPO_Price for each group.
SELECT Status , AVG(IPO_Price) AS AVGIPO_Price
FROM IPO_Details
GROUP BY Status ;

-- Retrieve all IPOs where Total_Shares exceeds 500,000 and sort them by Total_Shares in descending order.
SELECT * FROM IPO_Details
WHERE Total_Shares > 500000
ORDER BY Total_Shares DESC ;

-- Retrieve the Company_Name and IPO_Id of the IPO with the highest Raised_Amount.
SELECT Company_Name, IPO_Id
FROM IPO_Details
ORDER BY Raised_Amount DESC
LIMIT 1 ;

-- Retrieve all IPOs where the IPO_Date is between '2025-02-01' and '2025-03-01', sorted by IPO_Date in ascending order.
SELECT * FROM IPO_Details
WHERE IPO_Date BETWEEN '2025-02-01' AND '2025-03-01'
ORDER BY IPO_Date ASC ;

-- Use an ALTER query to add a new column Sector (VARCHAR(50)) to the IPO_Details table for classifying industries.
ALTER TABLE IPO_Details
ADD COLUMN Sector VARCHAR (50) ;

-- Delete all records where the IPO_Date is before '2025-01-15' and the Market_Cap is less than 1,000,000,000.
DELETE FROM IPO_Details
WHERE IPO_Date < '2025-01-15'
AND Market_Cap < 1000000000 ;


-- Table 8
-- Creating Broker_Details Table this table Contains details about Broker Details, including contact information, client statistics, and operational details.
CREATE TABLE Broker_Details (
Broker_Id INT PRIMARY KEY ,            --  Unique identifier for each brokerage firm (Primary Key)
Broker_Name VARCHAR (50) ,             --  Name of the brokerage firm
Contact_No VARCHAR (50) ,              --  Contact number for inquiries and customer support
Email VARCHAR (50) ,                   --  Official email address of the brokerage firm
City VARCHAR (50) ,                    --  Physical City of the brokerage firm's main office
Commission_Rate VARCHAR (50) ,         --  Percentage of commission charged on transactions by the firm
Total_Clients INT ,                    --  Total number of clients registered with the brokerage firm
Active_Clients INT ,                   --  Number of clients actively trading or using the firm's services
Registered_Date DATE ,                 --  The date when the brokerage firm was officially registered
Rating FLOAT                           --  Customer satisfaction rating for the firm (e.g., out of 5 or 10)
);


-- Insert values into the Broker Details table
INSERT INTO Broker_Details (Broker_Id, Broker_Name, Contact_No, Email, City, Commission_Rate, Total_Clients, Active_Clients, Registered_Date, Rating)
VALUES
(1, 'Zerodha', '9876543210', 'support@zerodha.com', 'Bangalore', '0.03%', 100000, 80000, '2010-08-15', 4.5),
(2, 'Upstox', '9876543211', 'support@upstox.com', 'Mumbai', '0.02%', 70000, 60000, '2015-01-20', 4.3),
(3, 'Groww', '9876543212', 'support@groww.com', 'Delhi', '0.01%', 80000, 70000, '2017-05-10', 4.4),
(4, 'Angel Broking', '9876543213', 'support@angel.com', 'Chennai', '0.04%', 90000, 85000, '2008-09-01', 4.6),
(5, 'Sharekhan', '9876543214', 'support@sharekhan.com', 'Pune', '0.05%', 60000, 55000, '2005-03-15', 4.2),
(6, 'ICICI Direct', '9876543215', 'support@icicidirect.com', 'Hyderabad', '0.06%', 50000, 45000, '2000-07-25', 4.0),
(7, 'HDFC Securities', '9876543216', 'support@hdfcsec.com', 'Bangalore', '0.07%', 55000, 50000, '2002-11-12', 4.1),
(8, 'Motilal Oswal', '9876543217', 'support@motilaloswal.com', 'Jaipur', '0.05%', 40000, 38000, '1995-06-18', 4.3),
(9, 'Axis Direct', '9876543218', 'support@axisdirect.com', 'Ahmedabad', '0.04%', 35000, 32000, '2003-09-22', 4.2),
(10, 'Edelweiss', '9876543219', 'support@edelweiss.com', 'Kolkata', '0.03%', 30000, 27000, '2006-12-05', 4.0),
(11, 'Paytm Money', '9876543220', 'support@paytmmoney.com', 'Noida', '0.02%', 70000, 68000, '2019-01-25', 4.4),
(12, 'Kotak Securities', '9876543221', 'support@kotaksec.com', 'Delhi', '0.05%', 65000, 62000, '2004-08-10', 4.3),
(13, 'SBI Securities', '9876543222', 'support@sbisec.com', 'Mumbai', '0.06%', 40000, 39000, '1998-02-15', 4.1),
(14, 'IIFL Securities', '9876543223', 'support@iifl.com', 'Chennai', '0.05%', 45000, 43000, '2001-07-30', 4.2),
(15, '5Paisa', '9876543224', 'support@5paisa.com', 'Indore', '0.03%', 30000, 28000, '2016-03-18', 4.1),
(16, 'Alice Blue', '9876543225', 'support@aliceblue.com', 'Mysore', '0.02%', 25000, 24000, '2012-11-14', 4.0),
(17, 'TradeSmart', '9876543226', 'support@tradesmart.com', 'Surat', '0.03%', 20000, 19000, '2018-04-22', 4.3),
(18, 'SAMCO', '9876543227', 'support@samco.com', 'Nagpur', '0.02%', 18000, 17000, '2015-06-11', 4.2),
(19, 'Reliance Securities', '9876543228', 'support@reliancesec.com', 'Patna', '0.05%', 15000, 14000, '2007-10-08', 4.0),
(20, 'Geojit', '9876543229', 'support@geojit.com', 'Kochi', '0.06%', 12000, 11000, '1994-01-15', 4.4);

-- Show table Structure of Broker_Details
SELECT * FROM Broker_Details ;

-- Retrieve all brokers with a rating greater than or equal to 4.3 and sort them by Commission_Rate in descending order.
SELECT * FROM Broker_Details
WHERE Rating >= 4.3
ORDER BY Commission_Rate DESC ;

-- Calculate the total number of clients for all brokers in each city and sort the result by total clients in descending order.
SELECT city, SUM(total_clients) AS TotalClients
FROM Broker_Details
GROUP BY city
ORDER BY TotalClients DESC;

-- Retrieve the details of brokers who have more than 50,000 active clients and sort them by Active_Clients in ascending order.
SELECT * FROM Broker_Details
WHERE Active_Clients > 50000
ORDER BY Active_Clients ASC ;

-- Update the Commission_Rate to '0.04%' for all brokers who have a rating of less than 4.2.
UPDATE Broker_Details
SET Commission_Rate = '0.04%'
WHERE Rating < 4.2 ;

-- Retrieve the Broker_Name and Rating of brokers who have been registered before '2010-01-01'.
SELECT Broker_Name, Rating
FROM Broker_Details
WHERE YEAR(Registered_Date) < '2010-01-01' ;

-- Retrieve all brokers where the Commission_Rate is greater than '0.04%' and sort by Rating in descending order.
 SELECT * FROM Broker_Details
 WHERE Commission_Rate > '0.04%'
 ORDER BY Rating DESC ;
 
-- Use an ALTER query to add a new column 'Total_Revenue' (DECIMAL(15,2)) to the Broker_Details table.
ALTER TABLE Broker_Details
ADD COLUMN Total_Revenue DECIMAL (15,2) ;

-- Delete all brokers who have less than 20,000 total clients.
DELETE FROM Broker_Details
WHERE Total_Clients < 20000 ;

-- Table 9
-- Creating Market_Index Table this table Contains information about stock market Index, tracking their performance and associated data.
CREATE TABLE Market_Index (
 Index_Id INT PRIMARY KEY ,             -- Unique identifier for each market index (Primary Key)   
 Index_Name VARCHAR (50) ,              -- Name of the market index (e.g., SENSEX, NIFTY 50)
 Market_Cap BIGINT ,                    -- Total market capitalization of all companies listed in the index
 Total_Companies INT ,                  -- Number of companies included in the index
 Index_Value INT ,                      -- Current value of the market index
 Year_High INT ,                        -- Highest value achieved by the index in the current year
 Year_Low INT ,                         -- Lowest value reached by the index in the current year
 Average_Volume INT ,                   -- Average trading volume of companies in the index
 Last_Updated DATE ,                    -- The date and time when the index information was last updated
 Status SET ('Active','Inactive')       -- Current status of the index (e.g., Active, Inactive)
 );

-- Insert values into the Index Details table
INSERT INTO Market_Index (Index_Id, Index_Name, Market_Cap, Total_Companies, Index_Value, Year_High, Year_Low, Average_Volume, Last_Updated, Status)
VALUES
(1, 'NIFTY 50', 2000000000, 50, 19500, 20000, 17500, 4000000, '2025-01-10', 'Active'),
(2, 'SENSEX', 2500000000, 30, 65000, 68000, 60000, 3000000, '2025-01-10', 'Active'),
(3, 'Bank NIFTY', 1200000000, 12, 42000, 44000, 38000, 2500000, '2025-01-10', 'Active'),
(4, 'NIFTY IT', 800000000, 10, 30000, 32000, 28000, 2000000, '2025-01-10', 'Active'),
(5, 'NIFTY FMCG', 600000000, 15, 15000, 16000, 14000, 1500000, '2025-01-10', 'Active'),
(6, 'NIFTY Pharma', 700000000, 12, 12500, 13500, 11000, 1800000, '2025-01-10', 'Active'),
(7, 'NIFTY Auto', 900000000, 10, 21000, 22000, 19000, 2300000, '2025-01-10', 'Active'),
(8, 'NIFTY Energy', 1100000000, 8, 18000, 19000, 17000, 2000000, '2025-01-10', 'Active'),
(9, 'NIFTY Realty', 500000000, 5, 8000, 9000, 7000, 1000000, '2025-01-10', 'Active'),
(10, 'NIFTY Infra', 400000000, 7, 9500, 10000, 8500, 1200000, '2025-01-10', 'Active'),
(11, 'BSE 500', 3000000000, 500, 25000, 26000, 24000, 5000000, '2025-01-10', 'Active'),
(12, 'BSE MIDCAP', 1000000000, 150, 18000, 19000, 17000, 2200000, '2025-01-10', 'Active'),
(13, 'BSE SMALLCAP', 800000000, 250, 15000, 16000, 14000, 2000000, '2025-01-10', 'Active'),
(14, 'NIFTY METAL', 600000000, 10, 11000, 12000, 10000, 1400000, '2025-01-10', 'Active'),
(15, 'S&P BSE Dividend', 700000000, 50, 22000, 23000, 21000, 1700000, '2025-01-10', 'Active'),
(16, 'NIFTY CPSE', 400000000, 20, 9000, 10000, 8000, 1200000, '2025-01-10', 'Active'),
(17, 'NIFTY Services', 600000000, 25, 15000, 16000, 14000, 1300000, '2025-01-10', 'Active'),
(18, 'NIFTY MNC', 500000000, 25, 14000, 15000, 13000, 1100000, '2025-01-10', 'Active'),
(19, 'NIFTY Media', 300000000, 15, 8000, 9000, 7000, 900000, '2025-01-10', 'Active'),
(20, 'NIFTY PSE', 350000000, 30, 9500, 10500, 8500, 1000000, '2025-01-10', 'Active');

-- Show table Structure of Market_Index
SELECT * FROM Market_Index ;

-- Retrieve all market indices with a Market_Cap greater than or equal to 1,000,000,000 and sort them by Index_Value in descending order.
SELECT * FROM Market_Index
WHERE Market_Cap >= 1000000000
ORDER BY Index_Value DESC;

-- Calculate the total Market_Cap for each Index_Name and sort the result by Market_Cap in descending order.
SELECT Index_Name, SUM(Market_Cap) AS TotalMarketCap
FROM Market_Index
GROUP BY Index_Name
ORDER BY TotalMarketCap DESC;

-- Retrieve all market indices where Total_Companies exceeds 20 and sort them by Total_Companies in ascending order.
SELECT * FROM Market_Index
WHERE Total_Companies > 20
ORDER BY Total_Companies ASC;

-- Update the Status to 'Inactive' for all indices where the Year_Low is less than 10,000.
UPDATE Market_Index
SET Status = 'Inactive'
WHERE Year_Low < 10000;

-- Retrieve the Index_Name and Year_High of market indices whose Year_Low is greater than or equal to 10,000.
SELECT Index_Name, Year_High
FROM Market_Index
WHERE Year_Low >= 10000;

-- Retrieve all market indices where the Average_Volume exceeds 2,000,000 and sort by Average_Volume in descending order.
SELECT * FROM Market_Index
WHERE Average_Volume > 2000000
ORDER BY Average_Volume DESC;

-- Use an ALTER query to add a new column 'Sector' (VARCHAR(50)) to the Market_Index table for categorizing sectors.
ALTER TABLE Market_Index
ADD Sector VARCHAR(50);

-- Retrieve the market index with the highest Total_Companies and display Index_Name, Total_Companies, and Market_Cap.
SELECT Index_Name, Total_Companies, Market_Cap
FROM Market_Index
WHERE Total_Companies = (SELECT MAX(Total_Companies) FROM Market_Index);

-- Delete all market indices with a Market_Cap of less than 500,000,000.
DELETE FROM Market_Index
WHERE Market_Cap < 500000000;


-- Table 10
-- Creating Stock_Performance Table this table Contains details about the performance of stocks in the market, tracking various performance metrics over time.
CREATE TABLE Stock_Performance (
Performance_Id INT PRIMARY KEY ,                                                        -- Unique identifier for each performance record (Primary Key)
Stock_Id INT ,                                                                          -- The ID of the stock whose performance is being tracked (Foreign Key referencing Stock table)
Performance_Date DATE ,                                                                 -- The date on which the stock performance data is recorded
Opening_Price INT ,                                                                     -- The opening price of the stock on the performance date
Closing_Price INT ,                                                                     -- The closing price of the stock on the performance date
Highest_Price INT ,                                                                     -- The highest price reached by the stock during the day
Lowest_Price INT ,                                                                      -- The lowest price reached by the stock during the day
Percentage_Change DECIMAL (5,2) ,                                                       -- The percentage change in the stock price from opening to closing price
Volume_Traded INT ,                                                                     -- The number of shares traded during the day
Market_Cap BIGINT ,                                                                     -- The market capitalization of the stock on the performance date
FOREIGN KEY (Stock_Id) REFERENCES Stock(Stock_Id) ON DELETE CASCADE ON UPDATE CASCADE   -- Foreign key constraint linking to Stock table with cascading delete or update
);

-- Insert values into the Performance table
INSERT INTO Stock_Performance (Performance_Id, Stock_Id, Performance_Date, Opening_Price, Closing_Price, Highest_Price, Lowest_Price, Percentage_Change, Volume_Traded, Market_Cap)
VALUES
(1, 1, '2025-01-01', 1200, 1220, 1250, 1185, '1.67', 50000, 1500000000),
(2, 2, '2025-01-01', 600, 610, 620, 590, '1.67', 30000, 900000000),
(3, 3, '2025-01-01', 250, 260, 265, 240, '4.00', 20000, 500000000),
(4, 4, '2025-01-01', 850, 860, 870, 830, '1.18', 15000, 1300000000),
(5, 5, '2025-01-01', 1350, 1370, 1400, 1325, '1.48', 45000, 2000000000),
(6, 6, '2025-01-02', 900, 910, 920, 880, '1.11', 60000, 1800000000),
(7, 7, '2025-01-02', 200, 210, 215, 195, '5.00', 10000, 400000000),
(8, 8, '2025-01-02', 1500, 1530, 1550, 1480, '2.00', 70000, 2200000000),
(9, 9, '2025-01-02', 1000, 1010, 1020, 990, '1.00', 40000, 1200000000),
(10, 10, '2025-01-02', 1100, 1120, 1140, 1080, '1.82', 55000, 1600000000),
(11, 11, '2025-01-03', 1220, 1235, 1255, 1195, '1.23', 51000, 1550000000),
(12, 12, '2025-01-03', 610, 620, 630, 600, '1.64', 32000, 910000000),
(13, 13, '2025-01-03', 265, 275, 280, 255, '3.66', 21000, 510000000),
(14, 14, '2025-01-03', 860, 875, 880, 850, '1.73', 14000, 1350000000),
(15, 15, '2025-01-03', 1370, 1390, 1415, 1345, '1.46', 46000, 2050000000),
(16, 16, '2025-01-04', 915, 930, 940, 910, '1.65', 62000, 1850000000),
(17, 17, '2025-01-04', 205, 215, 220, 200, '5.00', 10500, 420000000),
(18, 18, '2025-01-04', 1520, 1550, 1560, 1500, '2.63', 71000, 2250000000),
(19, 19, '2025-01-04', 1010, 1020, 1030, 1000, '0.99', 42000, 1250000000),
(20, 20, '2025-01-04', 1125, 1145, 1160, 1110, '1.78', 56000, 1650000000);

-- Show table Structure of Stock_Performance
SELECT * FROM Stock_Performance ;

-- Retrieve all stock performances where the Percentage_Change is greater than 3.0 and sort them by Performance_Date in ascending order.
SELECT * FROM Stock_Performance
WHERE Percentage_Change > 3.0
ORDER BY Performance_Date ASC;

-- Calculate the average Percentage_Change and total Volume_Traded for each Stock_Id and sort the result by Stock_Id.
SELECT Stock_Id, AVG(Percentage_Change) AS AveragePercentageChange, SUM(Volume_Traded) AS TotalVolumeTraded
FROM Stock_Performance
GROUP BY Stock_Id
ORDER BY Stock_Id;

-- Retrieve the performance data where the Opening_Price is greater than Closing_Price and sort by Performance_Date in descending order.
SELECT * FROM Stock_Performance
WHERE Opening_Price > Closing_Price
ORDER BY Performance_Date DESC;

-- Calculate the total Market_Cap for each Stock_Id and retrieve the stock performance with the highest Market_Cap.
SELECT Stock_Id, SUM(Market_Cap) AS TotalMarketCap 
FROM Stock_Performance
GROUP BY Stock_Id
ORDER BY TotalMarketCap DESC
LIMIT 1;

-- Update the Percentage_Change to 2.5 for all records where the Stock_Id is 8.
UPDATE Stock_Performance
SET Percentage_Change = 2.5
WHERE Stock_Id = 8;

-- Retrieve the Stock_Id, Performance_Date, and Opening_Price where the Percentage_Change is greater than or equal to 1.5%.
SELECT Stock_Id, Performance_Date, Opening_Price
FROM Stock_Performance
WHERE Percentage_Change >= 1.5;

-- Delete stock performances where the Stock_Id is less than or equal to 5.
DELETE FROM Stock_Performance
WHERE Stock_Id <= 5;

-- Use an ALTER query to add a new column Stock_Type (VARCHAR(50)) to the Stock_Performance table.
ALTER TABLE Stock_Performance
ADD Stock_Type VARCHAR(50);

-- Retrieve all stock performances where Volume_Traded exceeds 30,000 and sort them by Volume_Traded in descending order.
SELECT * FROM Stock_Performance
WHERE Volume_Traded > 30000
ORDER BY Volume_Traded DESC;











































































































































































































































































































































































