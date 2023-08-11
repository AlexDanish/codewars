-- Write a function that checks if a given string (case insensitive) is a palindrome.
--  A palindrome is a word, number, phrase, or other sequence of symbols
--   that reads the same backwards as forwards, such as madam or racecar,
--    the date and time 12/21/33 12:21, and the sentence: "A man, a plan, a canal – Panama".

-- # write your SQL statement here: you are given a table 'ispalindrome' with column 'str',
-- return a table with column 'str' and your result in a column named 'res'.



SELECT str, (UPPER(reverse(str)) = UPPER(str)) = true AS res FROM ispalindrome;


select str, reverse(lower(str)) = lower(str) as res from ispalindrome

SELECT str, REVERSE(UPPER(str)) = UPPER(str) AS res FROM ispalindrome