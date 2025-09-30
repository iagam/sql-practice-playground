# department Highest Salary

## Table: employee

| Column Name  | Type    |
|--------------|---------|
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentid | int     |

- `id` is the primary key (column with unique values) for this table.
- `departmentid` is a foreign key (reference column) of the `id` from the department table.
- Each row of this table indicates the id, name, and salary of an employee. It also contains the id of their department.

## Table: department

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key (column with unique values) for this table.
- It is guaranteed that department name is not NULL.
- Each row of this table indicates the id of a department and its name.

## Task

Write a solution to find employees who have the highest salary in each of the departments.

Return the result table in any order.

## Example 1

**Input:**

**employee table**

| id | name  | salary | departmentid |
|----|-------|--------|--------------|
| 1  | Joe   | 70000  | 1            |
| 2  | Jim   | 90000  | 1            |
| 3  | Henry | 80000  | 2            |
| 4  | Sam   | 60000  | 2            |
| 5  | Max   | 90000  | 1            |

**department table**

| id | name  |
|----|-------|
| 1  | IT    |
| 2  | Sales |

**Output:**

| department | employee | Salary |
|------------|----------|--------|
| IT         | Jim      | 90000  |
| Sales      | Henry    | 80000  |
| IT         | Max      | 90000  |

**Explanation:**
Max and Jim both have the highest salary in the IT department and Henry has the highest salary in the Sales department.

## Schema
Create the schema first and then attempt solution.
```bash
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;

CREATE TABLE IF NOT EXISTS employee (id int, name varchar(255), salary int, departmentid int);
CREATE TABLE IF NOT EXISTS department (id int, name varchar(255));

INSERT INTO employee (id, name, salary, departmentid) values ('1', 'Joe', '70000', '1');
INSERT INTO employee (id, name, salary, departmentid) values ('2', 'Jim', '90000', '1');
INSERT INTO employee (id, name, salary, departmentid) values ('3', 'Henry', '80000', '2');
INSERT INTO employee (id, name, salary, departmentid) values ('4', 'Sam', '60000', '2');
INSERT INTO employee (id, name, salary, departmentid) values ('5', 'Max', '90000', '1');

INSERT INTO department (id, name) values ('1', 'IT');
INSERT INTO department (id, name) values ('2', 'Sales');
```

## Solution
Find the solution here [`Solution SQL`](../solutions/9-department-highest-salary.sql)