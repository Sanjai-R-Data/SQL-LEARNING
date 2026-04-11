-- sales_schema.sql

CREATE TABLE sales.Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Score INT
);

CREATE TABLE sales.Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    BirthDate DATE,
    Gender CHAR(1),
    Salary INT,
    ManagerID INT
);

CREATE TABLE sales.Orders (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SalesPersonID INT,
    OrderDate DATE,
    ShipDate DATE,
    OrderStatus VARCHAR(50),
    ShipAddress VARCHAR(100),
    BillAddress VARCHAR(100),
    Quantity INT,
    Sales INT,
    CreationTime DATETIME
);

CREATE TABLE sales.OrdersArchive (
    OrderID INT,
    ProductID INT,
    CustomerID INT,
    SalesPersonID INT,
    OrderDate DATE,
    ShipDate DATE,
    OrderStatus VARCHAR(50),
    ShipAddress VARCHAR(100),
    BillAddress VARCHAR(100),
    Quantity INT,
    Sales INT,
    CreationTime DATETIME
);