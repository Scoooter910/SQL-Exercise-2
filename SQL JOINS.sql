/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT P.Name as Product, C.Name AS Category FROM Products AS P
 INNER JOIN Categories AS C ON C.CategoryID = P.CategoryID 
 WHERE C.Name = "Computers";
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT P.Name, P.Price, R.Rating FROM Products as P
INNER JOIN Reviews AS R ON R.ProductID = P.ProductID
WHERE R.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT E.FIRSTNAME, E.LASTNAME, SUM(S.Quantity) AS Total FROM Sales AS S
INNER JOIN Employees AS E ON E.EmployeeID = S.EMPLOYEEID
GROUP BY E.EmployeeID
ORDER BY TOTAL DESC
LIMIT 2;
SELECT * FROM Sales
WHERE EmployeeID = 33809;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT D.Name AS 'Department Name', C.Name AS 'Category Name' FROM Departments AS D
INNER JOIN Categories AS C ON C.DepartmentID = D.DepartmentID
WHERE C.Name = 'Appliances' OR C.Name = 'Games';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT P.NAME, SUM(S.Quanity) AS 'Tototal Sold', SUM(S.Quantity * S.PricePerUnit) AS 'Total Price'
FROM Products AS P 
INNER JOIN Sales AS S ON S.ProductID
WHERE P.ProductID = 97;
SELECT * FROM Sales 
WHERE ProductID = 97;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT P.NAME, R.Reviewer, R.Rating, r.Comment
FROM Products AS P
INNER JOIN Reviews AS R ON R.ProductID = P.ProductID
WHERE P.ProductID = 857 AND R.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
SELECT E.EmployeeID, E.FirstName, E.LastName, P.Name, SUM(S.Quantity) AS TotalSold
FROM Sales AS S
INNER JOIN Employees AS E ON E.EmployeeID = S.EmployeeID
INNER JOIN Products AS P ON P.ProductID = S.ProductID
GROUP BY E.EmployeeID, P.ProductID;