-- Solution to the problem Second Highest Salary

WITH cte_max_salary AS (
SELECT
    MAX(salary) AS salary
FROM employee
)

SELECT MAX(salary) AS SecondHighestSalary
FROM employee
WHERE salary < (SELECT salary FROM cte_max_salary);