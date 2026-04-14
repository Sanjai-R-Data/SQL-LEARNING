--Q1: Total sales per customer (with full name)
SELECT 
    c.FirstName,
    c.LastName,
    SUM(o.Sales) AS total_sales
FROM sales.Customers c
JOIN sales.Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName;

--Q2: Top 3 customers by total spending
SELECT TOP 3 
    c.FirstName,
    SUM(o.Sales) AS total_spent
FROM sales.Customers c
JOIN sales.Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName
ORDER BY total_spent DESC;

--Q3: Total sales handled by each employee
SELECT 
    e.FirstName,
    SUM(o.Sales) AS total_sales
FROM sales.Employees e
JOIN sales.Orders o ON e.EmployeeID = o.SalesPersonID
GROUP BY e.FirstName;

--Q4: Employee with highest sales
SELECT TOP 1 
    e.FirstName,
    SUM(o.Sales) AS total_sales
FROM sales.Employees e
JOIN sales.Orders o ON e.EmployeeID = o.SalesPersonID
GROUP BY e.FirstName
ORDER BY total_sales DESC;

--Q5: Number of orders handled by each employee
SELECT 
    e.FirstName,
    COUNT(o.OrderID) AS total_orders
FROM sales.Employees e
LEFT JOIN sales.Orders o ON e.EmployeeID = o.SalesPersonID
GROUP BY e.FirstName;