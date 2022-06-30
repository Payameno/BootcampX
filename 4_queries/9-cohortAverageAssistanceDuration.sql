SELECT AVG(total_duration) AS average_total_duration
FROM (
  SELECT SUM(assistance_requests.completed_at-assistance_requests.started_at) 
  AS total_duration, cohorts.name AS cohort
  FROM assistance_requests JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = students.cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) AS total_duration;