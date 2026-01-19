-- Q3-1. The average number of check-ups that each owner has made with their pets
SELECT owner, avg(checkups)
FROM pet
GROUP BY owner;

-- Q3-2. The number of pets of each species in ascending order
SELECT species, count(*) AS total
FROM pet
GROUP BY species
ORDER BY total;

-- Q3-3. The number of pets of each species that each owner has
SELECT owner, species, count(*) AS total
FROM pet
GROUP BY owner, species;

-- Q3-4. The number of distinct species of pet each owner has
SELECT owner, count(DISTINCT species)
FROM pet
GROUP BY owner;

-- Q3-5. The number of pets of each gender there are in the database, where the gender is known
SELECT sex, COUNT(*) as total
FROM pet
WHERE sex <> ''
GROUP BY sex;

-- Q3-6. The number of birds each owner has
SELECT owner, count(*) as total
FROM pet
WHERE species = 'bird';

-- Q3-7. The total number of check-ups each owner has made with all their pets
SELECT owner, sum(checkups) as total_checkups
FROM pet
GROUP BY owner;