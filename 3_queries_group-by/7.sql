SELECT students.name AS student, AVG(assignment_submissions.duration) 
AS average_completion, AVG(assignments.duration) AS average_estimated_duration
FROM students JOIN assignment_submissions on students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_estimated_duration;