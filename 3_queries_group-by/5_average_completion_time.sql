SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions on students.id = student_id
WHERE end_date is NULL
GROUP BY student
ORDER BY - avg(assignment_submissions.duration)