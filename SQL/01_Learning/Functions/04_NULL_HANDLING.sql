-- 01 IS NULL::-->> Checks whether a column value is NULL

SELECT *
FROM employee
WHERE salary IS NULL;


-- IS NOT NULL::=>>Checks if a value is not NULL.
SELECT *
FROM employee
WHERE salary IS NOT NULL;


-- 03. IFNULL()::=>> If the value is NULL, it returns a default value.
-- Syntax:
        -- IFNULL(expression, value_if_null)

SELECT IFNULL(salary, 0)
FROM employee;

-- 04. COALESCE()::=>> Returns the first non-NULL value from the given list.
-- Syntax:
        -- COALESCE(value1, value2, ..., valueN)
   SELECT COALESCE(bonus, incentive, 0)
     FROM employee;

-- 05. NULLIF()::=>>Returns NULL if both values are equal, otherwise returns the first value.
-- Syntax:
          -- NULLIF(value1, value2)

SELECT NULLIF(10, 10);
SELECT NULLIF(10, 5);





