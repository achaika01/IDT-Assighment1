use assignment1;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    major VARCHAR(50)
);

INSERT INTO students VALUES 
    (1, 'Anna Petrenko', 20, 'Computer Science'),
    (2,'Ivan Ivanov',22,'Math'),
    (3,'Olena Kovalenko',21,'Physics'),
    (4,'Taras Shevchenko',23,'Computer Science'),
    (5,'Maria Bondarenko',20,'Math');

SELECT * FROM students;

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    credits INT
);

INSERT INTO courses VALUES 
    (101,'Databases',4),
    (102,'Algorithms',5),
    (103,'Linear Algebra',3),
    (104,'Operating Systems',4),
    (105,'Physics I',3);

SELECT * FROM courses;

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade INT
);

INSERT INTO enrollments VALUES 
    (1,1,101,90),
    (2,1,102,85),
    (3,2,103,78),
    (4,3,105,88),
    (5,4,101,92),
    (6,4,104,86),
    (7,5,103,83),
    (8,5,102,89),
    (9,2,104,91),
    (10,3,102,75);

SELECT * FROM enrollments;

CREATE TABLE professors (
    professor_id INT PRIMARY KEY,
    name VARCHAR(30),
    department VARCHAR(50)
);

INSERT INTO professors VALUES 
    (1,'Dr. Kuznetsova','Computer Science'),
    (2,'Dr. Melnyk','Math'),
    (3,'Dr. Kravets','Physics'),
    (4,'Dr. Yurchenko','Math'),
    (5,'Dr. Honchar','Computer Science');

SELECT * FROM professors;

CREATE TABLE course_professors (
    course_id INT PRIMARY KEY,
    professor_id INT
);

INSERT INTO course_professors VALUES 
    (101,1),
    (102,5),
    (103, 2),
    (104, 1),
    (105, 3);

SELECT * FROM course_professors;