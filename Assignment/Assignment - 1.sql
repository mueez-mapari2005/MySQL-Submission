-- Initializing the E-Commerce Database --
-- This Database is designed to manage data related to an e-commerce including Users , Product , Orders , Shipping and Reviews --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database  E_Commerce ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  E_Commerce ;

use E_Commerce ;

-- E_Commerce Tables Queries --

-- Table-1
-- This table Stores users information , including user-id , name , address , contact-number , gender , membership type , registration-date --
-- Create The Users Table --
Create Table Users (
-- Unique identifier for each Users
user_id INT PRIMARY KEY AUTO_INCREMENT ,
-- Name of The user_id
user_name VARCHAR (50) NOT NULL ,
-- Name of the E-mail id 
Email_id VARCHAR (50) NOT NULL ,
-- Address of the User
Address Text ,
-- Contact Number of User 
contact_number VARCHAR (50) NOT NULL ,
-- Gender of the User
gender VARCHAR (50) NOT NULL ,
-- Membership-Type of the User
membership_type VARCHAR (50) NOT NULL ,
-- Registration Date of the User 
registration_date DATE 
);

-- Insert records into the Users table 
INSERT INTO Users ( user_name , email_id , address , contact_number, gender , membership_type , registration_date) VALUES
('John Doe','john.doe@gmail.com','1234 Elm Street,Apt 101,New York,NY,10001,USA','9876543210','Male','Premium','2023-01-01'),
('Jane Smith','Jane.Smith@gmail.com','5678 Oak Lane, Suite 205, Los Angeles, CA, 90001, USA','8765432109','Female','Free','2023-02-01'),
('Alex johnson','Alex.johnson@gmail.com','90 Pine Road, Chicago, IL, 60601, USA','7654321098','Male','Premium','2023-03-01'),
('Emily Brown','Emily.Brown@gmail.com','45 Cedar Ave, Miami, FL, 33101, USA','6543210987','Female','Free','2023-04-01'),
('Michael Clark','Michael.Clark@gmail.com','789 Maple Street, Houston, TX, 77001, USA','5432109876','Male','Premium','2023-05-01'),
('Sarah Wilson','Sarah.Wilson@gmail.com','321 Birch Blvd, Denver, CO, 80201, USA','4321098765','Female','Premium','2023-06-01'),
('David Miller','David.Miller@gmail.com','654 Spruce Lane, Seattle, WA, 98101, USA','3210987654','Male','Free','2023-07-01'),
('Laura Davis','Laura.Davis@gmail.com','111 Oak Circle, Atlanta, GA, 30301, USA','2109876543','Female','Free','2023-08-01'),
('James Taylor','James.Taylor@gmail.com','567 Walnut Drive, Phoenix, AZ, 85001, USA','1098765432','Male','Premium','2023-09-01'),
('Olivia White','Olivia.White@gmail.com','345 Aspen Path, Boston, MA, 02101, USA','0987654321','Female','Premium','2023-10-01');

-- This Qury select all the users details from the ' users ' table --
-- It retrieves the full list of users , including their personal information --
SELECT * FROM USERS ;

-- Table - 2 
-- This table contains information about the product available for purchase, such as name, description, price, and stock quantity --
-- Create the Product table --
CREATE TABLE product (
-- Unique identifier for each Product
Product_id INT PRIMARY KEY AUTO_INCREMENT ,
-- name of the Product
Name VARCHAR (50) NOT NULL ,
-- category of the product
Category VARCHAR (50) NOT NULL ,
-- price of the product 
Price INT NOT NULL ,
-- stock of the product 
Stock INT NOT NULL ,
-- description of the table 
description TEXT,
-- manufacturer of the product 
Manufacturer VARCHAR (50) NOT NULL ,
-- warrantyperiod of the product 
Warranty_period VARCHAR (50) NOT NULL ,
-- ratings of the product 
Ratings VARCHAR (50) NOT NULL
);

-- Insert  Insert records into the product table
INSERT INTO product (name,category,price,stock,description,manufacturer,warranty_period,ratings) VALUES
('Laptop','Electronic','35000','50','High-performance laptop with 16GB RAM, 1TB SSD, and a 15.6-inch display.','Dell','2 years','4.8'),
('Sneakers','Footwear','2000','200','Stylish and comfortable sneakers made with breathable material. ','Nike','1 year','4.5'),
('Smartphone','Electronics','18000','100','Latest smartphone with 128GB storage, 8GB RAM, and a stunning AMOLED display.','Samsung','2 years','	4.7'),
('Backpack','Accessories','800','300','Durable and lightweight backpack with multiple compartments. ','Wildcraft','1 year','4.3'),
('Headphones','Electronics','1500','80','Noise-canceling headphones with superior sound quality and Bluetooth support. ','Sony','1 year','4.6'),
('Watch','Accessories','5000','120','Smartwatch with health tracking features and a sleek design. ','Apple','2 years' ,'4.9' ),
('T-Shirt' ,'Clothing','450','500','Comfortable cotton T-shirt available in various colors and sizes. ','Levis','6 months','4.4'),
('Jeans	','Clothing','350','400','Stylish and durable jeans with a modern fit. ','Wrangler','1 year','4.2'),
('Chair	','Furniture ' ,'3000','150','Ergonomic office chair with adjustable height and lumbar support. ','	Herman Miller','5 years','4.9'),
('Table	','Furniture','200','100','Wooden dining table with a polished finish, seating for six. ','IKEA','	5 years','4.8');

-- This Qury retrieves all details of products available in the  ' product ' table --
-- It returns the product name, description, price, stock and rating --
SELECT * FROM product ;

-- Table - 3
-- This table track the orders placed by users, including orderID, productID, totalprice, paymentmethod, and OrderStatus
-- Create Order Table
CREATE TABLE orders (
-- Unique identifier for each Order_id
order_ID INT PRIMARY KEY AUTO_INCREMENT,
-- Unique identifier for each Product_ID
product_ID INT NOT NULL ,
-- quantity of orders
quantity INT NOT NULL ,
-- total price of orders
total_price INT NOT NULL ,
-- date of order
order_date DATE ,
-- name of shipping address
shipping_address TEXT ,
-- status of order
order_status VARCHAR (50) NOT NULL ,
-- payment method of order
payment_method VARCHAR (50) NOT NULL ,
-- date of shipping 
shipping_date DATE ,
-- Date of delivery order
delivery_date DATE 
);

-- Insert records into the Orders table 
INSERT INTO Orders (product_id, quantity, total_price, order_date, shipping_address, order_status,  payment_method, shipping_date, delivery_date) VALUES
(201, 1, 800, '2023-01-20', '1234 Elm Street, Apt 101, New York, NY, 10001, USA', 'Shipped', 'Credit Card', '2023-01-22', '2023-01-25'),  
(202, 2, 240, '2023-02-18', '5678 Oak Lane, Suite 205, Los Angeles, CA, 90001, USA', 'Delivered', 'Debit Card', '2023-02-20', '2023-02-23'),  
(203, 1, 600, '2023-03-25', '90 Pine Road, Chicago, IL, 60601, USA', 'Pending', 'PayPal', '2023-03-27', '2023-03-30'),  
(204, 3, 150, '2023-04-05', '45 Cedar Ave, Miami, FL, 33101, USA', 'Shipped', 'Credit Card', '2023-04-07', '2023-04-10'),  
(205, 2, 300, '2023-05-12', '789 Maple Street, Houston, TX, 77001, USA', 'Delivered', 'Debit Card', '2023-05-14', '2023-05-17'),  
(206, 1, 250, '2023-06-15', '321 Birch Blvd, Denver, CO, 80201, USA', 'Shipped', 'PayPal', '2023-06-17', '2023-06-20'),  
(207, 5, 150, '2023-07-20', '654 Spruce Lane, Seattle, WA, 98101, USA', 'Delivered', 'Credit Card', '2023-07-22', '2023-07-25'),  
(208, 2, 120, '2023-08-10', '111 Oak Circle, Atlanta, GA, 30301, USA', 'Pending', 'Debit Card', '2023-08-12', '2023-08-15'),  
(209, 1, 100, '2023-09-05', '567 Walnut Drive, Phoenix, AZ, 85001, USA', 'Shipped', 'PayPal', '2023-09-07', '2023-09-10'),  
(210, 1, 200, '2023-10-10', '345 Aspen Path, Boston, MA, 02101, USA', 'Delivered', 'Credit Card', '2023-10-12', '2023-10-15');  

-- This query selets all orders placed by a specifier user
SELECT * FROM orders;

-- Table - 4
-- This table manages shipping details for orders, inculding the delivery address, tracking Number, and delivery status 
-- create shipping table
CREATE TABLE IF NOT EXISTS shipping (
-- Unique identifier for each shipping_ID
shipping_id INT PRIMARY KEY AUTO_INCREMENT ,
-- Unique identifier for each order_ID
order_id INT NOT NULL ,
-- name of shipping address
 shipping_address TEXT ,
 -- name of shipping method
 shipping_method VARCHAR (50) NOT NULL ,
 -- cost of shipping
 shipping_cost INT NOT NULL ,
 -- tracking number of shipping
  tracking_number VARCHAR (50) NOT NULL ,
 -- date of shipping 
  shipping_date DATE ,
  -- Estimated Delivary date
   Estimated_Delivary_date DATE ,
   -- status of shipping
   shipping_status VARCHAR (50) NOT NULL
   ) ;
   
   -- Insert records into the shipping table 
   INSERT INTO shipping  (order_id, shipping_address, shipping_method, shipping_cost, tracking_number, shipping_date, Estimated_Delivary_date, shipping_status) VALUES  
(301, '1234 Elm Street, Apt 101, New York, NY, 10001, USA', 'Standard', 20, '1Z999AA10123456789', '2023-01-22', '2023-01-25', 'In Transit'),  
(302, '5678 Oak Lane, Suite 205, Los Angeles, CA, 90001, USA', 'Express', 30, '1Z999AA10234567890', '2023-02-20', '2023-02-23', 'Delivered'),  
(303, '90 Pine Road, Chicago, IL, 60601, USA', 'Standard', 15, '1Z999AA10345678901', '2023-03-27', '2023-03-30', 'In Transit'),  
(304, '45 Cedar Ave, Miami, FL, 33101, USA', 'Express', 25, '1Z999AA10456789012', '2023-04-07', '2023-04-10', 'Shipped'),  
(305, '789 Maple Street, Houston, TX, 77001, USA', 'Standard', 20, '1Z999AA10567890123', '2023-05-14', '2023-05-17', 'Delivered'),  
(306, '321 Birch Blvd, Denver, CO, 80201, USA', 'Express', 30, '1Z999AA10678901234', '2023-06-17', '2023-06-20', 'Shipped'),  
(307, '654 Spruce Lane, Seattle, WA, 98101, USA', 'Standard', 15, '1Z999AA10789012345', '2023-07-22', '2023-07-25', 'Delivered'),  
(308, '111 Oak Circle, Atlanta, GA, 30301, USA', 'Standard', 20, '1Z999AA10890123456', '2023-08-12', '2023-08-15', 'In Transit'),  
(309, '567 Walnut Drive, Phoenix, AZ, 85001, USA', 'Express', 25, '1Z999AA10901234567', '2023-09-07', '2023-09-10', 'Delivered'),  
(310, '345 Aspen Path, Boston, MA, 02101, USA', 'Standard', 20, '1Z999AA11012345678', '2023-10-12', '2023-10-15', 'Delivered');  

-- This query selects shipping details for a specific order
-- It retrieves the shipping address, tracking number, and delivary status .
SELECT * FROM shipping ;

-- TABLE-5
-- This table stores customer reviews and ratings for product, helping to build trust and improve user exprience
-- create reviews table 
CREATE table reviews (
-- Unique identifier for each review_ID
review_id INT PRIMARY KEY AUTO_INCREMENT ,
-- Unique identifier for each user_ID
user_id INT NOT NULL ,
-- name of the product_id
product_id INT NOT NULL ,
-- Ratings of the product from the user
rating INT NOT NULL ,
-- Review text from the user
review TEXT ,
-- feedback from user
feedback VARCHAR (100) NOT NULL ,
-- Date of review
review_date DATE ,
-- reviews from verified purchase
verified_purchase VARCHAR (50) NOT NULL ,
-- review title from the user
review_title VARCHAR (50) NOT NULL ,
-- helpful Vote from the user
helpful_vote VARCHAR (50) NOT NULL 
);

-- Insert records into the reviews table
INSERT INTO reviews (User_ID, Product_ID, Rating, Review, Feedback, Review_Date, Verified_Purchase, Review_Title, Helpful_Vote)  VALUES
(101, 201, 5, 'Excellent laptop, very fast and lightweight. Highly recommend!', 'Great quality!', '2023-01-25', 'Yes', 'Best laptop!', 10),  
(102, 202, 4, 'Comfortable sneakers but a bit tight on the sides.', 'Good, but can improve.', '2023-02-22', 'Yes', 'Nice sneakers', 8),  
(103, 203, 5, 'Great smartphone with amazing display and battery life!', 'Very satisfied.', '2023-03-30', 'Yes', 'Awesome phone!', 15),  
(104, 204, 3, 'The backpack is durable, but the zippers feel a bit flimsy.', 'Decent product.', '2023-04-10', 'No', 'Okay backpack', 5),  
(105, 205, 4, 'The headphones have excellent sound quality but are a bit bulky.', 'Good value for money.', '2023-05-18', 'Yes', 'Nice headphones', 12),  
(106, 206, 5, 'The smartwatch is great for fitness tracking, and the design is sleek.', 'Highly recommend.', '2023-06-20', 'Yes', 'Perfect smartwatch', 20),  
(107, 207, 4, 'Comfortable T-shirt, but the fabric could be softer.', 'Good quality.', '2023-07-25', 'Yes', 'Good T-shirt', 7),  
(108, 208, 5, 'Great fit and style, highly recommend for casual wear!', 'Best purchase!', '2023-08-17', 'Yes', 'Stylish jeans', 14),  
(109, 209, 5, 'The chair is incredibly comfortable, perfect for long working hours.', 'Worth every penny!', '2023-09-15', 'Yes', 'Best office chair', 18),  
(110, 210, 5, 'The table is sturdy and looks great in my dining room!', 'Great quality.', '2023-10-05', 'Yes', 'Perfect dining table', 22);

--  This Query retrieves all reviews for a specific product
-- It returns the ratings and comments from the user who reviewed the product .
SELECT * FROM reviews;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- Creating the Hospital Management System Database --
-- This database is designed to manage hospital-related data including Patient Information, Doctor Details, Appointments, Medications, and Billing. --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database  Hospital_Management_System ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Hospital_Management_System ;

use Hospital_Management_System ;

-- Hospital_Management_System Tables Queries --

-- TABLE-1
-- Table for storing patient information
-- This table holds personal and medical details of patients
CREATE TABLE patient (
--  Unique identifier for each patient_id
Patient_id INT PRIMARY KEY AUTO_INCREMENT,
-- name of the patient
Name VARCHAR (50) NOT NULL ,
-- age of the patient
Age INT NOT NULL ,
-- gender of the patient
Gender VARCHAR (50) NOT NULL ,
-- contact number of the patient
Contact_Number VARCHAR (50) NOT NULL ,
-- address of the patient
Address TEXT ,
-- Medical history of the patient
Medical_History TEXT ,
-- Assigned Doctors for the patient
Assigned_doctor_id VARCHAR (50)  NOT NULL
);

-- Insert records into the patient table
INSERT INTO patient (Name, Age, Gender, Contact_Number, Address, Medical_History, Assigned_Doctor_ID)  VALUES  
('John Doe', 45, 'Male', '9876543210', '123 Main Street, New York, NY, USA', 'Type 2 diabetes with high blood pressure', 'D001'),  
('Jane Smith', 32, 'Female', '8765432109', '456 Elm Street, Los Angeles, CA, USA', 'Chronic hypertension and mild asthma', 'D002'),  
('Alice Johnson', 29, 'Female', '7654321098', '789 Oak Avenue, Dallas, TX, USA', 'No significant medical history', 'D003'),  
('Bob Williams', 55, 'Male', '6543210987', '101 Pine Boulevard, Miami, FL, USA', 'Coronary artery disease, post-stent insertion', 'D004'),  
('Charlie Brown', 40, 'Male', '5432109876', '202 Maple Road, Chicago, IL, USA', 'Asthma with occasional exacerbations', 'D001'),  
('Emily Davis', 50, 'Female', '4321098765', '303 Birch Lane, Seattle, WA, USA', 'Osteoarthritis in both knees', 'D002'),  
('David Wilson', 60, 'Male', '3210987654', '404 Cedar Drive, Boston, MA, USA', 'No significant medical history', 'D003'),  
('Olivia Taylor', 35, 'Female', '2109876543', '505 Walnut Street, Las Vegas, NV, USA', 'Chronic migraines, under management', 'D004'),  
('Henry Martinez', 48, 'Male', '1098765432', '606 Cherry Street, Phoenix, AZ, USA', 'No significant medical history', 'D001'),  
('Sophia Lee', 27, 'Female', '9876543211', '707 Spruce Street, Portland, OR, USA', 'No significant medical history', 'D002');  

 -- This query selects all the patients details from the 'patient' table.
-- It retrieves the full list of patient, including their personal information and medical history .
SELECT * FROM patient ;

-- Table-2
-- Table for storing doctor information
-- This table stores details about doctors, including their specialization and contact details.
CREATE TABLE doctors (
--  Unique identifier for each doctors_id
Doctors_id INT PRIMARY KEY AUTO_INCREMENT ,
-- name of the doctors
Name VARCHAR (50) NOT NULL ,
-- Specialty of the doctor
Specialty VARCHAR (50) NOT NULL ,
-- gender of the doctor
Gender VARCHAR (50) NOT NULL ,
-- Contact detail of the doctor
Phone_Number VARCHAR (50) NOT NULL ,
-- doctors E-mail
E_mail VARCHAR (50) NOT NULL ,
-- Office location of the doctor
Office_Location VARCHAR (50) NOT NULL ,
-- Year of experience of the doctors
Year_experience INT NOT NULL ,
-- Qualification of the doctor
Qualification TEXT 
);

-- Insert records into the doctors table
INSERT INTO Doctors (Name, Specialty, Gender, Phone_Number, E_mail, Office_Location, Year_Experience, Qualification)  VALUES  
('John Smith', 'Cardiology', 'Male', '123-456-7890', 'john.smith@hospital.com', 'Room 101', 15, 'MBBS, MD in Cardiology'),  
('Emily Johnson', 'Dermatology', 'Female', '234-567-8901', 'emily.johnson@hospital.com', 'Room 102', 10, 'MBBS, MD in Dermatology'),  
('Michael Lee', 'Orthopedics', 'Male', '345-678-9012', 'michael.lee@hospital.com', 'Room 103', 20, 'MBBS, MS in Orthopedics'),  
('Sarah Brown', 'General Surgery', 'Female', '456-789-0123', 'sarah.brown@hospital.com', 'Room 104', 12, 'MBBS, MS in General Surgery'),  
('David Wilson', 'Neurology', 'Male', '567-890-1234', 'david.wilson@hospital.com', 'Room 105', 18, 'MBBS, MD in Neurology'),  
('Olivia Miller', 'Pediatrics', 'Female', '678-901-2345', 'olivia.miller@hospital.com', 'Room 106', 8, 'MBBS, MD in Pediatrics'),  
('James Taylor', 'Ophthalmology', 'Male', '789-012-3456', 'james.taylor@hospital.com', 'Room 107', 22, 'MBBS, MS in Ophthalmology'),  
('Sophia Anderson', 'Gynecology', 'Female', '890-123-4567', 'sophia.anderson@hospital.com', 'Room 108', 14, 'MBBS, MD in Gynecology'),  
('William Thomas', 'Radiology', 'Male', '901-234-5678', 'william.thomas@hospital.com', 'Room 109', 25, 'MBBS, MD in Radiology'),  
('Isabella Garcia', 'Psychiatry', 'Female', '012-345-6789', 'isabella.garcia@hospital.com', 'Room 110', 30, 'MBBS, MD in Psychiatry');

-- This query selects all the doctors details from the 'doctors' table. 
-- It retrieves the full list of doctors, including their names, specialties, and contact information
SELECT * FROM doctors ;


-- Table-3
-- Table for managing appointments
-- This table records patient appointments with doctors, including date, time, and reason for visit.
CREATE TABLE appointments (
--  Unique identifier for each appointments_id
Appointments_id VARCHAR (50) NOT NULL ,
-- Unique identifier for each patients_id
Patients_id VARCHAR (50) NOT NULL ,
-- Unique identifier for each Doctors_id
 Doctors_id VARCHAR (50) NOT NULL,
 -- date of appointment 
 Appointment_Date DATE,
 -- time of Appointment
 Appointment_Time VARCHAR (50) NOT NULL ,
 -- reason for visit
 Reason TEXT ,
 -- status of appointment 
 Status VARCHAR (50) NOT NULL ,
 -- notes for appointment 
 Notes VARCHAR (50) NOT NULL 
 );
 
 -- Insert records into the Appointments table 
 INSERT INTO Appointments (Appointments_id, Patients_id, Doctors_id, Appointment_Date, Appointment_Time, Reason, Status, Notes)  
VALUES  
('A001', 'P001', 'D001', '2023-12-05', '10:00 AM', 'Routine cardiac check-up', 'Confirmed', 'Bring previous test results.'),  
('A002', 'P002', 'D002', '2023-12-06', '11:30 AM', 'Follow-up for hypertension', 'Confirmed', 'Patient requested morning slot.'),  
('A003', 'P003', 'D003', '2023-12-07', '09:45 AM', 'Knee pain evaluation', 'Rescheduled', 'Rescheduled due to doctor\'s request.'),  
('A004', 'P004', 'D004', '2023-12-08', '01:15 PM', 'General health check-up', 'Confirmed', 'Patient prefers afternoon appointments.'),  
('A005', 'P005', 'D001', '2023-12-09', '03:00 PM', 'Asthma management consultation', 'Confirmed', 'Bring inhaler prescription.'),  
('A006', 'P006', 'D002', '2023-12-10', '02:00 PM', 'Diabetes management', 'Pending', 'Review recent blood sugar levels.'),  
('A007', 'P007', 'D003', '2023-12-11', '04:30 PM', 'Post-surgery consultation', 'Confirmed', 'Patient recovering well.'),  
('A008', 'P008', 'D004', '2023-12-12', '08:00 AM', 'Routine physical examination', 'Confirmed', 'Early morning appointment preferred.'),  
('A009', 'P009', 'D001', '2023-12-13', '10:45 AM', 'Chest pain evaluation', 'Confirmed', 'ECG recommended during appointment.'),  
('A010', 'P010', 'D002', '2023-12-14', '12:15 PM', 'Migraine follow-up', 'Pending', 'Discuss new medication options.');

-- This query retrieves all appointment records from the 'appointment' table
-- It includes details such as the patientsID, doctorID, appointmentDate, appointmentTime, and the reason for the visit.
-- This information is used to manage and track scheduled appointments in the hospital system 
SELECT * FROM appointments;

-- Table-4
-- Table for storing medications prescribed to patients
-- This table tracks medications prescribed during appointments.
CREATE TABLE medications (
-- Unique identifier for each medication
MedicationID VARCHAR(50) NOT NULL,
-- Unique identifier for each patient
PatientID VARCHAR(50) NOT NULL,
-- Unique identifier for each doctor
DoctorID VARCHAR(50) NOT NULL,
-- Name of the medication
MedicationName VARCHAR(100) NOT NULL,    
-- Dosage information (e.g., 10 mg, 500 mg)
Dosage VARCHAR(50) NOT NULL,    
-- Frequency of medication intake (e.g., Once daily, Twice daily)
Frequency VARCHAR(50) NOT NULL,    
-- Start date of the medication course
StartDate DATE NOT NULL,    
-- End date of the medication course
EndDate DATE NOT NULL,
-- Detailed prescription instructions
PrescriptionDetails TEXT NOT NULL,
-- Additional notes or monitoring instructions
Notes TEXT,
-- Primary key to ensure each record is unique
PRIMARY KEY (MedicationID)
);

-- Insert records in the medications table 
INSERT INTO Medications (MedicationID, PatientID, DoctorID, MedicationName, Dosage, Frequency, StartDate, EndDate, PrescriptionDetails, Notes)  VALUES  
('M001', 'P001', 'D001', 'Atorvastatin', '10 mg', 'Once daily', '2023-12-01', '2023-12-31', 'Take one tablet daily at bedtime.', 'Monitor cholesterol levels.'),  
('M002', 'P002', 'D002', 'Losartan', '50 mg', 'Twice daily', '2023-12-01', '2023-12-30', 'Take one tablet in the morning and evening.', 'Monitor blood pressure weekly.'),  
('M003', 'P003', 'D003', 'Ibuprofen', '200 mg', 'As needed', '2023-12-02', '2023-12-07', 'Take one tablet for pain relief.', 'Avoid taking on an empty stomach.'),  
('M004', 'P004', 'D004', 'Metformin', '500 mg', 'Twice daily', '2023-12-03', '2023-12-31', 'Take one tablet with meals.', 'Check blood sugar regularly.'),  
('M005', 'P005', 'D001', 'Albuterol', '90 mcg', 'As needed', '2023-12-04', '2023-12-31', 'Use inhaler for wheezing or shortness of breath.', 'Monitor asthma symptoms.'),  
('M006', 'P006', 'D002', 'Lisinopril', '20 mg', 'Once daily', '2023-12-05', '2023-12-31', 'Take one tablet in the morning.', 'Watch for side effects.'),  
('M007', 'P007', 'D003', 'Paracetamol', '500 mg', 'Every 6 hours', '2023-12-06', '2023-12-12', 'Take one tablet for fever or pain.', 'Do not exceed 4 doses in 24 hours.'),  
('M008', 'P008', 'D004', 'Levothyroxine', '75 mcg', 'Once daily', '2023-12-07', '2023-12-31', 'Take one tablet before breakfast.', 'Monitor thyroid levels.'),  
('M009', 'P009', 'D001', 'Omeprazole', '20 mg', 'Once daily', '2023-12-08', '2023-12-14', 'Take one capsule before meals.', 'Avoid spicy foods.'),  
('M010', 'P010', 'D002', 'Sumatriptan', '50 mg', 'As needed', '2023-12-09', '2023-12-31', 'Take one tablet at the onset of a migraine.', 'Do not exceed 200 mg in 24 hours.');

-- This query retrieves all medication records from the 'medications' table. 
-- It helps in tracking which medication are prescribed to which patients and their administration schedule. 
SELECT * FROM medications;

-- Table - 5
-- Table for billing information
-- This table manages the billing details for patient treatments, including services rendered and payment status.
-- Table for managing billing records
-- This table stores information about billing details for patients' visits and treatments.

CREATE TABLE Billing (
-- Unique identifier for each billing record
BillingID VARCHAR(50) NOT NULL,
-- Unique identifier for each patient
PatientID VARCHAR(50) NOT NULL,    
-- Unique identifier for each doctor
DoctorID VARCHAR(50) NOT NULL,    
-- Method of payment (e.g., Credit Card, Cash, Insurance)
PaymentMethod VARCHAR(50) NOT NULL,
-- Total amount billed for the visit or treatment
TotalAmount VARCHAR(50) NOT NULL,
-- Details of insurance coverage (if applicable)
InsuranceDetails TEXT,
-- Date when the billing was recorded
BillingDate DATE NOT NULL,
-- Status of the payment (e.g., Paid, Pending, Approved)
PaymentStatus VARCHAR(50) NOT NULL,
-- Additional details about the payment transaction
PaymentDetails TEXT,    
-- Primary key to ensure each record is unique
PRIMARY KEY (BillingID)
);

-- Insert records in the billing table 
INSERT INTO Billing (BillingID, PatientID, DoctorID, PaymentMethod, TotalAmount, InsuranceDetails, BillingDate, PaymentStatus, PaymentDetails) VALUES  
('B001', 'P001', 'D001', 'Credit Card', '$200', 'Covered by Aetna', '2023-12-05', 'Paid', 'Payment completed via online transaction.'),  
('B002', 'P002', 'D002', 'Cash', '$150', 'Not insured', '2023-12-06', 'Paid', 'Payment received at the reception desk.'),  
('B003', 'P003', 'D003', 'Insurance', '$0', 'Covered by UnitedHealth', '2023-12-07', 'Approved', 'Fully covered by insurance.'),  
('B004', 'P004', 'D004', 'Debit Card', '$120', 'Not insured', '2023-12-08', 'Paid', 'Payment processed via POS terminal.'),  
('B005', 'P005', 'D001', 'Credit Card', '$180', 'Covered by BlueCross', '2023-12-09', 'Paid', 'Payment completed via mobile app.'),  
('B006', 'P006', 'D002', 'Cash', '$100', 'Not insured', '2023-12-10', 'Paid', 'Payment received at the billing counter.'),  
('B007', 'P007', 'D003', 'Insurance', '$0', 'Covered by Cigna', '2023-12-11', 'Approved', 'Fully covered by insurance.'),  
('B008', 'P008', 'D004', 'Debit Card', '$140', 'Not insured', '2023-12-12', 'Paid', 'Payment processed via bank terminal.'),  
('B009', 'P009', 'D001', 'Credit Card', '$210', 'Covered by Aetna', '2023-12-13', 'Paid', 'Payment completed via online gateway.'),  
('B010', 'P010', 'D002', 'Cash', '$90', 'Not insured', '2023-12-14', 'Paid', 'Payment received at the front desk.');

-- This query retrieves all billing records from the 'billing' table. 
-- This information is essential for managing patient payments and generating accurate invoices
-- It help in tracking the financial transactions associated with each patients and ensuring  transparency in billing processes. 
SELECT * FROM Billing ;


------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an Library Management System including Books ,  , Orders , Shipping and Reviews --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database  Library_Management_System ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Library_Management_System ;

use Library_Management_System ;

-- Library_Management_System Tables Queries -

-- Table -1
-- This table stores information about all the books available in the library, including details like title, author, genre, and publication years
CREATE TABLE Books (
-- Unique identifier for each book
BookID VARCHAR(50) PRIMARY KEY ,
-- Title of the book
Title VARCHAR(100) NOT NULL,
-- Author of the book
Author VARCHAR(100) NOT NULL,
-- Genre of the book
Genre VARCHAR(50),
-- Publication year of the book
PublicationYear INT NOT NULL,
-- Total copies available
TotalCopies INT NOT NULL,
-- Shelf location of the book
ShelfLocation VARCHAR(50)
);

-- Insert records into the Books table
INSERT INTO Books (BookID, Title, Author, Genre, PublicationYear, TotalCopies, ShelfLocation) VALUES
('B001', 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 10, 'A1'),
('B002', '1984', 'George Orwell', 'Dystopian', 1949, 8, 'B2'),
('B003', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, 5, 'C3'),
('B004', 'Moby Dick', 'Herman Melville', 'Adventure', 1851, 3, 'D4'),
('B005', 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813, 6, 'E5'),
('B006', 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, 7, 'F6'),
('B007', 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 4, 'G7'),
('B008', 'War and Peace', 'Leo Tolstoy', 'Historical', 1869, 2, 'H8'),
('B009', 'The Alchemist', 'Paulo Coelho', 'Philosophy', 1988, 9, 'I9'),
('B010', 'The Book Thief', 'Markus Zusak', 'Historical', 2005, 5, 'J10');

-- show table Structure of books
SELECT * FROM books;

-- Table - 2
-- This table contains details of library members, including member ID, name, contact information, and membership status
-- Table for managing library members
CREATE TABLE Members (
-- Unique identifier for each member
MemberID VARCHAR(50) PRIMARY KEY ,
-- Name of the member
Name VARCHAR(100) NOT NULL,
-- Address of the member
Address VARCHAR(200),
-- Contact number of the member
ContactNumber VARCHAR(15),
-- Email address of the member
Email VARCHAR(100),
-- Date of membership registration
RegistrationDate DATE NOT NULL,
-- Membership status (e.g., Active, Inactive)
MembershipStatus VARCHAR(50)
);

