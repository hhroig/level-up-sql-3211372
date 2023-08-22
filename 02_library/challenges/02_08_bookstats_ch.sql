-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- this solution includes repeated title
SELECT Published, COUNT(*) AS CountPublished
FROM Books
GROUP BY Published
ORDER BY Published ASC;

-- unique titles only:
SELECT Published, COUNT(DISTINCT(Title)) AS CountPublished
FROM Books
GROUP BY Published
ORDER BY Published ASC;

-- Report 2: Show the five books that have been
-- checked out the most.

-- Option 1: using only bookID
SELECT COUNT(*) AS CountLoan, Loans.BookID, Books.Title
FROM Loans
LEFT JOIN Books ON Loans.BookID = Books.BookID
GROUP BY Loans.BookID
ORDER BY CountLoan DESC
LIMIT 5;

-- Option 2: taking into account book title
SELECT COUNT(*) AS CountLoan, Loans.BookID, Books.Title
FROM Loans
LEFT JOIN Books ON Loans.BookID = Books.BookID
GROUP BY Books.Title
ORDER BY CountLoan DESC
LIMIT 5;