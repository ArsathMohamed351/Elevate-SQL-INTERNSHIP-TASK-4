# Elevate-SQL-INTERNSHIP-TASK-4


# SQL Intern Task 4 – Aggregate Functions and Grouping

This task is about learning how to use basic SQL functions to summarize data.

---

## ✔ What I Did (Simple Explanation)

### 1. Created a Database  
Made a new database to store the Sales table.

### 2. Created a Table  
Created a table called **Sales** with:
- Product  
- Category  
- Quantity  
- Price  

### 3. Inserted Data  
Added sample data into the table.

### 4. Used Aggregate Functions  
- `SUM()` → total  
- `AVG()` → average  
- `COUNT()` → number of rows  

### 5. Used GROUP BY  
Grouped data by **Category** to get totals and averages for each group.

### 6. Used HAVING  
Filtered grouped data using conditions like:
- Total quantity > 10  
- Average price > 1000  

---

## ✔ SQL Code Used

```sql
CREATE DATABASE IF NOT EXISTS SQL_INTERN_TASK_4;
USE SQL_INTERN_TASK_4;

CREATE TABLE Sales (
    SaleID INTEGER PRIMARY KEY,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2)
);

INSERT INTO Sales (SaleID, Product, Category, Quantity, Price) VALUES
(1, 'Shirt', 'Clothing', 5, 400),
(2, 'Jeans', 'Clothing', 3, 1200),
(3, 'Laptop', 'Electronics', 2, 55000),
(4, 'Mouse', 'Electronics', 10, 500),
(5, 'Shampoo', 'Cosmetics', 6, 150),
(6, 'Cream', 'Cosmetics', 2, 300),
(7, 'Keyboard', 'Electronics', 4, 1500),
(8, 'T-shirt', 'Clothing', 8, 350);

SELECT * FROM Sales;

SELECT SUM(Quantity) AS Total_Quantity FROM Sales;
SELECT AVG(Price) AS Average_Price FROM Sales;
SELECT COUNT(*) AS Total_Records FROM Sales;

SELECT Category, SUM(Quantity) AS Total_Quantity
FROM Sales
GROUP BY Category;

SELECT Category, AVG(Price) AS Avg_Price
FROM Sales
GROUP BY Category;

SELECT Category, COUNT(*) AS Total_Products
FROM Sales
GROUP BY Category;

SELECT Category, SUM(Quantity) AS Total_Quantity
FROM Sales
GROUP BY Category
HAVING SUM(Quantity) > 10;

SELECT Category, AVG(Price) AS Avg_Price
FROM Sales
GROUP BY Category
HAVING AVG(Price) > 1000;
