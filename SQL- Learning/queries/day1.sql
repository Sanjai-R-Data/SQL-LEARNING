--day 01

--Q1.retreive customers from USA.
SELECT * FROM sales.customers
WHERE Country = 'USA';
--Q2.orders with sales > 50.
SELECT * from Sales.Orders
WHERE Sales > 50;
-- Q3: Top 5 highest sales
SELECT TOP 5 * FROM sales.Orders
ORDER BY Sales DESC;
-- Q4: Employees in Sales department
SELECT * FROM sales.Employees
WHERE Department = 'Sales';
-- Q5: Orders with NULL ShipAddress
SELECT * FROM sales.Orders
WHERE ShipAddress IS NULL;