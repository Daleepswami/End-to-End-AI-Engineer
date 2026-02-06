-- scalar function :---this function are applied the every rows and result will be given for each rows
-- 01. UPPER()::=>>Converts all characters of a string to uppercase

select upper('gate cs');
select upper('tushar sir');
select upper('notebooks');

-- 02. LOWER():==>> Converts all characters of a string to lowercase
select lower('SQL INTERVIEW');
select lower('POWER BI');

-- 03. LENGTH():==>> Returns the length of a string in bytes.
SELECT LENGTH('SQL');
SELECT length('characters');

-- 04. CHAR_LENGTH():==>>  Returns the number of characters in a string.
SELECT char_length('portion');
select char_length('SQL INTERVIEW');

-- 05. SUBSTRING()/SUBSTR():==>> Extracts a portion of a string.
-- Syntax:
-- SUBSTRINGSUBSTR(string, start_position, length

SELECT substr('DATABASE',5,4);
SELECT SUBSTR('Definition',1,5);


-- 06. TRIM()-->> Removes leading and trailing spaces from a string.
SELECT TRIM('   SQL   ');
SELECT TRIM('    DATABASE    ');
       -- 06.01. LTRIM()::==>> Removes leading (left-side) spaces from a string
			SELECT TRIM('    DATABASE');
	   -- 06.02. RTRIM()::==>> Removes trailing (right-side) spaces from a string.
            SELECT TRIM('SQL   ');


-- 07 INSTR():=>> Returns the position of a substring within a string
SELECT INSTR('DATABASE', 'BASE');
SELECT INSTR('character_length','length');

-- 08 CONCAT():==> Joins two or more strings together.
SELECT concat('SQL',' ' ,'FUNCTIONS');
SELECT CONCAT('GATE','-','CS','-','2026');

-- 09 CONCAT_WS():==> Joins strings using a separator.
SELECT concat_ws('-', '2026', 'GATE', 'CS');
SELECT concat_ws(' ','characters','of','a','string');

-- 10 REPLACE():-- >> Replaces a specific substring with another substring 
SELECT REPLACE('GATE2025', '2025', ' 2026');
select replace('substring','string',' character');

-- 11. REVERSE():-->> Reverses the characters of a string
SELECT reverse('SQL');
SELECT reverse('CHARACTER');
