-- Get currently enrolled students' average assignment completion time.
-- Order the results from greatest duration to least greatest duration.

SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions
  ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;