-- Insert records into the Members table
INSERT INTO Members (MemberID, Name, Address, ContactNumber, Email, RegistrationDate, MembershipStatus) VALUES
('M001', 'John Doe', '123 Elm St', '123-456-7890', 'john@example.com', '2022-01-01', 'Active'),
('M002', 'Jane Smith', '456 Oak St', '987-654-3210', 'jane@example.com', '2021-07-15', 'Active'),
('M003', 'Alice Brown', '789 Pine St', '555-555-5555', 'alice@example.com', '2023-05-10', 'Active'),
('M004', 'Bob Johnson', '321 Maple St', '666-666-6666', 'bob@example.com', '2020-11-20', 'Inactive'),
('M005', 'Charlie Davis', '654 Birch St', '777-777-7777', 'charlie@example.com', '2021-03-05', 'Active'),
('M006', 'Emily White', '987 Cedar St', '888-888-8888', 'emily@example.com', '2022-08-12', 'Inactive'),
('M007', 'Frank Black', '111 Walnut St', '999-999-9999', 'frank@example.com', '2023-01-30', 'Active'),
('M008', 'Grace Green', '222 Willow St', '444-444-4444', 'grace@example.com', '2020-06-15', 'Inactive'),
('M009', 'Henry Blue', '333 Ash St', '333-333-3333', 'henry@example.com', '2023-09-25', 'Active'),
('M010', 'Ivy Red', '444 Cherry St', '222-222-2222', 'ivy@example.com', '2021-12-10', 'Active');

-- show table Structure of Members
SELECT * FROM Members ;

-- Table-3
-- This table recors  all book borrow transactions, inculding details of the borrowed Book-id , the member borrowing it , borrow date, due date, and status
-- Table for managing book borrowing records
CREATE TABLE Borrow_Book_Records (
-- Unique identifier for each borrow record
BorrowID VARCHAR(50) NOT NULL,
-- Unique identifier for the book borrowed
BookID VARCHAR(50) NOT NULL,
-- Unique identifier for the member borrowing the book
MemberID VARCHAR(50) NOT NULL,
-- Date when the book was borrowed
BorrowDate DATE NOT NULL,
-- Date when the book is due
DueDate DATE NOT NULL,
-- Date when the book was returned (if applicable)
ReturnDate DATE,
-- Status of the borrowing record (e.g., Borrowed, Returned, Overdue)
Status VARCHAR(50),
-- Primary key for unique borrow record identification
PRIMARY KEY (BorrowID)
);

-- Insert records into the Borrow_Book_Records table
INSERT INTO Borrow_Book_Records (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate, Status) VALUES
('BR001', 'B001', 'M001', '2023-11-01', '2023-11-15', '2023-11-10', 'Returned'),
('BR002', 'B002', 'M002', '2023-11-05', '2023-11-20','2023-12-10', 'Borrowed'),
('BR003', 'B003', 'M003', '2023-11-10', '2023-11-25', '2023-11-24', 'Returned'),
('BR004', 'B004', 'M004', '2023-11-12', '2023-11-27','2023-09-25', 'Overdue'),
('BR005', 'B005', 'M005', '2023-11-15', '2023-11-30','2023-11-10', 'Borrowed'),
('BR006', 'B006', 'M006', '2023-11-18', '2023-12-02','2023-08-10', 'Borrowed'),
('BR007', 'B007', 'M007', '2023-11-20', '2023-12-05','2024-01-10', 'Borrowed'),
('BR008', 'B008', 'M008', '2023-11-22', '2023-12-07','2024-01-24', 'Borrowed'),
('BR009', 'B009', 'M009', '2023-11-25', '2023-12-10','2024-01-15', 'Borrowed'),
('BR010', 'B010', 'M010', '2023-11-27', '2023-12-12','2024-02-10', 'Borrowed');

-- show table Structure of Borrow_Book_Records
SELECT * FROM Borrow_Book_Records;

-- Table-4
-- This table hold information about library staff members, including their staff ID, name, role, contact details, and WorkShift
CREATE TABLE LibraryStaff (
-- Unique identifier for each staff member
StaffID VARCHAR(50) NOT NULL PRIMARY KEY ,
-- Name of the staff member
Name VARCHAR(100) NOT NULL,
-- Role of the staff member (e.g., Librarian, Assistant)
Role VARCHAR(50),
-- Contact number of the staff member
ContactNumber VARCHAR(15),
-- Email address of the staff member
Email VARCHAR(100),
-- Date of joining the library
JoiningDate DATE NOT NULL,
-- Work shift of the staff member (e.g., Morning, Evening)
WorkShift VARCHAR(50)
);

-- Insert records into the LibraryStaff table
INSERT INTO LibraryStaff (StaffID, Name, Role, ContactNumber, Email, JoiningDate, WorkShift) VALUES
('S001', 'Sarah Williams', 'Librarian', '123-456-7890', 'sarah@example.com', '2020-01-01', 'Morning'),
('S002', 'Michael Brown', 'Assistant', '987-654-3210', 'michael@example.com', '2021-03-15', 'Evening'),
('S003', 'Emma Davis', 'Librarian', '555-555-5555', 'emma@example.com', '2019-07-10', 'Morning'),
('S004', 'James Wilson', 'Technician', '666-666-6666', 'james@example.com', '2022-05-20', 'Evening'),
('S005', 'Olivia Johnson', 'Assistant', '777-777-7777', 'olivia@example.com', '2021-09-05', 'Morning'),
('S006', 'Liam White', 'Librarian', '888-888-8888', 'liam@example.com', '2020-12-12', 'Evening'),
('S007', 'Sophia Miller', 'Technician', '999-999-9999', 'sophia@example.com', '2018-03-30', 'Morning'),
('S008', 'Ethan Harris', 'Librarian', '444-444-4444', 'ethan@example.com', '2022-08-15', 'Evening'),
('S009', 'Ava Thompson', 'Assistant', '333-333-3333', 'ava@example.com', '2023-06-25', 'Morning'),
('S010', 'Lucas Martinez', 'Librarian', '222-222-2222', 'lucas@example.com', '2021-11-10', 'Evening');

-- show table Structure of LibraryStaff
SELECT * FROM LibraryStaff ;

-- Table-5
-- This table stores details about book publishers, including publisher name, address, contact information, and website
-- Table for managing publisher information
CREATE TABLE Publishers (
-- Unique identifier for each publisher
PublisherID VARCHAR(50) NOT NULL,
-- Name of the publisher
PublisherName VARCHAR(100) NOT NULL,
-- Contact number of the publisher
ContactNumber VARCHAR(15),
-- Email address of the publisher
Email VARCHAR(100),
-- Address of the publisher
Address VARCHAR(200),
-- Year of establishment of the publisher
EstablishmentYear INT NOT NULL,
-- Website of the publisher
Website VARCHAR(100),
-- Primary key for unique publisher identification
PRIMARY KEY (PublisherID)
);

-- Insert records into the Publishers table
INSERT INTO Publishers (PublisherID, PublisherName, ContactNumber, Email, Address, EstablishmentYear, Website) VALUES
('P001', 'Penguin Random House', '123-456-7890', 'contact@penguin.com', '1745 Broadway, New York, NY', 1925, 'www.penguinrandomhouse.com'),
('P002', 'HarperCollins', '987-654-3210', 'info@harpercollins.com', '195 Broadway, New York, NY', 1817, 'www.harpercollins.com'),
('P003', 'Simon & Schuster', '555-555-5555', 'support@simonandschuster.com', '1230 Avenue of the Americas, New York, NY', 1924, 'www.simonandschuster.com'),
('P004', 'Macmillan Publishers', '666-666-6666', 'info@macmillan.com', '120 Broadway, New York, NY', 1843, 'www.macmillan.com'),
('P005', 'Hachette Book Group', '777-777-7777', 'help@hachette.com', '1290 Avenue of the Americas, New York, NY', 1837, 'www.hachettebookgroup.com'),
('P006', 'Scholastic', '888-888-8888', 'scholastic@support.com', '557 Broadway, New York, NY', 1920, 'www.scholastic.com'),
('P007', 'Bloomsbury Publishing', '999-999-9999', 'contact@bloomsbury.com', '50 Bedford Square, London, UK', 1986, 'www.bloomsbury.com'),
('P008', 'Oxford University Press', '444-444-4444', 'contact@oup.com', 'Great Clarendon Street, Oxford, UK', 1586, 'www.oup.com'),
('P009', 'Cambridge University Press', '333-333-3333', 'support@cambridge.org', 'University Printing House, Cambridge, UK', 1534, 'www.cambridge.org'),
('P010', 'Pearson', '222-222-2222', 'info@pearson.com', '80 Strand, London, UK', 1844, 'www.pearson.com');

-- show table Structure of Publishers
SELECT * FROM Publishers ;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an Hotel Management System including Guests , Room , Reservation , Employees and Payment ----
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database  Hotel_Management_System ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Hotel_Management_System ;

use Hotel_Management_System ;

-- Hotel_Management_System Tables Queries --

-- Table-1
-- This table stores information about hotel guests, inculding guest ID, name, contact number, and other personal information 
CREATE TABLE Guests (
    GuestID VARCHAR(50) PRIMARY KEY ,
    Name VARCHAR(100) NOT NULL,
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(200),
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE NOT NULL
);

INSERT INTO Guests (GuestID, Name, ContactNumber, Email, Address, CheckInDate, CheckOutDate) VALUES
('G001', 'John Doe', '123-456-7890', 'johndoe@example.com', '123 Elm Street, Springfield', '2023-12-01', '2023-12-05'),
('G002', 'Jane Smith', '987-654-3210', 'janesmith@example.com', '456 Oak Street, Shelbyville', '2023-12-02', '2023-12-06'),
('G003', 'Emily Johnson', '555-555-5555', 'emilyj@example.com', '789 Maple Avenue, Ogdenville', '2023-12-03', '2023-12-07'),
('G004', 'Michael Brown', '666-666-6666', 'michaelb@example.com', '101 Pine Road, North Haverbrook', '2023-12-04', '2023-12-08'),
('G005', 'Sarah Wilson', '777-777-7777', 'sarahw@example.com', '202 Birch Lane, Springfield', '2023-12-05', '2023-12-09'),
('G006', 'David Lee', '888-888-8888', 'davidl@example.com', '303 Cedar Street, Shelbyville', '2023-12-06', '2023-12-10'),
('G007', 'Sophia Davis', '999-999-9999', 'sophiad@example.com', '404 Spruce Avenue, Ogdenville', '2023-12-07', '2023-12-11'),
('G008', 'James Taylor', '444-444-4444', 'jamest@example.com', '505 Walnut Road, North Haverbrook', '2023-12-08', '2023-12-12'),
('G009', 'Olivia Martinez', '333-333-3333', 'oliviam@example.com', '606 Chestnut Street, Springfield', '2023-12-09', '2023-12-13'),
('G010', 'Liam Harris', '222-222-2222', 'liamh@example.com', '707 Ash Lane, Shelbyville', '2023-12-10', '2023-12-14');

-- show table Structure of Guests
SELECT * FROM Guests;

-- Table-2
-- This table contains details of all rooms in the hotel, including room number, type (e.g. , single, double, suite), availability status, and prices per night
CREATE TABLE Rooms (
RoomID VARCHAR(50) PRIMARY KEY ,
RoomType VARCHAR(50) NOT NULL ,
Capacity INT NOT NULL,
PricePerNight INT NOT NULL,
Status VARCHAR(50)
);

INSERT INTO Rooms (RoomID, RoomType, Capacity, PricePerNight, Status) VALUES
('R001', 'Single', 1, 1000, 'Available'),
('R002', 'Double', 2, 1500, 'Occupied'),
('R003', 'Suite', 4, 3000, 'Available'),
('R004', 'Single', 1, 1000, 'Occupied'),
('R005', 'Double', 2, 15000, 'Available'),
('R006', 'Suite', 4, 25000, 'Occupied'),
('R007', 'Single', 1, 1000, 'Available'),
('R008', 'Double', 2, 15000, 'Occupied'),
('R009', 'Suite', 4, 300.00, 'Available'),
('R010', 'Single', 1, 100.00, 'Occupied');

-- show table Structure of Rooms
SELECT * FROM Rooms;

-- Table-3
-- This table records room reservations, inculding reservation ID, guest ID, room number, check-in date, check-out date, and reservation status
CREATE TABLE Reservations (
ReservationID VARCHAR(50) PRIMARY KEY ,
GuestID VARCHAR(50) NOT NULL,
RoomID VARCHAR(50) NOT NULL,
ReservationDate DATE NOT NULL,
CheckInDate DATE NOT NULL,
CheckOutDate DATE NOT NULL
);

INSERT INTO Reservations (ReservationID, GuestID, RoomID, ReservationDate, CheckInDate, CheckOutDate) VALUES
('RES001', 'G001', 'R002', '2023-11-25', '2023-12-01', '2023-12-05'),
('RES002', 'G002', 'R004', '2023-11-26', '2023-12-02', '2023-12-06'),
('RES003', 'G003', 'R006', '2023-11-27', '2023-12-03', '2023-12-07'),
('RES004', 'G004', 'R008', '2023-11-28', '2023-12-04', '2023-12-08'),
('RES005', 'G005', 'R005', '2023-11-29', '2023-12-05', '2023-12-09'),
('RES006', 'G006', 'R007', '2023-11-30', '2023-12-06', '2023-12-10'),
('RES007', 'G007', 'R009', '2023-12-01', '2023-12-07', '2023-12-11'),
('RES008', 'G008', 'R010', '2023-12-02', '2023-12-08', '2023-12-12'),
('RES009', 'G009', 'R003', '2023-12-03', '2023-12-09', '2023-12-13'),
('RES010', 'G010', 'R001', '2023-12-04', '2023-12-10', '2023-12-14');

-- show table Structure of Reservations
SELECT * FROM Reservations;

-- Table-4
-- This table holds information about hotel employees, including employee ID, name, role (e.g.,manager, receptionist, housekeeping), contact details, and HireDate
CREATE TABLE Employees (
EmployeeID VARCHAR(50) PRIMARY KEY ,
Name VARCHAR(100),
Role VARCHAR(50),
ContactNumber VARCHAR(15),
HireDate DATE NOT NULL
);

INSERT INTO Employees (EmployeeID, Name, Role, ContactNumber, HireDate) VALUES
('E001', 'Anna Walker', 'Manager', '123-456-7890', '2020-05-01'),
('E002', 'Chris Adams', 'Receptionist', '987-654-3210', '2021-06-15'),
('E003', 'Ella Carter', 'Chef', '555-555-5555', '2019-07-20'),
('E004', 'Daniel Perez', 'Housekeeper', '666-666-6666', '2022-08-10'),
('E005', 'Sofia Rodriguez', 'Receptionist', '777-777-7777', '2021-09-25'),
('E006', 'Jacob Wright', 'Chef', '888-888-8888', '2020-10-30'),
('E007', 'Luna Lopez', 'Housekeeper', '999-999-9999', '2018-11-05'),
('E008', 'Noah Hill', 'Manager', '444-444-4444', '2023-01-20'),
('E009', 'Amelia Scott', 'Receptionist', '333-333-3333', '2023-02-25'),
('E010', 'Oliver Young', 'Chef', '222-222-2222', '2022-03-30');

-- show table Structure of Employees
SELECT * FROM Employees;

-- Table-5
-- This table tracks payment transactions, including payment ID, reservation ID,amount paid, payment method, and payment date
CREATE TABLE Payments (
PaymentID VARCHAR(50) PRIMARY KEY,
ReservationID VARCHAR(50) NOT NULL,
PaymentMethod VARCHAR(50) NOT NULL,
AmountPaid VARCHAR (50) NOT NULL ,
PaymentDate DATE NOT NULL
);

INSERT INTO Payments (PaymentID, ReservationID, PaymentMethod, AmountPaid, PaymentDate) VALUES
('PAY001', 'RES001', 'Credit Card', 4000, '2023-11-30'),
('PAY002', 'RES002', 'Cash', 3000, '2023-12-01'),
('PAY003', 'RES003', 'Debit Card', 6000, '2023-12-02'),
('PAY004', 'RES004', 'Credit Card', 50000, '2023-12-03'),
('PAY005', 'RES005', 'Cash', 3500, '2023-12-04'),
('PAY006', 'RES006', 'Debit Card', 45000, '2023-12-05'),
('PAY007', 'RES007', 'Credit Card', 7000, '2023-12-06'),
('PAY008', 'RES008', 'Cash', 2500, '2023-12-07'),
('PAY009', 'RES009', 'Debit Card', 5500, '2023-12-08'),
('PAY010', 'RES010', 'Credit Card', 15000, '2023-12-09');


-- show table Structure of Payments
SELECT * FROM Payments ;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- Creating the School Management System Database --
-- This Database is designed to manage data related to an School Management System including student , teachers , course , enrollment and exam --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database  School_Management_System ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  School_Management_System ;

use School_Management_System ;

-- Table-1
-- This table stores information about students, including student ID, name, date of birth, contact details, and enrollment status
-- Creating the Students table to store details about each student
CREATE TABLE Students (
    StudentID VARCHAR(50) NOT NULL,      -- Unique identifier for each student
    FirstName VARCHAR(50) NOT NULL,      -- First name of the student
    LastName VARCHAR(50) NOT NULL,       -- Last name of the student
    DateOfBirth DATE NOT NULL,           -- Date of birth of the student
    Gender VARCHAR(10),                  -- Gender of the student
    GradeLevel VARCHAR(50),              -- Current grade level of the student
    EnrollmentDate DATE NOT NULL,        -- Date when the student was enrolled
    PRIMARY KEY (StudentID)              -- Setting StudentID as the primary key
);

-- Inserting records into the Students table
INSERT INTO Students (StudentID, FirstName, LastName, DateOfBirth, Gender, GradeLevel, EnrollmentDate) VALUES
('S001', 'John', 'Doe', '2005-04-15', 'Male', '10th Grade', '2020-08-15'),
('S002', 'Jane', 'Smith', '2006-05-25', 'Female', '9th Grade', '2021-07-10'),
('S003', 'Michael', 'Johnson', '2004-03-12', 'Male', '12th Grade', '2019-09-01'),
('S004', 'Emily', 'Davis', '2005-11-02', 'Female', '10th Grade', '2020-06-25'),
('S005', 'David', 'Martinez', '2007-08-19', 'Male', '8th Grade', '2022-02-10'),
('S006', 'Sophia', 'Rodriguez', '2005-01-29', 'Female', '11th Grade', '2020-03-17'),
('S007', 'Daniel', 'Brown', '2006-02-20', 'Male', '9th Grade', '2021-04-05'),
('S008', 'Olivia', 'Williams', '2004-07-30', 'Female', '12th Grade', '2019-10-15'),
('S009', 'James', 'Wilson', '2006-06-07', 'Male', '9th Grade', '2021-05-22'),
('S010', 'Isabella', 'Moore', '2005-10-11', 'Female', '10th Grade', '2020-07-03');

-- Query to retrieve all records from the Students table
SELECT * FROM Students;

-- Table-2 
-- This table contains details of teachers, including teacher ID, name, subject, DateOfHire, and ContactNumber
-- Creating the Teachers table to store details about each teacher
CREATE TABLE Teachers (
    TeacherID VARCHAR(50) NOT NULL,      -- Unique identifier for each teacher
    FirstName VARCHAR(50) NOT NULL,      -- First name of the teacher
    LastName VARCHAR(50) NOT NULL,       -- Last name of the teacher
    Subject VARCHAR(50) NOT NULL,        -- Subject taught by the teacher
    DateOfHire DATE NOT NULL,            -- Date when the teacher was hired
    ContactNumber VARCHAR(15) NOT NULL ,           -- Contact number of the teacher
    Email VARCHAR(100) NOT NULL,                  -- Email address of the teacher
    PRIMARY KEY (TeacherID)              -- Setting TeacherID as the primary key
);

-- Inserting records into the Teachers table
INSERT INTO Teachers (TeacherID, FirstName, LastName, Subject, DateOfHire, ContactNumber, Email) VALUES
('T001', 'Laura', 'Miller', 'Mathematics', '2015-06-15', '123-456-7890', 'laura.miller@school.com'),
('T002', 'Robert', 'Garcia', 'Science', '2018-09-20', '123-456-7891', 'robert.garcia@school.com'),
('T003', 'Jennifer', 'Hernandez', 'English', '2017-04-10', '123-456-7892', 'jennifer.hernandez@school.com'),
('T004', 'William', 'Lopez', 'History', '2019-08-25', '123-456-7893', 'william.lopez@school.com'),
('T005', 'Patricia', 'Martinez', 'Physical Education', '2020-01-05', '123-456-7894', 'patricia.martinez@school.com'),
('T006', 'James', 'Wilson', 'Art', '2016-05-17', '123-456-7895', 'james.wilson@school.com'),
('T007', 'Emily', 'Johnson', 'Music', '2021-02-22', '123-456-7896', 'emily.johnson@school.com'),
('T008', 'Michael', 'Thomas', 'Computer Science', '2018-11-09', '123-456-7897', 'michael.thomas@school.com'),
('T009', 'Sarah', 'Moore', 'Geography', '2020-07-15', '123-456-7898', 'sarah.moore@school.com'),
('T010', 'David', 'Jackson', 'Chemistry', '2017-12-02', '123-456-7899', 'david.jackson@school.com');

-- Query to retrieve all records from the Teachers table
SELECT * FROM Teachers;


-- Table-3
-- This table holds information about courses offered by the school, including  CourseID, CourseName, Duration, and RoomNumber
-- Creating the Courses table to store information about available courses 
CREATE TABLE Courses (
    CourseID VARCHAR(50) NOT NULL,      -- Unique identifier for each course
    CourseName VARCHAR(100) NOT NULL,   -- Name of the course
    TeacherID VARCHAR(50) NOT NULL,     -- The teacher who is teaching this course
    Duration INT NOT NULL,                       -- Duration of the course in weeks
    Schedule VARCHAR(100) NOT NULL,              -- Schedule details for the course (e.g., Mon-Wed-Fri 10 AM)
    RoomNumber VARCHAR(10) NOT NULL ,             -- Room number where the course is held
    CreditHours INT NOT NULL,                    -- Number of credit hours for the course
    PRIMARY KEY (CourseID)              -- Setting CourseID as the primary key
);

-- Inserting records into the Courses table
INSERT INTO Courses (CourseID, CourseName, TeacherID, Duration, Schedule, RoomNumber, CreditHours) VALUES
('C001', 'Algebra', 'T001', 16, 'Mon-Wed-Fri 9:00 AM', 'A101', 4),
('C002', 'Biology', 'T002', 16, 'Mon-Wed-Fri 10:30 AM', 'B202', 4),
('C003', 'English Literature', 'T003', 16, 'Mon-Wed-Fri 11:30 AM', 'C303', 3),
('C004', 'World History', 'T004', 16, 'Mon-Wed-Fri 1:00 PM', 'D404', 3),
('C005', 'Physical Education', 'T005', 16, 'Tue-Thu 2:00 PM', 'E505', 2),
('C006', 'Painting', 'T006', 16, 'Tue-Thu 3:00 PM', 'F606', 2),
('C007', 'Music Theory', 'T007', 16, 'Mon-Wed 4:00 PM', 'G707', 2),
('C008', 'Programming', 'T008', 16, 'Mon-Wed-Fri 8:00 AM', 'H808', 4),
('C009', 'Geography', 'T009', 16, 'Mon-Wed-Fri 2:30 PM', 'I909', 3),
('C010', 'Chemistry', 'T010', 16, 'Mon-Wed-Fri 9:30 AM', 'J1010', 4);

-- Query to retrieve all records from the Courses table
SELECT * FROM Courses;


-- Table-4
-- This table records student enrollments in courses, includong EnrollmentID, CourseID, EnrollmentDate, and Status
-- Creating the Enrollments table to store student course enrollments
CREATE TABLE Enrollments (
    EnrollmentID VARCHAR(50) NOT NULL,  -- Unique identifier for each enrollment
    StudentID VARCHAR(50) NOT NULL,     -- Student who enrolled
    CourseID VARCHAR(50) NOT NULL,      -- Course in which the student is enrolled
    EnrollmentDate DATE NOT NULL,       -- Date of enrollment
    Status VARCHAR(50) NOT NULL,        -- Status of enrollment (e.g., Active, Dropped)
    PRIMARY KEY (EnrollmentID)          -- Setting EnrollmentID as the primary key
);

-- Inserting records into the Enrollments table
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate, Status) VALUES
('E001', 'S001', 'C001', '2020-08-15', 'Active'),
('E002', 'S002', 'C002', '2021-07-10', 'Active'),
('E003', 'S003', 'C003', '2019-09-01', 'Dropped'),
('E004', 'S004', 'C004', '2020-06-25', 'Active'),
('E005', 'S005', 'C005', '2022-02-10', 'Active'),
('E006', 'S006', 'C006', '2020-03-17', 'Active'),
('E007', 'S007', 'C007', '2021-04-05', 'Active'),
('E008', 'S008', 'C008', '2019-10-15', 'Active'),
('E009', 'S009', 'C009', '2021-05-22', 'Active'),
('E010', 'S010', 'C010', '2020-07-03', 'Dropped');

-- Query to retrieve all records from the Enrollments table
SELECT * FROM Enrollments;


-- Table-5
-- This table stores information about exams, including ExamID, CourseID, ExamDate, MaximumMarks, and Duration
-- Creating the Exams table to store details about exams for courses
CREATE TABLE Exams (
    ExamID VARCHAR(50) NOT NULL,       -- Unique identifier for each exam
    CourseID VARCHAR(50) NOT NULL,     -- The course related to the exam
    ExamDate DATE NOT NULL,            -- Date when the exam is held
    Duration INT NOT NULL,             -- Duration of the exam in minutes
    MaximumMarks INT NOT NULL,         -- Maximum marks for the exam
    PRIMARY KEY (ExamID)               -- Setting ExamID as the primary key
);

-- Inserting records into the Exams table
INSERT INTO Exams (ExamID, CourseID, ExamDate, Duration, MaximumMarks) VALUES
('EX001', 'C001', '2023-06-15', 120, 100),
('EX002', 'C002', '2023-06-16', 120, 100),
('EX003', 'C003', '2023-06-17', 120, 100),
('EX004', 'C004', '2023-06-18', 120, 100),
('EX005', 'C005', '2023-06-19', 60, 50),
('EX006', 'C006', '2023-06-20', 60, 50),
('EX007', 'C007', '2023-06-21', 60, 50),
('EX008', 'C008', '2023-06-22', 120, 100),
('EX009', 'C009', '2023-06-23', 120, 100),
('EX010', 'C010', '2023-06-24', 120, 100);

-- Query to retrieve all records from the Exams table
SELECT * FROM Exams ;



------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- Creating the Fitness Center Management Database --
-- This Database is designed to manage data related to an Fitness Center Management  including Members , Trainers , Classes , Membership Payments and Equipment --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database  Fitness_Center_Management  ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Fitness_Center_Management ;

use Fitness_Center_Management ;

-- Table-1
-- This table stores information about fitness center members, including member ID, name, contact Details, date of Joining, and MembershipType
-- Creating Members table
CREATE TABLE Members (
MemberID VARCHAR(50) PRIMARY KEY ,       -- Unique identifier for each member
FirstName VARCHAR(50) NOT NULL,          -- First name of the member
LastName VARCHAR(50) NOT NULL,           -- Last name of the member
DateOfBirth DATE,                        -- Date of birth of the member
MembershipType VARCHAR(50) NOT NULL,     -- Type of membership (e.g., Basic, Premium)
JoinDate DATE,                           -- Joining date of the member
ContactNumber VARCHAR(15) NOT NULL       -- Contact number of the member
);

-- Inserting data into Members table
INSERT INTO Members (MemberID, FirstName, LastName, DateOfBirth, MembershipType, JoinDate, ContactNumber) VALUES
('M001', 'John', 'Doe', '1990-05-15', 'Premium', '2024-01-01', '1234567890'),
('M002', 'Jane', 'Smith', '1985-07-20', 'Basic', '2024-01-02', '9876543210'),
('M003', 'Mike', 'Brown', '1992-10-05', 'Premium', '2024-01-03', '1230984567'),
('M004', 'Emily', 'Clark', '1995-03-25', 'Basic', '2024-01-04', '5647382910'),
('M005', 'Sarah', 'Davis', '1993-08-12', 'Premium', '2024-01-05', '8473629150'),
('M006', 'Chris', 'Miller', '1988-11-10', 'Basic', '2024-01-06', '9988776655'),
('M007', 'Anna', 'Garcia', '1991-02-19', 'Premium', '2024-01-07', '2233445566'),
('M008', 'David', 'Martinez', '1994-06-30', 'Basic', '2024-01-08', '4455667788'),
('M009', 'Sophia', 'Hernandez', '1987-09-18', 'Premium', '2024-01-09', '5566778899'),
('M010', 'James', 'Lopez', '1996-12-05', 'Basic', '2024-01-10', '6677889900');

-- Select all data from Members
SELECT * FROM Members;

-- Table-2
-- This table contain details of fitness trainers, including TrainerID, name, Specialty, ContactNumber, and Salary
-- Creating Trainers table
CREATE TABLE Trainers (
TrainerID VARCHAR(50) PRIMARY KEY,      -- Unique identifier for each trainer
FirstName VARCHAR(50),                  -- First name of the trainer
LastName VARCHAR(50),                   -- Last name of the trainer
Specialty VARCHAR(50),                  -- Trainer's specialty (e.g., Yoga, Cardio)
HireDate DATE,                          -- Date the trainer was hired
ContactNumber VARCHAR(15),              -- Contact number of the trainer
Salary INT NOT NULL                     -- Trainer's salary
);

-- Inserting data into Trainers table
INSERT INTO Trainers (TrainerID, FirstName, LastName, Specialty, HireDate, ContactNumber, Salary) VALUES
('T001', 'Alex', 'Johnson', 'Yoga', '2023-12-01', '1112223334', 4000),
('T002', 'Rachel', 'Lee', 'Strength Training', '2023-12-02', '2223334445', 4500),
('T003', 'Tom', 'Wilson', 'Cardio', '2023-12-03', '3334445556', 4200),
('T004', 'Lisa', 'Anderson', 'Pilates', '2023-12-04', '4445556667', 4100),
('T005', 'Evan', 'Taylor', 'Weightlifting', '2023-12-05', '5556667778', 4600),
('T006', 'Mia', 'Moore', 'Zumba', '2023-12-06', '6667778889', 4300),
('T007', 'Jack', 'Scott', 'Swimming', '2023-12-07', '7778889990', 4400),
('T008', 'Olivia', 'White', 'Boxing', '2023-12-08', '8889991112', 4500),
('T009', 'Henry', 'Green', 'Crossfit', '2023-12-09', '9991112223', 4700),
('T010', 'Sophia', 'Young', 'Aerobics', '2023-12-10', '1112223335', 4200);

-- Select all data from Trainers
SELECT * FROM Trainers;

-- Table-3
-- This table records information about fitness classes, including ClassID, ClassName, Duration, and Capacity
-- Creating Classes table
CREATE TABLE Classes (
ClassID VARCHAR(50) PRIMARY KEY,     -- Unique identifier for each class
ClassName VARCHAR(50),               -- Name of the class (e.g., Yoga, Zumba)
TrainerID VARCHAR(50),               -- Trainer assigned to the class
ScheduleTime TIME,                   -- Class schedule time
Duration INT,                        -- Duration of the class in minutes
Capacity INT,                        -- Maximum capacity of the class
Room VARCHAR(50)                     -- Room where the class is conducted
);

-- Inserting data into Classes table
INSERT INTO Classes (ClassID, ClassName, TrainerID, ScheduleTime, Duration, Capacity, Room) VALUES
('C001', 'Yoga', 'T001', '09:00:00', 60, 20, 'Room A'),
('C002', 'Strength Training', 'T002', '10:00:00', 45, 15, 'Room B'),
('C003', 'Cardio', 'T003', '11:00:00', 30, 25, 'Room C'),
('C004', 'Pilates', 'T004', '12:00:00', 60, 18, 'Room A'),
('C005', 'Weightlifting', 'T005', '13:00:00', 90, 10, 'Room B'),
('C006', 'Zumba', 'T006', '14:00:00', 60, 30, 'Room C'),
('C007', 'Swimming', 'T007', '15:00:00', 60, 10, 'Pool'),
('C008', 'Boxing', 'T008', '16:00:00', 45, 20, 'Room D'),
('C009', 'Crossfit', 'T009', '17:00:00', 75, 15, 'Room E'),
('C010', 'Aerobics', 'T010', '18:00:00', 60, 25, 'Room F');

