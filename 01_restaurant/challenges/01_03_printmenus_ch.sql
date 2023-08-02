-- Create reports that will be used to make three menus.
SELECT * FROM Dishes;
-- Create a report with all the items sorted by price (lowest to highest).
SELECT Name FROM Dishes
ORDER BY Price;
-- Create a report showing appetizers and beverages.
SELECT Name FROM Dishes
WHERE Type IN ('Appetizer', 'Beverage')
ORDER BY Price;
-- Create a report with all items except beverages.
SELECT Name FROM Dishes
WHERE Type NOT LIKE 'Beverage'
ORDER BY Price;