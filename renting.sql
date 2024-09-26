-- Creating the database
CREATE DATABASE Rentals;
-- creating the user talbe
CREATE TABLE Rentals.Users (
    UserID int NOT NULL,
    Username VARCHAR(255) NOT NULL,
    Passwords VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Registration_Date DATE NOT NULL,
    CustomerID INT,
    PRIMARY KEY (UserID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);
-- Inserting data into Users table
INSERT INTO Rentals.Users (UserID, Username, Passwords, Email, Registration_Date, CustomerID) VALUES
(1, 'johnDoe', 'johnsPass123', 'john.doe@example.com', '2023-01-01', 1),
(2, 'aliceJohnson', 'alicesPass123', 'alice.johnson@example.com', '2023-01-02', 2),
(3, 'robertSmith', 'robertsPass123', 'robert.smith@example.com', '2023-01-03', 3),
(4, 'mariaGarcia', 'mariasPass123', 'maria.garcia@example.com', '2023-01-04', 4),
(5, 'davidWilson', 'davidsPass123', 'david.wilson@example.com', '2023-01-05', 5),
(6, 'jenniferBrown', 'jennifersPass123', 'jennifer.brown@example.com', '2023-01-06', 6),
(7, 'michaelDavis', 'michaelsPass123', 'michael.davis@example.com', '2023-01-07', 7),
(8, 'elizabethMartinez', 'elizabethsPass123', 'elizabeth.martinez@example.com', '2023-01-08', 8),
(9, 'jamesLopez', 'jamesPass123', 'james.lopez@example.com', '2023-01-09', 9),
(10, 'emilyGonzalez', 'emilysPass123', 'emily.gonzalez@example.com', '2023-01-10', 10);

-- creating the customer table
CREATE TABLE Rentals.Customer (
    CustomerID int NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone VARCHAR(20)
    PRIMARY KEY (CustomerID)
);
-- Inserting data into Customer table
INSERT INTO Rentals.Customer (CustomerID, Name, Email, Phone) VALUES
(1, 'John Doe', 'john.doe@example.com', '555-0101'),
(2, 'Alice Johnson', 'alice.johnson@example.com', '555-0102'),
(3, 'Robert Smith', 'robert.smith@example.com', '555-0103'),
(4, 'Maria Garcia', 'maria.garcia@example.com', '555-0104'),
(5, 'David Wilson', 'david.wilson@example.com', '555-0105'),
(6, 'Jennifer Brown', 'jennifer.brown@example.com', '555-0106'),
(7, 'Michael Davis', 'michael.davis@example.com', '555-0107'),
(8, 'Elizabeth Martinez', 'elizabeth.martinez@example.com', '555-0108'),
(9, 'James Lopez', 'james.lopez@example.com', '555-0109'),
(10, 'Emily Gonzalez', 'emily.gonzalez@example.com', '555-0110');

-- creating the Employee table
CREATE TABLE Rentals.Employees (
    EmployeeID INT NOT NULL ,
    Role VARCHAR(255) NOT NULL,
    EmployeeContact VARCHAR(20),
    EmployeeEmail VARCHAR(255) NOT NULL,
    BookingID INT,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY(BookingID)  REFERENCES Booking(BookingID)
);
-- -- Inserting data into Rentals.Employee Table
INSERT INTO Rentals.Employees (EmployeeID, Role, EmployeeContact, EmployeeEmail, BookingID)
VALUES
    (1, 'Manager', '555-123-4567', 'manager@example.com', 1),
    (2, 'Staff', '555-987-6543', 'staff@example.com', 2),
    (3, 'Manager', '555-333-4444', 'manager2@example.com', 3),
    (4, 'Staff', '555-222-6666', 'staff2@example.com', 4),
    (5, 'Manager', '555-777-8888', 'manager3@example.com', 5),
    (6, 'Staff', '555-999-1111', 'staff3@example.com', 6),
    (7, 'Manager', '555-444-3333', 'manager4@example.com', 7),
    (8, 'Staff', '555-666-2222', 'staff4@example.com', 8),
    (9, 'Manager', '555-888-7777', 'manager5@example.com', 9),
    (10, 'Staff', '555-111-9999', 'staff5@example.com', 10);

-- creating the Payment table
CREATE TABLE Rentals.Payment (
    PaymentID INT ,
    UserID INT,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentMethod VARCHAR(50),
    PaymentDate DATE NOT NULL,
    PropertyID  INT,
    PRIMARY KEY (PaymentID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)
);
-- Inserting data into Payment table
INSERT INTO Rentals.Payment (PaymentID, UserID, Amount, PaymentMethod, PaymentDate, PropertyID)
VALUES
    (1, 1, 1500.00, 'Credit Card', '2023-02-16', 1),
    (2, 2, 2500.00, 'Bank Transfer', '2023-03-11', 2),
    (3, 3, 800.00, 'PayPal', '2023-04-06', 3),
    (4, 4, 1100.00, 'Credit Card', '2023-05-21', 4),
    (5, 5, 500.00, 'Cash', '2023-06-16', 5),
    (6, 6, 950.00, 'Credit Card', '2023-07-11', 6),
    (7, 7, 700.00, 'Bank Transfer', '2023-08-06', 7),
    (8, 8, 1300.00, 'PayPal', '2023-09-21', 8),
    (9, 9, 1100.00, 'Credit Card', '2023-10-16', 9),
    (10, 10, 600.00, 'Cash', '2023-11-11', 10);

-- creating the location table
CREATE TABLE Rentals.Location (
    LocationID INT ,
    City VARCHAR(255) NOT NULL,
    Postcode VARCHAR(20) NOT NULL,
    StreetName VARCHAR(255) NOT NULL,
    Latitude VARCHAR(30),
    Longitude VARCHAR(30),
    PRIMARY KEY (LocationID)
);
-- Inserting data into Location table
INSERT INTO Rentals.Location (LocationID, City, Postcode, StreetName, Latitude, Longitude) VALUES
(1, 'New York', '10001', '5th Avenue', '40.7128', '-74.0060'),
(2, 'Los Angeles', '90001', 'Sunset Boulevard', '34.0522', '-118.2437'),
(3, 'Chicago', '60007', 'Michigan Avenue', '41.8781', '-87.6298'),
(4, 'Houston', '77001', 'Westheimer Road', '29.7604', '-95.3698'),
(5, 'Phoenix', '85001', 'Camelback Road', '33.4484', '-112.0740'),
(6, 'Philadelphia', '19019', 'Market Street', '39.9526', '-75.1652'),
(7, 'San Antonio', '78205', 'Broadway Street', '29.4241', '-98.4936'),
(8, 'San Diego', '92101', 'Gaslamp Quarter', '32.7157', '-117.1611'),
(9, 'Dallas', '75201', 'Elm Street', '32.7767', '-96.7970'),
(10, 'San Jose', '95101', 'Santa Clara Street', '37.3382', '-121.8863');

-- creating the Property table 
CREATE TABLE Rentals.Property (
    PropertyID INT NOT NULL,
    LocationID INT,
    Type VARCHAR(50) NOT NULL,
    Size INT,
    AvailableFrom DATE NOT NULL,
    MinContractTenure INT,
    PRIMARY KEY (PropertyID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);
-- Inserting data into Property tables
INSERT INTO Rentals.Property (PropertyID, LocationID, Type, Size, AvailableFrom, MinContractTenure) VALUES
(1, 1, 'Apartment', 70, '2023-02-01', 12),
(2, 2, 'House', 120, '2023-02-15', 12),
(3, 3, 'Studio', 45, '2023-03-01', 12),
(4, 4, 'Flat', 100, '2023-03-15', 12),
(5, 5, 'Apartment', 60, '2023-04-01', 12),
(6, 6, 'House', 200, '2023-04-15', 12),
(7, 7, 'Studio', 50, '2023-05-01', 12),
(8, 8, 'Flat', 110, '2023-05-15', 12),
(9, 9, 'Apartment', 75, '2023-06-01', 12),
(10, 10, 'House', 180, '2023-06-15', 12);
-- creating the booking table
CREATE TABLE Rentals.Booking (
    BookingID INT NOT NULL ,
    UserID INT,
    PropertyID INT,
    BookingDate DATE NOT NULL,
    PRIMARY KEY (BookingID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)
);
-- Inserting data into Booking tables
INSERT INTO Rentals.Booking (BookingID, UserID, PropertyID, BookingDate) VALUES
(1, 1, 1, '2023-02-20'),
(2, 2, 2, '2023-03-05'),
(3, 3, 3, '2023-03-20'),
(4, 4, 4, '2023-04-05'),
(5, 5, 5, '2023-04-20'),
(6, 6, 6, '2023-05-05'),
(7, 7, 7, '2023-05-20'),
(8, 8, 8, '2023-06-05'),
(9, 9, 9, '2023-06-15'),
(10, 10,10, '2023-07-01');

-- creating the property details table 
CREATE TABLE Rentals.PropertyDetails (
    PropertyID INT NOT NULL,
    NumBedrooms INT NOT NULL,
    NumToilets INT NOT NULL,
    PRIMARY KEY (PropertyID), 
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)
);
-- -- Inserting data into PropertyDetails Table
INSERT INTO Rentals.PropertyDetails (PropertyID, NumBedrooms, NumToilets)
VALUES
    (1, 2, 2),
    (2, 3, 3),
    (3, 2, 1),
    (4, 2, 1),
    (5, 5, 5),
    (6, 2, 1),
    (7, 2, 1),
    (8, 4, 2),
    (9, 3, 4),
    (10, 1, 1);