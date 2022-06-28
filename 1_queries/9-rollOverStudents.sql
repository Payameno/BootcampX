SELECT students.name AS Student_name, cohorts.name AS cohort_name, students.start_date AS stundet_start_date, cohorts.start_date AS Cohort_start_date
FROM students JOIN cohorts on students.cohort_id = cohorts.id
WHERE students.start_date != cohorts.start_date
ORDER BY Cohort_start_date;