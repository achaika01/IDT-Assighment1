use assignment1;

CREATE TABLE IF NOT EXISTS students_2024 (
   student_id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(50),
   age INT,
   major VARCHAR(50)
);
-- That's how this table looks like
# | student_id | name             | age | major            |
# | ---------- | ---------------- | --- | ---------------- |


CREATE TABLE IF NOT EXISTS students_2025 (
   student_id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(50),
   age INT,
   major VARCHAR(50)
);
# | student_id | name             | age | major            |
# | ---------- | ---------------- | --- | ---------------- |

CREATE TABLE IF NOT EXISTS courses (
     course_id INT PRIMARY KEY,
     course_name VARCHAR(50),
     credits INT
);
# | course\_id | course\_name      | credits |
# | ---------- | ----------------- | ------- |


CREATE TABLE IF NOT EXISTS enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade INT
);
# | enrollment\_id | student\_id | course\_id | grade |
# | -------------- | ----------- | ---------- | ----- |



CREATE TABLE IF NOT EXISTS professors (
    professor_id INT PRIMARY KEY,
    name VARCHAR(30),
    department VARCHAR(50)
);
# | professor\_id | name           | department       |
# | ------------- | -------------- | ---------------- |


CREATE TABLE IF NOT EXISTS course_professors (
   course_id INT PRIMARY KEY,
   professor_id INT
);
# | course\_id | professor\_id |
# | ---------- | ------------- |
