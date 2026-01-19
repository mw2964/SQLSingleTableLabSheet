-- Q3-1
SELECT owner, avg(checkups)
FROM pet
GROUP BY owner;

-- Q3-2
SELECT species, count(*) AS total
FROM pet
GROUP BY species
ORDER BY total;

-- Q3-3
SELECT owner, species, count(*) AS total
FROM pet
GROUP BY owner, species;

-- Q3-4
SELECT owner, count(DISTINCT species)
FROM pet
GROUP BY owner;

-- Q3-5
SELECT sex, COUNT(*) as total
FROM pet
WHERE sex <> ''
GROUP BY sex;

-- Q3-6
SELECT owner, count(*) as total
FROM pet
WHERE species = 'bird';

-- Q3-7
SELECT owner, sum(checkups) as total_checkups
FROM pet
GROUP BY owner;