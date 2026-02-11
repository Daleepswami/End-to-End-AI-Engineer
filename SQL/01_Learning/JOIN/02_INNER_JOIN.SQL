INNER JOIN ::=>> INNER JOIN returns only the matching records from both tables based on a common column.
                 -- Returns only matching records
                 -- Uses ON condition to match columns
                 -- Non-matching rows are excluded
                 -- Most commonly used JOIN
Syntax::=>> SELECT columns FROM table1
            INNER JOIN table2
            ON table1.common_column = table2.common_column;

Ex:=>> 01.  SELECT Students.Name, Courses.Course
            FROM Students
            INNER JOIN Courses
            ON Students.StudentID = Courses.StudentID;
       02. SELECT Employees.EmpName, Departments.DeptName
           FROM Employees
           INNER JOIN Departments
           ON Employees.DeptID = Departments.DeptID;
       03. SELECT Students.Name, Marks.Marks
           FROM Students
           INNER JOIN Marks
           ON Students.RollNo = Marks.RollNo;



