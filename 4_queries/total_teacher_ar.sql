SELECT Count(*) as total_assistance, name
From teachers
JOIN assistance_requests ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY name;