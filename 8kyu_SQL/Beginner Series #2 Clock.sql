-- -- Clock shows h hours, m minutes and s seconds after midnight.

-- Your task is to write a function which returns the time since midnight in milliseconds.

-- Example:
-- h = 0
-- m = 1
-- s = 1

-- result = 61000



select ((h*3600000) + (m*60000) + (s*1000)) as res from past



select (3600*h + 60*m + s)*1000 as res
from past;


CREATE FUNCTION to_milliseconds(h integer, m integer, s integer) RETURNS bigint
    LANGUAGE plpgsql
    IMMUTABLE
    AS $$
        BEGIN
            RETURN (h * 3600 + m * 60 + s) * 1000;
        END;
    $$;

SELECT to_milliseconds(h, m, s) AS res FROM past;