-- Select all data from Classes
SELECT * FROM Classes;

-- Table-4
-- This table tracks membership payments, including  PaymentID, PaymentDate, PaymentMethod, and Status
-- Creating Membership Payments table
CREATE TABLE MembershipPayments (
PaymentID VARCHAR(50) PRIMARY KEY ,     -- Unique identifier for each payment
MemberID VARCHAR(50),                   -- Member making the payment
PaymentDate DATE,                       -- Date of the payment
PaymentAmount FLOAT,                    -- Amount paid
PaymentMethod VARCHAR(50),              -- Payment method (e.g., Credit Card, Cash)
Status VARCHAR(50),                     -- Payment status (e.g., Paid, Pending)
TransactionID VARCHAR(50)               -- Unique identifier for the payment transaction
);

-- Inserting data into MembershipPayments table
INSERT INTO MembershipPayments (PaymentID, MemberID, PaymentDate, PaymentAmount, PaymentMethod, Status, TransactionID) VALUES
('P001', 'M001', '2024-01-01', 500.00, 'Credit Card', 'Paid', 'TXN12345'),
('P002', 'M002', '2024-01-02', 200.00, 'Cash', 'Paid', 'TXN12346'),
('P003', 'M003', '2024-01-03', 500.00, 'Credit Card', 'Paid', 'TXN12347'),
('P004', 'M004', '2024-01-04', 150.00, 'Cash', 'Paid', 'TXN12348'),
('P005', 'M005', '2024-01-05', 600.00, 'Debit Card', 'Paid', 'TXN12349'),
('P006', 'M006', '2024-01-06', 200.00, 'Credit Card', 'Paid', 'TXN12350'),
('P007', 'M007', '2024-01-07', 500.00, 'Cash', 'Paid', 'TXN12351'),
('P008', 'M008', '2024-01-08', 250.00, 'Debit Card', 'Paid', 'TXN12352'),
('P009', 'M009', '2024-01-09', 700.00, 'Credit Card', 'Paid', 'TXN12353'),
('P010', 'M010', '2024-01-10', 180.00, 'Cash', 'Paid', 'TXN12354');

-- Select all data from MembershipPayments
SELECT * FROM MembershipPayments;

-- Table-5
-- This table holds information about fitness equipment, including EquipmentID, EquipmentName, Brand, and Quantity
---- Creating Equipment table
CREATE TABLE Equipment (
EquipmentID VARCHAR(50) PRIMARY KEY,    -- Unique identifier for each piece of equipment
EquipmentName VARCHAR(50),              -- Name of the equipment
Brand VARCHAR(50),                      -- Brand of the equipment
Quantity INT,                           -- Quantity of the equipment in the center
PurchaseDate DATE,                      -- Date when the equipment was purchased
WarrantyExpiry DATE,                    -- Warranty expiry date for the equipment
MaintenanceStatus VARCHAR(50)          -- Status of maintenance (e.g., Functional, Under Repair)
);

-- Inserting data into Equipment table
INSERT INTO Equipment (EquipmentID, EquipmentName, Brand, Quantity, PurchaseDate, WarrantyExpiry, MaintenanceStatus) VALUES
('E001', 'Treadmill', 'ProForm', 5, '2023-01-01', '2025-01-01', 'Functional'),
('E002', 'Dumbbells', 'Bowflex', 15, '2023-02-15', '2025-02-15', 'Functional'),
('E003', 'Stationary Bike', 'Schwinn', 10, '2023-03-10', '2025-03-10', 'Under Repair'),
('E004', 'Elliptical', 'NordicTrack', 8, '2023-04-05', '2025-04-05', 'Functional'),
('E005', 'Kettlebells', 'Rogue', 12, '2023-05-20', '2025-05-20', 'Functional'),
('E006', 'Rowing Machine', 'Concept2', 6, '2023-06-15', '2025-06-15', 'Under Repair'),
('E007', 'Leg Press', 'Body-Solid', 2, '2023-07-01', '2025-07-01', 'Functional'),
('E008', 'Barbell', 'Olympic', 10, '2023-08-10', '2025-08-10', 'Functional'),
('E009', 'Smith Machine', 'Life Fitness', 3, '2023-09-10', '2025-09-10', 'Functional'),
('E010', 'Battle Ropes', 'ProForm', 4, '2023-10-01', '2025-10-01', 'Functional');

-- Select all data from Equipment
SELECT * FROM Equipment;


------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- Creating the University_Database --
-- This Database is designed to manage data related to an University_Database including Student, Courses , Enrollments , Professors and Departments --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database  University_Database ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  University_Database ;

use University_Database ;


-- Creating Students table to store student details
CREATE TABLE Students (
StudentID VARCHAR(50) PRIMARY KEY,        -- Unique identifier for each student
FirstName VARCHAR(50),                 -- Student's first name
LastName VARCHAR(50),                  -- Student's last name
DateOfBirth DATE,                      -- Student's date of birth
Gender VARCHAR(10),                    -- Gender of the student
Major VARCHAR(50),                     -- Student's major
EnrollmentDate DATE                  -- Date when the student enrolled
);

-- Inserting data into Students table
INSERT INTO Students (StudentID, FirstName, LastName, DateOfBirth, Gender, Major, EnrollmentDate) VALUES
('S001', 'John', 'Doe', '2001-05-10', 'Male', 'Computer Science', '2020-09-01'),
('S002', 'Jane', 'Smith', '2000-08-22', 'Female', 'Mathematics', '2019-09-01'),
('S003', 'Alice', 'Johnson', '2001-12-15', 'Female', 'Biology', '2021-09-01'),
('S004', 'Bob', 'Brown', '1999-02-17', 'Male', 'Physics', '2018-09-01'),
('S005', 'Charlie', 'Davis', '2002-06-30', 'Male', 'Chemistry', '2021-09-01'),
('S006', 'David', 'Miller', '2000-11-25', 'Male', 'Economics', '2020-09-01'),
('S007', 'Eve', 'Wilson', '2001-03-03', 'Female', 'History', '2021-09-01'),
('S008', 'Frank', 'Taylor', '1999-07-21', 'Male', 'Business', '2018-09-01'),
('S009', 'Grace', 'Anderson', '2002-01-14', 'Female', 'Literature', '2021-09-01'),
('S010', 'Hannah', 'Thomas', '2001-10-30', 'Female', 'Psychology', '2020-09-01');

-- This query retrieves all student records from the Students table.
SELECT * FROM Students;




-- Creating Courses table to store course details
CREATE TABLE Courses (
CourseID VARCHAR(50) PRIMARY KEY ,         -- Unique identifier for each course
CourseName VARCHAR(100),               -- Name of the course
Department VARCHAR(50),                -- Department offering the course
Credits INT,                           -- Number of credits for the course
CourseLevel VARCHAR(50),               -- Level of the course (e.g., Undergraduate, Graduate)
Semester VARCHAR(50),                  -- Semester when the course is offered (e.g., Fall, Spring)
Instructor VARCHAR(100)                -- Instructor teaching the course
);

-- Inserting data into Courses table
INSERT INTO Courses (CourseID, CourseName, Department, Credits, CourseLevel, Semester, Instructor) VALUES
('C001', 'Introduction to Computer Science', 'Computer Science', 4, 'Undergraduate', 'Fall', 'Dr. Smith'),
('C002', 'Calculus I', 'Mathematics', 3, 'Undergraduate', 'Spring', 'Dr. Johnson'),
('C003', 'Organic Chemistry', 'Chemistry', 4, 'Undergraduate', 'Fall', 'Dr. Davis'),
('C004', 'Physics for Engineers', 'Physics', 3, 'Undergraduate', 'Spring', 'Dr. Miller'),
('C005', 'Principles of Economics', 'Economics', 3, 'Undergraduate', 'Fall', 'Dr. Brown'),
('C006', 'Business Strategy', 'Business', 3, 'Undergraduate', 'Spring', 'Dr. Taylor'),
('C007', 'Psychology 101', 'Psychology', 3, 'Undergraduate', 'Fall', 'Dr. Wilson'),
('C008', 'Modern History', 'History', 3, 'Undergraduate', 'Spring', 'Dr. White'),
('C009', 'Literature and Society', 'Literature', 3, 'Undergraduate', 'Fall', 'Dr. Green'),
('C010', 'Advanced Physics', 'Physics', 4, 'Graduate', 'Spring', 'Dr. Clark'); 

-- This query retrieves all course records from the Courses table.
SELECT * FROM Courses;



-- Creating Enrollments table to store student-course enrollment details
CREATE TABLE Enrollments (
EnrollmentID VARCHAR(50) PRIMARY KEY ,     -- Unique identifier for each enrollment
StudentID VARCHAR(50),                     -- Student who enrolled (foreign key)
CourseID VARCHAR(50),                      -- Course the student is enrolled in (foreign key)
EnrollmentDate DATE,                       -- Date of enrollment
Grade VARCHAR(5)                           -- Grade received in the course
);

-- Inserting data into Enrollments table
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate, Grade) VALUES
('E001', 'S001', 'C001', '2020-09-01', 'A'),
('E002', 'S002', 'C002', '2019-09-01', 'B'),
('E003', 'S003', 'C003', '2021-09-01', 'A-'),
('E004', 'S004', 'C004', '2018-09-01', 'C+'),
('E005', 'S005', 'C005', '2021-09-01', 'B+'),
('E006', 'S006', 'C006', '2020-09-01', 'A'),
('E007', 'S007', 'C007', '2021-09-01', 'B'),
('E008', 'S008', 'C008', '2018-09-01', 'B-'),
('E009', 'S009', 'C009', '2021-09-01', 'A'),
('E010', 'S010', 'C010', '2020-09-01', 'A');

-- This query retrieves all enrollment records from the Enrollments table.
SELECT * FROM Enrollments;



-- Creating Professors table to store professor details
CREATE TABLE Professors (
ProfessorID VARCHAR(50) PRIMARY KEY ,  -- Unique identifier for each professor
FirstName VARCHAR(50),                 -- Professor's first name
LastName VARCHAR(50),                  -- Professor's last name
Department VARCHAR(50),                -- Department where the professor works
Email VARCHAR(100),                    -- Email address of the professor
PhoneNumber VARCHAR(15),               -- Contact number of the professor
HireDate DATE                          -- Date when the professor was hired
);

-- Inserting data into Professors table
INSERT INTO Professors (ProfessorID, FirstName, LastName, Department, Email, PhoneNumber, HireDate) VALUES
('P001', 'Dr. John', 'Smith', 'Computer Science', 'john.smith@univ.edu', '1234567890', '2015-08-01'),
('P002', 'Dr. Emily', 'Johnson', 'Mathematics', 'emily.johnson@univ.edu', '2345678901', '2017-06-15'),
('P003', 'Dr. Mark', 'Davis', 'Chemistry', 'mark.davis@univ.edu', '3456789012', '2016-05-23'),
('P004', 'Dr. Linda', 'Brown', 'Physics', 'linda.brown@univ.edu', '4567890123', '2014-03-30'),
('P005', 'Dr. William', 'Miller', 'Economics', 'william.miller@univ.edu', '5678901234', '2018-07-19'),
('P006', 'Dr. Olivia', 'Taylor', 'Business', 'olivia.taylor@univ.edu', '6789012345', '2019-09-11'),
('P007', 'Dr. James', 'Wilson', 'Psychology', 'james.wilson@univ.edu', '7890123456', '2020-10-10'),
('P008', 'Dr. Sarah', 'White', 'History', 'sarah.white@univ.edu', '8901234567', '2021-12-01'),
('P009', 'Dr. Rachel', 'Green', 'Literature', 'rachel.green@univ.edu', '9012345678', '2020-05-10'),
('P010', 'Dr. Adam', 'Clark', 'Physics', 'adam.clark@univ.edu', '0123456789', '2018-08-22');

-- This query retrieves all professor records from the Professors table.
SELECT * FROM Professors;


-- Creating Departments table to store department details
CREATE TABLE Departments (
DepartmentID VARCHAR(50) PRIMARY KEY,   -- Unique identifier for each department
DepartmentName VARCHAR(100),            -- Name of the department
DepartmentHead VARCHAR(100),            -- Head of the department
FacultyCount INT,                       -- Number of faculty members in the department
Location VARCHAR(100),                  -- Location of the department in the university
Budget DECIMAL(10, 2),                  -- Budget allocated to the department
EstablishedYear INT                     -- Year when the department was established
);

-- Inserting data into Departments table
INSERT INTO Departments (DepartmentID, DepartmentName, DepartmentHead, FacultyCount, Location, Budget, EstablishedYear) VALUES
('D001', 'Computer Science', 'Dr. John Smith', 25, 'Building A, Room 101', 1000000.00, 1990),
('D002', 'Mathematics', 'Dr. Emily Johnson', 20, 'Building B, Room 102', 800000.00, 1985),
('D003', 'Chemistry', 'Dr. Mark Davis', 15, 'Building C, Room 103', 900000.00, 1995),
('D004', 'Physics', 'Dr. Linda Brown', 18, 'Building D, Room 104', 950000.00, 1980),
('D005', 'Economics', 'Dr. William Miller', 10, 'Building E, Room 105', 700000.00, 2000),
('D006', 'Business', 'Dr. Olivia Taylor', 12, 'Building F, Room 106', 600000.00, 2005),
('D007', 'Psychology', 'Dr. James Wilson', 8, 'Building G, Room 107', 500000.00, 2010),
('D008', 'History', 'Dr. Sarah White', 7, 'Building H, Room 108', 400000.00, 2012),
('D009', 'Literature', 'Dr. Rachel Green', 9, 'Building I, Room 109', 450000.00, 2015),
('D010', 'Physics', 'Dr. Adam Clark', 22, 'Building D, Room 104', 1000000.00, 1990);

-- This query retrieves all department records from the Departments table.
SELECT * FROM Departments;



------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an E-Learning Database including Books ,  , Orders , Shipping and Reviews --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database E_Learning_Database ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  E_Learning_Database ;

use  E_Learning_Database;

-- Table -1
-- Creating Students table to store student details
CREATE TABLE Students (
StudentID VARCHAR(50) NOT NULL,        -- Unique identifier for each student
FirstName VARCHAR(50),                 -- Student's first name
LastName VARCHAR(50),                  -- Student's last name
Email VARCHAR(100),                    -- Student's email address
DateOfBirth DATE,                      -- Student's date of birth
EnrollmentDate DATE,                   -- Date when the student enrolled
Status VARCHAR(50),                    -- Enrollment status (e.g., Active, Inactive)
PRIMARY KEY (StudentID)                -- Primary key for Students table
);

-- Inserting data into Students table
INSERT INTO Students (StudentID, FirstName, LastName, Email, DateOfBirth, EnrollmentDate, Status) VALUES
('S001', 'John', 'Doe', 'john.doe@gmail.com', '1998-05-10', '2020-09-01', 'Active'),
('S002', 'Jane', 'Smith', 'jane.smith@gmail.com', '1999-08-22', '2019-09-01', 'Active'),
('S003', 'Alice', 'Johnson', 'alice.johnson@yahoo.com', '2000-12-15', '2021-09-01', 'Active'),
('S004', 'Bob', 'Brown', 'bob.brown@gmail.com', '1998-02-17', '2018-09-01', 'Inactive'),
('S005', 'Charlie', 'Davis', 'charlie.davis@hotmail.com', '2001-06-30', '2021-09-01', 'Active'),
('S006', 'David', 'Miller', 'david.miller@gmail.com', '1999-11-25', '2020-09-01', 'Active'),
('S007', 'Eve', 'Wilson', 'eve.wilson@yahoo.com', '2001-03-03', '2021-09-01', 'Active'),
('S008', 'Frank', 'Taylor', 'frank.taylor@gmail.com', '1997-07-21', '2018-09-01', 'Inactive'),
('S009', 'Grace', 'Anderson', 'grace.anderson@gmail.com', '2002-01-14', '2021-09-01', 'Active'),
('S010', 'Hannah', 'Thomas', 'hannah.thomas@yahoo.com', '2001-10-30', '2020-09-01', 'Active');

-- This query retrieves all student records from the Students table.
SELECT * FROM Students;


-- Creating Courses table to store course details
CREATE TABLE Courses (
CourseID VARCHAR(50) NOT NULL,         -- Unique identifier for each course
CourseName VARCHAR(100),               -- Name of the course
Instructor VARCHAR(100),               -- Instructor teaching the course
Duration VARCHAR(50),                  -- Duration of the course (e.g., 6 weeks, 3 months)
StartDate DATE,                         -- Course start date
EndDate DATE,                           -- Course end date
Price DECIMAL(10, 2),                   -- Course price
PRIMARY KEY (CourseID)                 -- Primary key for Courses table
);

-- Inserting data into Courses table
INSERT INTO Courses (CourseID, CourseName, Instructor, Duration, StartDate, EndDate, Price) VALUES
('C001', 'Introduction to Programming', 'Dr. Smith', '6 weeks', '2024-01-15', '2024-02-26', 150.00),
('C002', 'Data Science Fundamentals', 'Dr. Johnson', '8 weeks', '2024-02-01', '2024-03-25', 200.00),
('C003', 'Web Development', 'Dr. Davis', '12 weeks', '2024-03-01', '2024-05-31', 250.00),
('C004', 'Machine Learning Basics', 'Dr. Brown', '10 weeks', '2024-01-01', '2024-03-10', 180.00),
('C005', 'Digital Marketing', 'Dr. Taylor', '6 weeks', '2024-04-01', '2024-05-15', 120.00),
('C006', 'Project Management', 'Dr. White', '8 weeks', '2024-02-15', '2024-04-15', 160.00),
('C007', 'Business Analytics', 'Dr. Green', '10 weeks', '2024-03-10', '2024-05-20', 210.00),
('C008', 'Cybersecurity Fundamentals', 'Dr. Black', '6 weeks', '2024-04-01', '2024-05-15', 180.00),
('C009', 'UI/UX Design', 'Dr. Clark', '8 weeks', '2024-01-15', '2024-03-15', 170.00),
('C010', 'Artificial Intelligence', 'Dr. Brown', '12 weeks', '2024-02-01', '2024-04-30', 220.00);

-- This query retrieves all course records from the Courses table.
SELECT * FROM Courses;


-- Creating Placement Partnerships table to store company details
CREATE TABLE PlacementPartnerships (
CompanyID VARCHAR(50) NOT NULL,         -- Unique identifier for each placement company
CompanyName VARCHAR(100),               -- Company name
Industry VARCHAR(100),                  -- Industry sector (e.g., IT, Healthcare)
Location VARCHAR(100),                  -- Company location
JobOpenings INT,                        -- Number of job openings available for placement
PRIMARY KEY (CompanyID)                 -- Primary key for PlacementPartnerships table
);

-- Inserting data into Placement Partnerships table
INSERT INTO PlacementPartnerships (CompanyID, CompanyName, Industry, Location, JobOpenings) VALUES
('P001', 'TechCorp', 'Technology', 'New York, USA', 50),
('P002', 'DataAnalytica', 'Data Science', 'San Francisco, USA', 30),
('P003', 'WebSolutions', 'Web Development', 'Austin, USA', 40),
('P004', 'MarketReach', 'Marketing', 'Chicago, USA', 25),
('P005', 'CyberSafe', 'Cybersecurity', 'Boston, USA', 20),
('P006', 'HealthTech', 'Healthcare', 'Los Angeles, USA', 15),
('P007', 'AI Innovators', 'AI', 'Seattle, USA', 35),
('P008', 'FinTech Solutions', 'Finance', 'Miami, USA', 10),
('P009', 'EduTech', 'Education', 'Dallas, USA', 50),
('P010', 'Design Masters', 'Design', 'Chicago, USA', 12);

-- This query retrieves all placement partnership records from the PlacementPartnerships table.
SELECT * FROM PlacementPartnerships;


-- Creating Students with Placement table to store students and their placement details
CREATE TABLE StudentsWithPlacement (
PlacementID VARCHAR(50) NOT NULL,       -- Unique identifier for placement
StudentID VARCHAR(50),                  -- Student who got placed (foreign key)
CourseID VARCHAR(50),                   -- Course student took (foreign key)
CompanyID VARCHAR(50),                  -- Company the student got placed in (foreign key)
PlacementDate DATE,                     -- Date of placement
JobTitle VARCHAR(100),                  -- Job title offered to the student
PRIMARY KEY (PlacementID)               -- Primary key for Students with Placement table
);

-- Inserting data into Students with Placement table
INSERT INTO StudentsWithPlacement (PlacementID, StudentID, CourseID, CompanyID, PlacementDate, JobTitle) VALUES
('SP001', 'S001', 'C001', 'P001', '2024-06-01', 'Software Developer'),
('SP002', 'S002', 'C002', 'P002', '2024-06-15', 'Data Scientist'),
('SP003', 'S003', 'C003', 'P003', '2024-07-01', 'Web Developer'),
('SP004', 'S004', 'C004', 'P004', '2024-05-10', 'Marketing Manager'),
('SP005', 'S005', 'C005', 'P005', '2024-06-20', 'Cybersecurity Specialist'),
('SP006', 'S006', 'C006', 'P006', '2024-07-10', 'Project Manager'),
('SP007', 'S007', 'C007', 'P007', '2024-08-01', 'AI Engineer'),
('SP008', 'S008', 'C008', 'P008', '2024-06-25', 'Financial Analyst'),
('SP009', 'S009', 'C009', 'P009', '2024-06-05', 'Instructional Designer'),
('SP010', 'S010', 'C010', 'P010', '2024-07-15', 'Graphic Designer');

-- This query retrieves all student placement records from the Students with Placement table.
SELECT * FROM StudentsWithPlacement;


-- Creating E-Learning App table to store app details
CREATE TABLE ELearningApp (
AppID VARCHAR(50) NOT NULL,            -- Unique identifier for the app
AppName VARCHAR(100),                  -- Name of the app
AppVersion VARCHAR(50),                -- Version of the app
ReleaseDate DATE,                      -- Release date of the app
Platform VARCHAR(50),                  -- Platform (e.g., Android, iOS)
Rating DECIMAL(3, 2),                  -- Rating of the app
PRIMARY KEY (AppID)                    -- Primary key for the App table
);

-- Inserting data into E-Learning App table
INSERT INTO ELearningApp (AppID, AppName, AppVersion, ReleaseDate, Platform, Rating) VALUES
('A001', 'EduLearn', '1.0', '2024-01-01', 'Android', 4.5),
('A002', 'LearnPro', '2.0', '2024-02-01', 'iOS', 4.7),
('A003', 'SkillUp', '1.5', '2024-03-01', 'Android', 4.3),
('A004', 'StudyMaster', '3.0', '2024-04-01', 'iOS', 4.6),
('A005', 'LearnX', '1.8', '2024-05-01', 'Android', 4.2),
('A006', 'QuickStudy', '2.1', '2024-06-01', 'iOS', 4.0),
('A007', 'EduSpark', '1.2', '2024-07-01', 'Android', 4.4),
('A008', 'StudyZone', '2.3', '2024-08-01', 'iOS', 4.8),
('A009', 'SmartLearn', '1.9', '2024-09-01', 'Android', 4.1),
('A010', 'SkillBox', '2.0', '2024-10-01', 'iOS', 4.3);

-- This query retrieves all app records from the E-Learning App table.
SELECT * FROM ELearningApp;



------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an E-Vehicles_Rented Database including Vehicles , Customers , Rentals , Payments and Employees --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database Vehicles_Rented ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Vehicles_Rented ;

use  Vehicles_Rented;

-- table-1
-- Creating Vehicles table to store vehicle details available for rent
CREATE TABLE Vehicles (
VehicleID VARCHAR(50) NOT NULL,         -- Unique identifier for each vehicle
Make VARCHAR(50),                       -- Make of the vehicle (e.g., Toyota, Ford)
Model VARCHAR(50),                      -- Model of the vehicle
Year INT,                               -- Year of manufacture
VehicleType VARCHAR(50),                -- Type of vehicle (e.g., Sedan, SUV)
AvailabilityStatus VARCHAR(50),         -- Availability status (e.g., Available, Rented)
RentalPricePerDay DECIMAL(10, 2),       -- Rental price per day
PRIMARY KEY (VehicleID)                 -- Primary key for Vehicles table
);

-- Inserting data into Vehicles table
INSERT INTO Vehicles (VehicleID, Make, Model, Year, VehicleType, AvailabilityStatus, RentalPricePerDay) VALUES
('V001', 'Toyota', 'Camry', 2020, 'Sedan', 'Available', 50.00),
('V002', 'Honda', 'Civic', 2019, 'Sedan', 'Rented', 45.00),
('V003', 'Ford', 'Explorer', 2021, 'SUV', 'Available', 80.00),
('V004', 'Chevrolet', 'Tahoe', 2018, 'SUV', 'Rented', 100.00),
('V005', 'Nissan', 'Altima', 2022, 'Sedan', 'Available', 55.00),
('V006', 'BMW', 'X5', 2020, 'SUV', 'Available', 120.00),
('V007', 'Audi', 'A4', 2021, 'Sedan', 'Rented', 70.00),
('V008', 'Tesla', 'Model X', 2022, 'SUV', 'Available', 150.00),
('V009', 'Hyundai', 'Elantra', 2019, 'Sedan', 'Rented', 40.00),
('V010', 'Mercedes', 'GLE', 2020, 'SUV', 'Available', 130.00);

-- This query retrieves all vehicle records from the Vehicles table.
SELECT * FROM Vehicles;

-- Table-2
-- Creating Customers table to store customer details
CREATE TABLE Customers (
CustomerID VARCHAR(50) NOT NULL,        -- Unique identifier for each customer
FirstName VARCHAR(50),                  -- Customer's first name
LastName VARCHAR(50),                   -- Customer's last name
Email VARCHAR(100),                     -- Customer's email address
PhoneNumber VARCHAR(15),                -- Customer's phone number
Address TEXT,                           -- Customer's address
DrivingLicenseNumber VARCHAR(50),       -- Driving license number of the customer
PRIMARY KEY (CustomerID)                -- Primary key for Customers table
);

-- Inserting data into Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address, DrivingLicenseNumber) VALUES
('C001', 'John', 'Doe', 'john.doe@example.com', '1234567890', '123 Elm Street', 'D1234567'),
('C002', 'Jane', 'Smith', 'jane.smith@example.com', '2345678901', '456 Oak Avenue', 'D2345678'),
('C003', 'Alice', 'Johnson', 'alice.johnson@example.com', '3456789012', '789 Pine Road', 'D3456789'),
('C004', 'Bob', 'Brown', 'bob.brown@example.com', '4567890123', '101 Maple Lane', 'D4567890'),
('C005', 'Charlie', 'Davis', 'charlie.davis@example.com', '5678901234', '202 Birch Boulevard', 'D5678901'),
('C006', 'David', 'Miller', 'david.miller@example.com', '6789012345', '303 Cedar Street', 'D6789012'),
('C007', 'Eve', 'Wilson', 'eve.wilson@example.com', '7890123456', '404 Walnut Place', 'D7890123'),
('C008', 'Frank', 'Taylor', 'frank.taylor@example.com', '8901234567', '505 Cherry Crescent', 'D8901234'),
('C009', 'Grace', 'Anderson', 'grace.anderson@example.com', '9012345678', '606 Pine Circle', 'D9012345'),
('C010', 'Hannah', 'Thomas', 'hannah.thomas@example.com', '0123456789', '707 Birch Hill', 'D0123456');

-- This query retrieves all customer records from the Customers table.
SELECT * FROM Customers;


-- Table-3
-- Creating Rentals table to store rental transaction details
CREATE TABLE Rentals (
RentalID VARCHAR(50) NOT NULL,          -- Unique identifier for each rental transaction
CustomerID VARCHAR(50),                 -- Unique identifier for each customer (foreign key)
VehicleID VARCHAR(50),                  -- Unique identifier for each vehicle (foreign key)
RentalStartDate DATE,                   -- Rental start date
RentalEndDate DATE,                     -- Rental end date
TotalAmount DECIMAL(10, 2),             -- Total rental amount
PaymentStatus VARCHAR(50),              -- Payment status (e.g., Paid, Pending)
PRIMARY KEY (RentalID)                  -- Primary key for Rentals table
);

-- Inserting data into Rentals table
INSERT INTO Rentals (RentalID, CustomerID, VehicleID, RentalStartDate, RentalEndDate, TotalAmount, PaymentStatus) VALUES
('R001', 'C001', 'V001', '2023-12-01', '2023-12-05', 250.00, 'Paid'),
('R002', 'C002', 'V002', '2023-12-02', '2023-12-06', 270.00, 'Paid'),
('R003', 'C003', 'V003', '2023-12-03', '2023-12-07', 320.00, 'Pending'),
('R004', 'C004', 'V004', '2023-12-04', '2023-12-08', 400.00, 'Paid'),
('R005', 'C005', 'V005', '2023-12-05', '2023-12-09', 275.00, 'Paid'),
('R006', 'C006', 'V006', '2023-12-06', '2023-12-10', 480.00, 'Pending'),
('R007', 'C007', 'V007', '2023-12-07', '2023-12-11', 280.00, 'Paid'),
('R008', 'C008', 'V008', '2023-12-08', '2023-12-12', 600.00, 'Paid'),
('R009', 'C009', 'V009', '2023-12-09', '2023-12-13', 200.00, 'Paid'),
('R010', 'C010', 'V010', '2023-12-10', '2023-12-14', 520.00, 'Paid');

-- This query retrieves all rental records from the Rentals table.
SELECT * FROM Rentals;

-- Table-4
-- Creating Payments table to store payment transaction details
CREATE TABLE Payments (
    PaymentID VARCHAR(50) NOT NULL,         -- Unique identifier for each payment
    RentalID VARCHAR(50),                   -- Unique identifier for each rental transaction (foreign key)
    PaymentAmount DECIMAL(10, 2),           -- Amount paid
    PaymentMethod VARCHAR(50),              -- Payment method (e.g., Credit Card, Cash, Bank Transfer)
    PaymentDate DATE,                       -- Payment date
    PaymentStatus VARCHAR(50),              -- Payment status (e.g., Completed, Pending)
    PRIMARY KEY (PaymentID)                 -- Primary key for Payments table
);

-- Inserting data into Payments table
INSERT INTO Payments (PaymentID, RentalID, PaymentAmount, PaymentMethod, PaymentDate, PaymentStatus) VALUES
('P001', 'R001', 250.00, 'Credit Card', '2023-12-01', 'Completed'),
('P002', 'R002', 270.00, 'Cash', '2023-12-02', 'Completed'),
('P003', 'R003', 320.00, 'Bank Transfer', '2023-12-03', 'Pending'),
('P004', 'R004', 400.00, 'Credit Card', '2023-12-04', 'Completed'),
('P005', 'R005', 275.00, 'Debit Card', '2023-12-05', 'Completed'),
('P006', 'R006', 480.00, 'Bank Transfer', '2023-12-06', 'Pending'),
('P007', 'R007', 280.00, 'Cash', '2023-12-07', 'Completed'),
('P008', 'R008', 600.00, 'Credit Card', '2023-12-08', 'Completed'),
('P009', 'R009', 200.00, 'Debit Card', '2023-12-09', 'Completed'),
('P010', 'R010', 520.00, 'Credit Card', '2023-12-10', 'Completed');

-- This query retrieves all payment records from the Payments table.
SELECT * FROM Payments;


-- Table-5
-- Creating Employees table to store employee details
CREATE TABLE Employees (
    EmployeeID VARCHAR(50) NOT NULL,        -- Unique identifier for each employee
    FirstName VARCHAR(50),                  -- Employee's first name
    LastName VARCHAR(50),                   -- Employee's last name
    Position VARCHAR(50),                   -- Position (e.g., Manager, Customer Support)
    Email VARCHAR(100),                     -- Employee's email address
    PhoneNumber VARCHAR(15),                -- Employee's phone number
    HireDate DATE,                           -- Date when the employee was hired
    PRIMARY KEY (EmployeeID)                -- Primary key for Employees table
);

