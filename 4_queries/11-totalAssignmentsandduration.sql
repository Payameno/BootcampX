SELECT assignments.day AS day, 
COUNT(assignments.*) AS total_assignments, 
SUM(assignments.duration) AS total_duraton
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;