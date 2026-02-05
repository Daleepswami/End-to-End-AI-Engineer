NUMERIC_FUNCTION:==>>
-- 01. ABS():==> Returns the absolute (positive) value of a number.
SELECT abs(-15);
SELECT abs(23);

-- 02. SIGN()
--     Definition: Returns:
--     1 if number is positive
--     -1 if number is negative
--     0 if number is zero
SELECT sign(-15);
select sign(56);
select sign(0);

-- 03. MOD():=>. Returns the remainder of a division
select mod(10,3);
select mod(20,3);
-- 04. SQRT():=>> Returns the square root of a number.
select Sqrt(16);
select sqrt(64);

-- 05. POWER():-->>  Returns a number raised to the power of another number
select power(2,3);
select power(5,5);

-- 06. FLOOR()::>>Returns the largest integer less than or equal to a number.
select floor(4.9999);
select floor(4.0001);

-- 07. CEIL() / CEILING():==>> Returns the smallest integer greater than or equal to a number
SELECT CEIL(4.2);
select ceil(4.00001);

-- 08  round():--Rounds a number to a specified number of decimal places
select round(45.6);
select round(45.456,2);

  --   Negetive
select round(44.56,-1);
select round(744.56,-3);

