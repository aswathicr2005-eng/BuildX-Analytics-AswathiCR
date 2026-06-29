-- Query 1: Show all placed students
SELECT *
FROM cleaned_dataset1
WHERE status = 'Placed';

-- Query 2: Count students in each specialisation
SELECT specialisation, COUNT(*) AS total_students
FROM cleaned_dataset1
GROUP BY specialisation;

-- Query 3: Top 10 highest salaries
SELECT salary
FROM cleaned_dataset1
ORDER BY salary DESC
LIMIT 10;

-- Query 4: Show specialisations having more than 20 students
SELECT specialisation, COUNT(*) AS total_students
FROM cleaned_dataset1
GROUP BY specialisation
HAVING COUNT(*) > 20;

-- Query 5: Students with degree percentage between 70 and 80
SELECT *
FROM cleaned_dataset1
WHERE degree_percentag BETWEEN 70 AND 80;

-- Query 6: Average salary by specialisation for placed students
SELECT specialisation,
       COUNT(*) AS placed_students,
       ROUND(AVG(salary),2) AS average_salary
FROM cleaned_dataset1
WHERE status = 'Placed'
GROUP BY specialisation
ORDER BY average_salary DESC;