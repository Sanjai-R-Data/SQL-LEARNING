--Day 02

--Q1: Total number of orders
SELECT COUNT(*) AS total_orders
FROM sales.Orders;

--Q2: Total revenue generated
SELECT SUM(Sales) AS total_revenue
FROM sales.Orders;

--Q3: Average order value
SELECT AVG(Sales) AS avg_order_value
FROM sales.Orders;

--Q4: Total orders per customer
SELECT CustomerID, COUNT(*) AS total_orders
FROM sales.Orders
GROUP BY CustomerID;

--Q5: Total revenue per customer
SELECT CustomerID, SUM(Sales) AS total_spent
FROM sales.Orders
GROUP BY CustomerID;

--Q6: Customers who spent more than 100
SELECT CustomerID, SUM(Sales) AS total_spent
FROM sales.Orders
GROUP BY CustomerID
HAVING SUM(Sales) > 100;

--Q7: Total revenue per country
SELECT c.Country, SUM(o.Sales) AS total_revenue
FROM sales.Orders o
JOIN sales.Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Country;

--Q8: Average salary per department
SELECT Department, AVG(Salary) AS avg_salary
FROM sales.Employees
GROUP BY Department;

--Q9: Employees count per department
SELECT Department, COUNT(*) AS employee_count
FROM sales.Employees
GROUP BY Department;

--Q10: Department with highest total salary
SELECT TOP 1 Department, SUM(Salary) AS total_salary
FROM sales.Employees
GROUP BY Department
ORDER BY total_salary DESC;