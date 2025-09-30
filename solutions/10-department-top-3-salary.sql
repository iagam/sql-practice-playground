-- Solution to department's top 3 highest salary challenge

SELECT
    department,
    employee,
    salary
FROM (
SELECT
    d.name AS department,
    e.name AS employee,
    e.salary,
    DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS salary_rank
FROM employee e
JOIN department d ON d.id = e.departmentid
) sub
WHERE salary_rank <= 3;