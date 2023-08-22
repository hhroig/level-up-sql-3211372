-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT Orders.CustomerID,
 COUNT(*) AS NumberOfOrders,
 FirstName, LastName,
 Email, Address, City, Phone,
 Birthday, FavoriteDish
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.CustomerID
ORDER BY NumberOfOrders DESC;