use assignment1;

WITH all_students as (
    SELECT * FROM students_2024
    UNION
    SELECT * FROM students_2025
),
     students_info AS (
         SELECT all_students.student_id,
                all_students.name  AS students_name,
                courses.course_id,
                courses.course_name AS course_name,
                enrollments.grade   AS grade,
                professors.name     AS professors_name
         FROM all_students
                  JOIN enrollments on all_students.student_id = enrollments.student_id
                  JOIN courses on enrollments.course_id = courses.course_id
                  JOIN course_professors on course_professors.course_id = enrollments.course_id
                  JOIN professors on professors.professor_id = course_professors.professor_id)
SELECT students_name, COUNT(*) AS course_count, AVG(grade) AS avg_grade
FROM students_info
WHERE grade > 80
GROUP BY students_name
HAVING students_name IS NOT NULL
ORDER BY avg_grade DESC
LIMIT 10;