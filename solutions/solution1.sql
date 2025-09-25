-- Create Schema first

CREATE TABLE IF NOT EXISTS Person (personId int, firstName varchar(255), lastName varchar(255));
CREATE TABLE IF NOT EXISTS Address (addressId int, personId int, city varchar(255), state varchar(255));

TRUNCATE TABLE Person;
INSERT INTO Person (personId, lastName, firstName) values ('1', 'Wang', 'Allen');
INSERT INTO Person (personId, lastName, firstName) values ('2', 'Alice', 'Bob');

TRUNCATE TABLE Address;
INSERT INTO Address (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York');
INSERT INTO Address (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'CalIFornia');


-- Solution to the problem "Combine Two Tables"

SELECT
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM person p
LEFT JOIN address a ON a.personId = p.personId