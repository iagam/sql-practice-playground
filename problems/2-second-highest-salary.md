# Second Highest Salary

## Table: employee

| Column Name | Type |
|-------------|------|
| id          | int  |
| salary      | int  |

- `id` is the primary key (column with unique values) for this table.
- Each row of this table contains information about the salary of an employee.


## Task
Write a solution to find the **second highest distinct salary** from the `employee` table.
If there is no second highest salary, return **null** (return **None** in Pandas).

The result format is shown in the following examples.

## Example 1

**Input**:
employee table:

| id | salary |
|----|--------|
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |

**Output**:

| SecondHighestSalary |
|----------------------|
| 200                  |


## Example 2

**Input**:
employee table:

| id | salary |
|----|--------|
| 1  | 100    |

**Output**:

| SecondHighestSalary |
|----------------------|
| null                 |


## Schema
Create the schema first and then attempt the solution.
```bash
CREATE TABLE IF NOT EXISTS employee (id int, salary int);
TRUNCATE TABLE employee;
INSERT INTO employee (id, salary) values ('1', '100');
INSERT INTO employee (id, salary) values ('2', '200');
INSERT INTO employee (id, salary) values ('3', '300');
```

## Solution
Find the solution here [`Solution SQL`](../solutions/2-second-highest-salary.sql)