SELECT assignments.id as id, assignments.name as name, assignments.day as day, assignments.chapter as chapter, count(assistance_requests.*) as total_requests
FROM assistance_requests
JOIN assignments on assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;