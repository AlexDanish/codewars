--Summation
-- Write a program that finds the summation of every number from 1 to num. 
-- The number will always be a positive integer greater than 0.

-- For example (Input -> Output):

-- 2 -> 3 (1 + 2)
-- 8 -> 36 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8)


-- # write your SQL statement here: you are given a table 'kata' with a column 'n', 
-- return a table with 'n' and your result stored in a column naed 'res'.

SELECT n, n*(n+1)/2 AS res FROM kata;



CREATE OR REPLACE FUNCTION summation(num INTEGER)
RETURNS INTEGER AS $$
DECLARE
  i INTEGER := 1;
  total INTEGER := 0;
BEGIN
  WHILE i <= num LOOP
    total := total + i;
    i := i + 1;
  END LOOP;
  RETURN total;
END;
$$ LANGUAGE plpgsql;


select n, summation(n) as res
from kata