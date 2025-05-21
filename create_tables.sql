use assignment1;

CREATE TABLE IF NOT EXISTS students_2024 (
   student_id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(50),
   age INT,
   major VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS students_2025 (
   student_id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(50),
   age INT,
   major VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS courses (
     course_id INT PRIMARY KEY,
     course_name VARCHAR(50),
     credits INT
);

CREATE TABLE IF NOT EXISTS enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade INT
);

CREATE TABLE IF NOT EXISTS professors (
    professor_id INT PRIMARY KEY,
    name VARCHAR(30),
    department VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS course_professors (
   course_id INT PRIMARY KEY,
   professor_id INT
);