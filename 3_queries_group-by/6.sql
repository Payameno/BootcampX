SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM assignment_submissions
JOIN students on assignment_submissions.student_id = students.id
WHERE end_date IS NULl
GROUP BY student
ORDER BY average_assignment_duration DESC;