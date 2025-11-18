# Elevate-SQL-INTERNSHIP-TASK-4


-- Simple SQL Intern Task 4
-- Aggregate Functions + Group By + Having

-- Create a new database
CREATE DATABASE IF NOT EXISTS SQL_INTERN_TASK_4;
USE SQL_INTERN_TASK_4;

-- Create the Sales table
CREATE TABLE Sales (
    SaleID INTEGER PRIMARY KEY,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2)
);

-- Insert sample values
INSERT INTO Sales (SaleID, Product, Category, Quantity, Price) VALUES
(1, 'Shirt', 'Clothing', 5, 400),
(2, 'Jeans', 'Clothing', 3, 1200),
(3, 'Laptop', 'Electronics', 2, 55000),
(4, 'Mouse', 'Electronics', 10, 500),
(5, 'Shampoo', 'Cosmetics', 6, 150),
(6, 'Cream', 'Cosmetics', 2, 300),
(7, 'Keyboard', 'Electronics', 4, 1500),
(8, 'T-shirt', 'Clothing', 8, 350);

-- Show all data
SELECT * FROM Sales;

-- Aggregate functions
SELECT SUM(Quantity) AS Total_Quantity FROM Sales;
SELECT AVG(Price) AS Average_Price FROM Sales;
SELECT COUNT(*) AS Total_Records FROM Sales;

-- Group by category
SELECT Category, SUM(Quantity) AS Total_Quantity
FROM Sales
GROUP BY Category;

SELECT Category, AVG(Price) AS Avg_Price
FROM Sales
GROUP BY Category;

SELECT Category, COUNT(*) AS Total_Products
FROM Sales
GROUP BY Category;

-- Using HAVING to filter groups
SELECT Category, SUM(Quantity) AS Total_Quantity
FROM Sales
GROUP BY Category
HAVING SUM(Quantity) > 10;

SELECT Category, AVG(Price) AS Avg_Price
FROM Sales
GROUP BY Category
HAVING AVG(Price) > 1000;
