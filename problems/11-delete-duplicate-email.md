# Delete Duplicate Emails

## Table: Person

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- **id** is the primary key (unique values).
- Each row contains an email. Emails will not contain uppercase letters.

## Task

Write a solution to **delete all duplicate emails**, keeping only one unique email with the smallest `id`.

- **SQL users**: Write a `DELETE` statement (not `SELECT`).

After running, the answer shown is the `Person` table.
The final order of the table does not matter.

## Example

**Input:**

Person table:

| id | email            |
|----|------------------|
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |

**Output:**

| id | email            |
|----|------------------|
| 1  | john@example.com |
| 2  | bob@example.com  |

**Explanation:**
`john@example.com` is repeated twice. We keep the row with the smallest `id = 1`.

## Schema
Create the schema first and then attempt solution.
```bash
DROP TABLE IF EXISTS person;

CREATE TABLE IF NOT EXISTS person (
    id INT,
    email VARCHAR(255)
);

INSERT INTO person (id, email) values ('1', 'john@example.com');
INSERT INTO person (id, email) values ('2', 'bob@example.com');
INSERT INTO person (id, email) values ('3', 'john@example.com');
```

## Solution
Find the solution here [`Solution SQL`](../solutions/11-delete-duplicate-email.sql)