-- Inserting data into Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, Email, PhoneNumber, HireDate) VALUES
('E001', 'Michael', 'Scott', 'Manager', 'michael.scott@library.com', '1234567890', '2015-06-15'),
('E002', 'Pam', 'Beesly', 'Receptionist', 'pam.beesly@library.com', '2345678901', '2016-07-20'),
('E003', 'Jim', 'Halpert', 'Sales Representative', 'jim.halpert@library.com', '3456789012', '2017-08-25'),
('E004', 'Dwight', 'Schrute', 'Assistant Manager', 'dwight.schrute@library.com', '4567890123', '2018-09-30'),
('E005', 'Angela', 'Martin', 'Accounting', 'angela.martin@library.com', '5678901234', '2019-10-15'),
('E006', 'Ryan', 'Howard', 'Intern', 'ryan.howard@library.com', '6789012345', '2020-11-01'),
('E007', 'Kelly', 'Kapoor', 'Customer Support', 'kelly.kapoor@library.com', '7890123456', '2021-12-05'),
('E008', 'Stanley', 'Hudson', 'Sales Representative', 'stanley.hudson@library.com', '8901234567', '2022-01-10'),
('E009', 'Toby', 'Flenderson', 'Human Resources', 'toby.flenderson@library.com', '9012345678', '2023-02-15'),
('E010', 'Creed', 'Bratton', 'Quality Control', 'creed.bratton@library.com', '0123456789', '2023-03-25');

-- This query retrieves all employee records from the Employees table.
SELECT * FROM Employees;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an Social Media System Database including Users , Posts , Comments ,  Friendships  and  Messages --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database Social_Media_System ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Social_Media_System ;

use  Social_Media_System ;

-- Table 1: Users
-- This table stores information about users on the platform.
CREATE TABLE Users (
UserID INT PRIMARY KEY,                   -- Unique identifier for each user
FirstName VARCHAR(50),                    -- First name of the user
LastName VARCHAR(50),                     -- Last name of the user
Email VARCHAR(100),                       -- Email address of the user
Username VARCHAR(50),                     -- Username of the user
DateJoined DATE                           -- Date the user joined the platform
);

INSERT INTO Users VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'john_doe', '2023-05-01'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'jane_smith', '2023-06-12'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', 'alice_johnson', '2023-07-15'),
(4, 'Bob', 'Brown', 'bob.brown@example.com', 'bob_brown', '2023-08-01'),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', 'charlie_davis', '2023-09-10'),
(6, 'David', 'Martinez', 'david.martinez@example.com', 'david_martinez', '2023-10-20'),
(7, 'Eve', 'Wilson', 'eve.wilson@example.com', 'eve_wilson', '2023-11-25'),
(8, 'Frank', 'Moore', 'frank.moore@example.com', 'frank_moore', '2023-12-05'),
(9, 'Grace', 'Taylor', 'grace.taylor@example.com', 'grace_taylor', '2023-12-12'),
(10, 'Henry', 'Anderson', 'henry.anderson@example.com', 'henry_anderson', '2023-12-20');

-- This query retrieves all employee records from the Employees table.
SELECT * FROM Users ;

-- Table 2: Posts
-- This table stores posts made by users.
CREATE TABLE Posts (
PostID INT PRIMARY KEY,                    -- Unique identifier for each post
UserID INT,                                -- ID of the user who made the post
Content TEXT,                              -- Content of the post
DatePosted DATE,                           -- Date the post was made
Likes INT                                  -- Number of likes on the post
);

INSERT INTO Posts VALUES
(1, 1, 'This is my first post!', '2024-01-05', 20),
(2, 2, 'Had a great day today!', '2024-01-06', 35),
(3, 3, 'Learning SQL is fun!', '2024-01-07', 50),
(4, 4, 'Enjoying the weekend!', '2024-01-08', 45),
(5, 5, 'Started a new project!', '2024-01-09', 60),
(6, 6, 'Just finished a book!', '2024-01-10', 40),
(7, 7, 'Feeling motivated!', '2024-01-11', 55),
(8, 8, 'Had a delicious dinner!', '2024-01-12', 30),
(9, 9, 'The weather is amazing today!', '2024-01-13', 25),
(10, 10, 'Happy to be here!', '2024-01-14', 15);

-- This query retrieves all employee records from the Employees table.
SELECT * FROM Posts;

-- Table 3: Comments
-- This table stores comments made on posts by users.
CREATE TABLE Comments (
CommentID INT PRIMARY KEY,                  -- Unique identifier for each comment
PostID INT,                                 -- ID of the post being commented on
UserID INT,                                 -- ID of the user who made the comment
Comment TEXT,                               -- Content of the comment
DateCommented DATE                          -- Date the comment was made
);

INSERT INTO Comments VALUES
(1, 1, 2, 'Great post, John!', '2024-01-05'),
(2, 2, 3, 'Thanks for sharing!', '2024-01-06'),
(3, 3, 4, 'I agree, learning is fun!', '2024-01-07'),
(4, 4, 5, 'Looks like a fun weekend!', '2024-01-08'),
(5, 5, 6, 'Good luck with your project!', '2024-01-09'),
(6, 6, 7, 'Sounds interesting, David!', '2024-01-10'),
(7, 7, 8, 'Keep it up, Eve!', '2024-01-11'),
(8, 8, 9, 'Yum! What did you have for dinner?', '2024-01-12'),
(9, 9, 10, 'Hope you enjoyed the day!', '2024-01-13'),
(10, 10, 1, 'Glad to see you here, Henry!', '2024-01-14');

-- This query retrieves all employee records from the Employees table.
SELECT * FROM Comments ;

-- Table 4: Friendships
-- This table stores friendships between users.
CREATE TABLE Friendships (
FriendshipID INT PRIMARY KEY,               -- Unique identifier for each friendship
UserID1 INT,                                -- ID of one user in the friendship
UserID2 INT,                                -- ID of the other user in the friendship
DateStarted DATE                            -- Date the friendship was made
);

INSERT INTO Friendships VALUES
(1, 1, 2, '2023-05-10'),
(2, 2, 3, '2023-06-15'),
(3, 3, 4, '2023-07-20'),
(4, 4, 5, '2023-08-25'),
(5, 5, 6, '2023-09-05'),
(6, 6, 7, '2023-10-15'),
(7, 7, 8, '2023-11-01'),
(8, 8, 9, '2023-11-20'),
(9, 9, 10, '2023-12-01'),
(10, 10, 1, '2023-12-10');

-- This query retrieves all employee records from the Employees table.
SELECT * FROM Friendships ;

-- Table 5: Messages
-- This table stores private messages between users.
CREATE TABLE Messages (
MessageID INT PRIMARY KEY,                  -- Unique identifier for each message
SenderID INT,                               -- ID of the sender user
ReceiverID INT,                             -- ID of the receiver user
MessageContent TEXT,                        -- Content of the message
DateSent DATE                               -- Date when the message was sent
);

INSERT INTO Messages VALUES
(1, 1, 2, 'Hey Jane, how are you?', '2024-01-05'),
(2, 3, 4, 'Bob, did you complete the task?', '2024-01-06'),
(3, 2, 1, 'John, I love your recent post!', '2024-01-07'),
(4, 5, 6, 'David, let\'s catch up this weekend!', '2024-01-08'),
(5, 6, 7, 'Eve, looking forward to the event!', '2024-01-09'),
(6, 7, 8, 'Frank, thanks for the help yesterday!', '2024-01-10'),
(7, 8, 9, 'Grace, do you want to join us for dinner?', '2024-01-11'),
(8, 9, 10, 'Henry, I just sent you the files.', '2024-01-12'),
(9, 10, 1, 'John, happy to be friends here!', '2024-01-13'),
(10, 1, 2, 'Jane, I\'ll see you tomorrow!', '2024-01-14');
  
  -- This query retrieves all employee records from the Employees table.
SELECT * FROM Messages ;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an Wholesaler Management System Database  including Suppliers , Products , Orders ,  OrderDetails  and  Payments --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database Wholesaler_Management_System ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Wholesaler_Management_System ;

use  Wholesaler_Management_System ;

-- Table 1: Suppliers
-- This table stores information about the suppliers providing goods to the wholesaler.
CREATE TABLE Suppliers (
SupplierID INT PRIMARY KEY,                 -- Unique identifier for each supplier
SupplierName VARCHAR(100),                   -- Name of the supplier
ContactName VARCHAR(50),                     -- Contact person at the supplier
ContactPhone VARCHAR(15),                    -- Phone number of the contact person
Address VARCHAR(255)                         -- Supplier's address
);

INSERT INTO Suppliers VALUES
(1, 'ABC Corp', 'John Doe', '1234567890', '123 Main St, City A'),
(2, 'XYZ Traders', 'Jane Smith', '9876543210', '456 Park Ave, City B'),
(3, 'Global Suppliers', 'Mark Johnson', '6543210987', '789 Elm St, City C'),
(4, 'Mega Goods', 'Alice Davis', '5432109876', '101 Oak St, City D'),
(5, 'Best Suppliers', 'David Martinez', '4321098765', '202 Pine St, City E'),
(6, 'Elite Goods', 'Eve Wilson', '3210987654', '303 Cedar St, City F'),
(7, 'Fast Supply', 'Frank Moore', '2109876543', '404 Birch St, City G'),
(8, 'Direct Supplies', 'Grace Taylor', '1098765432', '505 Maple St, City H'),
(9, 'Reliable Goods', 'Henry Anderson', '9987654321', '606 Willow St, City I'),
(10, 'Superior Traders', 'Olivia Scott', '8876543210', '707 Redwood St, City J');

-- This query retrieves all employee records from the Employees table.
SELECT * FROM Suppliers ;

-- Table 2: Products
-- This table stores details about the products available for wholesale.
CREATE TABLE Products (
ProductID INT PRIMARY KEY,                   -- Unique identifier for each product
ProductName VARCHAR(100),                    -- Name of the product
SupplierID INT,                              -- ID of the supplier
QuantityInStock INT,                         -- Quantity available in stock
Price DECIMAL(10, 2)                         -- Price per unit of the product
);

INSERT INTO Products VALUES
(1, 'Laptop', 1, 50, 800.00),
(2, 'Smartphone', 2, 100, 500.00),
(3, 'Headphones', 3, 200, 150.00),
(4, 'Keyboard', 4, 150, 30.00),
(5, 'Mouse', 5, 120, 20.00),
(6, 'Monitor', 6, 60, 250.00),
(7, 'Charger', 7, 250, 15.00),
(8, 'Speaker', 8, 80, 100.00),
(9, 'Camera', 9, 40, 400.00),
(10, 'Tablet', 10, 70, 350.00);

-- This query retrieves all employee records from the Employees table.
SELECT * FROM Products ;

-- Table 3: Orders
-- This table tracks the orders placed by customers for products.
CREATE TABLE Orders (
OrderID INT PRIMARY KEY,                    -- Unique identifier for each order
OrderDate DATE,                              -- Date when the order was placed
CustomerName VARCHAR(100),                   -- Name of the customer placing the order
CustomerPhone VARCHAR(15),                   -- Phone number of the customer
TotalAmount DECIMAL(10, 2)                   -- Total value of the order
);

INSERT INTO Orders VALUES
(1, '2024-01-05', 'John Doe', '1234567890', 4000.00),
(2, '2024-01-06', 'Jane Smith', '9876543210', 5000.00),
(3, '2024-01-07', 'Alice Johnson', '6543210987', 2000.00),
(4, '2024-01-08', 'Bob Brown', '5432109876', 3000.00),
(5, '2024-01-09', 'Charlie Davis', '4321098765', 1500.00),
(6, '2024-01-10', 'David Martinez', '3210987654', 3500.00),
(7, '2024-01-11', 'Eve Wilson', '2109876543', 4500.00),
(8, '2024-01-12', 'Frank Moore', '1098765432', 2500.00),
(9, '2024-01-13', 'Grace Taylor', '9987654321', 1800.00),
(10, '2024-01-14', 'Henry Anderson', '8876543210', 2200.00);

-- This query retrieves all employee records from the Employees table.
SELECT * FROM Orders ;

-- Table 4: OrderDetails
-- This table stores the details of the products included in each order.
CREATE TABLE OrderDetails (
OrderDetailID INT PRIMARY KEY,               -- Unique identifier for each order detail
OrderID INT,                                 -- ID of the order
ProductID INT,                               -- ID of the product
Quantity INT,                                -- Quantity of the product in the order
UnitPrice Float                              -- Price per unit of the product
);

INSERT INTO OrderDetails VALUES
(1, 1, 1, 5, 800.00),
(2, 2, 2, 10, 500.00),
(3, 3, 3, 15, 150.00),
(4, 4, 4, 10, 30.00),
(5, 5, 5, 20, 20.00),
(6, 6, 6, 5, 250.00),
(7, 7, 7, 25, 15.00),
(8, 8, 8, 8, 100.00),
(9, 9, 9, 4, 400.00),
(10, 10, 10, 7, 350.00);

-- This query retrieves all employee records from the Employees table.
SELECT * FROM OrderDetails ;


-- Table 5: Payments
-- This table stores information about the payments made by customers for their orders.
CREATE TABLE Payments (
PaymentID INT PRIMARY KEY,                  -- Unique identifier for each payment
OrderID INT,                                -- ID of the order being paid for
PaymentDate DATE,                           -- Date the payment was made
PaymentAmount FLOAT ,                       -- Amount paid
PaymentMethod VARCHAR(50)                   -- Method of payment (e.g., Credit Card, Bank Transfer)
);

INSERT INTO Payments VALUES
(1, 1, '2024-01-05', 4000.00, 'Credit Card'),
(2, 2, '2024-01-06', 5000.00, 'Bank Transfer'),
(3, 3, '2024-01-07', 2000.00, 'Cash'),
(4, 4, '2024-01-08', 3000.00, 'Credit Card'),
(5, 5, '2024-01-09', 1500.00, 'Cash'),
(6, 6, '2024-01-10', 3500.00, 'Credit Card'),
(7, 7, '2024-01-11', 4500.00, 'Bank Transfer'),
(8, 8, '2024-01-12', 2500.00, 'Cash'),
(9, 9, '2024-01-13', 1800.00, 'Credit Card'),
(10, 10, '2024-01-14', 2200.00, 'Bank Transfer');

-- This query retrieves all employee records from the Employees table.
SELECT * FROM Payments ;


------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an Godrej (Company Management System) Database including Employees , Products , Orders ,  OrderDetails  and  Sales --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database  Godrej_Management_System  ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Godrej_Management_System ;

use  Godrej_Management_System ;

-- Table 1: Employees
-- This table stores details about the employees working in Godrej.
CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,                   -- Unique identifier for each employee
FirstName VARCHAR(50),                        -- First name of the employee
LastName VARCHAR(50),                         -- Last name of the employee
Department VARCHAR(50),                       -- Department the employee belongs to
alary FLOAT ,                                 -- Salary of the employee
DateJoined DATE                               -- Date the employee joined the company
);

INSERT INTO Employees VALUES
(1, 'John', 'Doe', 'Sales', 50000.00, '2023-01-10'),
(2, 'Jane', 'Smith', 'Marketing', 55000.00, '2023-03-12'),
(3, 'Alice', 'Johnson', 'HR', 45000.00, '2023-04-15'),
(4, 'Bob', 'Brown', 'Finance', 60000.00, '2023-05-20'),
(5, 'Charlie', 'Davis', 'Engineering', 70000.00, '2023-06-25'),
(6, 'David', 'Martinez', 'Sales', 48000.00, '2023-07-30'),
(7, 'Eve', 'Wilson', 'Marketing', 53000.00, '2023-08-05'),
(8, 'Frank', 'Moore', 'HR', 42000.00, '2023-09-10'),
(9, 'Grace', 'Taylor', 'Engineering', 75000.00, '2023-10-15'),
(10, 'Henry', 'Anderson', 'Finance', 65000.00, '2023-11-01');

-- show the table structure
SELECT * FROM Employees ;


-- Table 2: Products
-- This table stores details about products manufactured by Godrej.
CREATE TABLE Products (
ProductID INT PRIMARY KEY,                    -- Unique identifier for each product
ProductName VARCHAR(100),                     -- Name of the product
Category VARCHAR(50),                         -- Category the product belongs to
Price FLOAT ,                                 -- Price of the product
QuantityInStock INT                           -- Quantity of the product in stock
);

INSERT INTO Products VALUES
(1, 'Refrigerator', 'Home Appliances', 15000.00, 100),
(2, 'Washing Machine', 'Home Appliances', 20000.00, 80),
(3, 'AC Unit', 'Home Appliances', 30000.00, 50),
(4, 'Microwave', 'Kitchen Appliances', 10000.00, 120),
(5, 'Water Purifier', 'Kitchen Appliances', 5000.00, 200),
(6, 'LED TV', 'Electronics', 25000.00, 70),
(7, 'Ceiling Fan', 'Electronics', 1500.00, 300),
(8, 'Air Purifier', 'Home Appliances', 8000.00, 90),
(9, 'Oven', 'Kitchen Appliances', 12000.00, 60),
(10, 'Dishwasher', 'Kitchen Appliances', 15000.00, 40);

-- show the table structure
SELECT * FROM Products ;


-- Table 3: Orders
-- This table tracks orders placed by customers for Godrej products.
CREATE TABLE Orders (
OrderID INT PRIMARY KEY,                     -- Unique identifier for each order
OrderDate DATE,                               -- Date when the order was placed
CustomerName VARCHAR(100),                    -- Name of the customer
TotalAmount FLOAT                            -- Total value of the order
);

INSERT INTO Orders VALUES
(1, '2024-01-05', 'John Doe', 35000.00),
(2, '2024-01-06', 'Jane Smith', 45000.00),
(3, '2024-01-07', 'Alice Johnson', 25000.00),
(4, '2024-01-08', 'Bob Brown', 50000.00),
(5, '2024-01-09', 'Charlie Davis', 40000.00),
(6, '2024-01-10', 'David Martinez', 30000.00),
(7, '2024-01-11', 'Eve Wilson', 55000.00),
(8, '2024-01-12', 'Frank Moore', 60000.00),
(9, '2024-01-13', 'Grace Taylor', 70000.00),
(10, '2024-01-14', 'Henry Anderson', 45000.00);

-- show the table structure.
SELECT * FROM Orders ;


-- Table 4: OrderDetails
-- This table stores the details of the products included in each order.
CREATE TABLE OrderDetails (
OrderDetailID INT PRIMARY KEY,                -- Unique identifier for each order detail
OrderID INT,                                  -- ID of the order
ProductID INT,                                -- ID of the product
Quantity INT,                                 -- Quantity of the product in the order
UnitPrice FLOAT                               -- Price per unit of the product
);

INSERT INTO OrderDetails VALUES
(1, 1, 1, 2, 15000.00),
(2, 2, 2, 2, 20000.00),
(3, 3, 3, 1, 30000.00),
(4, 4, 4, 3, 10000.00),
(5, 5, 5, 5, 5000.00),
(6, 6, 6, 2, 25000.00),
(7, 7, 7, 10, 1500.00),
(8, 8, 8, 4, 8000.00),
(9, 9, 9, 2, 12000.00),
(10, 10, 10, 1, 15000.00);

-- show the table structure
SELECT * FROM OrderDetails;

-- Table 5: Sales
-- This table stores information about the sales made by employees of Godrej.
CREATE TABLE Sales (
SaleID INT PRIMARY KEY,                       -- Unique identifier for each sale
SaleDate DATE,                                -- Date when the sale occurred
EmployeeID INT,                               -- ID of the employee who made the sale
TotalSaleAmount DECIMAL(10, 2)                -- Total amount of the sale
);

INSERT INTO Sales VALUES
(1, '2024-01-05', 1, 35000.00),
(2, '2024-01-06', 2, 45000.00),
(3, '2024-01-07', 3, 25000.00),
(4, '2024-01-08', 4, 50000.00),
(5, '2024-01-09', 5, 40000.00),
(6, '2024-01-10', 6, 30000.00),
(7, '2024-01-11', 7, 55000.00),
(8, '2024-01-12', 8, 60000.00),
(9, '2024-01-13', 9, 70000.00),
(10, '2024-01-14', 10, 45000.00);

-- show the table structure.
SELECT * FROM Sales;


------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an UPI (Unified Payments Interface System) Database including Users , Transactions , PaymentMethods ,  PaymentDetails  and  BankAccounts  --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database UPI  ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  UPI ;

use  UPI ;

-- Table 1: Users
-- This table stores details about users who have UPI accounts.
CREATE TABLE Users (
UserID INT PRIMARY KEY,                     -- Unique identifier for each user
FirstName VARCHAR(50),                      -- First name of the user
LastName VARCHAR(50),                       -- Last name of the user
UPIID VARCHAR(100),                         -- UPI ID of the user
PhoneNumber VARCHAR(50)                     -- Phone number of the user
);

INSERT INTO Users VALUES
(1, 'John', 'Doe', 'john.doe@upi', '9876543210'),
(2, 'Jane', 'Smith', 'jane.smith@upi', '8765432109'),
(3, 'Alice', 'Johnson', 'alice.johnson@upi', '7654321098'),
(4, 'Bob', 'Brown', 'bob.brown@upi', '6543210987'),
(5, 'Charlie', 'Davis', 'charlie.davis@upi', '5432109876'),
(6, 'David', 'Martinez', 'david.martinez@upi', '4321098765'),
(7, 'Eve', 'Wilson', 'eve.wilson@upi', '3210987654'),
(8, 'Frank', 'Moore', 'frank.moore@upi', '2109876543'),
(9, 'Grace', 'Taylor', 'grace.taylor@upi', '1098765432'),
(10, 'Henry', 'Anderson', 'henry.anderson@upi', '9987654321');

-- show table Structure 
SELECT * FROM Users;


-- Table 2: Transactions
-- This table stores details about UPI transactions between users.
CREATE TABLE Transactions (
TransactionID INT PRIMARY KEY,               -- Unique identifier for each transaction
SenderID INT,                                -- ID of the user sending the payment
ReceiverID INT,                              -- ID of the user receiving the payment
Amount FLOAT ,                               -- Amount of the transaction
TransactionDate DATE                         -- Date of the transaction
);

INSERT INTO Transactions VALUES
(1, 1, 2, 1000.00, '2024-01-05'),
(2, 3, 4, 500.00, '2024-01-06'),
(3, 5, 6, 1500.00, '2024-01-07'),
(4, 7, 8, 750.00, '2024-01-08'),
(5, 9, 10, 2000.00, '2024-01-09'),
(6, 2, 3, 1200.00, '2024-01-10'),
(7, 4, 5, 250.00, '2024-01-11'),
(8, 6, 7, 300.00, '2024-01-12'),
(9, 8, 9, 1300.00, '2024-01-13'),
(10, 10, 1, 1000.00, '2024-01-14');

-- show table Structure 
SELECT * FROM Transactions ;


-- Table 3: PaymentMethods
-- This table stores the details of different payment methods available in the UPI system.
CREATE TABLE PaymentMethods (
MethodID INT PRIMARY KEY,                    -- Unique identifier for each payment method
MethodName VARCHAR(50),                      -- Name of the payment method (e.g., UPI, Bank Transfer)
Description VARCHAR(255)                     -- Description of the payment method
);

INSERT INTO PaymentMethods VALUES
(1, 'UPI', 'Unified Payments Interface for peer-to-peer transactions'),
(2, 'Bank Transfer', 'Direct bank transfers between accounts'),
(3, 'Debit Card', 'Payments made using a debit card linked to a bank account'),
(4, 'Credit Card', 'Payments made using a credit card linked to a bank account'),
(5, 'Wallet', 'Payments made using an e-wallet balance');

-- show table Structure 
SELECT * FROM PaymentMethods ;

-- Table 4: PaymentDetails
-- This table stores additional details for each payment transaction, such as payment method used.
CREATE TABLE PaymentDetails (
PaymentDetailID INT PRIMARY KEY,             -- Unique identifier for each payment detail
TransactionID INT,                           -- ID of the transaction
MethodID INT,                                -- Payment method used for the transaction
PaymentStatus VARCHAR(50)                    -- Status of the payment (e.g., Completed, Pending)
);

INSERT INTO PaymentDetails VALUES
(1, 1, 1, 'Completed'),
(2, 2, 3, 'Completed'),
(3, 3, 4, 'Pending'),
(4, 4, 2, 'Completed'),
(5, 5, 1, 'Completed'),
(6, 6, 5, 'Completed'),
(7, 7, 3, 'Completed'),
(8, 8, 2, 'Completed'),
(9, 9, 4, 'Pending'),
(10, 10, 5, 'Completed');

-- show table Structure 
SELECT * FROM PaymentDetails ;

-- Table 5: BankAccounts
-- This table stores details about the bank accounts linked to users' UPI IDs.
CREATE TABLE BankAccounts (
BankAccountID INT PRIMARY KEY,                -- Unique identifier for each bank account
UserID INT,                                   -- ID of the user to whom the bank account belongs
BankName VARCHAR(100),                        -- Name of the bank
AccountNumber VARCHAR(50),                    -- Bank account number
IFSCCode VARCHAR(50),                         -- IFSC code of the bank
AccountType VARCHAR(50)                       -- Type of bank account (e.g., Savings, Current)
);

INSERT INTO BankAccounts VALUES
(1, 1, 'State Bank of India', 'SBIN0001234', 'SBIN0001234', 'Savings'),
(2, 2, 'HDFC Bank', 'HDFC0005678', 'HDFC0005678', 'Current'),
(3, 3, 'ICICI Bank', 'ICIC0009876', 'ICIC0009876', 'Savings'),
(4, 4, 'Axis Bank', 'AXIS0003456', 'AXIS0003456', 'Current'),
(5, 5, 'Punjab National Bank', 'PNB0007890', 'PNB0007890', 'Savings'),
(6, 6, 'Bank of Baroda', 'BOB0001122', 'BOB0001122', 'Savings'),
(7, 7, 'Canara Bank', 'CANB0003456', 'CANB0003456', 'Current'),
(8, 8, 'SBI', 'SBI0007654', 'SBI0007654', 'Savings'),
(9, 9, 'Kotak Mahindra Bank', 'KMB0006543', 'KMB0006543', 'Savings'),
(10, 10, 'ICICI Bank', 'ICIC0008765', 'ICIC0008765', 'Current');

-- show table Structure 
SELECT * FROM BankAccounts ;



------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an Credit Card System Database including Customers , CreditCards , Transactions ,  Payment History  and  Credit Card Rewards  --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database Credit_Card_System ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Credit_Card_System ;

use  Credit_Card_System ;

-- Table 1: Customers
-- This table stores details about the customers who own credit cards.
CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,                   -- Unique identifier for each customer
FirstName VARCHAR(50),                        -- First name of the customer
LastName VARCHAR(50),                         -- Last name of the customer
Email VARCHAR(100),                           -- Email address of the customer
PhoneNumber VARCHAR(50)                       -- Phone number of the customer
);

INSERT INTO Customers VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '9876543210'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '8765432109'),
(3, 'Alice', 'Johnson', 'alice.johnson@email.com', '7654321098'),
(4, 'Bob', 'Brown', 'bob.brown@email.com', '6543210987'),
(5, 'Charlie', 'Davis', 'charlie.davis@email.com', '5432109876'),
(6, 'David', 'Martinez', 'david.martinez@email.com', '4321098765'),
(7, 'Eve', 'Wilson', 'eve.wilson@email.com', '3210987654'),
(8, 'Frank', 'Moore', 'frank.moore@email.com', '2109876543'),
(9, 'Grace', 'Taylor', 'grace.taylor@email.com', '1098765432'),
(10, 'Henry', 'Anderson', 'henry.anderson@email.com', '9987654321');

-- show table Structure 
SELECT * FROM Customers ;

 
-- Table 2: CreditCards
-- This table stores details about the credit cards owned by customers.
CREATE TABLE CreditCards (
CreditCardID INT PRIMARY KEY,                 -- Unique identifier for each credit card
CustomerID INT,                               -- ID of the customer who owns the credit card
CardNumber TEXT ,                             -- Credit card number (masked for security)
ExpirationDate DATE,                          -- Expiration date of the card
CreditLimit FLOAT ,                           -- Credit limit on the card
CurrentBalance FLOAT                          -- Current balance on the card
);

INSERT INTO CreditCards VALUES
(1, 1, '**** **** **** 1234', '2025-12-31', 50000.00, 10000.00),
(2, 2, '**** **** **** 5678', '2024-08-31', 60000.00, 20000.00),
(3, 3, '**** **** **** 9876', '2026-03-31', 70000.00, 15000.00),
(4, 4, '**** **** **** 3456', '2025-06-30', 50000.00, 12000.00),
(5, 5, '**** **** **** 7890', '2027-01-31', 75000.00, 25000.00),
(6, 6, '**** **** **** 1122', '2024-11-30', 40000.00, 5000.00),
(7, 7, '**** **** **** 3456', '2026-02-28', 80000.00, 30000.00),
(8, 8, '**** **** **** 7654', '2025-05-31', 60000.00, 18000.00),
(9, 9, '**** **** **** 6543', '2024-10-31', 90000.00, 22000.00),
(10, 10, '**** **** **** 8765', '2026-04-30', 50000.00, 8000.00);

-- show table Structure 
SELECT * FROM CreditCards;


-- Table 3: Transactions
-- This table stores details about the transactions made using the credit cards.
CREATE TABLE Transactions (
TransactionID INT PRIMARY KEY,               -- Unique identifier for each transaction
CreditCardID INT,                            -- ID of the credit card used for the transaction
TransactionDate DATE,                        -- Date of the transaction
Amount FLOAT ,                               -- Amount spent in the transaction
Merchant VARCHAR(100)                        -- Merchant where the transaction occurred
);

INSERT INTO Transactions VALUES
(1, 1, '2024-01-05', 2000.00, 'Amazon'),
(2, 2, '2024-01-06', 3000.00, 'Flipkart'),
(3, 3, '2024-01-07', 1500.00, 'Zomato'),
(4, 4, '2024-01-08', 500.00, 'Big Bazaar'),
(5, 5, '2024-01-09', 7000.00, 'Myntra'),
(6, 6, '2024-01-10', 1500.00, 'BookMyShow'),
(7, 7, '2024-01-11', 800.00, 'Swiggy'),
(8, 8, '2024-01-12', 4500.00, 'Reliance Digital'),
(9, 9, '2024-01-13', 3000.00, 'Croma'),
(10, 10, '2024-01-14', 2200.00, 'Amazon');

-- show table Structure 
SELECT * FROM Transactions ;


-- Table 4: PaymentHistory
-- This table stores details about the payments made to credit cards by customers.
CREATE TABLE PaymentHistory (
PaymentID INT PRIMARY KEY,                    -- Unique identifier for each payment
CreditCardID INT,                             -- ID of the credit card being paid
PaymentDate DATE,                             -- Date of payment
PaymentAmount FLOAT ,                         -- Amount paid
PaymentMethod VARCHAR(50)                     -- Payment method (e.g., Bank Transfer, UPI)
);

INSERT INTO PaymentHistory VALUES
(1, 1, '2024-01-06', 3000.00, 'Bank Transfer'),
(2, 2, '2024-01-07', 5000.00, 'UPI'),
(3, 3, '2024-01-08', 2000.00, 'Debit Card'),
(4, 4, '2024-01-09', 1000.00, 'Credit Card'),
(5, 5, '2024-01-10', 8000.00, 'Bank Transfer'),
(6, 6, '2024-01-11', 2000.00, 'UPI'),
(7, 7, '2024-01-12', 1500.00, 'Bank Transfer'),
(8, 8, '2024-01-13', 3000.00, 'Debit Card'),
(9, 9, '2024-01-14', 2500.00, 'UPI'),
(10, 10, '2024-01-15', 1500.00, 'Credit Card');


-- show table Structure 
SELECT * FROM PaymentHistory;

-- Table 5: CreditCardRewards
-- This table stores details about the rewards earned by customers based on their credit card spending.
CREATE TABLE CreditCardRewards (
RewardID INT PRIMARY KEY,                    -- Unique identifier for each reward record
CreditCardID INT,                            -- ID of the credit card associated with the reward
PointsEarned INT,                            -- Number of reward points earned for the transaction
TransactionID INT,                           -- ID of the transaction associated with the reward points
RewardDate DATE                              -- Date when the reward points were earned
);

