-- Calculate the average total duration of assistance requests for each cohort
SELECT AVG(total_duration) as average_total_duration
FROM (
  SELECT 
  cohorts.name AS cohort, 
  SUM(completed_at - started_at) as total_duration
FROM students
JOIN cohorts
  ON cohort_id = cohorts.id
JOIN assistance_requests
  ON student_id = students.id
  GROUP BY cohorts.name
ORDER BY total_duration
) AS average_per_cohort;
