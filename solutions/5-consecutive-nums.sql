-- Solution to Consecutive Numbers problem

SELECT
    DISTINCT sub.num AS ConsecutiveNums
FROM (
SELECT
    l.id,
    l.num,
    ROW_NUMBER() OVER (ORDER BY l.num) AS row_number
FROM logs l
) sub
WHERE sub.row_number = 3;