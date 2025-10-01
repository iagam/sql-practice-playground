-- Solution to delete duplicate emails

DELETE
FROM person
WHERE id IN (
SELECT
    id
FROM (
    SELECT
        id,
        email,
        ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) AS row_rank
    FROM person
) sub
WHERE row_rank > 1 );