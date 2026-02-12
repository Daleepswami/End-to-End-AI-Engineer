RIGHT JOIN::=>> RIGHT JOIN returns all records from the right table and the matching records from the left table.
                If there is no match, NULL values are returned for the left table columns.

SYNTAX:=>>SELECT column_name(s)
          FROM table1
          RIGHT JOIN table2
          ON table1.column_name = table2.column_name;

EX:=>>
       SELECT Customers.CustomerName, Orders.OrderID
       FROM Customers
       RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
        ORDER BY Customers.CustomerName;
