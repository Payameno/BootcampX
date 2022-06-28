SELECT cohorts.name AS cohort_name, count(students.*) AS student_count
FROM cohorts 
JOIN students on cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY student_count;