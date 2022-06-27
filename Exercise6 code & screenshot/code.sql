-- Find the domestic and international sales for each movie

SELECT Title, Domestic_sales, International_sales  FROM Boxoffice 
INNER JOIN Movies 
    ON Movies.Id  = Boxoffice.Movie_id;

-- Show the sales numbers for each movie that did better internationally rather than domestically

SELECT Title, Domestic_sales, International_sales  FROM Boxoffice 
INNER JOIN Movies
    ON Movies.Id = boxoffice.Movie_id
WHERE International_sales > Domestic_sales;

-- List all the movies by their ratings in descending order

SELECT Title, Rating FROM Boxoffice 
INNER JOIN Movies
    ON Movies.Id = Boxoffice.Movie_id
ORDER BY Rating DESC;