-- SELECT SUM(assignment_submissions.duration) as total_duration
-- FROM students
-- INNER JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- INNER JOIN cohorts ON students.cohort_id = cohorts.id
-- WHERE cohorts.name = 'FEB12';
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';