INSERT INTO CreditCardRewards VALUES
(1, 1, 200, 1, '2024-01-05'),
(2, 2, 300, 2, '2024-01-06'),
(3, 3, 150, 3, '2024-01-07'),
(4, 4, 50, 4, '2024-01-08'),
(5, 5, 700, 5, '2024-01-09'),
(6, 6, 150, 6, '2024-01-10'),
(7, 7, 80, 7, '2024-01-11'),
(8, 8, 400, 8, '2024-01-12'),
(9, 9, 300, 9, '2024-01-13'),
(10, 10, 250, 10, '2024-01-14');

-- show table Structure 
SELECT * FROM CreditCardRewards ;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to Debit Card System Database including Customers , Debit Cards , Transactions ,  Payment History  and  Debit Card Rewards --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database Debit_Card_System ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Debit_Card_System ;

use  Debit_Card_System ;


-- Table 1: Customers
-- This table stores details about customers who own debit cards.
CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,                   -- Unique identifier for each customer
FirstName VARCHAR(50),                        -- First name of the customer
LastName VARCHAR(50),                         -- Last name of the customer
Email VARCHAR(50),                           -- Email address of the customer
PhoneNumber VARCHAR(50)                       -- Phone number of the customer
);

INSERT INTO Customers VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '9876543210'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '8765432109'),
(3, 'Alice', 'Johnson', 'alice.johnson@email.com', '7654321098'),
(4, 'Bob', 'Brown', 'bob.brown@email.com', '6543210987'),
(5, 'Charlie', 'Davis', 'charlie.davis@email.com', '5432109876'),
(6, 'David', 'Martinez', 'david.martinez@email.com', '4321098765'),
(7, 'Eve', 'Wilson', 'eve.wilson@email.com', '3210987654'),
(8, 'Frank', 'Moore', 'frank.moore@email.com', '2109876543'),
(9, 'Grace', 'Taylor', 'grace.taylor@email.com', '1098765432'),
(10, 'Henry', 'Anderson', 'henry.anderson@email.com', '9987654321');

-- show table Structure 
SELECT * FROM Customers ;


-- Table 2: DebitCards
-- This table stores details about debit cards owned by customers.
CREATE TABLE DebitCards (
DebitCardID INT PRIMARY KEY,                  -- Unique identifier for each debit card
CustomerID INT,                               -- ID of the customer who owns the debit card
CardNumber TEXT ,                             -- Debit card number (masked for security)
ExpirationDate DATE,                          -- Expiration date of the card
Balance FLOAT                                 -- Current balance on the debit card
);

INSERT INTO DebitCards VALUES
(1, 1, '**** **** **** 1234', '2025-12-31', 10000.00),
(2, 2, '**** **** **** 5678', '2024-08-31', 15000.00),
(3, 3, '**** **** **** 9876', '2026-03-31', 20000.00),
(4, 4, '**** **** **** 3456', '2025-06-30', 12000.00),
(5, 5, '**** **** **** 7890', '2027-01-31', 25000.00),
(6, 6, '**** **** **** 1122', '2024-11-30', 8000.00),
(7, 7, '**** **** **** 3456', '2026-02-28', 30000.00),
(8, 8, '**** **** **** 7654', '2025-05-31', 15000.00),
(9, 9, '**** **** **** 6543', '2024-10-31', 22000.00),
(10, 10, '**** **** **** 8765', '2026-04-30', 10000.00);

-- show table Structure 
SELECT * FROM Debitcards;

-- Table 3: Transactions
-- This table stores details about the transactions made using debit cards.
CREATE TABLE Transactions (
TransactionID INT PRIMARY KEY,               -- Unique identifier for each transaction
DebitCardID INT,                             -- ID of the debit card used for the transaction
TransactionDate DATE,                        -- Date of the transaction
Amount FLOAT ,                        -- Amount spent in the transaction
Merchant VARCHAR(100)                        -- Merchant where the transaction occurred
);

INSERT INTO Transactions VALUES
(1, 1, '2024-01-05', 1500.00, 'Amazon'),
(2, 2, '2024-01-06', 2500.00, 'Flipkart'),
(3, 3, '2024-01-07', 1000.00, 'Zomato'),
(4, 4, '2024-01-08', 500.00, 'Big Bazaar'),
(5, 5, '2024-01-09', 3000.00, 'Myntra'),
(6, 6, '2024-01-10', 800.00, 'BookMyShow'),
(7, 7, '2024-01-11', 1200.00, 'Swiggy'),
(8, 8, '2024-01-12', 4000.00, 'Reliance Digital'),
(9, 9, '2024-01-13', 3500.00, 'Croma'),
(10, 10, '2024-01-14', 1500.00, 'Amazon');

-- show table Structure 
SELECT * FROM Transactions ;

-- Table 4: PaymentHistory
-- This table stores details about the payments made to debit cards by customers.
CREATE TABLE PaymentHistory (
PaymentID INT PRIMARY KEY,                    -- Unique identifier for each payment
DebitCardID INT,                              -- ID of the debit card being paid
PaymentDate DATE,                             -- Date of payment
PaymentAmount FLOAT ,                         -- Amount paid
PaymentMethod VARCHAR(50)                     -- Payment method (e.g., Bank Transfer, UPI)
);

INSERT INTO PaymentHistory VALUES
(1, 1, '2024-01-06', 500.00, 'Bank Transfer'),
(2, 2, '2024-01-07', 1500.00, 'UPI'),
(3, 3, '2024-01-08', 700.00, 'Debit Card'),
(4, 4, '2024-01-09', 200.00, 'Credit Card'),
(5, 5, '2024-01-10', 2500.00, 'Bank Transfer'),
(6, 6, '2024-01-11', 1000.00, 'UPI'),
(7, 7, '2024-01-12', 500.00, 'Bank Transfer'),
(8, 8, '2024-01-13', 1500.00, 'Debit Card'),
(9, 9, '2024-01-14', 2200.00, 'UPI'),
(10, 10, '2024-01-15', 300.00, 'Credit Card');

-- show table Structure 
SELECT * FROM PaymentHistory ;


-- Table 5: DebitCardRewards
-- This table stores details about the rewards earned by customers based on their debit card spending.
CREATE TABLE DebitCardRewards (
RewardID INT PRIMARY KEY,                    -- Unique identifier for each reward record
DebitCardID INT,                             -- ID of the debit card associated with the reward
PointsEarned INT,                            -- Number of reward points earned for the transaction
TransactionID INT,                           -- ID of the transaction associated with the reward points
RewardDate DATE                              -- Date when the reward points were earned
);

INSERT INTO DebitCardRewards VALUES
(1, 1, 50, 1, '2024-01-05'),
(2, 2, 100, 2, '2024-01-06'),
(3, 3, 30, 3, '2024-01-07'),
(4, 4, 10, 4, '2024-01-08'),
(5, 5, 150, 5, '2024-01-09'),
(6, 6, 20, 6, '2024-01-10'),
(7, 7, 40, 7, '2024-01-11'),
(8, 8, 200, 8, '2024-01-12'),
(9, 9, 80, 9, '2024-01-13'),
(10, 10, 60, 10, '2024-01-14');

-- show table Structure 
SELECT * FROM DebitCardRewards;


------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to Byjus Database including Courses , Students , Instructors ,  Enrollments  and  Student Feedback --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database Byjus ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Byjus ;

use  Byjus ;

-- Table 1: Courses
-- This table stores details about the courses available on Byju's platform.
CREATE TABLE Courses (
CourseID INT PRIMARY KEY,                    -- Unique identifier for each course
CourseName VARCHAR(100),                     -- Name of the course
CourseDescription TEXT,                      -- Description of the course
CourseDuration INT,                          -- Duration of the course in hours
CourseFee FLOAT                              -- Fee for the course
);

INSERT INTO Courses VALUES
(1, 'Mathematics for Class 10', 'This course covers all topics of Class 10 Mathematics.', 40, 5000.00),
(2, 'Physics for Class 12', 'Comprehensive study of Class 12 Physics topics and concepts.', 50, 7000.00),
(3, 'English Grammar and Composition', 'This course teaches English grammar, writing, and composition skills.', 30, 4000.00),
(4, 'Chemistry for NEET', 'Preparation for NEET exam with focus on Chemistry subjects.', 80, 12000.00),
(5, 'Data Science with Python', 'Learn the fundamentals of Data Science using Python programming.', 60, 15000.00),
(6, 'Organic Chemistry Basics', 'Understand the basic concepts of organic chemistry.', 35, 6000.00),
(7, 'Machine Learning and AI', 'An introduction to Machine Learning and Artificial Intelligence.', 70, 10000.00),
(8, 'Business Communication Skills', 'Enhance your business communication and presentation skills.', 25, 3500.00),
(9, 'Java Programming for Beginners', 'Learn the basics of Java programming with practical examples.', 45, 5500.00),
(10, 'Digital Marketing Fundamentals', 'Master the basics of digital marketing strategies and tools.', 40, 8000.00);

-- show table Structure 
SELECT * FROM Courses;


-- Table 2: Students
-- This table stores details about the students enrolled in Byju's courses.
CREATE TABLE Students (
StudentID INT PRIMARY KEY,                    -- Unique identifier for each student
FirstName VARCHAR(50),                        -- First name of the student
LastName VARCHAR(50),                         -- Last name of the student
Email VARCHAR(100),                           -- Email address of the student
PhoneNumber VARCHAR(15),                      -- Phone number of the student
DateOfBirth DATE                              -- Date of birth of the student
);

-- show table Structure 
SELECT * FROM Students ;


INSERT INTO Students VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '9876543210', '2005-08-12'),
(2, 'Emma', 'Williams', 'emma.williams@email.com', '8765432109', '2006-02-22'),
(3, 'Olivia', 'Jones', 'olivia.jones@email.com', '7654321098', '2004-04-15'),
(4, 'Liam', 'Smith', 'liam.smith@email.com', '6543210987', '2007-11-30'),
(5, 'Sophia', 'Brown', 'sophia.brown@email.com', '5432109876', '2005-12-04'),
(6, 'Mason', 'Davis', 'mason.davis@email.com', '4321098765', '2006-03-09'),
(7, 'Isabella', 'Martinez', 'isabella.martinez@email.com', '3210987654', '2004-07-27'),
(8, 'James', 'Hernandez', 'james.hernandez@email.com', '2109876543', '2006-09-13'),
(9, 'Amelia', 'Garcia', 'amelia.garcia@email.com', '1098765432', '2005-01-19'),
(10, 'Ethan', 'Lopez', 'ethan.lopez@email.com', '9987654321', '2007-05-24');

-- show table Structure 
SELECT * FROM Students;


-- Table 3: Instructors
-- This table stores details about the instructors teaching the courses on Byju's platform.
CREATE TABLE Instructors (
InstructorID INT PRIMARY KEY,                  -- Unique identifier for each instructor
FirstName VARCHAR(50),                         -- First name of the instructor
LastName VARCHAR(50),                          -- Last name of the instructor
Email VARCHAR(100),                            -- Email address of the instructor
SubjectExpertise VARCHAR(100)                  -- Area of expertise of the instructor
);

INSERT INTO Instructors VALUES
(1, 'Dr. Rajesh', 'Patel', 'rajesh.patel@email.com', 'Mathematics'),
(2, 'Dr. Meera', 'Sharma', 'meera.sharma@email.com', 'Physics'),
(3, 'Mr. Amit', 'Singh', 'amit.singh@email.com', 'English Grammar'),
(4, 'Dr. Nisha', 'Gupta', 'nisha.gupta@email.com', 'Chemistry'),
(5, 'Mr. Ramesh', 'Yadav', 'ramesh.yadav@email.com', 'Data Science'),
(6, 'Dr. Priya', 'Verma', 'priya.verma@email.com', 'Chemistry'),
(7, 'Mr. Kunal', 'Jain', 'kunal.jain@email.com', 'Machine Learning'),
(8, 'Ms. Pooja', 'Arora', 'pooja.arora@email.com', 'Business Communication'),
(9, 'Mr. Sanjay', 'Kumar', 'sanjay.kumar@email.com', 'Java Programming'),
(10, 'Ms. Priya', 'Kaur', 'priya.kaur@email.com', 'Digital Marketing');

-- show table Structure 
SELECT * FROM Instructors;


-- Table 4: Enrollments
-- This table stores details about the students enrolled in courses.
CREATE TABLE Enrollments (
EnrollmentID INT PRIMARY KEY,                  -- Unique identifier for each enrollment record
StudentID INT,                                 -- ID of the student who enrolled
CourseID INT,                                  -- ID of the course the student enrolled in
EnrollmentDate DATE,                           -- Date when the student enrolled
PaymentStatus VARCHAR(20)                      -- Status of the payment (Paid/Unpaid)
);

INSERT INTO Enrollments VALUES
(1, 1, 1, '2024-01-05', 'Paid'),
(2, 2, 2, '2024-01-06', 'Paid'),
(3, 3, 3, '2024-01-07', 'Unpaid'),
(4, 4, 4, '2024-01-08', 'Paid'),
(5, 5, 5, '2024-01-09', 'Paid'),
(6, 6, 6, '2024-01-10', 'Paid'),
(7, 7, 7, '2024-01-11', 'Unpaid'),
(8, 8, 8, '2024-01-12', 'Paid'),
(9, 9, 9, '2024-01-13', 'Paid'),
(10, 10, 10, '2024-01-14', 'Paid');

-- show table Structure 
SELECT * FROM Enrollments ;


-- Table 5: StudentFeedback
-- This table stores feedback provided by students on the courses they have taken.
CREATE TABLE StudentFeedback (
FeedbackID INT PRIMARY KEY,                    -- Unique identifier for each feedback record
EnrollmentID INT,                              -- ID of the enrollment record (links to a student-course enrollment)
FeedbackDate DATE,                             -- Date when the feedback was given
Rating INT,                                    -- Rating provided by the student (1 to 5)
Comments TEXT                                   -- Additional comments provided by the student
);

INSERT INTO StudentFeedback VALUES
(1, 1, '2024-01-06', 5, 'Excellent course. Very helpful and detailed.'),
(2, 2, '2024-01-07', 4, 'Good course, but could use more examples.'),
(3, 3, '2024-01-08', 3, 'The course was okay, but the explanation was a bit difficult to understand.'),
(4, 4, '2024-01-09', 5, 'Very engaging content. Great teaching style!'),
(5, 5, '2024-01-10', 5, 'Loved the course. Very informative and practical.'),
(6, 6, '2024-01-11', 4, 'Good course overall, but the pace was a little fast at times.'),
(7, 7, '2024-01-12', 2, 'The course was not helpful. More clarity needed in explanations.'),
(8, 8, '2024-01-13', 5, 'Great content! Highly recommend this course.'),
(9, 9, '2024-01-14', 3, 'The course was good, but I expected more hands-on exercises.'),
(10, 10, '2024-01-15', 4, 'Good course but some sections could have been more detailed.');

-- show table Structure 
SELECT * FROM StudentFeedback;


------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an Advertisement System Database including Advertisers , Ads , AdClicks ,  AdPayment   and  AdPerformance --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database Advertisement_System ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Advertisement_System ;

use  Advertisement_System ;

-- Table 1: Advertisers
-- This table stores details about the advertisers using the platform for advertisements.
CREATE TABLE Advertisers (
AdvertiserID INT PRIMARY KEY,                    -- Unique identifier for each advertiser
Name VARCHAR(100),                               -- Name of the advertiser
ContactEmail VARCHAR(100),                       -- Contact email address of the advertiser
PhoneNumber VARCHAR(50),                         -- Contact phone number of the advertiser
Address TEXT                                     -- Address of the advertiser
);

INSERT INTO Advertisers VALUES
(1, 'TechCorp', 'techcorp@email.com', '1234567890', '123 Tech Street, Silicon Valley'),
(2, 'FashionMart', 'fashionmart@email.com', '2345678901', '456 Fashion Road, New York'),
(3, 'AutoWorld', 'autoworld@email.com', '3456789012', '789 Auto Boulevard, Los Angeles'),
(4, 'Foodies', 'foodies@email.com', '4567890123', '123 Food Lane, Chicago'),
(5, 'BookWorms', 'bookworms@email.com', '5678901234', '321 Book Avenue, Boston'),
(6, 'GameZone', 'gamezone@email.com', '6789012345', '456 Game Street, San Francisco'),
(7, 'HealthHub', 'healthhub@email.com', '7890123456', '987 Health Road, Miami'),
(8, 'HomeGoods', 'homegoods@email.com', '8901234567', '654 Home Lane, Dallas'),
(9, 'ElectroTech', 'electrotech@email.com', '9012345678', '321 Electro Drive, Seattle'),
(10, 'LuxuryLiving', 'luxuryliving@email.com', '0123456789', '123 Luxury Road, Las Vegas');

-- show table Structure 
SELECT * FROM Advertisers ;

-- Table 2: Ads
-- This table stores details about the ads being created for campaigns.
CREATE TABLE Ads (
AdID INT PRIMARY KEY,                           -- Unique identifier for each ad
AdvertiserID INT,                               -- ID of the advertiser creating the ad
AdType VARCHAR(50),                             -- Type of the ad (e.g., Banner, Video, Pop-up)
AdContent TEXT,                                 -- Content or description of the ad
AdStartDate DATE,                               -- Start date of the ad campaign
AdEndDate DATE                                  -- End date of the ad campaign
);

INSERT INTO Ads VALUES
(1, 1, 'Banner', 'TechCorp Sale! 50% off on all gadgets.', '2024-01-05', '2024-01-15'),
(2, 2, 'Video', 'New collection of winter fashion now available.', '2024-01-06', '2024-01-20'),
(3, 3, 'Banner', 'AutoWorld – Best Cars for the New Year.', '2024-01-07', '2024-01-21'),
(4, 4, 'Pop-up', 'Foodies: Get your favorite meals delivered at 20% off.', '2024-01-08', '2024-01-22'),
(5, 5, 'Banner', 'BookWorms: 25% off on all books this month.', '2024-01-09', '2024-01-23'),
(6, 6, 'Video', 'GameZone: New Game Releases – Don’t miss out!', '2024-01-10', '2024-01-24'),
(7, 7, 'Banner', 'HealthHub: Your health is our priority.', '2024-01-11', '2024-01-25'),
(8, 8, 'Pop-up', 'HomeGoods: Discount on furniture for the new year.', '2024-01-12', '2024-01-26'),
(9, 9, 'Banner', 'ElectroTech: Latest smartphones at unbeatable prices.', '2024-01-13', '2024-01-27'),
(10, 10, 'Video', 'LuxuryLiving: Find your dream home today.', '2024-01-14', '2024-01-28');

-- show table Structure 
SELECT * FROM Ads ;

-- Table 3: AdClicks
-- This table stores details about the clicks made on the ads by users.
CREATE TABLE AdClicks (
ClickID INT PRIMARY KEY,                         -- Unique identifier for each click
AdID INT,                                       -- ID of the ad that was clicked
UserID INT,                                     -- ID of the user who clicked the ad
ClickDate DATE,                                  -- Date when the ad was clicked
ClickTime TIME                                   -- Time when the ad was clicked
);

INSERT INTO AdClicks VALUES
(1, 1, 101, '2024-01-05', '14:30:00'),
(2, 2, 102, '2024-01-06', '15:45:00'),
(3, 3, 103, '2024-01-07', '16:10:00'),
(4, 4, 104, '2024-01-08', '17:20:00'),
(5, 5, 105, '2024-01-09', '18:25:00'),
(6, 6, 106, '2024-01-10', '19:30:00'),
(7, 7, 107, '2024-01-11', '20:00:00'),
(8, 8, 108, '2024-01-12', '20:35:00'),
(9, 9, 109, '2024-01-13', '21:10:00'),
(10, 10, 110, '2024-01-14', '22:15:00');

-- show table Structure 
SELECT * FROM AdClicks ;

-- Table 4: AdPayment
-- This table stores the payment details made by advertisers for their ads.
CREATE TABLE AdPayment (
PaymentID INT PRIMARY KEY,                        -- Unique identifier for each payment
AdvertiserID INT,                                 -- ID of the advertiser who made the payment
AdID INT,                                         -- ID of the ad for which payment was made
PaymentAmount FLOAT ,                             -- Amount paid for the ad campaign
PaymentDate DATE,                                 -- Date when the payment was made
PaymentStatus VARCHAR(20)                         -- Status of the payment (e.g., Paid, Pending)
);

INSERT INTO AdPayment VALUES
(1, 1, 1, 5000.00, '2024-01-05', 'Paid'),
(2, 2, 2, 4000.00, '2024-01-06', 'Paid'),
(3, 3, 3, 6000.00, '2024-01-07', 'Paid'),
(4, 4, 4, 3000.00, '2024-01-08', 'Paid'),
(5, 5, 5, 2500.00, '2024-01-09', 'Paid'),
(6, 6, 6, 7000.00, '2024-01-10', 'Paid'),
(7, 7, 7, 5500.00, '2024-01-11', 'Pending'),
(8, 8, 8, 3500.00, '2024-01-12', 'Paid'),
(9, 9, 9, 8000.00, '2024-01-13', 'Paid'),
(10, 10, 10, 7500.00, '2024-01-14', 'Paid');

-- show table Structure 
SELECT * FROM AdPayment;

-- Table 5: AdPerformance
-- This table stores the performance metrics for each ad campaign.
CREATE TABLE AdPerformance (
PerformanceID INT PRIMARY KEY,                    -- Unique identifier for each performance record
AdID INT,                                         -- ID of the ad for which performance is being tracked
Impressions INT,                                  -- Number of impressions the ad received
Clicks INT,                                       -- Number of clicks the ad received
Conversions INT,                                  -- Number of conversions from the ad
CTR FLOAT ,                                       -- Click-through rate (CTR) in percentage
ConversionRate FLOAT                              -- Conversion rate in percentage
);

INSERT INTO AdPerformance VALUES
(1, 1, 10000, 150, 100, 1.50, 1.00),
(2, 2, 12000, 180, 120, 1.50, 1.00),
(3, 3, 15000, 200, 150, 1.33, 1.00),
(4, 4, 8000, 100, 80, 1.25, 1.00),
(5, 5, 9000, 120, 90, 1.33, 1.00),
(6, 6, 14000, 250, 200, 1.79, 1.43),
(7, 7, 5000, 60, 50, 1.20, 0.83),
(8, 8, 11000, 130, 100, 1.18, 0.91),
(9, 9, 16000, 300, 250, 1.88, 1.56),
(10, 10, 13000, 220, 180, 1.69, 1.38);

-- show table Structure 
SELECT * FROM AdPerformance ;


------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an Railway Management System DataBase including Trains , Stations , Ticket Bookings ,  Train Schedules  and  Train Staff --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database Railway_Management_System  ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Railway_Management_System ;

use  Railway_Management_System ;

-- Table 1: Trains
-- This table stores details about the trains in the railway system.
CREATE TABLE Trains (
TrainID INT PRIMARY KEY,                        -- Unique identifier for each train
TrainName VARCHAR(100),                         -- Name of the train
TrainType VARCHAR(50),                          -- Type of the train (e.g., Express, Local)
Capacity INT,                                   -- Total capacity of the train (number of seats)
OperatingStatus VARCHAR(20)                     -- Current operating status of the train (e.g., Active, Under Maintenance)
);

INSERT INTO Trains VALUES
(1, 'Shatabdi Express', 'Express', 500, 'Active'),
(2, 'Rajdhani Express', 'Superfast', 400, 'Active'),
(3, 'Duronto Express', 'Express', 600, 'Under Maintenance'),
(4, 'Deccan Queen', 'Local', 300, 'Active'),
(5, 'Trivandrum Rajdhani', 'Superfast', 450, 'Active'),
(6, 'Mysore Express', 'Local', 350, 'Active'),
(7, 'Howrah Express', 'Express', 550, 'Under Maintenance'),
(8, 'Mumbai Duronto', 'Superfast', 500, 'Active'),
(9, 'Golden Temple Mail', 'Express', 600, 'Active'),
(10, 'Tamil Nadu Express', 'Superfast', 400, 'Active');

-- show table Structure 
SELECT * FROM  Trains ;

-- Table 2: Stations
-- This table stores details about the stations in the railway system.
CREATE TABLE Stations (
StationID INT PRIMARY KEY,                       -- Unique identifier for each station
StationName VARCHAR(100),                        -- Name of the station
StationLocation TEXT ,                    -- Location of the station (city/region)
Facilities TEXT                          -- Facilities available at the station (e.g., WiFi, Food Court)
);

INSERT INTO Stations VALUES
(1, 'New Delhi', 'New Delhi, Delhi', 'WiFi, Waiting Lounge, Food Court'),
(2, 'Mumbai CST', 'Mumbai, Maharashtra', 'WiFi, ATM, Food Court'),
(3, 'Howrah Junction', 'Kolkata, West Bengal', 'WiFi, Waiting Lounge, Restaurant'),
(4, 'Chennai Central', 'Chennai, Tamil Nadu', 'WiFi, Food Court, Medical Center'),
(5, 'Bangalore City', 'Bangalore, Karnataka', 'WiFi, Food Court, ATM'),
(6, 'Kolkata Howrah', 'Kolkata, West Bengal', 'WiFi, Waiting Lounge'),
(7, 'Hyderabad Deccan', 'Hyderabad, Telangana', 'WiFi, Waiting Lounge, Food Court'),
(8, 'Pune Junction', 'Pune, Maharashtra', 'WiFi, Food Court'),
(9, 'Lucknow Charbagh', 'Lucknow, Uttar Pradesh', 'WiFi, Waiting Lounge'),
(10, 'Agra Cantt', 'Agra, Uttar Pradesh', 'WiFi, Medical Center');

-- show table Structure 
SELECT * FROM Stations ;


-- Table 3: TicketBookings
-- This table stores information about ticket bookings made by passengers.
CREATE TABLE TicketBookings (
BookingID INT PRIMARY KEY,                       -- Unique identifier for each ticket booking
TrainID INT,                                     -- ID of the train for which the ticket is booked
PassengerName VARCHAR(100),                      -- Name of the passenger
BookingDate DATE,                                -- Date when the ticket was booked
SeatNumber INT,                                  -- Seat number assigned to the passenger
Fare FLOAT                                       -- Price of the ticket
);

INSERT INTO TicketBookings VALUES
(1, 1, 'John Doe', '2024-01-05', 15, 1500.00),
(2, 2, 'Jane Smith', '2024-01-06', 20, 1800.00),
(3, 3, 'Alex Johnson', '2024-01-07', 5, 1200.00),
(4, 4, 'Michael Brown', '2024-01-08', 30, 900.00),
(5, 5, 'Emily Davis', '2024-01-09', 10, 1600.00),
(6, 6, 'David Wilson', '2024-01-10', 25, 800.00),
(7, 7, 'Sarah Taylor', '2024-01-11', 8, 1400.00),
(8, 8, 'Robert Lee', '2024-01-12', 12, 1700.00),
(9, 9, 'Olivia Harris', '2024-01-13', 18, 1900.00),
(10, 10, 'Sophia Clark', '2024-01-14', 22, 1300.00);

-- show table Structure 
SELECT * FROM TicketBookings ;


-- Table 4: TrainSchedules
-- This table stores the departure and arrival times for each train.
CREATE TABLE TrainSchedules (
ScheduleID INT PRIMARY KEY,                       -- Unique identifier for each schedule record
TrainID INT,                                      -- ID of the train for which the schedule is set
DepartureStationID INT,                          -- Departure station ID
ArrivalStationID INT,                            -- Arrival station ID
DepartureTime TIME,                              -- Departure time from the station
ArrivalTime TIME                                 -- Arrival time at the station
);

INSERT INTO TrainSchedules VALUES
(1, 1, 1, 2, '06:00:00', '10:00:00'),
(2, 2, 2, 3, '07:00:00', '11:00:00'),
(3, 3, 3, 4, '08:00:00', '12:00:00'),
(4, 4, 4, 5, '09:00:00', '13:00:00'),
(5, 5, 5, 6, '10:00:00', '14:00:00'),
(6, 6, 6, 7, '11:00:00', '15:00:00'),
(7, 7, 7, 8, '12:00:00', '16:00:00'),
(8, 8, 8, 9, '13:00:00', '17:00:00'),
(9, 9, 9, 10, '14:00:00', '18:00:00'),
(10, 10, 10, 1, '15:00:00', '19:00:00');

-- show table Structure 
SELECT * FROM TrainSchedules ; 


-- Table 5: TrainStaff
-- This table stores information about the staff assigned to each train.
CREATE TABLE TrainStaff (
StaffID INT PRIMARY KEY,                         -- Unique identifier for each staff member
TrainID INT,                                     -- ID of the train the staff is assigned to
StaffName VARCHAR(100),                          -- Name of the staff member
Role VARCHAR(50),                                -- Role of the staff member (e.g., Conductor, Driver)
ShiftStartTime TIME,                             -- Shift start time
ShiftEndTime TIME                                -- Shift end time
);

INSERT INTO TrainStaff VALUES
(1, 1, 'John Adams', 'Conductor', '05:00:00', '13:00:00'),
(2, 1, 'Mary Johnson', 'Driver', '05:30:00', '13:30:00'),
(3, 2, 'David Smith', 'Conductor', '06:00:00', '14:00:00'),
(4, 2, 'Patricia Brown', 'Driver', '06:30:00', '14:30:00'),
(5, 3, 'James Williams', 'Conductor', '07:00:00', '15:00:00'),
(6, 3, 'Linda Davis', 'Driver', '07:30:00', '15:30:00'),
(7, 4, 'Robert Garcia', 'Conductor', '08:00:00', '16:00:00'),
(8, 4, 'Susan Miller', 'Driver', '08:30:00', '16:30:00'),
(9, 5, 'Joseph Martinez', 'Conductor', '09:00:00', '17:00:00'),
(10, 5, 'Dorothy Wilson', 'Driver', '09:30:00', '17:30:00');

-- show table Structure 
SELECT * FROM TrainStaff;
  

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an Transport Management System Database including Vehicles , Drivers , Routes ,  Vehicle Maintenance  and  Trip Schedules --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database  Transport_Management_System ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  Transport_Management_System ;

use  Transport_Management_System ;

-- Table 1: Vehicles
-- This table stores details about the vehicles used in the transport system.
CREATE TABLE Vehicles (
VehicleID INT PRIMARY KEY,                        -- Unique identifier for each vehicle
VehicleNumber VARCHAR(50),                        -- Registration number of the vehicle
VehicleType VARCHAR(50),                          -- Type of the vehicle (e.g., Bus, Van, Truck)
Capacity INT,                                     -- Capacity of the vehicle (number of passengers or cargo weight)
FuelType VARCHAR(50),                             -- Fuel type used by the vehicle (e.g., Diesel, Petrol, Electric)
Status VARCHAR(20)                                -- Current status of the vehicle (e.g., Active, Under Maintenance)
);

INSERT INTO Vehicles VALUES
(1, 'MH01AB1234', 'Bus', 50, 'Diesel', 'Active'),
(2, 'MH02CD5678', 'Van', 12, 'Diesel', 'Active'),
(3, 'MH03EF9101', 'Truck', 10, 'Petrol', 'Under Maintenance'),
(4, 'MH04GH1122', 'Bus', 40, 'Diesel', 'Active'),
(5, 'MH05IJ2233', 'Van', 14, 'Petrol', 'Active'),
(6, 'MH06KL3344', 'Bus', 60, 'Electric', 'Active'),
(7, 'MH07MN4455', 'Truck', 8, 'Diesel', 'Active'),
(8, 'MH08OP5566', 'Bus', 45, 'Diesel', 'Under Maintenance'),
(9, 'MH09QR6677', 'Van', 10, 'Electric', 'Active'),
(10, 'MH10ST7788', 'Truck', 20, 'Petrol', 'Active');

-- show table Structure 
SELECT * FROM Vehicles ;

-- Table 2: Drivers
-- This table stores details about the drivers in the transport system.
CREATE TABLE Drivers (
DriverID INT PRIMARY KEY,                        -- Unique identifier for each driver
DriverName VARCHAR(100),                         -- Name of the driver
Age INT,                                         -- Age of the driver
LicenseNumber VARCHAR(50),                       -- Driving license number
VehicleID INT,                                   -- ID of the vehicle assigned to the driver
EmploymentStatus VARCHAR(20)                     -- Employment status (e.g., Active, On Leave)
);

