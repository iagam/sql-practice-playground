-- Solution to customers who never order challenge

SELECT
  c.name AS customers
FROM
  customers c
  LEFT JOIN orders o ON o.customerid = c.id
WHERE
  o.customerid IS NULL;