-- This code does not execute properly. Try to figure out why.


SELECT price * amount AS total FROM items


-- CREATE FUNCTION to_milliseconds(h integer, m integer, s integer) RETURNS bigint
--     LANGUAGE plpgsql
--     IMMUTABLE
--     AS $$
--         BEGIN
--             RETURN (h * 3600 + m * 60 + s) * 1000;
--         END;
--     $$;

-- SELECT to_milliseconds(h, m, s) AS res FROM past;