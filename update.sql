1.
UPDATE customer
SET fax = NULL;

2.
UPDATE customer 
SET company = 'Self'
WHERE company is null

3.
UPDATE customer
SET last_name = 'Thompson'
WHERE first_name LIKE 'Julia' AND last_name LIKE 'Barnett';

4.
UPDATE customer
SET support_rep_id = 4
WHERE email LIKE 'luisrojas@yahoo.cl';

5.
UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id IN (
  SELECT genre_id FROM genre
  WHERE name LIKE 'Metal')
AND composer IS NULL;