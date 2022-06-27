-- List all movies and their combined sales in millions of dollars

SELECT title, (Domestic_sales+International_sales)/1000000 AS Combined_sales  FROM Boxoffice
LEFT JOIN Movies
    ON Boxoffice.Movie_id=Movies.id;

-- List all movies and their ratings in percent

SELECT title, Rating*10 AS rating_in_percentage FROM boxoffice
INNER JOIN Movies
    ON Movies.id=Boxoffice.movie_id;

-- List all movies that were released on even number years

SELECT Title FROM movies
WHERE Year%2=0;