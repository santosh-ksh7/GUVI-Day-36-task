-- Find the number of movies each director has directed

SELECT *, count(title) AS total_movie_directed FROM movies
GROUP BY director;

-- Find the total domestic and international sales that can be attributed to each director

SELECT director, SUM(Domestic_sales+International_sales) FROM Boxoffice 
JOIN MOVIES
    ON movies.id = boxoffice.movie_id
GROUP BY director;