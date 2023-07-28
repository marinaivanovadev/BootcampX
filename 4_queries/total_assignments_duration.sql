SELECT day as day, COUNT(*) as number_of_assignments, SUM(duration) as duration
FROM assignments
Group BY day
ORDER BY day;