INSERT INTO Drivers VALUES
(1, 'John Adams', 35, 'DL123456', 1, 'Active'),
(2, 'Sarah Brown', 42, 'DL987654', 2, 'Active'),
(3, 'Michael Green', 50, 'DL112233', 3, 'Active'),
(4, 'James White', 28, 'DL445566', 4, 'Active'),
(5, 'Emily Taylor', 30, 'DL778899', 5, 'Active'),
(6, 'Robert Black', 40, 'DL223344', 6, 'On Leave'),
(7, 'David Clark', 38, 'DL667788', 7, 'Active'),
(8, 'Olivia Harris', 29, 'DL990011', 8, 'Active'),
(9, 'Matthew Lewis', 45, 'DL334455', 9, 'Active'),
(10, 'Sophia Scott', 32, 'DL556677', 10, 'Active');

-- show table Structure 
SELECT * FROM Drivers ;

-- Table 3: Routes
-- This table stores the details about the routes taken by the vehicles.
CREATE TABLE Routes (
RouteID INT PRIMARY KEY,                          -- Unique identifier for each route
RouteName VARCHAR(100),                           -- Name of the route (e.g., Route 1, Route A)
StartingPoint VARCHAR(100),                       -- Starting location of the route
EndingPoint VARCHAR(100),                         -- Ending location of the route
Distance INT,                                     -- Distance of the route in kilometers
Duration TIME                                    -- Duration of the route (e.g., 2 hours)
);

INSERT INTO Routes VALUES
(1, 'Route A', 'Mumbai', 'Pune', 150, '02:30:00'),
(2, 'Route B', 'Delhi', 'Agra', 200, '03:00:00'),
(3, 'Route C', 'Chennai', 'Bangalore', 300, '05:00:00'),
(4, 'Route D', 'Hyderabad', 'Nagpur', 500, '08:00:00'),
(5, 'Route E', 'Kolkata', 'Kharagpur', 150, '02:00:00'),
(6, 'Route F', 'Pune', 'Goa', 200, '04:00:00'),
(7, 'Route G', 'Lucknow', 'Kanpur', 150, '03:00:00'),
(8, 'Route H', 'Bangalore', 'Hyderabad', 600, '10:00:00'),
(9, 'Route I', 'Chennai', 'Madurai', 350, '06:00:00'),
(10, 'Route J', 'Delhi', 'Jaipur', 270, '04:30:00');

-- show table Structure 
SELECT * FROM Routes ;

-- Table 4: VehicleMaintenance
-- This table stores details about the maintenance schedules and records for each vehicle.
CREATE TABLE VehicleMaintenance (
MaintenanceID INT PRIMARY KEY,                     -- Unique identifier for each maintenance record
VehicleID INT,                                     -- ID of the vehicle being maintained
MaintenanceDate DATE,                              -- Date of the maintenance
MaintenanceType VARCHAR(100),                      -- Type of maintenance (e.g., Oil Change, Engine Repair)
Cost FLOAT,                               -- Cost of the maintenance
MaintenanceStatus VARCHAR(20)                      -- Status of the maintenance (e.g., Completed, Pending)
);

INSERT INTO VehicleMaintenance VALUES
(1, 1, '2024-01-01', 'Engine Check', 1500.00, 'Completed'),
(2, 2, '2024-01-02', 'Tire Replacement', 800.00, 'Completed'),
(3, 3, '2024-01-03', 'Oil Change', 400.00, 'Completed'),
(4, 4, '2024-01-04', 'Engine Check', 1200.00, 'Pending'),
(5, 5, '2024-01-05', 'Brake Check', 500.00, 'Completed'),
(6, 6, '2024-01-06', 'Tire Replacement', 900.00, 'Pending'),
(7, 7, '2024-01-07', 'Engine Check', 1300.00, 'Completed'),
(8, 8, '2024-01-08', 'Oil Change', 450.00, 'Completed'),
(9, 9, '2024-01-09', 'Brake Check', 600.00, 'Completed'),
(10, 10, '2024-01-10', 'Oil Change', 400.00, 'Pending');

-- show table Structure 
SELECT * FROM VehicleMaintenance;

-- Table 5: TripSchedules
-- This table stores details about the scheduled trips for each vehicle.
CREATE TABLE TripSchedules (
TripID INT PRIMARY KEY,                           -- Unique identifier for each trip
VehicleID INT,                                    -- ID of the vehicle for the trip
RouteID INT,                                      -- ID of the route being taken
DepartureTime DATETIME,                           -- Scheduled departure date and time
ArrivalTime DATETIME,                             -- Scheduled arrival date and time
TripStatus VARCHAR(20)                            -- Status of the trip (e.g., Scheduled, Completed, Delayed)
);

INSERT INTO TripSchedules VALUES
(1, 1, 1, '2024-02-01 08:00:00', '2024-02-01 10:30:00', 'Scheduled'),
(2, 2, 2, '2024-02-01 09:00:00', '2024-02-01 12:00:00', 'Scheduled'),
(3, 3, 3, '2024-02-01 10:00:00', '2024-02-01 13:00:00', 'Scheduled'),
(4, 4, 4, '2024-02-01 11:00:00', '2024-02-01 15:00:00', 'Scheduled'),
(5, 5, 5, '2024-02-01 12:00:00', '2024-02-01 14:00:00', 'Scheduled'),
(6, 6, 6, '2024-02-01 13:00:00', '2024-02-01 17:00:00', 'Scheduled'),
(7, 7, 7, '2024-02-01 14:00:00', '2024-02-01 18:00:00', 'Scheduled'),
(8, 8, 8, '2024-02-01 15:00:00', '2024-02-01 19:00:00', 'Scheduled'),
(9, 9, 9, '2024-02-01 16:00:00', '2024-02-01 18:30:00', 'Scheduled'),
(10, 10, 10, '2024-02-01 17:00:00', '2024-02-01 21:00:00', 'Scheduled');

-- show table Structure 
SELECT * FROM TripSchedules ;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to a Factory Management System including Factory Details, Machinery, Production, Employees, and Raw Materials --
-- Author: Mueez Mapari --

-- Create the database if it does not already exist
CREATE DATABASE IF NOT EXISTS Factory_Management_System;

-- Use the created database
USE Factory_Management_System;

-- Table 1: FactoryDetails
-- This table stores details about the factories.
CREATE TABLE FactoryDetails (
FactoryID INT PRIMARY KEY, -- Unique identifier for the factory
FactoryName VARCHAR(100), -- Name of the factory
Location TEXT , -- Location of the factory
EstablishedYear INT, -- Year when the factory was established
EmployeesCount INT, -- Total number of employees in the factory
AnnualRevenue FLOAT  -- Annual revenue generated by the factory
);


-- Inserting sample data into FactoryDetails table
INSERT INTO FactoryDetails VALUES
(1, 'SteelCo', 'Mumbai', 1998, 500, 25000000.00),
(2, 'AutoMakers', 'Pune', 2005, 300, 15000000.00),
(3, 'TextileWorks', 'Surat', 1985, 400, 20000000.00),
(4, 'FoodFactory', 'Delhi', 2010, 600, 30000000.00),
(5, 'PlasticProducers', 'Chennai', 1995, 200, 12000000.00),
(6, 'TechAssembly', 'Hyderabad', 2015, 450, 22000000.00),
(7, 'PaperMills', 'Kolkata', 1980, 350, 18000000.00),
(8, 'GlassMakers', 'Ahmedabad', 1990, 250, 14000000.00),
(9, 'RubberPlant', 'Bangalore', 2012, 500, 23000000.00),
(10, 'MetalForge', 'Jaipur', 2000, 400, 21000000.00);

-- Show table structure for FactoryDetails table
SELECT * FROM FactoryDetails;

-- Table 2: Machinery
-- This table stores details about the machinery in the factories.
CREATE TABLE Machinery (
MachineID INT PRIMARY KEY, -- Unique identifier for the machine
MachineName VARCHAR(100), -- Name of the machine
FactoryID INT, -- Foreign key referencing the FactoryID in FactoryDetails table
PurchaseYear INT, -- Year when the machine was purchased
Cost FLOAT , -- Purchase cost of the machine
MaintenanceCost FLOAT -- Maintenance cost of the machine
);

-- Inserting sample data into Machinery table
INSERT INTO Machinery VALUES
(1, 'Lathe Machine', 1, 2018, 1000000.00, 50000.00),
(2, 'CNC Machine', 2, 2019, 1500000.00, 60000.00),
(3, 'Boiler', 3, 2016, 1200000.00, 40000.00),
(4, 'Hydraulic Press', 4, 2020, 2000000.00, 80000.00),
(5, 'Textile Loom', 3, 2015, 800000.00, 30000.00),
(6, '3D Printer', 6, 2021, 2500000.00, 100000.00),
(7, 'Drilling Machine', 5, 2017, 900000.00, 35000.00),
(8, 'Assembly Line', 7, 2018, 3000000.00, 150000.00),
(9, 'Injection Moulding', 8, 2019, 1700000.00, 70000.00),
(10, 'Furnace', 10, 2020, 2200000.00, 90000.00);

-- Show table structure for Machinery table
SELECT * FROM Machinery;

-- Table 3: Production
-- This table stores details about the production in the factories.
CREATE TABLE Production (
ProductionID INT PRIMARY KEY, -- Unique identifier for the production record
FactoryID INT, -- Foreign key referencing the FactoryID in FactoryDetails table
ProductName VARCHAR(100), -- Name of the product produced
UnitsProduced INT, -- Number of units produced
ProductionCost FLOAT , -- Total cost of production
RevenueGenerated FLOAT -- Total revenue generated from the produced units
);

-- Inserting sample data into Production table
INSERT INTO Production VALUES
(1, 1, 'Steel Rods', 1000, 500000.00, 700000.00),
(2, 2, 'Car Parts', 800, 300000.00, 500000.00),
(3, 3, 'Textiles', 1500, 400000.00, 600000.00),
(4, 4, 'Snacks', 2000, 500000.00, 800000.00),
(5, 5, 'Plastic Bottles', 1800, 350000.00, 550000.00),
(6, 6, 'Circuit Boards', 1200, 600000.00, 900000.00),
(7, 7, 'Paper Rolls', 1600, 450000.00, 700000.00),
(8, 8, 'Glass Sheets', 1400, 400000.00, 650000.00),
(9, 9, 'Rubber Tyres', 1100, 500000.00, 750000.00),
(10, 10, 'Metal Frames', 1300, 550000.00, 800000.00);

-- Show table structure for Production table
SELECT * FROM Production;

-- Table 4: Employees
-- This table stores details about the employees working in the factories.
CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY, -- Unique identifier for the employee
FactoryID INT, -- Foreign key referencing the FactoryID in FactoryDetails table
Name VARCHAR(100), -- Name of the employee
Designation VARCHAR(100), -- Designation of the employee
Salary FLOAT , -- Salary of the employee
JoiningDate DATE -- Date when the employee joined the factory
);

-- Inserting sample data into Employees table
INSERT INTO Employees VALUES
(1, 1, 'Ramesh Kumar', 'Manager', 50000.00, '2020-01-15'),
(2, 2, 'Suresh Singh', 'Engineer', 40000.00, '2019-03-10'),
(3, 3, 'Pooja Mehta', 'Supervisor', 35000.00, '2018-05-20'),
(4, 4, 'Amit Verma', 'Operator', 25000.00, '2021-06-15'),
(5, 5, 'Neha Sharma', 'Clerk', 20000.00, '2020-09-01'),
(6, 6, 'Rajesh Gupta', 'Technician', 30000.00, '2019-12-10'),
(7, 7, 'Priya Kapoor', 'HR', 45000.00, '2017-07-25'),
(8, 8, 'Vikas Yadav', 'Engineer', 40000.00, '2018-08-15'),
(9, 9, 'Meena Rathi', 'Supervisor', 35000.00, '2019-10-20'),
(10, 10, 'Sanjay Tiwari', 'Manager', 50000.00, '2020-02-05');

-- Show table structure for Employees table
SELECT * FROM Employees;

-- Table 5: RawMaterials
-- This table stores details about the raw materials used in the factories.
CREATE TABLE RawMaterials (
MaterialID INT PRIMARY KEY, -- Unique identifier for the raw material
MaterialName VARCHAR(100), -- Name of the raw material
FactoryID INT, -- Name of factory id
SupplierName VARCHAR(100), -- Name of the supplier for the raw material
Quantity INT, -- Quantity of the raw material in stock
CostPerUnit FLOAT -- Cost per unit of the raw material
);

-- Inserting sample data into RawMaterials table
INSERT INTO RawMaterials VALUES
(1, 'Steel', 1, 'Tata Steel', 500, 50.00),
(2, 'Rubber', 9, 'Apollo Suppliers', 300, 70.00),
(3, 'Fabric', 3, 'Raymond Textiles', 800, 30.00),
(4, 'Plastic', 5, 'PolyProducers', 600, 40.00),
(5, 'Paper', 7, 'JK Paper Mills', 900, 20.00),
(6, 'Glass', 8, 'Saint-Gobain', 400, 60.00),
(7, 'Metal', 10, 'Hindalco', 350, 55.00),
(8, 'Electronics', 6, 'Circuit Supplies Inc.', 450, 80.00),
(9, 'Wheat', 4, 'Agro Suppliers', 1000, 25.00),
(10, 'Wood', 3, 'Timber Works', 750, 35.00);

-- Show table structure for RawMaterials table
SELECT * FROM RawMaterials;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to a Shopping Mall System Database including MallDetails, ShopDetails, EmployeeDetails, ParkingDetails, and EventDetails --
-- Author : Mueez Mapari  -- 

-- database related queries --

CREATE DATABASE IF NOT EXISTS Shopping_Mall ;
USE Shopping_Mall ;

-- MallDetails Table --
CREATE TABLE MallDetails (
MallID INT PRIMARY KEY,                  -- Unique identifier for each mall
MallName VARCHAR(100),                    -- Name of the mall
Location TEXT ,                    -- Location where the mall is situated
EstablishedYear INT,                      -- Year the mall was established
ShopsCount INT,                           -- Number of shops in the mall
AnnualRevenue FLOAT                      -- Annual revenue of the mall
);

INSERT INTO MallDetails VALUES
('1', 'City Center Mall', 'Mumbai', 2010, 150, 50000000.00),
(2, 'Metro Mall', 'Delhi', 2012, 200, 70000000.00),
(3, 'Galaxy Mall', 'Chennai', 2005, 180, 60000000.00),
(4, 'Star Mall', 'Pune', 2018, 220, 80000000.00),
(5, 'Skyline Mall', 'Bangalore', 2015, 250, 90000000.00),
(6, 'Sunrise Mall', 'Kolkata', 2000, 100, 40000000.00),
(7, 'Grand Mall', 'Ahmedabad', 2008, 120, 45000000.00),
(8, 'Paradise Mall', 'Hyderabad', 2017, 140, 55000000.00),
(9, 'Elite Mall', 'Surat', 2013, 160, 65000000.00),
(10, 'Infinity Mall', 'Jaipur', 2020, 300, 100000000.00);

-- Show Table Structure for MallDetails
SELECT * FROM MallDetails;

-- ShopDetails Table --
CREATE TABLE ShopDetails (
ShopID INT PRIMARY KEY,                   -- Unique identifier for each shop
MallID INT,                               -- Name of Mallid
ShopName VARCHAR(100),                     -- Name of the shop
Category VARCHAR(50),                      -- Category of goods sold in the shop
OwnerName VARCHAR(100),                    -- Name of the owner of the shop
MonthlyRent FLOAT                          -- Monthly rent of the shop
);

INSERT INTO ShopDetails VALUES
(1, 1, 'Fashion Point', 'Clothing', 'Ramesh Gupta', 20000.00),
(2, 2, 'Tech World', 'Electronics', 'Suresh Yadav', 30000.00),
(3, 3, 'Food Fiesta', 'Food Court', 'Pooja Sharma', 25000.00),
(4, 4, 'Fitness Hub', 'Gym', 'Amit Mehta', 40000.00),
(5, 5, 'Book Haven', 'Books', 'Neha Verma', 15000.00),
(6, 6, 'Toy Land', 'Toys', 'Rajesh Singh', 18000.00),
(7, 7, 'Jewels Gallery', 'Jewellery', 'Priya Jain', 50000.00),
(8, 8, 'Home Decor', 'Furniture', 'Vikas Kapoor', 35000.00),
(9, 9, 'Beauty Zone', 'Cosmetics', 'Meena Tiwari', 22000.00),
(10, 10, 'Game World', 'Entertainment', 'Sanjay Das', 28000.00);

-- Show Table Structure for ShopDetails
SELECT * FROM ShopDetails ;

-- EmployeeDetails Table --
CREATE TABLE EmployeeDetails (
EmployeeID INT PRIMARY KEY,                -- Unique identifier for each employee
MallID INT,                                -- Name of Mallid
Name VARCHAR(100),                         -- Name of the employee
Role VARCHAR(50),                          -- Role or designation of the employee
Salary FLOAT ,                             -- Salary of the employee
JoiningDate DATE                           -- Date the employee joined
);

INSERT INTO EmployeeDetails VALUES
(1, 1, 'Anita Kumar', 'Manager', 40000.00, '2020-01-15'),
(2, 2, 'Rajiv Sharma', 'Security', 20000.00, '2019-03-10'),
(3, 3, 'Neha Jain', 'Cleaning Staff', 15000.00, '2018-05-20'),
(4, 4, 'Amit Verma', 'Maintenance', 25000.00, '2021-06-15'),
(5, 5, 'Pooja Kapoor', 'Customer Service', 22000.00, '2020-09-01'),
(6, 6, 'Rajesh Gupta', 'Accountant', 30000.00, '2019-12-10'),
(7, 7, 'Sanjay Singh', 'Manager', 45000.00, '2017-07-25'),
(8, 8, 'Ravi Yadav', 'Security', 20000.00, '2018-08-15'),
(9, 9, 'Kavita Rathi', 'Supervisor', 35000.00, '2019-10-20'),
(10, 10, 'Shyam Tiwari', 'Manager', 50000.00, '2020-02-05');

-- Show Table Structure for EmployeeDetails
SELECT * FROM EmployeeDetails;

-- ParkingDetails Table --
CREATE TABLE ParkingDetails (
ParkingID INT PRIMARY KEY,                 -- Unique identifier for each parking lot
MallID INT,                                -- Name of Mallid
Capacity BIGINT,                              -- Number of parking spots available
HourlyRate FLOAT ,                         -- Hourly rate for parking
TotalRevenue FLOAT ,                       -- Total revenue generated from parking
SecurityStaffCount INT                     -- Number of security staff at the parking area
);

INSERT INTO ParkingDetails VALUES
(1, 1, 500, 10.00, 100000.00, 10),
(2, 2, 600, 12.00, 120000.00, 12),
(3, 3, 400, 8.00, 80000.00, 8),
(4, 4, 700, 15.00, 150000.00, 15),
(5, 5, 800, 20.00, 200000.00, 20),
(6, 6, 300, 7.00, 70000.00, 7),
(7, 7, 350, 9.00, 90000.00, 9),
(8, 8, 450, 11.00, 110000.00, 11),
(9, 9, 500, 14.00, 140000.00, 14),
(10, 10, 1000, 25.00, 250000.00, 25);

-- Show Table Structure for ParkingDetails
SELECT * FROM ParkingDetails;

-- EventDetails Table --
CREATE TABLE EventDetails (
EventID INT PRIMARY KEY,                   -- Unique identifier for each event
MallID INT,                                -- Name of Mallid
EventName VARCHAR(100),                    -- Name of the event
EventDate DATE,                            -- Date of the event
OrganizerName VARCHAR(100),                -- Name of the event organizer
EstimatedCost FLOAT                        -- Estimated cost of organizing the event
);

INSERT INTO EventDetails VALUES
(1, 1, 'Christmas Carnival', '2024-12-25', 'Ramesh Kumar', 50000.00),
(2, 2, 'New Year Bash', '2024-12-31', 'Suresh Gupta', 100000.00),
(3, 3, 'Diwali Dhamaka', '2024-11-10', 'Neha Sharma', 75000.00),
(4, 4, 'Summer Sale Fest', '2024-05-15', 'Amit Verma', 60000.00),
(5, 5, 'Food Fest', '2024-08-20', 'Priya Kapoor', 80000.00),
(6, 6, 'Fashion Show', '2024-09-10', 'Rajesh Singh', 120000.00),
(7, 7, 'Tech Expo', '2024-10-05', 'Vikas Jain', 150000.00),
(8, 8, 'Kids Carnival', '2024-07-25', 'Meena Rathi', 90000.00),
(9, 9, 'Music Concert', '2024-06-30', 'Sanjay Tiwari', 110000.00),
(10, 10, 'Grand Opening Ceremony', '2024-01-01', 'Anita Kumar', 200000.00);

-- Show Table Structure for EventDetails
SELECT * FROM EventDetails ;


------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an IPL 2024 system including Teams, Matches, Players, Tickets, and Sponsorships --
-- Author : Mueez Mapari --

-- database related queries --

CREATE DATABASE  ipl2024 ;
USE ipl2024 ;

-- Table 1: TeamDetails - Storing details of teams participating in IPL 2024 --
CREATE TABLE TeamDetails (
TeamID INT PRIMARY KEY, -- Unique ID for each team
TeamName VARCHAR(100), -- Name of the team
HomeCity VARCHAR(100), -- Home city of the team
CoachName VARCHAR(100), -- Name of the team's coach
CaptainName VARCHAR(100), -- Name of the team's captain
EstablishedYear INT -- Year the team was established
);

-- Inserting data into TeamDetails --
INSERT INTO TeamDetails VALUES
(1, 'Mumbai Indians', 'Mumbai', 'Mark Boucher', 'Rohit Sharma', 2008),
(2, 'Chennai Super Kings', 'Chennai', 'Stephen Fleming', 'MS Dhoni', 2008),
(3, 'Royal Challengers Bangalore', 'Bangalore', 'Sanjay Bangar', 'Faf du Plessis', 2008),
(4, 'Delhi Capitals', 'Delhi', 'Ricky Ponting', 'Rishabh Pant', 2008),
(5, 'Kolkata Knight Riders', 'Kolkata', 'Chandrakant Pandit', 'Shreyas Iyer', 2008),
(6, 'Rajasthan Royals', 'Jaipur', 'Kumar Sangakkara', 'Sanju Samson', 2008),
(7, 'Punjab Kings', 'Punjab', 'Trevor Bayliss', 'Shikhar Dhawan', 2008),
(8, 'Sunrisers Hyderabad', 'Hyderabad', 'Brian Lara', 'Aiden Markram', 2013),
(9, 'Lucknow Super Giants', 'Lucknow', 'Andy Flower', 'KL Rahul', 2022),
(10, 'Gujarat Titans', 'Ahmedabad', 'Ashish Nehra', 'Hardik Pandya', 2022);


-- Show table structure for TeamDetails --
SELECT * FROM TeamDetails;

-- Table 2: MatchSchedule - Storing match details for IPL 2024 --
CREATE TABLE MatchSchedule (
MatchID INT PRIMARY KEY, -- Unique ID for each match
Team1ID INT, -- ID of the first team
Team2ID INT, -- ID of the second team
MatchDate DATE, -- Date of the match
Venue VARCHAR(100), -- Venue of the match
StartTime TIME -- Time when the match starts
);

-- Inserting data into MatchSchedule --
INSERT INTO MatchSchedule VALUES
(1, 1, 2, '2024-03-30', 'Wankhede Stadium', '19:30:00'),
(2, 3, 4, '2024-03-31', 'Chinnaswamy Stadium', '15:30:00'),
(3, 5, 6, '2024-04-01', 'Eden Gardens', '19:30:00'),
(4, 7, 8, '2024-04-02', 'Rajiv Gandhi Stadium', '19:30:00'),
(5, 9, 10, '2024-04-03', 'Narendra Modi Stadium', '19:30:00'),
(6, 1, 3, '2024-04-04', 'Wankhede Stadium', '19:30:00'),
(7, 2, 5, '2024-04-05', 'Chidambaram Stadium', '15:30:00'),
(8, 4, 7, '2024-04-06', 'Arun Jaitley Stadium', '19:30:00'),
(9, 6, 9, '2024-04-07', 'Sawai Mansingh Stadium', '15:30:00'),
(10, 8, 10, '2024-04-08', 'Rajiv Gandhi Stadium', '19:30:00');

-- Show table structure for MatchSchedule --
SELECT * FROM MatchSchedule;

-- Table 3: PlayerDetails - Storing player information for IPL 2024 --
CREATE TABLE PlayerDetails (
PlayerID INT PRIMARY KEY, -- Unique ID for each player
TeamID INT, -- Team ID the player belongs to
PlayerName VARCHAR(100), -- Name of the player
Role VARCHAR(50), -- Role of the player (Batsman, Bowler, etc.)
Age INT, -- Age of the player
MatchesPlayed INT -- Number of matches the player has played
);

-- Inserting data into PlayerDetails --
INSERT INTO PlayerDetails VALUES
(1, 1, 'Rohit Sharma', 'Batsman', 36, 240),
(2, 1, 'Jasprit Bumrah', 'Bowler', 30, 120),
(3, 2, 'MS Dhoni', 'Wicketkeeper', 42, 230),
(4, 3, 'Virat Kohli', 'Batsman', 35, 220),
(5, 4, 'Rishabh Pant', 'Wicketkeeper', 27, 100),
(6, 5, 'Andre Russell', 'All-rounder', 35, 150),
(7, 6, 'Sanju Samson', 'Batsman', 30, 110),
(8, 7, 'Shikhar Dhawan', 'Batsman', 38, 210),
(9, 8, 'Aiden Markram', 'Batsman', 30, 90),
(10, 9, 'KL Rahul', 'Batsman', 32, 160);

-- Show table structure for PlayerDetails --
SELECT * FROM PlayerDetails;

-- Table 4: TicketDetails - Storing ticket information for IPL 2024 --
CREATE TABLE TicketDetails (
TicketID BIGINT PRIMARY KEY, -- Unique ID for each ticket
MatchID INT, -- ID of the match
Price FLOAT, -- Price of the ticket
SeatsAvailable BIGINT, -- Number of available seats for the match
TotalSeats BIGINT, -- Total number of seats for the match
BookingLink TEXT  -- URL for booking the ticket
);

-- Inserting data into TicketDetails --
INSERT INTO TicketDetails VALUES
(1, 1, 1500.00, 5000, 10000, 'www.ipl2024.com/match1'),
(2, 2, 1200.00, 4000, 9000, 'www.ipl2024.com/match2'),
(3, 3, 1800.00, 3000, 8000, 'www.ipl2024.com/match3'),
(4, 4, 2000.00, 2500, 7000, 'www.ipl2024.com/match4'),
(5, 5, 1700.00, 3500, 8500, 'www.ipl2024.com/match5'),
(6, 6, 1400.00, 4000, 9500, 'www.ipl2024.com/match6'),
(7, 7, 1600.00, 4500, 10000, 'www.ipl2024.com/match7'),
(8, 8, 1300.00, 5000, 10500, 'www.ipl2024.com/match8'),
(9, 9, 1500.00, 5500, 11000, 'www.ipl2024.com/match9'),
(10, 10, 1900.00, 3000, 7500, 'www.ipl2024.com/match10');

-- Show table structure for TicketDetails --
SELECT * FROM TicketDetails;

-- Table 5: SponsorshipDetails - Storing sponsorship information for IPL 2024 --
CREATE TABLE SponsorshipDetails (
SponsorID INT PRIMARY KEY, -- Unique ID for each sponsor
SponsorName VARCHAR(100), -- Name of the sponsor
TeamID INT, -- Team ID sponsored
SponsorshipAmount FLOAT, -- Amount of the sponsorship
ContractDuration INT, -- Duration of the sponsorship contract (in years)
Industry VARCHAR(50) -- Industry of the sponsor
);

-- Inserting data into SponsorshipDetails --
INSERT INTO SponsorshipDetails VALUES
(1, 'Reliance', 1, 50000000.00, 3, 'Retail'),
(2, 'TATA Group', 2, 40000000.00, 3, 'Conglomerate'),
(3, 'BYJU\'s', 3, 45000000.00, 3, 'Education'),
(4, 'Dream11', 4, 42000000.00, 3, 'Gaming'),
(5, 'Jio', 5, 50000000.00, 3, 'Telecom'),
(6, 'Paytm', 6, 30000000.00, 2, 'Finance'),
(7, 'Coca-Cola', 7, 35000000.00, 3, 'Beverage'),
(8, 'Samsung', 8, 28000000.00, 2, 'Electronics'),
(9, 'Amazon', 9, 40000000.00, 3, 'E-commerce'),
(10, 'Google', 10, 45000000.00, 3, 'Technology');

-- Show table structure for SponsorshipDetails --
SELECT * FROM SponsorshipDetails;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to a FIFA World Cup System including Teams, Matches, Players, Venues, and Sponsors --
-- Author : Mueez Mapari --

-- database related queries --

-- Create database if it does not exist --
CREATE DATABASE IF NOT EXISTS FIFA_World_Cup ;
USE FIFA_World_Cup ;

-- Table 1: TeamDetails - Storing details of teams participating in the FIFA World Cup --
CREATE TABLE TeamDetails (
TeamID INT PRIMARY KEY, -- Unique ID for each team
TeamName VARCHAR(100), -- Name of the team
CoachName VARCHAR(100), -- Name of the coach
FIFA_Rank INT, -- FIFA ranking of the team
GroupName VARCHAR(50), -- Group in the World Cup
CaptainName VARCHAR(100) -- Name of the team captain
);

-- Inserting data into TeamDetails --
INSERT INTO TeamDetails VALUES
(1, 'Argentina', 'Lionel Scaloni', 1, 'A', 'Lionel Messi'),
(2, 'Brazil', 'Tite', 2, 'B', 'Neymar Jr'),
(3, 'France', 'Didier Deschamps', 3, 'C', 'Kylian Mbappe'),
(4, 'Germany', 'Hansi Flick', 4, 'D', 'Manuel Neuer'),
(5, 'Spain', 'Luis Enrique', 5, 'E', 'Sergio Busquets'),
(6, 'England', 'Gareth Southgate', 6, 'F', 'Harry Kane'),
(7, 'Italy', 'Roberto Mancini', 7, 'G', 'Giorgio Chiellini'),
(8, 'Portugal', 'Roberto Martinez', 8, 'H', 'Cristiano Ronaldo'),
(9, 'Netherlands', 'Ronald Koeman', 9, 'A', 'Virgil van Dijk'),
(10, 'Belgium', 'Domenico Tedesco', 10, 'B', 'Kevin De Bruyne');

-- Show table structure for TeamDetails --
SELECT * FROM TeamDetails;

-- Table 2: MatchSchedule - Storing match details for FIFA World Cup --
CREATE TABLE MatchSchedule (
MatchID INT PRIMARY KEY, -- Unique ID for each match
Team1ID INT, -- ID of the first team
Team2ID INT, -- ID of the second team
MatchDate DATE, -- Date of the match
Venue VARCHAR(100), -- Venue of the match
KickoffTime TIME -- Time of the match
);

-- Inserting data into MatchSchedule --
INSERT INTO MatchSchedule VALUES
(1, 1, 9, '2024-06-01', 'Doha Stadium', '18:00:00'),
(2, 2, 10, '2024-06-02', 'Lusail Stadium', '21:00:00'),
(3, 3, 4, '2024-06-03', 'Education City Stadium', '18:00:00'),
(4, 5, 6, '2024-06-04', 'Al Bayt Stadium', '21:00:00'),
(5, 7, 8, '2024-06-05', 'Al Janoub Stadium', '18:00:00'),
(6, 1, 2, '2024-06-06', 'Khalifa International Stadium', '21:00:00'),
(7, 3, 5, '2024-06-07', 'Ahmed Bin Ali Stadium', '18:00:00'),
(8, 4, 6, '2024-06-08', 'Al Thumama Stadium', '21:00:00'),
(9, 7, 9, '2024-06-09', 'Al Janoub Stadium', '18:00:00'),
(10, 8, 10, '2024-06-10', 'Lusail Stadium', '21:00:00');

