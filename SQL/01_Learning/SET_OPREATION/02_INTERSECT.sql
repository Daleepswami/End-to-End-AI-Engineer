-- INTERSECT in SQL
               -- INTERSECT is a SQL set operator used to return only the rows 
                      -- that are common in both SELECT queries.
-- Syntax::=>>
           SELECT column1, column2, ...
           FROM table1
           INTERSECT
           SELECT column1, column2, ...
           FROM table2;

-- Example::=>>
                 SELECT code, name, continent
                 FROM country
                 WHERE code IN ('ALB','AND')
                 INTERSECT
                 SELECT code, name, continent
                 FROM country
                 WHERE code IN ('ALB','BIH');
