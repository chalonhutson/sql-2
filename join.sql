1.
SELECT * FROM invoice 
JOIN invoice_line
ON invoice_line.invoice_id = invoice.invoice_id
WHERE unit_price > .99;

2.
SELECT i.invoice_date AS date, 
c.first_name AS first, 
c.last_name AS last, 
i.total AS total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

3.
SELECT c.first_name AS customer_fn, 
c.last_name AS customer_ln, 
e.first_name AS support_fn,
e.last_name AS support_ln
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id
ORDER BY e.first_name;

5.
SELECT al.title AS album, ar.name AS artist
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;

6.
SELECT pt.track_id
FROM playlist_track pt
JOIN playlist pl
ON pt.playlist_id = pl.playlist_id
WHERE pl.name LIKE 'Music';

7.
SELECT tr.name
FROM playlist_track pt
JOIN track tr
ON pt.track_id = tr.track_id
WHERE pt.playlist_id = 5;

8.
SELECT tr.name track, pl.name AS playlist
FROM playlist_track pt
JOIN track tr
ON pt.track_id = tr.track_id
JOIN playlist pl
ON pl.playlist_id = pt.playlist_id;

9.
SELECT tr.name AS track, a.title AS album
FROM track tr
JOIN genre g
ON tr.genre_id = g.genre_id
JOIN album a
ON a.album_id = tr.album_id
WHERE g.name LIKE 'Alternative & Punk';