-- Show table structure for MatchSchedule --
SELECT * FROM MatchSchedule;

-- Table 3: PlayerDetails - Storing player information for FIFA World Cup --
CREATE TABLE PlayerDetails (
PlayerID INT PRIMARY KEY, -- Unique ID for each player
TeamID INT, -- Team ID the player belongs to
PlayerName VARCHAR(100), -- Name of the player
Position VARCHAR(50), -- Position of the player
Age INT, -- Age of the player
Goals BIGINT -- Goals scored by the player
);

-- Inserting data into PlayerDetails --
INSERT INTO PlayerDetails VALUES
(1, 1, 'Lionel Messi', 'Forward', 36, 103),
(2, 2, 'Neymar Jr', 'Forward', 32, 77),
(3, 3, 'Kylian Mbappe', 'Forward', 25, 40),
(4, 4, 'Manuel Neuer', 'Goalkeeper', 37, 0),
(5, 5, 'Sergio Busquets', 'Midfielder', 35, 15),
(6, 6, 'Harry Kane', 'Forward', 31, 61),
(7, 7, 'Giorgio Chiellini', 'Defender', 39, 8),
(8, 8, 'Cristiano Ronaldo', 'Forward', 39, 128),
(9, 9, 'Virgil van Dijk', 'Defender', 33, 6),
(10, 10, 'Kevin De Bruyne', 'Midfielder', 33, 25);

-- Show table structure for PlayerDetails --
SELECT * FROM PlayerDetails;

-- Table 4: VenueDetails - Storing details of the venues for FIFA World Cup --
CREATE TABLE VenueDetails (
VenueID INT PRIMARY KEY, -- Unique ID for each venue
VenueName VARCHAR(100), -- Name of the venue
Location VARCHAR(100), -- Location of the venue
Capacity INT, -- Seating capacity of the venue
MatchesScheduled INT, -- Number of matches scheduled at the venue
Cost FLOAT -- Cost of hosting matches at the venue
);

-- Inserting data into VenueDetails --
INSERT INTO VenueDetails VALUES
(1, 'Doha Stadium', 'Doha', 80000, 10, 20000000.00),
(2, 'Lusail Stadium', 'Lusail', 75000, 12, 25000000.00),
(3, 'Education City Stadium', 'Education City', 45000, 8, 15000000.00),
(4, 'Al Bayt Stadium', 'Al Khor', 60000, 9, 18000000.00),
(5, 'Al Janoub Stadium', 'Al Wakrah', 40000, 6, 12000000.00),
(6, 'Khalifa International Stadium', 'Doha', 48000, 8, 14000000.00),
(7, 'Ahmed Bin Ali Stadium', 'Al Rayyan', 44000, 7, 13000000.00),
(8, 'Al Thumama Stadium', 'Doha', 40000, 5, 11000000.00);

-- Show table structure for VenueDetails --
SELECT * FROM VenueDetails;

-- Table 5: SponsorDetails - Storing sponsorship details for FIFA World Cup --
CREATE TABLE SponsorDetails (
SponsorID INT PRIMARY KEY, -- Unique ID for each sponsor
SponsorName VARCHAR(100), -- Name of the sponsor
TeamID INT, -- Team ID the sponsor is linked with
SponsorshipAmount FLOAT, -- Sponsorship amount provided by the sponsor
Industry VARCHAR(50), -- Industry of the sponsor
ContractYear INT -- Year of the sponsorship contract
);

-- Inserting data into SponsorDetails --
INSERT INTO SponsorDetails VALUES
(1, 'Adidas', 1, 5000000.00, 'Sportswear', 2024),
(2, 'Nike', 2, 4500000.00, 'Sportswear', 2024),
(3, 'Qatar Airways', 3, 6000000.00, 'Airlines', 2024),
(4, 'Coca-Cola', 4, 5500000.00, 'Beverages', 2024),
(5, 'PepsiCo', 5, 5200000.00, 'Beverages', 2024),
(6, 'Visa', 6, 4800000.00, 'Finance', 2024),
(7, 'MasterCard', 7, 4700000.00, 'Finance', 2024),
(8, 'Samsung', 8, 4600000.00, 'Electronics', 2024),
(9, 'Google', 9, 4900000.00, 'Technology', 2024),
(10, 'Amazon', 10, 5100000.00, 'E-commerce', 2024);

-- Show table structure for SponsorDetails --
SELECT * FROM SponsorDetails;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to Travel Agencies and Tour Packages --
-- Author : Mueez Mapari --

-- Create the TravelAgent database if it does not exist
CREATE DATABASE  TravelAgent;
USE TravelAgent;

-- Create TravelAgencyDetails table
CREATE TABLE TravelAgencyDetails (
AgencyID INT PRIMARY KEY,
AgencyName VARCHAR(100),
Location VARCHAR(100),
ContactNumber VARCHAR(50),
Email VARCHAR(100),
EstablishedYear INT
);

-- Insert values into TravelAgencyDetails table
INSERT INTO TravelAgencyDetails VALUES
(1, 'Global Travels', 'Mumbai', '9876543210', 'contact@globaltravels.com', 2005),
(2, 'Holiday Planners', 'Delhi', '9123456780', 'info@holidayplanners.com', 2010),
(3, 'Adventure Tours', 'Bangalore', '9234567890', 'support@adventuretours.com', 2015),
(4, 'Luxury Escapes', 'Chennai', '9321456789', 'luxury@escapes.com', 2000),
(5, 'Budget Trips', 'Kolkata', '9345678901', 'info@budgettrips.com', 2018),
(6, 'Wanderlust Agency', 'Pune', '9456781234', 'help@wanderlust.com', 2020),
(7, 'Dream Holidays', 'Hyderabad', '9567890123', 'dream@holidays.com', 2012),
(8, 'TravelEase', 'Ahmedabad', '9678901234', 'contact@travelease.com', 2016),
(9, 'Happy Journeys', 'Lucknow', '9789012345', 'happy@journeys.com', 2013),
(10, 'Explorer Co.', 'Jaipur', '9890123456', 'explorer@co.com', 2017);

-- Select data from TravelAgencyDetails table
SELECT * FROM TravelAgencyDetails;

-- Create TourPackages table
CREATE TABLE TourPackages (
PackageID INT PRIMARY KEY,
PackageName VARCHAR(100),
Destination VARCHAR(100),
Duration INT, 
Price FLOAT,
AgencyID INT
);

-- Insert values into TourPackages table
INSERT INTO TourPackages VALUES
(1, 'Himalayan Adventure', 'Manali', 7, 25000.00, 3),
(2, 'Beach Paradise', 'Goa', 5, 20000.00, 1),
(3, 'Royal Rajasthan', 'Jaipur', 10, 40000.00, 4),
(4, 'Kerala Backwaters', 'Alleppey', 6, 30000.00, 5),
(5, 'Golden Triangle', 'Delhi, Jaipur, Agra', 8, 35000.00, 2),
(6, 'Desert Safari', 'Jaisalmer', 5, 22000.00, 4),
(7, 'Leh-Ladakh Expedition', 'Leh', 10, 45000.00, 3),
(8, 'Andaman Delight', 'Port Blair', 7, 37000.00, 1),
(9, 'Northeast Sojourn', 'Shillong', 8, 32000.00, 7),
(10, 'Sundarbans Safari', 'Sundarbans', 4, 18000.00, 8);

-- Select data from TourPackages table
SELECT * FROM TourPackages;

-- Create CustomerDetails table
CREATE TABLE CustomerDetails (
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(100),
ContactNumber VARCHAR(50),
Email VARCHAR(100),
PreferredDestination VARCHAR(100),
AgencyID INT
);

-- Insert values into CustomerDetails table
INSERT INTO CustomerDetails VALUES
(1, 'Rahul Sharma', '9123456789', 'rahul.sharma@gmail.com', 'Goa', 1),
(2, 'Ananya Gupta', '9876543211', 'ananya.gupta@yahoo.com', 'Manali', 3),
(3, 'Rajiv Mehta', '9234567890', 'rajiv.mehta@outlook.com', 'Jaipur', 4),
(4, 'Sneha Das', '9345678901', 'sneha.das@rediffmail.com', 'Alleppey', 5),
(5, 'Arjun Singh', '9456781234', 'arjun.singh@gmail.com', 'Leh', 3),
(6, 'Priya Nair', '9567890123', 'priya.nair@yahoo.com', 'Port Blair', 1),
(7, 'Vikram Rao', '9678901234', 'vikram.rao@outlook.com', 'Jaisalmer', 4),
(8, 'Pooja Verma', '9789012345', 'pooja.verma@rediffmail.com', 'Delhi, Jaipur, Agra', 2),
(9, 'Akash Yadav', '9890123456', 'akash.yadav@gmail.com', 'Shillong', 7),
(10, 'Nikita Sinha', '9012345678', 'nikita.sinha@yahoo.com', 'Sundarbans', 8);

-- Select data from CustomerDetails table
SELECT * FROM CustomerDetails;

-- Create BookingDetails table
CREATE TABLE BookingDetails (
BookingID INT PRIMARY KEY,
CustomerID INT,
PackageID INT,
BookingDate DATE,
TotalCost FLOAT,
PaymentStatus VARCHAR(50)
);

-- Insert values into BookingDetails table
INSERT INTO BookingDetails VALUES
(1, 1, 2, '2024-01-10', 20000.00, 'Paid'),
(2, 2, 1, '2024-01-12', 25000.00, 'Pending'),
(3, 3, 3, '2024-01-15', 40000.00, 'Paid'),
(4, 4, 4, '2024-01-18', 30000.00, 'Paid'),
(5, 5, 7, '2024-01-20', 45000.00, 'Pending'),
(6, 6, 8, '2024-01-22', 37000.00, 'Paid'),
(7, 7, 6, '2024-01-25', 22000.00, 'Paid'),
(8, 8, 5, '2024-01-28', 35000.00, 'Pending'),
(9, 9, 9, '2024-01-30', 32000.00, 'Paid'),
(10, 10, 10, '2024-02-01', 18000.00, 'Paid');

-- Select data from BookingDetails table
SELECT * FROM BookingDetails;

-- Create FeedbackDetails table
CREATE TABLE FeedbackDetails (
FeedbackID INT PRIMARY KEY,
CustomerID INT,
FeedbackDate DATE,
Rating INT,
Comments TEXT
);

-- Insert values into FeedbackDetails table
INSERT INTO FeedbackDetails VALUES
(1, 1, '2024-01-15', 5, 'Amazing trip to Goa!'),
(2, 2, '2024-01-17', 4, 'Manali was breathtaking.'),
(3, 3, '2024-01-20', 5, 'Royal Rajasthan tour was excellent.'),
(4, 4, '2024-01-25', 4, 'Backwaters were serene.'),
(5, 5, '2024-01-30', 5, 'Ladakh expedition was thrilling.'),
(6, 6, '2024-02-05', 4, 'Andaman trip was great.'),
(7, 7, '2024-02-10', 3, 'Jaisalmer desert safari was good.'),
(8, 8, '2024-02-15', 5, 'Golden Triangle tour was well planned.'),
(9, 9, '2024-02-20', 4, 'Northeast trip was enjoyable.'),
(10, 10, '2024-02-25', 5, 'Sundarbans Safari was memorable.');

-- Select data from FeedbackDetails table
SELECT * FROM FeedbackDetails;


------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to  RBI Bank Management including Branch Details , Employee Details , Account Details ,  Loan Details  and  Transaction Details --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database  RBI_Bank_Management ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  RBI_Bank_Management ;

use  RBI_Bank_Management ;

CREATE TABLE BranchDetails (
BranchID INT PRIMARY KEY,
BranchName VARCHAR(100),
Location VARCHAR(100),
ContactNumber VARCHAR(50),
ManagerName VARCHAR(100),
EstablishedYear INT
);

INSERT INTO BranchDetails VALUES
(1, 'Mumbai Central', 'Mumbai', '9876543210', 'Rajesh Sharma', 1980),
(2, 'Delhi Headquarters', 'Delhi', '9123456780', 'Anjali Mehta', 1990),
(3, 'Chennai Branch', 'Chennai', '9234567890', 'Suresh Iyer', 2000),
(4, 'Kolkata Division', 'Kolkata', '9345678901', 'Ramesh Das', 1995),
(5, 'Bangalore Branch', 'Bangalore', '9456781234', 'Priya Nair', 2005),
(6, 'Pune Office', 'Pune', '9567890123', 'Vikram Rao', 2010),
(7, 'Hyderabad Division', 'Hyderabad', '9678901234', 'Ravi Verma', 2008),
(8, 'Ahmedabad Branch', 'Ahmedabad', '9789012345', 'Neha Patel', 2012),
(9, 'Lucknow Office', 'Lucknow', '9890123456', 'Akash Yadav', 2015),
(10, 'Jaipur Division', 'Jaipur', '9012345678', 'Nikita Sinha', 2018);

-- show table Structure 
SELECT * FROM BranchDetails;

CREATE TABLE EmployeeDetails (
EmployeeID INT PRIMARY KEY,
BranchID INT,
EmployeeName VARCHAR(100),
Designation VARCHAR(50),
ContactNumber VARCHAR(15),
Salary FLOAT
);

INSERT INTO EmployeeDetails VALUES
(1, 1, 'Amit Khanna', 'Manager', '9876543211', 90000.00),
(2, 2, 'Rohit Verma', 'Assistant Manager', '9123456781', 75000.00),
(3, 3, 'Sneha Gupta', 'Clerk', '9234567891', 45000.00),
(4, 4, 'Rahul Mehta', 'Security Guard', '9345678902', 25000.00),
(5, 5, 'Priyanka Iyer', 'Cashier', '9456781235', 50000.00),
(6, 6, 'Sanjay Rao', 'Officer', '9567890124', 70000.00),
(7, 7, 'Nandini Sharma', 'Manager', '9678901235', 85000.00),
(8, 8, 'Vivek Das', 'Clerk', '9789012346', 48000.00),
(9, 9, 'Karan Patel', 'Officer', '9890123457', 72000.00),
(10, 10, 'Anita Singh', 'Cashier', '9012345679', 51000.00);

-- show table Structure 
SELECT * FROM EmployeeDetails;

CREATE TABLE AccountDetails (
AccountID INT PRIMARY KEY,
BranchID INT,
CustomerName VARCHAR(100),
AccountType VARCHAR(50),
Balance BIGINT,
ContactNumber VARCHAR(15)
);

INSERT INTO AccountDetails VALUES
(1, 1, 'Ramesh Khurana', 'Savings', 50000.00, '9876543212'),
(2, 2, 'Sunita Mehta', 'Current', 150000.00, '9123456782'),
(3, 3, 'Amitabh Rai', 'Fixed Deposit', 250000.00, '9234567892'),
(4, 4, 'Rajiv Nair', 'Savings', 45000.00, '9345678903'),
(5, 5, 'Snehal Patil', 'Current', 100000.00, '9456781236'),
(6, 6, 'Ajay Verma', 'Savings', 60000.00, '9567890125'),
(7, 7, 'Nidhi Kapoor', 'Fixed Deposit', 300000.00, '9678901236'),
(8, 8, 'Manoj Das', 'Savings', 40000.00, '9789012347'),
(9, 9, 'Pooja Singh', 'Current', 80000.00, '9890123458'),
(10, 10, 'Nilesh Desai', 'Savings', 70000.00, '9012345680');

-- show table Structure 
SELECT * FROM AccountDetails;

CREATE TABLE LoanDetails (
LoanID INT PRIMARY KEY,
AccountID INT,
LoanType VARCHAR(50),
LoanAmount FLOAT,
InterestRate FLOAT,
Duration BIGINT 
);

INSERT INTO LoanDetails VALUES
(1, 1, 'Home Loan', 2500000.00, 6.75, 240),
(2, 2, 'Car Loan', 500000.00, 8.00, 60),
(3, 3, 'Personal Loan', 200000.00, 10.50, 36),
(4, 4, 'Education Loan', 800000.00, 9.50, 120),
(5, 5, 'Home Loan', 3000000.00, 7.00, 240),
(6, 6, 'Gold Loan', 150000.00, 11.00, 12),
(7, 7, 'Personal Loan', 300000.00, 10.00, 24),
(8, 8, 'Car Loan', 600000.00, 7.50, 60),
(9, 9, 'Education Loan', 900000.00, 8.50, 120),
(10, 10, 'Home Loan', 2000000.00, 7.25, 180);

-- show table Structure 
SELECT * FROM LoanDetails;

CREATE TABLE TransactionDetails (
TransactionID INT PRIMARY KEY,
AccountID INT,
TransactionDate DATE,
TransactionType VARCHAR(50), 
Amount FLOAT ,
Description TEXT
);

INSERT INTO TransactionDetails VALUES
(1, 1, '2024-01-10', 'Credit', 10000.00, 'Salary Deposit'),
(2, 2, '2024-01-12', 'Debit', 5000.00, 'Utility Bill Payment'),
(3, 3, '2024-01-15', 'Credit', 20000.00, 'Interest Earned'),
(4, 4, '2024-01-18', 'Debit', 8000.00, 'Insurance Premium'),
(5, 5, '2024-01-20', 'Credit', 15000.00, 'Business Revenue'),
(6, 6, '2024-01-22', 'Debit', 5000.00, 'Grocery Shopping'),
(7, 7, '2024-01-25', 'Credit', 20000.00, 'Rent Received'),
(8, 8, '2024-01-28', 'Debit', 7000.00, 'Medical Expense'),
(9, 9, '2024-01-30', 'Credit', 12000.00, 'Freelance Work'),
(10, 10, '2024-02-01', 'Debit', 6000.00, 'Travel Expense');

-- show table Structure 
SELECT * FROM TransactionDetails;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to an AI Development Management Database including Project Details , Team Details , Task Details ,  Budget Details  and  Research Details --
-- Author : Mueez Mapari  -- 
 
-- database related queries --

Create database AI_Development_Management ;
-- or create database If not Exists --
CREATE  DATABASE IF NOT EXISTS  AI_Development_Management ;

use  AI_Development_Management ;

CREATE TABLE ProjectDetails (
ProjectID INT PRIMARY KEY,
ProjectName VARCHAR(100),
ClientName VARCHAR(100),
StartDate DATE,
EndDate DATE,
Budget FLOAT
);

INSERT INTO ProjectDetails VALUES
(1, 'Chatbot Development', 'TechCorp', '2023-07-01', '2024-06-30', 1000000.00),
(2, 'Image Recognition AI', 'VisionAI', '2023-08-15', '2024-08-14', 750000.00),
(3, 'Speech-to-Text Converter', 'VoiceSys', '2023-09-01', '2024-05-31', 500000.00),
(4, 'Autonomous Driving System', 'AutoDrive', '2023-10-01', '2025-09-30', 2000000.00),
(5, 'AI Recommendation Engine', 'ShopSmart', '2024-01-01', '2024-12-31', 900000.00),
(6, 'Predictive Analytics Tool', 'DataInsight', '2023-11-01', '2024-10-31', 600000.00),
(7, 'AI Fraud Detection', 'BankSecure', '2024-02-01', '2025-01-31', 850000.00),
(8, 'Natural Language Processing', 'LinguaTech', '2023-12-01', '2024-11-30', 950000.00),
(9, 'AI-Powered CRM', 'ClientFirst', '2024-03-01', '2025-02-28', 1100000.00),
(10, 'Sentiment Analysis Tool', 'SocialSent', '2024-04-01', '2024-12-31', 700000.00);

-- show table Structure 
SELECT * FROM ProjectDetails;

CREATE TABLE TeamDetails (
TeamID INT PRIMARY KEY,
ProjectID INT,
TeamLeader VARCHAR(100),
TeamSize INT,
TechnologyStack TEXT ,
OfficeLocation VARCHAR(100)
);

INSERT INTO TeamDetails VALUES
(1, 1, 'Anil Sharma', 10, 'Python, TensorFlow, NLP', 'Bangalore'),
(2, 2, 'Rita Verma', 8, 'Python, OpenCV, Deep Learning', 'Hyderabad'),
(3, 3, 'Rajesh Gupta', 6, 'Python, PyTorch, Speech Processing', 'Delhi'),
(4, 4, 'Neha Kapoor', 15, 'C++, TensorFlow, Robotics', 'Chennai'),
(5, 5, 'Vikram Rao', 7, 'Python, AWS, Machine Learning', 'Mumbai'),
(6, 6, 'Sneha Iyer', 5, 'R, Python, Data Analytics', 'Pune'),
(7, 7, 'Suresh Nair', 9, 'Java, Python, AI Security', 'Kochi'),
(8, 8, 'Arun Mehta', 12, 'Python, Transformers, NLP', 'Ahmedabad'),
(9, 9, 'Priya Singh', 8, 'JavaScript, Python, AI CRM', 'Noida'),
(10, 10, 'Karan Joshi', 10, 'Python, Sentiment Analysis', 'Jaipur');

-- show table Structure 
SELECT * FROM TeamDetails;

CREATE TABLE TaskDetails (
TaskID INT PRIMARY KEY,
ProjectID INT,
TaskName VARCHAR(100),
AssignedTo VARCHAR(100),
Deadline DATE,
Status VARCHAR(50)
);

INSERT INTO TaskDetails VALUES
(1, 1, 'Develop NLP Model', 'Rahul Khanna', '2024-02-28', 'In Progress'),
(2, 2, 'Train Image Dataset', 'Rakesh Sharma', '2024-03-31', 'Completed'),
(3, 3, 'Build Speech Model', 'Sneha Verma', '2024-01-15', 'In Progress'),
(4, 4, 'Create Driving Algorithms', 'Manoj Tiwari', '2025-06-30', 'Not Started'),
(5, 5, 'Build Recommendation Engine', 'Nidhi Kapoor', '2024-09-30', 'In Progress'),
(6, 6, 'Data Collection', 'Kavita Sharma', '2024-04-30', 'Completed'),
(7, 7, 'AI Security Analysis', 'Sanjay Iyer', '2025-01-15', 'In Progress'),
(8, 8, 'Train NLP Model', 'Ravi Das', '2024-06-30', 'Not Started'),
(9, 9, 'Develop CRM Features', 'Priya Verma', '2025-01-31', 'In Progress'),
(10, 10, 'Perform Sentiment Analysis', 'Neha Jain', '2024-11-30', 'Not Started');

-- show table Structure 
SELECT * FROM TaskDetails;

CREATE TABLE BudgetDetails (
BudgetID INT PRIMARY KEY,
ProjectID INT,
ExpenseCategory TEXT ,
AllocatedAmount FLOAT ,
SpentAmount FLOAT ,
RemainingAmount FLOAT
);

INSERT INTO BudgetDetails VALUES
(1, 1, 'Data Collection', 200000.00, 150000.00, 50000.00),
(2, 2, 'Model Training', 300000.00, 280000.00, 20000.00),
(3, 3, 'Equipment', 150000.00, 140000.00, 10000.00),
(4, 4, 'Algorithm Development', 500000.00, 200000.00, 300000.00),
(5, 5, 'Deployment', 100000.00, 50000.00, 50000.00),
(6, 6, 'Data Analysis', 200000.00, 180000.00, 20000.00),
(7, 7, 'Model Testing', 300000.00, 250000.00, 50000.00),
(8, 8, 'Training', 250000.00, 200000.00, 50000.00),
(9, 9, 'Cloud Hosting', 400000.00, 350000.00, 50000.00),
(10, 10, 'Sentiment Dataset', 150000.00, 120000.00, 30000.00);

-- show table Structure 
SELECT * FROM BudgetDetails;

CREATE TABLE ResearchDetails (
ResearchID INT PRIMARY KEY,
ProjectID INT,
PaperTitle TEXT ,
AuthorName TEXT ,
PublishedDate DATE,
Publisher TEXT
);

INSERT INTO ResearchDetails VALUES
(1, 1, 'Advances in NLP for Chatbots', 'Anil Sharma', '2023-12-15', 'IEEE'),
(2, 2, 'Image Recognition Techniques', 'Rita Verma', '2024-01-20', 'Springer'),
(3, 3, 'Speech Models in AI', 'Rajesh Gupta', '2024-02-10', 'Elsevier'),
(4, 4, 'Autonomous Systems Overview', 'Neha Kapoor', '2024-05-15', 'Nature AI'),
(5, 5, 'Recommender Systems in Retail', 'Vikram Rao', '2024-03-01', 'ACM'),
(6, 6, 'Predictive Analytics Methods', 'Sneha Iyer', '2024-06-10', 'Wiley'),
(7, 7, 'AI in Banking Security', 'Suresh Nair', '2024-04-20', 'IEEE'),
(8, 8, 'NLP Transformations', 'Arun Mehta', '2024-07-01', 'Elsevier'),
(9, 9, 'CRM Evolution through AI', 'Priya Singh', '2024-08-15', 'Springer'),
(10, 10, 'Analyzing Social Sentiments', 'Karan Joshi', '2024-09-30', 'Nature AI');

-- show table Structure 
SELECT * FROM ResearchDetails;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------------

-- This Database is designed to manage data related to Mutual Funds, Investments, and Performance Metrics --
-- Author : Mueez Mapari --

-- Creating the MutualFund database --
CREATE Database MutualFund ;
USE MutualFund;

-- Create MutualFundPerformances table
CREATE TABLE MutualFundPerformances (
Year INT PRIMARY KEY ,
NAV FLOAT ,
ExpenseRatio FLOAT ,
TotalAssets FLOAT ,
Yield FLOAT,
AnnualReturn FLOAT 
);


-- Insert values into MutualFundPerformance table
INSERT INTO MutualFundPerformances VALUES
(2020, 50.00, 1.50, 500000.00, 5.00, 10.00),
(2021, 55.00, 1.60, 550000.00, 5.50, 12.00),
(2022, 60.00, 1.70, 600000.00, 6.00, 14.00),
(2023, 65.00, 1.80, 650000.00, 6.50, 15.00),
(2024, 70.00, 1.90, 700000.00, 7.00, 16.00),
(2025, 75.00, 2.00, 750000.00, 7.50, 18.00),
(2026, 80.00, 2.10, 800000.00, 8.00, 19.00),
(2027, 85.00, 2.20, 850000.00, 8.50, 20.00),
(2028, 90.00, 2.30, 900000.00, 9.00, 22.00),
(2029, 95.00, 2.40, 950000.00, 9.50, 23.00);

-- Select data from MutualFundPerformance table
SELECT * FROM MutualFundPerformances;

-- Create RiskAnalysisMutualFunds table
CREATE TABLE RiskAnalysisMutualFunds (
RiskID INT PRIMARY KEY ,
RiskName VARCHAR (50) ,
RiskLevel VARCHAR (50) ,
Likelihood FLOAT ,
MitigationStrategy TEXT ,
RiskValue FLOAT 
);

-- Insert values into RiskAnalysisMutualFunds table
INSERT INTO RiskAnalysisMutualFunds VALUES
(1, 'Market Risk', 'High', 0.90, 'Diversified Portfolio', 100000.00),
(2, 'Interest Rate Risk', 'Medium', 0.75, 'Duration Matching', 75000.00),
(3, 'Credit Risk', 'Medium', 0.65, 'Bond Selection', 65000.00),
(4, 'Liquidity Risk', 'Low', 0.50, 'Cash Reserves', 50000.00),
(5, 'Currency Risk', 'Medium', 0.70, 'Currency Hedging', 70000.00),
(6, 'Inflation Risk', 'High', 0.80, 'Inflation-Hedged Assets', 80000.00),
(7, 'Geopolitical Risk', 'Medium', 0.60, 'Global Exposure', 60000.00),
(8, 'Regulatory Risk', 'Low', 0.40, 'Legal Advisors', 40000.00),
(9, 'Operational Risk', 'Medium', 0.55, 'Management Oversight', 55000.00),
(10, 'Investment Strategy Risk', 'High', 0.85, 'Investment Diversification', 85000.00);

-- Select data from RiskAnalysisMutualFunds table
SELECT * FROM RiskAnalysisMutualFunds;

-- Create InvestorProfiles table
CREATE TABLE InvestorProfiles (
InvestorID INT PRIMARY KEY ,
Name VARCHAR (50) ,
Age INT ,
RiskTolerance VARCHAR (50) ,
InvestmentType VARCHAR (50) ,
ProtfolioValue FLOAT 
);

-- Insert values into InvestorProfiles table
INSERT INTO InvestorProfiles VALUES
(1, 'John Doe', 35, 'High', 'Aggressive Growth', 50000.00),
(2, 'Jane Smith', 42, 'Medium', 'Balanced Growth', 40000.00),
(3, 'Mike Johnson', 29, 'Low', 'Conservative Growth', 30000.00),
(4, 'Emily Davis', 50, 'Medium', 'Income Focused', 45000.00),
(5, 'James Brown', 60, 'Low', 'Fixed Income', 60000.00),
(6, 'Patricia Wilson', 37, 'High', 'High Growth', 75000.00),
(7, 'David Taylor', 44, 'Medium', 'Dividend Focused', 35000.00),
(8, 'Linda Martinez', 33, 'High', 'Aggressive Growth', 80000.00),
(9, 'Michael Lee', 28, 'Low', 'Capital Preservation', 25000.00),
(10, 'Sarah Clark', 55, 'Medium', 'Balanced Growth', 55000.00);

-- Select data from InvestorProfiles table
SELECT * FROM InvestorProfiles;

-- Create MutualFundInvestments table
CREATE TABLE MutualFundInvestments (
InvestmentID INT PRIMARY KEY ,
InvestorID BIGINT ,
FundName VARCHAR (50) ,
InvestmentAmount FLOAT ,
InvestmentDate DATE ,
CurrentValue FLOAT 
);

-- Insert values into MutualFundInvestments table
INSERT INTO MutualFundInvestments VALUES
(1, 1, 'Equity Fund', 10000.00, '2020-01-15', 12000.00),
(2, 2, 'Balanced Fund', 15000.00, '2021-03-25', 17000.00),
(3, 3, 'Bond Fund', 8000.00, '2020-07-10', 8500.00),
(4, 4, 'Income Fund', 12000.00, '2022-05-05', 13000.00),
(5, 5, 'Growth Fund', 20000.00, '2020-11-30', 23000.00),
(6, 6, 'Index Fund', 25000.00, '2021-02-10', 27000.00),
(7, 7, 'Global Fund', 30000.00, '2022-08-01', 32000.00),
(8, 8, 'Sector Fund', 18000.00, '2021-06-15', 19000.00),
(9, 9, 'Dividend Fund', 7000.00, '2020-12-01', 7500.00),
(10, 10, 'Real Estate Fund', 22000.00, '2021-09-20', 24000.00);

-- Select data from MutualFundInvestments table
SELECT * FROM MutualFundInvestments;

-- Create MutualFundPerformanceMetrics table
CREATE TABLE MutualFundPerformanceMetrics (
MetricID INT PRIMARY KEY ,
FundName VARCHAR (50) ,
1YearReturn FLOAT  ,
3YearReturn FLOAT ,
5YearReturn FLOAT ,
SharpeRatio FLOAT 
);

-- Insert values into MutualFundPerformanceMetrics table
INSERT INTO MutualFundPerformanceMetrics VALUES
(1, 'Equity Fund', 12.00, 15.00, 18.00, 1.5),
(2, 'Balanced Fund', 8.00, 10.00, 12.00, 1.2),
(3, 'Bond Fund', 4.00, 5.00, 6.00, 0.8),
(4, 'Income Fund', 6.00, 7.00, 9.00, 1.0),
(5, 'Growth Fund', 14.00, 17.00, 20.00, 1.6),
(6, 'Index Fund', 7.00, 9.00, 10.00, 1.1),
(7, 'Global Fund', 10.00, 12.00, 13.00, 1.3),
(8, 'Sector Fund', 9.00, 11.00, 13.00, 1.2),
(9, 'Dividend Fund', 5.00, 6.00, 7.00, 0.9),
(10, 'Real Estate Fund', 8.00, 9.00, 10.00, 1.0);

-- Select data from MutualFundPerformanceMetrics table
SELECT * FROM MutualFundPerformanceMetrics;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to Google Financial and Risk Analysis --
-- Author : Mueez Mapari --

