-- Find the number of Artists in the studio (without a HAVING clause)

SELECT role, COUNT(*) as Number_of_artists
FROM employees
WHERE role = "Artist";

-- Find the number of Employees of each role in the studio

SELECT *, COUNT(*) FROM employees
GROUP BY role;

-- Find the total number of years employed by all Engineers

SELECT *, SUM(Years_employed) AS Tot_years FROM employees
where role like "engineer"
group by role;