SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, sum(completed_at - started_at) as duration
FROM assistance_requests
JOIN teachers on teachers.id = teacher_id
JOIN students on students.id = student_id
JOIN assignments on assignments.id = assignment_id
GROUP BY students.name, teachers.name, assignments.name
ORDER BY duration ASC;