-- EXCEPT in SQL::->>
             -- EXCEPT is a SQL set operator used to return rows from the first SELECT query that are not present in the second SELECT query.

-- Syntax::=>>
            SELECT column1, column2, ...
            FROM table1
            EXCEPT
            SELECT column1, column2, ...
            FROM table2;
-- Example::=>
            SELECT code, name, continent
            FROM country
            WHERE code IN ('ALB','AND')
			EXCEPT
            SELECT code, name, continent
            FROM country
            WHERE code IN ('ALB','BIH');
