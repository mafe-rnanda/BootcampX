-- Get all cohorts with 18 or more students
SELECT cohorts.name AS cohort_name, COUNT(students.*) AS students_count
FROM students
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING COUNT(students.*) >= 18
ORDER BY students_count;