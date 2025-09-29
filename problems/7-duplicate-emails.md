# Duplicate Emails

## Table: Person

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the primary key (column with unique values) for this table.
- Each row of this table contains an email.
- The emails will not contain uppercase letters.

## Task
Write a solution to report all the **duplicate emails**.
It is guaranteed that the `email` field is not `NULL`.
Return the result table in any order.

## Example 1

**Input:**
Person table:

| id | email   |
|----|---------|
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |

**Output:**

| Email   |
|---------|
| a@b.com |

**Explanation:**
`a@b.com` is repeated two times.

## Schema
Create the schema first and then attempt solution.
```bash
DROP TABLE IF EXISTS person;
CREATE TABLE IF NOT EXISTS person (id int, email varchar(255));
INSERT INTO person (id, email) values ('1', 'a@b.com');
INSERT INTO person (id, email) values ('2', 'c@d.com');
INSERT INTO person (id, email) values ('3', 'a@b.com');
```

## Solution
Find the solution here [`Solution SQL`](../solutions/7-duplicate-emails.sql)
