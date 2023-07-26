-- SELECT cohorts.name as cohort_name, count(students.*) as student_count
-- FROM cohorts
-- INNER JOIN students
-- ON cohorts.id = students.cohort_id
-- GROUP BY cohorts.name
-- HAVING count(students.*) >= 18
-- ORDER BY count(students.name) ASC;
SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;