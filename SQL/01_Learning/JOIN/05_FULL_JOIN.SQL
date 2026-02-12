FULL_JOIN::=>> The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records

SYNTAX::=>>SELECT column_name(s)
           FROM table1
           FULL OUTER JOIN table2
           ON table1.column_name = table2.column_name
           WHERE condition; 

EX:=>>SELECT Customers.CustomerName, Orders.OrderID
      FROM Customers
       FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
       ORDER BY Customers.CustomerName;
