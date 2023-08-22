-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT COUNT(*) AS CountLoan, 
Loans.PatronID, Patrons.FirstName, Patrons.LastName, Patrons.Email
FROM Loans
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
GROUP BY Loans.PatronID
ORDER BY CountLoan
LIMIT 5;

-- every single patron have loaned a book:
SELECT * FROM Patrons
WHERE PatronID NOT IN (SELECT DISTINCT PatronID FROM Loans);