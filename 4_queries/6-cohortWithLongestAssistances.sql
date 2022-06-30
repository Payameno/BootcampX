SELECT AVG(assistance_requests.completed_at-assistance_requests.started_at) 
AS Durration, cohorts.name AS Cohort
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY Durration DESC
lIMIT 1;