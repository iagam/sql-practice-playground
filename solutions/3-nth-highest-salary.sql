-- Solution for Nth Highest Salary

SELECT ranked.salary
    FROM (
        SELECT DISTINCT e.salary,
            DENSE_RANK() OVER (ORDER BY e.salary DESC) AS rnk
        FROM employee e
    ) ranked
WHERE ranked.rnk = N; -- Add nth highest rank in digit and test