-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT *
FROM Loans
LEFT JOIN Patrons ON Patrons.PatronID = Loans.PatronID
LEFT JOIN Books ON Books.BookID = Loans.BookID
WHERE DueDate = '2022-07-13';


SELECT DueDate, Title, FirstName, Email 
FROM Loans
LEFT JOIN Patrons ON Patrons.PatronID = Loans.PatronID
LEFT JOIN Books ON Books.BookID = Loans.BookID
WHERE DueDate = '2022-07-13';