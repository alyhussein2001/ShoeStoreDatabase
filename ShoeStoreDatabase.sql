--Table structure for table 'ShoeInfo'
CREATE TABLE ShoeInfo (
    ShoeID   INTEGER PRIMARY KEY
                     UNIQUE
                     NOT NULL,
    Brand    TEXT    NOT NULL,
    ShoeName TEXT    NOT NULL,
    Gender   TEXT    NOT NULL,
    Size     INTEGER NOT NULL,
    Price    NUMERIC NOT NULL,
);

--Table structure for table 'Customer'
CREATE TABLE Customer (
    CustomerID	INTEGER PRIMARY KEY
			UNIQUE
			NOT NULL,
    FirstName	TEXT	NOT NULL,
    LastName	TEXT	NOT NULL,
    Email	TEXT	NOT NULL,
);

--Table structure for table 'Order'
CREATE TABLE Order (
    OrderID	INTEGER PRIMARY KEY
			UNIQUE
			NOT NULL,
    CustomerID	INTEGER	NOT NULL
			REFERENCES Customer (CustomerID),
    OrderDate	DATE	NOT NULL
    ShoeID	INTEGER	NOT NULL
			REFERENCES ShoeInfo (ShoeID),

);

--Inserting data into the ShoeInfo table
INSERT INTO ShoeInfo (ShoeID, Brand, ShoeName, Gender, Size, Price)
VALUES (101, 'Nike', 'Airmax 95', 'M', 9, 119.99),
(102, 'Nike', 'Airmax 95', 'W', 6, 114.99),
(103, 'Adidas', 'Ultraboost 3.0', 'M', 11, 132.99),
(104, 'Adidas', 'Samba', 'M', 10, 99.99),
(105, 'New Balance', '574', 'M', 9.5, 79.99);

--Inserting data into the Customer table
INSERT INTO Customer (CustomerID, FirstName, LastName, Email)
VALUES (1, 'Jane', 'Smith', 'jane.smith@example.com')
(2, 'John', 'Doe', 'john.doe@example.com')
(3, 'Mike', 'Johnson', mike.johnson@example.com')
(4, 'Jackie', 'Norma', jackie.norma@example.com')
(5, 'Zane', 'Bean', 'zane.bean@example.com');

--Inserting data into the Order table
INSERT INTO Order(OrderID, CustomerID, OrderDate, ShoeID)
VALUES(201, 1, '2024-01-28', 102),
(202, 2, '2024-01-21', 104),
(203, 3, '2024-01-13', 103),
(204, 4, '2024-01-20', 101),
(205, 5, '2024-01-25', 105);

--Display all customers
SELECT * FROM Customers;

--Display customer details along with their orders
SELECT Customer.CustomerID, FirstName, LastName, Email, OrderID, OrderDate
FROM Customer
JOIN Order ON Customer.CustomerID = Order.CustomerID;

--Display customers who have not placed any orders
SELECT Customer.CustomerID, FirstName, LastName, Email
FROM Customer
LEFT JOIN Order ON Customer.CustomerID = Order.CustomerID
WHERE Order.OrderID IS NULL;

--Display most recent order for each customer
SELECT Customer.CustomerID, FirstName, LastName, Email, MAX(OrderDate) AS LatestOrderDate
FROM Customer
LEFT JOIN Order ON Customer.CustomerID = Order.CustomerID
GROUP BY Customer.CustomerID;

