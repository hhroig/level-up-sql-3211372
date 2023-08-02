-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation.  (July 29, 2022)
-- Today is July 24, 2022. 

SELECT * FROM Customers
WHERE FirstName = 'Norby';

-- Check which one is it:
SELECT * FROM Reservations
WHERE CustomerID = ( SELECT CustomerID FROM Customers
WHERE FirstName = 'Norby' ) AND Date > '2022-07-24';


-- Remove:
DELETE FROM Reservations
WHERE CustomerID = ( SELECT CustomerID FROM Customers
WHERE FirstName = 'Norby' ) AND Date > '2022-07-24';

-- Check:
SELECT * FROM Reservations
WHERE CustomerID = ( SELECT CustomerID FROM Customers
WHERE FirstName = 'Norby' )
ORDER BY Date DESC;