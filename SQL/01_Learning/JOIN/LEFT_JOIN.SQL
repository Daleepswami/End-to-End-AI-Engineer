left_join::=>> -- LEFT JOIN returns all records from the left table and the matching records from the right table.
               -- If there is no match, NULL values are returned for the right table columns.

SYNTAX:==>> SELECT columns  FROM table1
            LEFT JOIN table2
            ON table1.common_column = table2.common_column;

Example ::=>> SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
              FROM Orders
              left JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
              ORDER BY Orders.OrderID;


          02. SELECT Customers.CustomerName, Orders.OrderID
              FROM Customers
              LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
              ORDER BY Customers.CustomerName;
