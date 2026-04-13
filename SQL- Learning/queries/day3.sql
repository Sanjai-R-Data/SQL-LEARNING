--Day 03

--Q1: Customer names with their orders
SELECT c.FirstName, c.LastName, o.OrderID, o.Sales
FROM sales.Customers c
JOIN sales.Orders o ON c.CustomerID = o.CustomerID;

--Q2: Show ALL customers with or without orders
SELECT c.FirstName, o.OrderID
FROM sales.Customers c
LEFT JOIN sales.Orders o ON c.CustomerID = o.CustomerID;

--Q3: Customers who NEVER placed an order
SELECT c.*
FROM sales.Customers c
LEFT JOIN sales.Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

--Q4: Orders with employee (salesperson) name
SELECT o.OrderID, e.FirstName, e.LastName
FROM sales.Orders o
JOIN sales.Employees e ON o.SalesPersonID = e.EmployeeID;

--Q5: Full chain → Customer + Order + Employee
SELECT 
    c.FirstName AS Customer,
    o.OrderID,
    o.Sales,
    e.FirstName AS SalesPerson
FROM sales.Orders o
JOIN sales.Customers c ON o.CustomerID = c.CustomerID
JOIN sales.Employees e ON o.SalesPersonID = e.EmployeeID;

--Q6: Total sales per customer (with names)
SELECT c.FirstName, SUM(o.Sales) AS total_spent
FROM sales.Customers c
JOIN sales.Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName;

--Q7: Employees who didn’t handle any orders
SELECT e.*
FROM sales.Employees e
LEFT JOIN sales.Orders o ON e.EmployeeID = o.SalesPersonID
WHERE o.OrderID IS NULL;

--Q8: Orders with customer country
SELECT o.OrderID, c.Country, o.Sales
FROM sales.Orders o
JOIN sales.Customers c ON o.CustomerID = c.CustomerID;

--Q9: Compare current vs archived orders
SELECT o.OrderID, 'Current' AS Source
FROM sales.Orders o

UNION ALL

SELECT a.OrderID, 'Archive'
FROM sales.OrdersArchive a;

--Q10: Highest order per customer
SELECT c.FirstName, MAX(o.Sales) AS max_order
FROM sales.Customers c
JOIN sales.Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName;