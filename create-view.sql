1.
CREATE VIEW rock AS
SELECT * FROM track
WHERE genre_id IN (
  	SELECT genre_id FROM genre
  	WHERE name LIKE 'Rock');

2.
CREATE VIEW classical_count AS
SELECT COUNT(*) FROM playlist_track
  WHERE playlist_id IN (
    SELECT playlist_id FROM playlist
    WHERE name LIKE 'Classical');