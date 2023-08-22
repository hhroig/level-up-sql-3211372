-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT * FROM Customers
WHERE LastName LIKE 'St%';

SELECT * FROM Customers
WHERE FirstName LIKE 'St%';


SELECT * FROM Reservations
WHERE 
CustomerID IN ( 
SELECT CustomerID FROM Customers
WHERE LastName LIKE 'St%'
) 
AND PartySize = 4
AND Date >= '2022-06-14';