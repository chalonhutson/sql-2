1.
SELECT g.name, COUNT(t.track_id) FROM genre g
JOIN track t
ON t.genre_id = g.genre_id
GROUP BY g.name;

2.
SELECT g.name, COUNT(t.track_id) FROM genre g
JOIN track t
ON t.genre_id = g.genre_id
WHERE g.name LIKE 'Pop' OR g.name LIKE 'Rock'
GROUP BY g.name;

3.
SELECT ar.name, COUNT(al.album_id) FROM artist ar
JOIN album al
ON al.artist_id = ar.artist_id
GROUP BY ar.name;