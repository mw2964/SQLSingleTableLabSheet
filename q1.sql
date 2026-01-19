SELECT *
FROM pet;

-- Q1-1
SELECT owner, name
FROM pet
WHERE sex = 'f';

-- Q1-2
SELECT name, birth
FROM pet
WHERE species = 'dog';

-- Q1-3
SELECT DISTINCT owner
FROM pet
WHERE species = 'bird';

-- Q1-4
SELECT DISTINCT species
FROM pet
WHERE sex = 'f';

-- Q1-5
SELECT name, birth
FROM pet
WHERE species IN ('cat', 'bird');

-- Q1-6
SELECT name, species
FROM pet
WHERE species IN ('cat', 'bird')
AND sex = 'f';