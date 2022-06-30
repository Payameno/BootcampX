SELECT COUNT(assistance_requests.*) AS assistance_requests, students.name AS students
FROM assistance_requests JOIN students ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;