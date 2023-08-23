-- --# write your SQL statement here: 
-- you are given a table 'square' with column 'n'
-- return a table with:
--   this column and your result in a column named 'res'


SELECT n, n*n AS res FROM square;



create or replace function square_calc(n int)
returns int
language plpgsql as
$$
begin   
   return n * n;
end;
$$;    

select  n, square_calc(n) as res from  square;