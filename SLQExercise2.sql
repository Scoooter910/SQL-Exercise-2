-- find all products
SELECT * FROM Products;
-- find all products that cost $1400
SELECT * FROM Products
 WHERE Price = 1400;
-- find all products that cost $11.99 or $13.99
SELECT * FROM Products
WHERE Price = 11.99 OR Price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM Products
WHERE NOT Price = 11.99;
-- find all products and sort them by price from greatest to least
SELECT * FROM Products
ORDER BY Price desc;
-- find all employees who don't have a middle initial
SELECT * FROM Employees
WHERE MiddleInitial is NULL;
-- find distinct product prices
SELECT DISTINCT(Price) FROM Products;

-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM Employees
WHERE FirstName LIKE 'j%';

-- find all Macbooks
SELECT * FROM Products
WHERE Name LIKE '%Macbook%';
-- find all products that are on sale
SELECT * FROM Products
WHERE OnSale = 1;

-- find the average price of all products
SELECT AVG(Price) FROM Products;

-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM Employees
WHERE Title LIKE '%Geek Squad%' AND MiddleInitial IS NULL;

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * FROM Products
WHERE StockLevel BETWEEN 500 AND 1200
ORDER BY Price asc;
