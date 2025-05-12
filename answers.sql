-- Question 1 Achieving 1NF (First Normal Form)

SELECT
OrderId,
CustomerName,
LTRIM(RTRIM(value)) AS Product
FROM ProductDetail
CROSS APPLY STRING_SPLIT(Products, ',');


-- Question 2 Achieving 2NF (Second Normal Form)

CREATE TABLE Orders AS
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

CREATE TABLE OrderItems AS
SELECT OrderID, Product, Quantity
FROM OrderDetails;