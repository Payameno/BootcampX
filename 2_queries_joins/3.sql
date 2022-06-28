SELECT students.name AS student, COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students on assignment_submissions.student_id = students.id
GROUP BY students.name;