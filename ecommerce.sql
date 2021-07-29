

INSERT INTO users_info (name, email) VALUES
	('Rick Sanchez', 'gRaSStAsTesBaD#1'),
  ('Morty Smith', 'awJeezrIcK'),
  ('Beth Smith', 'iLikWine');
  
INSERT INTO products (name, price) VALUES
	('Gooble Crank', 5000),
  ('Fleeb Juice', 1200),
  ('Fake Door', 500),
  ('Two Brothers - The Movie', 20),
  ('Gazorpazorp Robot', 25000);

INSERT INTO cart (user_id, product_id, quantity) VALUES
	(1, 1, 5),
  (1, 3, 2),
  (1, 4, 5),
  (2, 2, 6),
  (2, 5, 90),
  (3, 1, 1),
  (3, 3, 1);

SELECT u.name AS user, p.name AS product, c.quantity FROM cart c
JOIN users_info u
ON c.user_id = u.user_id
JOIN products p
ON p.product_id = c.product_id
WHERE u.user_id = 1;

SELECT u.name AS user, p.name AS product, c.quantity FROM cart c
JOIN users_info u
ON c.user_id = u.user_id
JOIN products p
ON p.product_id = c.product_id;

SELECT u.name AS customer, SUM(p.price * c.quantity) AS total FROM cart c
JOIN users_info u
ON c.user_id = u.user_id
JOIN products p
ON p.product_id = c.product_id
GROUP BY u.name;

UPDATE cart
SET quantity = 100
WHERE cart_id = 6;