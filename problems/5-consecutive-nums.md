# Consecutive Numbers


## Table: `logs`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| num         | varchar |

- In SQL, `id` is the primary key for this table.
- `id` is an auto-increment column starting from 1.


## Task
Find all numbers that appear at least **three times consecutively**.

Return the result table in any order.


## Example 1

**Input:**
logs table:

| id | num |
|----|-----|
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |

**Output:**

| ConsecutiveNums |
|-----------------|
| 1               |

**Explanation:**
`1` is the only number that appears consecutively for at least three times.

## Schema
Create the schema first and then attempt solution.
```bash
DROP TABLE IF EXISTS logs;
CREATE TABLE IF NOT EXISTS logs (id int, num int);
INSERT INTO logs (id, num) values ('1', '1');
INSERT INTO logs (id, num) values ('2', '1');
INSERT INTO logs (id, num) values ('3', '1');
INSERT INTO logs (id, num) values ('4', '2');
INSERT INTO logs (id, num) values ('5', '1');
INSERT INTO logs (id, num) values ('6', '2');
INSERT INTO logs (id, num) values ('7', '2');
```

## Solution
Find the solution here [`Solution SQL`](../solutions/5-consecutive-nums.sql)
