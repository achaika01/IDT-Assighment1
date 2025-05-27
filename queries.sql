use assignment1;

WITH all_students as (
    SELECT * FROM students_2024
    UNION
    SELECT * FROM students_2025         -- union students from different years
),
     students_info AS (                           -- creating cte students_info
         SELECT all_students.student_id,                -- selecting necessary information 
                all_students.name  AS students_name,
                courses.course_id,
                courses.course_name AS course_name,
                enrollments.grade   AS grade,
                professors.name     AS professors_name
         FROM all_students
                  JOIN enrollments on all_students.student_id = enrollments.student_id      -- joining all tables step by step
                  JOIN courses on enrollments.course_id = courses.course_id
                  JOIN course_professors on course_professors.course_id = enrollments.course_id
                  JOIN professors on professors.professor_id = course_professors.professor_id)
SELECT students_name, COUNT(*) AS course_count, AVG(grade) AS avg_grade             -- we want to count how many courses
FROM students_info                                                        -- does each student has where grade > 80 and also
WHERE grade > 80                                                          -- count each student's average grade
GROUP BY students_name                                                    -- and we want to see only top 10 students ordered
HAVING students_name IS NOT NULL                                          -- by their average grade
ORDER BY avg_grade DESC
LIMIT 10;