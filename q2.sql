-- Q2-1. The names of owners and their pets where the pet's name ends with “er” or “all”
SELECT owner, name
FROM pet
WHERE name LIKE '%er'
OR name LIKE '%all';

-- Q2-2. The names of any pets whose owner's name contains an "e"
SELECT name
FROM pet
WHERE owner LIKE '%e%';

-- Q2-3. The names of all pets whose name does not end with "fy"
SELECT name
FROM pet
WHERE name NOT LIKE '%fy';

-- Q2-4. All pet names whose owners name is only four characters long
SELECT name
FROM pet
WHERE length(owner) = 4;

-- Q2-5. All owners whose names begin and end with one of the first five letters of the alphabet
SELECT DISTINCT owner
FROM pet
WHERE lower(substr(owner, 1, 1)) <= 'e'
AND lower(substr(owner, -1, 1)) <= 'e';

-- Q2-6. Repeat the previous query, but make the query sensitive to the case of letters of the alphabet the characters in the name
SELECT DISTINCT owner
FROM pet
WHERE substr(owner, 1, 1) IN ('A', 'B', 'C', 'D', 'E')
AND substr(owner, -1, 1) IN ('a', 'b', 'c', 'd', 'e');