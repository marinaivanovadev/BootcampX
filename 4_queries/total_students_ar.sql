SELECT Count(*) as total_assistance, name
From students
JOIN assistance_requests ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY name;