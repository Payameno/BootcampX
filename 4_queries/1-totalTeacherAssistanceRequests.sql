SELECT count(assistance_requests.*) AS total_requests, teachers.name AS name
FROM assistance_requests JOIN teachers ON teachers.id = teacher_id
WHERE teachers.name LIKE 'Waylon Boehm'
GROUP BY teachers.name;