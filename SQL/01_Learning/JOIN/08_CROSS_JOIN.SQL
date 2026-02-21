Cross Join (Cartesian Join):-->>
                                Cross Join is also called Cartesian Join.
                                It combines every row of the first table with every row of the second table.
                                Result rows = (rows in table1) × (rows in table2).
                                It does not use any condition (no ON clause required).



Q.01 Employees table has 3 employees.Shifts table has 2 shifts (Morning, Evening).
     Show all employee-shift combinations.
    
    SELECT e.employee_name, s.shift_name  FROM Employees e  CROSS JOIN Shifts s;

Q.02 Write a query to show all possible combinations of products and colors.
    SELECT p.product_name, c.color_name FROM Products p  CROSS JOIN Colors c;
