-- Total Revenue

SELECT
SUM(p.price * o.quantity) AS Total_Revenue
FROM Orders o
JOIN Products p
ON o.product_id = p.product_id;


-- Top Customers

SELECT
c.customer_name,
SUM(p.price * o.quantity) AS Revenue
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
JOIN Products p
ON o.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY Revenue DESC;


-- Best Selling Products

SELECT
p.product_name,
SUM(o.quantity) AS Units_Sold
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY Units_Sold DESC;