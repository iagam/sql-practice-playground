-- Solution to duplicate emails problem

SELECT
  email
FROM person
GROUP BY email
HAVING count(*) > 1;