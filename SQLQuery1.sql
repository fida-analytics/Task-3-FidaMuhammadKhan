USE project3;
GO

SELECT * FROM dbo.Orders;
SELECT * FROM dbo.OrdersTable;

SELECT COUNT(*) AS TotalOrders
FROM dbo.Orders;


SELECT SUM(UnitPrice * Quantity) AS TotalRevenue
FROM dbo.Orders;


SELECT AVG(UnitPrice * Quantity) AS AverageOrderValue
FROM dbo.Orders;


SELECT OrderStatus,
       COUNT(*) AS TotalOrders
FROM dbo.Orders
GROUP BY OrderStatus;


SELECT Product,
       SUM(UnitPrice * Quantity) AS Revenue
FROM dbo.Orders
GROUP BY Product
ORDER BY Revenue DESC;


SELECT Product,
       SUM(Quantity) AS QuantitySold
FROM dbo.Orders
GROUP BY Product
ORDER BY QuantitySold DESC;




SELECT ReferralSource,
       COUNT(*) AS OrdersCount
FROM dbo.Orders
GROUP BY ReferralSource
ORDER BY OrdersCount DESC;


SELECT TOP 10 *
FROM dbo.Orders
ORDER BY (UnitPrice * Quantity) DESC;



SELECT Month,
       COUNT(*) AS TotalOrders
FROM dbo.Orders
GROUP BY Month
ORDER BY TotalOrders DESC;