# Employees Earning more than their Managers

## Table: `employee`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |

- `id` is the primary key (column with unique values) for this table.
- Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.


## Task
Write a solution to find the employees who **earn more than their managers**.

Return the result table in any order.


## Example 1

**Input:**<br>
employee table:

| id | name  | salary | managerId |
|----|-------|--------|-----------|
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |

**Output:**

| Employee |
|----------|
| Joe      |

**Explanation:**<br>
Joe is the only employee who earns more than his manager.


## Schema
Create the schema first and then attempt solution.
```bash
DROP TABLE IF EXISTS employee;
CREATE TABLE IF NOT EXISTS employee (id int, name varchar(255), salary int, managerId int);
INSERT INTO employee (id, name, salary, managerId) values ('1', 'Joe', '70000', '3');
INSERT INTO employee (id, name, salary, managerId) values ('2', 'Henry', '80000', '4');
INSERT INTO employee (id, name, salary, managerId) values ('3', 'Sam', '60000', NULL);
INSERT INTO employee (id, name, salary, managerId) values ('4', 'Max', '90000', NULL);
```

## Solution
Find the solution here [`Solution SQL`](../solutions/6-employee-earnings.sql)
