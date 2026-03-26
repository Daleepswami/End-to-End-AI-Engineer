-- union ::==>> 
             -- UNION is a SQL set operator used to combine the results of two or more SELECT
                     -- queries and return only unique rows (duplicates are automatically removed).
-- Syntax
         SELECT column1, column2, ...
		 FROM table1
		 UNION
         SELECT column1, column2, ...
         FROM table2;
-- Example::-->>
            SELECT code, name, continent
            FROM country
            WHERE continent = 'Asia'
            UNION
            SELECT code, name, continent
            FROM country
            WHERE continent = 'Europe';

-- UNION ALL in SQL
             -- UNION ALL is a SQL set operator used to combine the results of two or more SELECT
                    -- queries and return all rows including duplicates.
-- Syntax::=>>
                 SELECT column1, column2, ...
                 FROM table1
				 UNION ALL
                 SELECT column1, column2, ...
                 FROM table2;
-- Example
                 SELECT code, name, continent
                 FROM country
				 WHERE code IN ('ALB','AND')
                 UNION ALL
                 SELECT code, name, continent
				 FROM country
                 WHERE code IN ('ALB','BIH');
