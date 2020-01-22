-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT  p.ProductName, c.CategoryName 
FROM Product p 
JOIN Category c
ON p.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.id, Shipper.CompanyName 
FROM "Order" o
JOIN Shipper 
ON o.ShipVia = Shipper.Id 
WHERE o.OrderDate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.ProductName, od.Quantity 
FROM "Order" o 
JOIN OrderDetail od
ON o.Id = od.OrderId
JOIN Product p
ON p.Id = od.ProductId 
WHERE o.id = 10251
ORDER by ProductName ASC

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.


SELECT o.Id OrderId, c.CompanyName, e.LastName 
FROM "Order" o 
JOIN Customer c
ON o.CustomerId = c.Id
JOIN Employee e
ON o.EmployeeId = e.Id 