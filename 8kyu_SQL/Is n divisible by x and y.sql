---- You will be given a table 'kata' with columns 'id', 'n', 'x', and 'y'. 
-- Return the 'id' and your result in a column named 'res' using a SELECT statement.
-- You DON'T need to create a function, that's for other languages.
--select * from kata


SELECT n, n*n AS res FROM square;
select id, n%x = 0 AND n%y = 0 as res from kata


CREATE FUNCTION isDivisible(n int, x int, y int)
RETURNS boolean AS $$
BEGIN
IF (mod(n, x) = 0 AND mod(n, y) = 0) THEN
  RETURN True;
ELSE
  RETURN False;
END IF;
END;
$$ LANGUAGE plpgsql;
SELECt id, isDivisible(n, x, y) AS res FROM kata