# Customers who never Order

## Table: Customers

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key (column with unique values) for this table.
- Each row of this table indicates the ID and name of a customer.

## Table: Orders

| Column Name | Type |
|-------------|------|
| id          | int  |
| customerId  | int  |

- `id` is the primary key (column with unique values) for this table.
- `customerId` is a foreign key referencing the `id` from the Customers table.
- Each row of this table indicates the ID of an order and the ID of the customer who ordered it.

## Task
Write a solution to find all customers who **never order anything**.
Return the result table in any order.

## Example 1

**Input:**

Customers table:

| id | name  |
|----|-------|
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |

Orders table:

| id | customerId |
|----|------------|
| 1  | 3          |
| 2  | 1          |

**Output:**

| Customers |
|-----------|
| Henry     |
| Max       |

## Schema
Create the schema first and then attempt solution.
```bash
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;

CREATE TABLE IF NOT EXISTS customers (id int, name varchar(255));
CREATE TABLE IF NOT EXISTS orders (id int, customerId int);

INSERT INTO customers (id, name) VALUES ('1', 'Joe');
INSERT INTO customers (id, name) VALUES ('2', 'Henry');
INSERT INTO customers (id, name) VALUES ('3', 'Sam');
INSERT INTO customers (id, name) VALUES ('4', 'Max');

INSERT INTO orders (id, customerId) VALUES ('1', '3');
INSERT INTO orders (id, customerId) VALUES ('2', '1');
```

## Solution
Find the solution here [`Solution SQL`](../solutions/8-customers-who-never-order.sql)