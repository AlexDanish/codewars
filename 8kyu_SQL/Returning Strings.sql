-- Write a select statement that takes name from person table and 
-- return "Hello, <name> how are you doing today?" 
-- results in a column named greeting




SELECT CONCAT('Hello, ' , name, ' how are you doing today?') AS greeting FROM person;



CREATE OR REPLACE FUNCTION greeting_func (t1 text) RETURNS text AS $$
  SELECT * FROM FORMAT('Hello, %s how are you doing today?', t1);
$$ LANGUAGE SQL;

SELECT greeting_func(name) AS greeting
FROM person