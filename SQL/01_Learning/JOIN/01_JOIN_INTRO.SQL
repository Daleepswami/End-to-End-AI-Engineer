What is JOIN ?
  -- JOIN::==>> JOIN is used to combine data from two or more tables based on a related column between them.

Why do we use JOIN?
         -- To retrieve related data stored in different tables
         -- To avoid data duplication (after normalization)
         -- To connect tables using a common column (usually Primary Key & Foreign Key)

Basic Syntax::=>>
         SELECT columns FROM table1
         JOIN table2
         ON table1.column = table2.column;
EX. 
    SELECT Students.Name, Courses.Course FROM Students
    JOIN Courses
    ON Students.StudentID = Courses.StudentID;

TYPES OF JOIN::=>>
           1. INNER JOIN 
           2. LEFT JOIN
           3. RIGHT JOIN
           4. FULL JOIN
           5. SELF JOIN
