2.
ALTER TABLE animals
ADD location VARCHAR;

3.
INSERT INTO animals (name, location, age, type) VALUES
	('Koko', 'Africa', 39, 'Gorilla'),
  ('Mises', 'Orem', 4, 'Cat'),
  ('Catdog', 'Someplace', 20, 'Cat and Dog');

4.
ALTER TABLE animals
  RENAME COLUMN type TO species;

5.
ALTER TABLE animals
  ALTER COLUMN species TYPE VARCHAR;