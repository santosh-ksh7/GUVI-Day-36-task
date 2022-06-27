-- Find the list of all buildings that have employees

SELECT DISTINCT Building FROM employees;

-- Find the list of all buildings and their capacity

SELECT * FROM Buildings;

-- List all buildings and the distinct employee roles in each building (including empty buildings)

SELECT DISTINCT Role, Building_name FROM Buildings 
LEFT JOIN Employees 
    ON Buildings.Building_name = Employees.Building;