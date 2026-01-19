-- Q1-1. The names of owners and their pet's name for all pets who are female.
SELECT owner, name
FROM pet
WHERE sex = 'f';

-- Q1-2. The names and birth dates of pets which are dogs.
SELECT name, birth
FROM pet
WHERE species = 'dog';

-- Q1-3. The names of the owners of birds.
SELECT DISTINCT owner
FROM pet
WHERE species = 'bird';

-- Q1-4. The species of pets who are female.
SELECT DISTINCT species
FROM pet
WHERE sex = 'f';

-- Q1-5. The names and birth dates of pets which are cats or birds.
SELECT name, birth
FROM pet
WHERE species IN ('cat', 'bird');

-- Q1-6. The names and species of pets which are cats or birds and which are female.
SELECT name, species
FROM pet
WHERE species IN ('cat', 'bird')
AND sex = 'f';