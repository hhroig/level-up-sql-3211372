-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(*) AS CountDracula FROM Books
WHERE Title = 'Dracula';

SELECT COUNT(*) AS CountDraculaLoans FROM Loans
WHERE BookID in (SELECT BookID FROM Books WHERE Title = 'Dracula') 
AND ReturnedDate ISNULL;

-- There's 1 in loan and 2 available!