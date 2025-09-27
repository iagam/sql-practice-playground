-- Solution to Rank Scores

SELECT
    s.score,
    DENSE_RANK() OVER (ORDER BY s.score DESC) as rank
FROM scores s
ORDER BY rank;