-- Количество исполнителей в каждом жанре.

SELECT genre_name, COUNT(artiste_id) FROM genre g
LEFT JOIN genre_artiste ga  ON g.genre_id = ga.genre_id
GROUP BY g.genre_name;

--Количество треков, вошедших в альбомы 2016–2022 годов.

SELECT COUNT(track_id) FROM album a
LEFT JOIN track t ON a.album_id = t.album_id
WHERE year  >= 2016 and year  <= 2022

--Средняя продолжительность треков по каждому альбому.

SELECT album_name, AVG(time) FROM album a
LEFT JOIN track t ON a.album_id = t.album_id
GROUP BY a.album_name;


--Все исполнители, которые не выпустили альбомы в 2021 году.

SELECT artiste_name FROM artiste a
WHERE artiste_name NOT IN (SELECT artiste_name FROM artiste 
					LEFT JOIN artiste_album aa ON a.artiste_id = aa.artiste_id 
					LEFT JOIN album al ON aa.album_id = al.album_id
					WHERE YEAR = 2021);

--5.Названия сборников, в которых присутствует Иванушки.

SELECT collection_name,artiste_name FROM collection c 
JOIN collection_track ct ON c.collection_id = ct.collection_id
JOIN track t  ON ct.track_id = t.track_id
JOIN album a  ON t.album_id = a.album_id
JOIN artiste_album aa  ON a.album_id = aa.album_id
JOIN artiste a2  ON aa.artiste_id = a2.artiste_id
WHERE artiste_name LIKE 'Иванушки';

--6.Названия альбомов, в которых присутствуют исполнители более чем одного жанра.

SELECT artiste_name,album_name FROM album a
JOIN artiste_album aa  ON a.album_id = aa.album_id
JOIN artiste ar  ON aa.artiste_id = ar.artiste_id
JOIN genre_artiste ga ON ar.artiste_id =ga.artiste_id
GROUP BY artiste_name,album_name
HAVING count(genre_id) >= 2;


--7.Наименования треков, которые не входят в сборники

SELECT track_name FROM track t
LEFT JOIN collection_track ct ON t.track_id = ct.track_id
WHERE collection_id is NULL;

--8.Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.

SELECT artiste_name, time FROM artiste a 
JOIN artiste_album aa  ON a.artiste_id = aa.artiste_id
JOIN album al ON aa.album_id = al.album_id
JOIN track t ON al.album_id = t.album_id
WHERE time = (SELECT MIN(time) FROM track )

--9.Названия альбомов, содержащих наименьшее количество треков.

SELECT al.album_name from album al
JOIN track t ON al.album_id = t.album_id
GROUP BY al.album_name
HAVING COUNT(t.track_name) = (
	SELECT COUNT(t.track_name) FROM album al
	JOIN track t ON al.album_id = t.album_id
		GROUP BY al.album_name
		ORDER BY COUNT(t.track_name)
		LIMIT 1)
		
