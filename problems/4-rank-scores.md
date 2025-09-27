# Rank scores

## TABLE: scores

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| score       | decimal |

- `id` is the primary key (column with unique values) for this TABLE.
- Each row of this TABLE contains the score of a game.
- `score` is a floating point value with two decimal places.


## Task
Write a solution to find the **rank of the scores**. The ranking should be calculated according to the following rules:

1. Scores are ranked from **highest to lowest**.
2. If there is a tie between two scores, both should have the **same rank**.
3. After a tie, the next ranking number should be the **next consecutive integer** (no holes in ranks).
4. Return the result TABLE ordered by **score in descending order**.


## Example 1

**Input:**
scores TABLE:

| id | score |
|----|-------|
| 1  | 3.50  |
| 2  | 3.65  |
| 3  | 4.00  |
| 4  | 3.85  |
| 5  | 4.00  |
| 6  | 3.65  |

**Output:**

| score | rank |
|-------|------|
| 4.00  | 1    |
| 4.00  | 1    |
| 3.85  | 2    |
| 3.65  | 3    |
| 3.65  | 3    |
| 3.50  | 4    |

## Schema
Create the schema first and then attempt solution.
```bash
DROP TABLE IF EXISTS scores;
CREATE TABLE IF NOT EXISTS scores (id int, score DECIMAL(3,2));
INSERT INTO scores (id, score) values ('1', '3.5');
INSERT INTO scores (id, score) values ('2', '3.65');
INSERT INTO scores (id, score) values ('3', '4.0');
INSERT INTO scores (id, score) values ('4', '3.85');
INSERT INTO scores (id, score) values ('5', '4.0');
INSERT INTO scores (id, score) values ('6', '3.65');
```

## Solution
Find the solution here [`Solution SQL`](../solutions/4-rank-scores.sql)