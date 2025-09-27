-- Solution to Employee Earnings Challenge

SELECT
    e.name as employee
FROM employee e
JOIN employee m on e.managerId = m.id
WHERE e.salary > m.salary;