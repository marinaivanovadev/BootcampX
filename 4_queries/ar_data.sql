
SELECT students.name as student, teachers.name as teacher, assignments.name as assignment, (assistance_requests.completed_at - assistance_requests.started_at) as duration

From assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN teachers ON assistance_requests.teacher_id = teachers.id
JOIN assignments ON assistance_requests.assignment_id = assignments.id

Order BY duration;