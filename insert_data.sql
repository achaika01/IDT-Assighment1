use assignment1;

INSERT INTO students_2024 VALUES
                              (1, 'Anna Petrenko', 20, 'Computer Science'),
                              (2,'Ivan Ivanov',22,'Math'),
                              (3,'Olena Kovalenko',21,'Physics');

INSERT INTO students_2025 VALUES
                              (4,'Taras Shevchenko',23,'Computer Science'),
                              (5,'Maria Bondarenko',20,'Math');


INSERT INTO courses VALUES
                        (101,'Databases',4),
                        (102,'Algorithms',5),
                        (103,'Linear Algebra',3),
                        (104,'Operating Systems',4),
                        (105,'Physics I',3);

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

INSERT INTO professors VALUES
                           (1,'Dr. Kuznetsova','Computer Science'),
                           (2,'Dr. Melnyk','Math'),
                           (3,'Dr. Kravets','Physics'),
                           (4,'Dr. Yurchenko','Math'),
                           (5,'Dr. Honchar','Computer Science');


INSERT INTO course_professors VALUES
                                  (101,1),
                                  (102,5),
                                  (103, 2),
                                  (104, 1),
                                  (105, 3);