-- Creating database of Google Financial and Risk Analysis 
CREATE DATABASE Google_Financial_and_Risk_Analysis ;
USE Google_Financial_and_Risk_Analysis;


-- Table for Financial Performance Data
CREATE TABLE FinancialPerformance  (
Year INT PRIMARY KEY ,
Revenue FLOAT ,
Profit FLOAT ,
OperatingIncome FLOAT ,
NetIncome FLOAT ,
EPS FLOAT 
);

-- Inserting data into FinancialPerformance
INSERT INTO FinancialPerformance (Year, Revenue, Profit, OperatingIncome, NetIncome, EPS) VALUES
(2020, 182527.00, 40300.00, 50000.00, 30000.00, 23.25),
(2021, 257638.00, 55900.00, 70000.00, 45000.00, 35.50),
(2022, 278000.00, 62000.00, 75000.00, 49000.00, 40.00),
(2023, 300000.00, 65000.00, 80000.00, 52000.00, 42.00),
(2024, 320000.00, 70000.00, 85000.00, 55000.00, 45.00),
(2025, 340000.00, 75000.00, 90000.00, 58000.00, 48.00),
(2026, 360000.00, 80000.00, 95000.00, 60000.00, 50.00),
(2027, 380000.00, 85000.00, 100000.00, 62000.00, 52.00),
(2028, 400000.00, 90000.00, 105000.00, 64000.00, 55.00),
(2029, 420000.00, 95000.00, 110000.00, 66000.00, 58.00);

-- Select data from FinancialPerformance table
SELECT * FROM FinancialPerformance;

-- Table for Revenue Sources Data
CREATE TABLE RevenueSources (
SourceID INT PRIMARY KEY,        -- Unique identifier for each revenue source
SourceName VARCHAR(100),         -- Name of the revenue source
Revenue FLOAT,                   -- Revenue generated by the source
Percentage  FLOAT,               -- Percentage contribution to total revenue
Region VARCHAR(50),              -- Region where the source operates
GrowthRate  FLOAT                -- Growth rate of the revenue source
);

-- Inserting data into RevenueSources
INSERT INTO RevenueSources (SourceID, SourceName, Revenue, Percentage, Region, GrowthRate) VALUES
(1, 'Advertising', 140000.00, 70.00, 'Global', 8.00),
(2, 'Cloud Services', 25000.00, 12.50, 'North America', 12.00),
(3, 'Hardware Sales', 15000.00, 7.50, 'Asia', 5.00),
(4, 'Google Play', 8000.00, 4.00, 'Global', 10.00),
(5, 'YouTube', 12000.00, 6.00, 'Global', 9.00),
(6, 'Other Services', 5000.00, 2.50, 'Europe', 7.00),
(7, 'AdMob', 10000.00, 5.00, 'South America', 11.00),
(8, 'Google Maps', 7000.00, 3.50, 'Asia', 6.00),
(9, 'Google Fiber', 4000.00, 2.00, 'USA', 3.00),
(10, 'Pixel Devices', 9000.00, 4.50, 'North America', 13.00);

-- Select data from RevenueSources table
SELECT * FROM RevenueSources;

-- Table for Risk Factors Data
CREATE TABLE RiskFactors (
RiskID INT PRIMARY KEY,          -- Unique identifier for each risk
RiskName VARCHAR(100),           -- Name of the risk
ImpactLevel VARCHAR(20),         -- Impact level of the risk (High, Medium, Low)
Likelihood  FLOAT ,               -- Likelihood of the risk occurring
MitigationStrategy TEXT,         -- Strategy to mitigate the risk
RiskValue  FLOAT                 -- Estimated value of the risk impact
);

-- Inserting data into RiskFactors
INSERT INTO RiskFactors (RiskID, RiskName, ImpactLevel, Likelihood, MitigationStrategy, RiskValue) VALUES
(1, 'Data Privacy Regulations', 'High', 0.80, 'Compliance with new laws', 100000.00),
(2, 'Market Competition', 'Medium', 0.60, 'Innovation & Market Analysis', 50000.00),
(3, 'Legal Challenges', 'High', 0.75, 'Legal team & Risk Management', 75000.00),
(4, 'Cybersecurity Threats', 'High', 0.85, 'Enhanced Security Protocols', 90000.00),
(5, 'Economic Slowdown', 'Medium', 0.65, 'Cost Management & Diversification', 45000.00),
(6, 'Regulatory Pressure', 'High', 0.80, 'Strong lobbying & compliance', 85000.00),
(7, 'Product Failures', 'Medium', 0.55, 'R&D & Testing', 35000.00),
(8, 'Brand Reputation Damage', 'High', 0.75, 'PR & Crisis Management', 70000.00),
(9, 'Supply Chain Disruptions', 'Medium', 0.60, 'Diversified suppliers', 40000.00),
(10, 'Technological Disruption', 'High', 0.70, 'Investment in innovation', 80000.00);

-- Select data from RiskFactors table
SELECT * FROM RiskFactors;

-- Table for Employee Performance Data
CREATE TABLE EmployeePerformance (
EmployeeID INT PRIMARY KEY,        -- Unique identifier for each employee
Name VARCHAR(100),                 -- Name of the employee
Position VARCHAR(50),              -- Position of the employee in the company
Department VARCHAR(50),            -- Department of the employee
PerformanceScore  FLOAT,           -- Performance score of the employee
Bonus  FLOAT                      -- Bonus awarded to the employee based on performance
);

-- Inserting data into EmployeePerformance
INSERT INTO EmployeePerformance (EmployeeID, Name, Position, Department, PerformanceScore, Bonus) VALUES
(1, 'John Doe', 'Software Engineer', 'Engineering', 85.50, 5000.00),
(2, 'Jane Smith', 'Product Manager', 'Product', 90.00, 6000.00),
(3, 'Mike Johnson', 'Data Scientist', 'Engineering', 88.00, 5500.00),
(4, 'Emily Davis', 'Marketing Lead', 'Marketing', 80.00, 4000.00),
(5, 'William Brown', 'HR Manager', 'HR', 70.00, 3000.00),
(6, 'Emma White', 'Sales Lead', 'Sales', 85.00, 5000.00),
(7, 'Oliver Green', 'Design Lead', 'Design', 92.00, 6500.00),
(8, 'Sophia Harris', 'Finance Analyst', 'Finance', 78.00, 3500.00),
(9, 'Liam Martin', 'Customer Support', 'Support', 75.00, 3200.00),
(10, 'Isabella Lewis', 'Operations Manager', 'Operations', 82.00, 4500.00);

-- Select data from EmployeePerformance table
SELECT * FROM EmployeePerformance;

-- Table for Advertising Expenditure Data
CREATE TABLE AdvertisingExpenditure (
Year INT PRIMARY KEY,       -- Year of advertising expenditure
TotalSpend FLOAT,          -- Total advertising expenditure
DigitalAdvertising FLOAT , -- Digital advertising spend
TVAdvertising  FLOAT,       -- TV advertising spend
PrintAdvertising  FLOAT,   -- Print advertising spend
Sponsorship FLOAT          -- Sponsorship spend
);

-- Inserting data into AdvertisingExpenditure
INSERT INTO AdvertisingExpenditure (Year, TotalSpend, DigitalAdvertising, TVAdvertising, PrintAdvertising, Sponsorship) VALUES
(2020, 18000.00, 10000.00, 5000.00, 2000.00, 1000.00),
(2021, 22000.00, 12000.00, 6000.00, 2500.00, 1500.00),
(2022, 24000.00, 14000.00, 7000.00, 3000.00, 2000.00),
(2023, 26000.00, 16000.00, 8000.00, 3500.00, 2500.00),
(2024, 28000.00, 18000.00, 9000.00, 4000.00, 3000.00),
(2025, 30000.00, 20000.00, 10000.00, 4500.00, 3500.00),
(2026, 32000.00, 22000.00, 11000.00, 5000.00, 4000.00),
(2027, 34000.00, 24000.00, 12000.00, 5500.00, 4500.00),
(2028, 36000.00, 26000.00, 13000.00, 6000.00, 5000.00),
(2029, 38000.00, 28000.00, 14000.00, 6500.00, 5500.00);

-- Select data from AdvertisingExpenditure table
SELECT * FROM AdvertisingExpenditure;

------------------------------------------------------------ NEW DATABASE ---------------------------------------------------------------

-- This Database is designed to manage data related to Financial Performance, Revenue Sources, Risk Factors, Employee Performance, and Advertising Expenditures --
-- Author : Mueez Mapari --

-- Create the database named 'meta'
CREATE DATABASE meta;

-- Use the 'meta' database
USE meta;

-- Table for Financial Performance Data
CREATE TABLE FinancialPerformanceMeta (
Year INT PRIMARY KEY,           -- Year of financial performance
Revenue DECIMAL(10, 2),         -- Total revenue
Profit DECIMAL(10, 2),          -- Total profit
OperatingIncome DECIMAL(10, 2), -- Operating income
NetIncome DECIMAL(10, 2),       -- Net income after taxes and expenses
EPS DECIMAL(10, 2)              -- Earnings per share
);

-- Inserting data into FinancialPerformanceMeta
INSERT INTO FinancialPerformanceMeta VALUES
(2020, 86000.00, 18000.00, 22000.00, 15000.00, 8.30),
(2021, 120000.00, 23000.00, 28000.00, 18000.00, 12.50),
(2022, 130000.00, 25000.00, 30000.00, 19000.00, 14.00),
(2023, 145000.00, 27000.00, 33000.00, 20000.00, 15.00),
(2024, 160000.00, 29000.00, 35000.00, 21000.00, 16.00),
(2025, 175000.00, 31000.00, 37000.00, 22000.00, 17.00),
(2026, 185000.00, 32000.00, 39000.00, 23000.00, 18.00),
(2027, 200000.00, 34000.00, 41000.00, 24000.00, 19.00),
(2028, 215000.00, 36000.00, 43000.00, 25000.00, 20.00),
(2029, 230000.00, 38000.00, 45000.00, 26000.00, 21.00);

-- Select data from FinancialPerformanceMeta table
SELECT * FROM FinancialPerformanceMeta;

-- Table for Revenue Sources Data
CREATE TABLE RevenueSourcesMeta (
SourceID INT PRIMARY KEY,        -- Unique identifier for each revenue source
SourceName VARCHAR(100),         -- Name of the revenue source
Revenue DECIMAL(10, 2),          -- Revenue generated by the source
Percentage DECIMAL(10, 2),        -- Percentage contribution to total revenue
Region VARCHAR(50),              -- Region where the source operates
GrowthRate FLOAT                 -- Growth rate of the revenue source
);

-- Inserting data into RevenueSourcesMeta
INSERT INTO RevenueSourcesMeta VALUES
(1, 'Advertising', 70000.00, 58.00, 'Global', 6.00),
(2, 'Virtual Reality', 15000.00, 12.50, 'North America', 8.00),
(3, 'E-Commerce', 10000.00, 8.50, 'Europe', 10.00),
(4, 'Social Media Subscriptions', 5000.00, 4.00, 'Global', 15.00),
(5, 'Gaming', 12000.00, 10.00, 'Asia', 12.00),
(6, 'WhatsApp', 8000.00, 6.50, 'Global', 9.00),
(7, 'Messenger', 7000.00, 5.50, 'South America', 8.00),
(8, 'Instagram', 10000.00, 8.00, 'Europe', 7.00),
(9, 'Marketplace', 6000.00, 5.00, 'North America', 5.00),
(10, 'Other Services', 3000.00, 2.50, 'Africa', 3.00);

-- Select data from RevenueSourcesMeta table
SELECT * FROM RevenueSourcesMeta;

-- Table for Risk Factors Data
CREATE TABLE RiskFactorsMeta (
RiskID INT PRIMARY KEY,          -- Unique identifier for each risk
RiskName TEXT ,                  -- Name of the risk
ImpactLevel TEXT ,               -- Impact level of the risk (High, Medium, Low)
Likelihood DECIMAL(10, 2),        -- Likelihood of the risk occurring
MitigationStrategy TEXT ,        -- Strategy to mitigate the risk
RiskValue DECIMAL(10, 2)         -- Estimated value of the risk impact
);

-- Inserting data into RiskFactorsMeta
INSERT INTO RiskFactorsMeta VALUES
(1, 'Regulatory Scrutiny', 'High', 0.85, 'Compliance and Lobbying', 100000.00),
(2, 'Advertising Revenue Dependency', 'Medium', 0.60, 'Diversify Revenue Streams', 70000.00),
(3, 'Platform Security', 'High', 0.80, 'Enhanced Cybersecurity', 80000.00),
(4, 'Privacy Concerns', 'High', 0.90, 'User Consent & Data Management', 90000.00),
(5, 'Public Perception', 'Medium', 0.65, 'PR Management', 50000.00),
(6, 'Intellectual Property Issues', 'Medium', 0.50, 'Patents & Copyrights', 30000.00),
(7, 'Market Competition', 'High', 0.75, 'Innovation & Brand Loyalty', 95000.00),
(8, 'Geopolitical Risks', 'Medium', 0.60, 'Risk Diversification', 40000.00),
(9, 'Economic Downturn', 'Medium', 0.55, 'Cost Management', 35000.00),
(10, 'Cyber Attacks', 'High', 0.80, 'Strong Security Measures', 75000.00);

-- Select data from RiskFactorsMeta table
SELECT * FROM RiskFactorsMeta;

-- Table for Employee Performance Data
CREATE TABLE EmployeePerformanceMeta (
EmployeeID INT PRIMARY KEY,        -- Unique identifier for each employee
Name VARCHAR(100),                 -- Name of the employee
Position VARCHAR(50),              -- Position of the employee in the company
Department VARCHAR(50),            -- Department of the employee
PerformanceScore DECIMAL(10, 2),    -- Performance score of the employee
Bonus FLOAT                        -- Bonus awarded to the employee based on performance
);

-- Inserting data into EmployeePerformanceMeta
INSERT INTO EmployeePerformanceMeta VALUES
(1, 'Alice Green', 'Software Engineer', 'Engineering', 85.00, 5000.00),
(2, 'Bob White', 'Product Manager', 'Product', 90.00, 6000.00),
(3, 'Charlie Brown', 'Data Analyst', 'Engineering', 88.00, 5500.00),
(4, 'Daisy Williams', 'Marketing Specialist', 'Marketing', 80.00, 4000.00),
(5, 'Ella Harris', 'HR Coordinator', 'HR', 78.00, 3500.00),
(6, 'Frank Moore', 'Sales Manager', 'Sales', 84.00, 4500.00),
(7, 'Grace Lee', 'Design Specialist', 'Design', 92.00, 6500.00),
(8, 'Henry Scott', 'Finance Manager', 'Finance', 76.00, 3000.00),
(9, 'Isla Taylor', 'Customer Support', 'Support', 70.00, 2800.00),
(10, 'Jack Johnson', 'Operations Director', 'Operations', 80.00, 4000.00);

-- Select data from EmployeePerformanceMeta table
SELECT * FROM EmployeePerformanceMeta;

-- Table for Advertising Expenditure Data
CREATE TABLE AdvertisingExpenditureMeta (
Year INT PRIMARY KEY,          -- Year of advertising expenditure
TotalSpend DECIMAL(10, 2),     -- Total advertising expenditure
DigitalAdvertising DECIMAL(10, 2), -- Digital advertising spend
TVAdvertising FLOAT ,               -- TV advertising spend
PrintAdvertising DECIMAL(10, 2), -- Print advertising spend
Sponsorship FLOAT                 -- Sponsorship spend
);

-- Inserting data into AdvertisingExpenditureMeta
INSERT INTO AdvertisingExpenditureMeta VALUES
(2020, 15000.00, 8000.00, 4000.00, 1500.00, 1000.00),
(2021, 20000.00, 10000.00, 5000.00, 2000.00, 1500.00),
(2022, 22000.00, 12000.00, 6000.00, 2500.00, 2000.00),
(2023, 24000.00, 14000.00, 7000.00, 3000.00, 2500.00),
(2024, 26000.00, 16000.00, 8000.00, 3500.00, 3000.00),
(2025, 28000.00, 18000.00, 9000.00, 4000.00, 3500.00),
(2026, 30000.00, 20000.00, 10000.00, 4500.00, 4000.00),
(2027, 32000.00, 22000.00, 11000.00, 5000.00, 4500.00),
(2028, 34000.00, 24000.00, 12000.00, 5500.00, 5000.00),
(2029, 36000.00, 26000.00, 13000.00, 6000.00, 5500.00);

-- Select data from AdvertisingExpenditureMeta table
SELECT * FROM AdvertisingExpenditureMeta;

------------------------------------------------------------ NEW DATABASE -------------------------------------------------------------------

-- This Database is designed to manage data related to Financial Performance, Revenue Sources, Risk Factors, Employee Performance, and Advertising Expenditures --
-- Author : Mueez Mapari --
-- Database: World Bank

-- Create the 'World Bank' database
CREATE DATABASE WorldBank;

-- Use the 'World Bank' database
USE WorldBank;

-- Table for Financial Performance Data
CREATE TABLE FinancialPerformanceWB (
Year INT PRIMARY KEY,           -- Year of financial performance
Revenue DECIMAL(10, 2),         -- Total revenue
Profit FLOAT ,                  -- Total profit
OperatingIncome DECIMAL(10, 2), -- Operating income
NetIncome DECIMAL(10, 2),       -- Net income after taxes and expenses
EPS FLOAT                       -- Earnings per share
);

-- Inserting data into FinancialPerformanceWB
INSERT INTO FinancialPerformanceWB VALUES
(2020, 100000.00, 20000.00, 25000.00, 15000.00, 10.50),
(2021, 110000.00, 22000.00, 27000.00, 16000.00, 12.00),
(2022, 120000.00, 24000.00, 29000.00, 17000.00, 13.50),
(2023, 130000.00, 26000.00, 31000.00, 18000.00, 15.00),
(2024, 140000.00, 28000.00, 33000.00, 19000.00, 16.50),
(2025, 150000.00, 30000.00, 35000.00, 20000.00, 18.00),
(2026, 160000.00, 32000.00, 37000.00, 21000.00, 19.50),
(2027, 170000.00, 34000.00, 39000.00, 22000.00, 21.00),
(2028, 180000.00, 36000.00, 41000.00, 23000.00, 22.50),
(2029, 190000.00, 38000.00, 43000.00, 24000.00, 24.00);

-- Select data from FinancialPerformanceWB
SELECT * FROM FinancialPerformanceWB;

-- Table for Revenue Sources Data
CREATE TABLE RevenueSourcesWB (
SourceID INT PRIMARY KEY,        -- Unique identifier for each revenue source
SourceName VARCHAR(100),         -- Name of the revenue source
Revenue DECIMAL(15, 2),          -- Revenue generated by the source
Percentage DECIMAL(5, 2),        -- Percentage contribution to total revenue
Region TEXT ,                      -- Region where the source operates
GrowthRate FLOAT                 -- Growth rate of the revenue source
);

-- Inserting data into RevenueSourcesWB
INSERT INTO RevenueSourcesWB VALUES
(1, 'Loan Assistance', 60000.00, 40.00, 'Global', 8.00),
(2, 'Investment Income', 30000.00, 20.00, 'North America', 6.00),
(3, 'Grants', 25000.00, 16.67, 'Africa', 7.00),
(4, 'Development Aid', 15000.00, 10.00, 'Asia', 5.00),
(5, 'Financial Consulting', 10000.00, 6.67, 'Europe', 9.00),
(6, 'Project Fund Management', 8000.00, 5.33, 'South America', 10.00),
(7, 'Environmental Programs', 7000.00, 4.67, 'Australia', 4.00),
(8, 'Research & Development', 4000.00, 2.67, 'Global', 11.00),
(9, 'Other Income', 2000.00, 1.33, 'Africa', 3.00),
(10, 'Sustainability Projects', 3000.00, 2.00, 'Asia', 8.00);

-- Select data from RevenueSourcesWB
SELECT * FROM RevenueSourcesWB;

-- Table for Risk Factors Data
CREATE TABLE RiskFactorsWB (
RiskID INT PRIMARY KEY,          -- Unique identifier for each risk
RiskName VARCHAR(100),           -- Name of the risk
ImpactLevel TEXT ,                -- Impact level of the risk (High, Medium, Low)
Likelihood DECIMAL(10, 2),        -- Likelihood of the risk occurring
MitigationStrategy TEXT ,        -- Strategy to mitigate the risk
RiskValue FLOAT                  -- Estimated value of the risk impact
);

-- Inserting data into RiskFactorsWB
INSERT INTO RiskFactorsWB VALUES
(1, 'Political Instability', 'High', 0.80, 'Diversified Investment Portfolio', 100000.00),
(2, 'Global Economic Slowdown', 'High', 0.75, 'Global Monitoring and Risk Assessment', 95000.00),
(3, 'Natural Disasters', 'Medium', 0.65, 'Disaster Recovery and Preparedness', 60000.00),
(4, 'Regulatory Changes', 'Medium', 0.60, 'Compliance and Legal Advisors', 45000.00),
(5, 'Inflationary Pressures', 'High', 0.80, 'Inflation Hedges', 75000.00),
(6, 'Currency Fluctuations', 'Medium', 0.55, 'Currency Risk Management', 50000.00),
(7, 'Debt Default', 'High', 0.70, 'Credit Assessment & Risk Management', 85000.00),
(8, 'Technological Disruptions', 'Low', 0.40, 'Tech Upgradation and Investment', 30000.00),
(9, 'Cybersecurity Threats', 'Medium', 0.65, 'Cyber Defense Systems', 55000.00),
(10, 'Geopolitical Tensions', 'Medium', 0.60, 'Risk Diversification', 70000.00);

-- Select data from RiskFactorsWB
SELECT * FROM RiskFactorsWB;

-- Table for Employee Performance Data
CREATE TABLE EmployeePerformanceWB (
EmployeeID INT PRIMARY KEY,        -- Unique identifier for each employee
Name VARCHAR(100),                 -- Name of the employee
Position VARCHAR(50),              -- Position of the employee in the company
Department VARCHAR(50),            -- Department of the employee
PerformanceScore DECIMAL(5, 2),    -- Performance score of the employee
Bonus FLOAT                        -- Bonus awarded to the employee based on performance
);

-- Inserting data into EmployeePerformanceWB
INSERT INTO EmployeePerformanceWB VALUES
(1, 'David Johnson', 'Economic Advisor', 'Economics', 90.00, 4000.00),
(2, 'Sarah Lee', 'Project Manager', 'Development', 85.00, 3500.00),
(3, 'Thomas Brown', 'Financial Analyst', 'Finance', 88.00, 3800.00),
(4, 'Olivia Harris', 'Risk Consultant', 'Risk Management', 82.00, 3000.00),
(5, 'Ethan Moore', 'Legal Advisor', 'Legal', 87.00, 3200.00),
(6, 'Emma Taylor', 'Policy Specialist', 'Policy', 91.00, 4200.00),
(7, 'Isla Clark', 'Operations Head', 'Operations', 84.00, 3300.00),
(8, 'Jack Roberts', 'Fund Manager', 'Finance', 86.00, 3400.00),
(9, 'Mia Martinez', 'Community Outreach', 'Outreach', 80.00, 2800.00),
(10, 'Liam Wilson', 'Senior Consultant', 'Consulting', 92.00, 4400.00);

-- Select data from EmployeePerformanceWB
SELECT * FROM EmployeePerformanceWB;

-- Table for Advertising Expenditure Data
CREATE TABLE AdvertisingExpenditureWB (
Year INT PRIMARY KEY,          -- Year of advertising expenditure
TotalSpend DECIMAL(10, 2),     -- Total advertising expenditure
DigitalAdvertising DECIMAL(10, 2), -- Digital advertising spend
TVAdvertising FLOAT  ,             -- TV advertising spend
PrintAdvertising DECIMAL(10, 2),   -- Print advertising spend
Sponsorship FLOAT                  -- Sponsorship spend
);

-- Inserting data into AdvertisingExpenditureWB
INSERT INTO AdvertisingExpenditureWB VALUES
(2020, 10000.00, 5000.00, 2000.00, 1500.00, 500.00),
(2021, 15000.00, 7000.00, 2500.00, 2000.00, 1000.00),
(2022, 17000.00, 8000.00, 3000.00, 2500.00, 1500.00),
(2023, 19000.00, 9000.00, 3500.00, 3000.00, 2000.00),
(2024, 21000.00, 10000.00, 4000.00, 3500.00, 2500.00),
(2025, 22000.00, 11000.00, 4500.00, 4000.00, 3000.00),
(2026, 24000.00, 12000.00, 5000.00, 4500.00, 3500.00),
(2027, 25000.00, 13000.00, 5500.00, 5000.00, 4000.00),
(2028, 26000.00, 14000.00, 6000.00, 5500.00, 4500.00),
(2029, 27000.00, 15000.00, 6500.00, 6000.00, 5000.00);

-- Select data from AdvertisingExpenditureWB
SELECT * FROM AdvertisingExpenditureWB;


------------------------------------------------------------ NEW DATABASE ----------------------------------------------------------------------
-- This Database is designed to manage data related to Stock Performance, Investment Risks, Market Volatility, and Investment Portfolio --
-- Author : Mueez Mapari --
-- Database: Stock Market

-- Create the 'Stock Market' database
CREATE DATABASE StockMarket;

-- Use the 'Stock Market' database
USE StockMarket;

-- Table for Stock Performance Data
CREATE TABLE StockPerformance (
Year INT PRIMARY KEY,
StockPrice DECIMAL(10, 2),
MarketCap DECIMAL(10, 2),
Volume DECIMAL(10, 2),
DividendYield FLOAT ,
EPS FLOAT 
);

-- Inserting data into StockPerformance
INSERT INTO StockPerformance VALUES
(2020, 150.00, 1000000.00, 200000.00, 2.50, 5.10),
(2021, 170.00, 1100000.00, 210000.00, 3.00, 5.50),
(2022, 180.00, 1150000.00, 220000.00, 3.20, 5.80),
(2023, 190.00, 1200000.00, 230000.00, 3.50, 6.00),
(2024, 200.00, 1250000.00, 240000.00, 3.80, 6.20),
(2025, 210.00, 1300000.00, 250000.00, 4.00, 6.50),
(2026, 220.00, 1350000.00, 260000.00, 4.20, 6.80),
(2027, 230.00, 1400000.00, 270000.00, 4.50, 7.00),
(2028, 240.00, 1450000.00, 280000.00, 4.70, 7.30),
(2029, 250.00, 1500000.00, 290000.00, 5.00, 7.50);

-- Select data from StockPerformance
SELECT * FROM StockPerformance;

-- Table for Investment Risk Factors Data
CREATE TABLE InvestmentRiskFactors (
RiskID INT PRIMARY KEY,
RiskName VARCHAR(100),
RiskLevel TEXT ,
Likelihood DECIMAL(10, 2),
MitigationStrategy TEXT ,
RiskValue FLOAT 
);

-- Inserting data into InvestmentRiskFactors
INSERT INTO InvestmentRiskFactors VALUES
(1, 'Market Volatility', 'High', 0.80, 'Diversified Portfolio', 100000.00),
(2, 'Economic Downturn', 'High', 0.75, 'Stable Asset Allocation', 95000.00),
(3, 'Interest Rate Changes', 'Medium', 0.60, 'Fixed Income Securities', 50000.00),
(4, 'Geopolitical Instability', 'Medium', 0.65, 'Risk Monitoring', 45000.00),
(5, 'Inflation Risk', 'High', 0.70, 'Hedge Funds', 75000.00),
(6, 'Currency Fluctuations', 'Medium', 0.55, 'Currency Hedging', 60000.00),
(7, 'Credit Risk', 'High', 0.85, 'Credit Risk Management', 90000.00),
(8, 'Liquidity Risk', 'Medium', 0.50, 'Cash Reserves', 30000.00),
(9, 'Cybersecurity Threats', 'Medium', 0.60, 'Cyber Defense Investments', 35000.00),
(10, 'Regulatory Changes', 'Low', 0.40, 'Legal Advisors', 25000.00);

-- Select data from InvestmentRiskFactors
SELECT * FROM InvestmentRiskFactors;

-- Table for Market Volatility Data
CREATE TABLE MarketVolatilityData (
Year INT PRIMARY KEY,
VolatilityIndex DECIMAL(10, 2),
MarketDecline DECIMAL(10, 2),
RecoveryRate DECIMAL(10, 2),
AvgDailyTrading FLOAT ,
InterestRate FLOAT 
);

-- Inserting data into MarketVolatilityData
INSERT INTO MarketVolatilityData VALUES
(2020, 10.50, 15.00, 80.00, 200000.00, 1.25),
(2021, 9.80, 10.00, 85.00, 210000.00, 1.50),
(2022, 11.20, 20.00, 75.00, 220000.00, 1.75),
(2023, 12.00, 18.00, 78.00, 230000.00, 2.00),
(2024, 12.50, 25.00, 82.00, 240000.00, 2.25),
(2025, 13.00, 22.00, 85.00, 250000.00, 2.50),
(2026, 14.00, 28.00, 80.00, 260000.00, 2.75),
(2027, 13.50, 24.00, 84.00, 270000.00, 3.00),
(2028, 14.50, 30.00, 85.00, 280000.00, 3.25),
(2029, 15.00, 35.00, 88.00, 290000.00, 3.50);

-- Select data from MarketVolatilityData
SELECT * FROM MarketVolatilityData;

-- Table for Stock Investment Portfolio Data
CREATE TABLE StockInvestmentPortfolio (
InvestmentID INT PRIMARY KEY,
StockSymbol VARCHAR(50),
PurchasePrice DECIMAL(10, 2),
Quantity BIGINT,
TotalInvestment DECIMAL(10, 2),
CurrentValue FLOAT
);

-- Inserting data into StockInvestmentPortfolio
INSERT INTO StockInvestmentPortfolio VALUES
(1, 'AAPL', 150.00, 100, 15000.00, 18000.00),
(2, 'GOOG', 2500.00, 50, 125000.00, 135000.00),
(3, 'AMZN', 3300.00, 30, 99000.00, 105000.00),
(4, 'MSFT', 280.00, 75, 21000.00, 22000.00),
(5, 'TSLA', 700.00, 20, 14000.00, 16000.00),
(6, 'FB', 350.00, 60, 21000.00, 23000.00),
(7, 'NFLX', 500.00, 40, 20000.00, 21000.00),
(8, 'NVDA', 500.00, 30, 15000.00, 16000.00),
(9, 'INTC', 60.00, 100, 6000.00, 6500.00),
(10, 'AMD', 100.00, 80, 8000.00, 8500.00);

-- Select data from StockInvestmentPortfolio
SELECT * FROM StockInvestmentPortfolio;

-- Table for Stock Market Risks Data
CREATE TABLE StockMarketRisks (
RiskID INT PRIMARY KEY,
RiskName VARCHAR(100),
RiskLevel VARCHAR(20),
Likelihood DECIMAL(10, 2),
MitigationStrategy TEXT ,
RiskValue FLOAT 
);

-- Inserting data into StockMarketRisks
INSERT INTO StockMarketRisks VALUES
(1, 'Market Crash', 'High', 0.90, 'Diversified Investments', 100000.00),
(2, 'Political Instability', 'Medium', 0.70, 'Risk Diversification', 75000.00),
(3, 'Interest Rate Hikes', 'High', 0.80, 'Fixed Income Instruments', 80000.00),
(4, 'Natural Disasters', 'Medium', 0.60, 'Insurance Coverage', 50000.00),
(5, 'Inflationary Pressures', 'High', 0.85, 'Inflation-Hedged Assets', 90000.00),
(6, 'Geopolitical Risks', 'Medium', 0.65, 'Global Investments', 55000.00),
(7, 'Credit Defaults', 'High', 0.75, 'Credit Risk Management', 70000.00),
(8, 'Currency Fluctuations', 'Medium', 0.55, 'Currency Hedging', 65000.00),
(9, 'Regulatory Changes', 'Low', 0.40, 'Legal Advisors', 30000.00),
(10, 'Cybersecurity Attacks', 'High', 0.80, 'Cyber Defense', 80000.00);

-- Select data from StockMarketRisks
SELECT * FROM StockMarketRisks;

