--Q1: Full name of customers (First + Last)
SELECT 
    FirstName + ' ' + LastName AS FullName
FROM sales.Customers;

--Q2: Convert customer names to uppercase
SELECT 
    UPPER(FirstName) AS FirstName_Upper
FROM sales.Customers;

--Q3: Get first 3 letters of employee names
SELECT 
    LEFT(FirstName, 3) AS ShortName
FROM sales.Employees;

--Q4: Find customers whose name ends with 'n'
SELECT *
FROM sales.Customers
WHERE FirstName LIKE '%n';

--Q5: Length of each customer name
SELECT 
    FirstName,
    LEN(FirstName) AS NameLength
FROM sales.Customers;

--Q6: Round sales values
SELECT 
    Sales,
    ROUND(Sales, 0) AS RoundedSales
FROM sales.Orders;

--Q7: Find highest and lowest sales
SELECT 
    MAX(Sales) AS max_sales,
    MIN(Sales) AS min_sales
FROM sales.Orders;

--Q8: Absolute difference (simulate)
SELECT 
    ABS(Sales - 50) AS difference
FROM sales.Orders;

--Q9: Increase salary by 10%
SELECT 
    FirstName,
    Salary,
    Salary * 1.10 AS IncreasedSalary
FROM sales.Employees;

--Q10: Clean and format customer names
SELECT 
    UPPER(LEFT(FirstName,1)) + LOWER(SUBSTRING(FirstName,2,LEN(FirstName))) AS CleanName
FROM sales.Customers;

--Q11: Categorize orders based on sales
SELECT 
    OrderID,
    Sales,
    CASE 
        WHEN Sales > 100 THEN 'High'
        WHEN Sales BETWEEN 50 AND 100 THEN 'Medium'
        ELSE 'Low'
    END AS Category
FROM sales.Orders;