-- total number of assistance_requests for a student

SELECT count(assistance_requests.*) as total_assistances, students.name
FROM students
JOIN assistance_requests ON student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;