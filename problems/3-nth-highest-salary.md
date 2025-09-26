# Nth Highest Salary

## Table: employee

| Column Name | Type |
|-------------|------|
| id          | int  |
| salary      | int  |

- `id` is the primary key (column with unique values) for this table.
- Each row of this table contains information about the salary of an employee.


## Task
Write a solution to find the **nth highest distinct salary** from the `employee` table.
If there are fewer than `n` distinct salaries, return **null**.

The result format is shown in the following examples.


## Example 1

**Input:**
Employee table:

| id | salary |
|----|--------|
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |

`n = 2`

**Output:**

| getNthHighestSalary(2) |
|-------------------------|
| 200                     |


## Example 2

**Input:**
Employee table:

| id | salary |
|----|--------|
| 1  | 100    |

`n = 2`

**Output:**

| getNthHighestSalary(2) |
|-------------------------|
| null                    |

## Schema
Create the schema first and then attempt solution.
```bash
DROP TABLE IF EXISTS employee;
CREATE TABLE IF NOT EXISTS employee (Id int, Salary int);
INSERT INTO employee (id, salary) values ('1', '100')
INSERT INTO employee (id, salary) values ('2', '200')
INSERT INTO employee (id, salary) values ('3', '300')
```

## Solution
Find the solution here [`Solution SQL`](../solutions/3-nth-highest-salary.sql)