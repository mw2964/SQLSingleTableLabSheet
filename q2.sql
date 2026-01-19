SELECT *
FROM pet;

-- Q2-1
SELECT owner, name
FROM pet
WHERE name LIKE '%er'
OR name LIKE '%all';

-- Q2-2
SELECT name
FROM pet
WHERE owner LIKE '%e%';

-- Q2-3
SELECT name
FROM pet
WHERE name NOT LIKE '%fy';

-- Q2-4
SELECT name
FROM pet
WHERE LENGTH(owner) = 4;

-- Q2-5
SELECT DISTINCT owner
FROM pet
WHERE LOWER(SUBSTR(owner, 1, 1)) <= 'e'
AND LOWER(SUBSTR(owner, -1, 1)) <= 'e';

-- Q2-6
SELECT DISTINCT owner
FROM pet
WHERE SUBSTR(owner, 1, 1) IN ('A', 'B', 'C', 'D', 'E')
AND SUBSTR(owner, -1, 1) IN ('a', 'b', 'c', 'd', 'e');