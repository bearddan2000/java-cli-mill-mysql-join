TRUNCATE `animal`.dog_expanded;

INSERT INTO `animal`.dog_expanded (id, breed, color)
SELECT d.id, b.breed, c.color
FROM animal.dog as d
JOIN animal.breedLookup as b ON b.id = d.breedId
JOIN animal.colorLookup as c ON c.id = d.colorId;
