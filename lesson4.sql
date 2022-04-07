-- Найти решение только на вложенных запросах.

SELECT
	id,
	url,
	(SELECT first_name FROM users WHERE users.id = video.owner_id) AS first_name,
	(SELECT last_name FROM users WHERE users.id = video.owner_id) AS last_name,
	(SELECT 
	 	(SELECT url FROM photo WHERE photo.id = users.main_photo_id)
			FROM users WHERE users.id = video.owner_id) AS main_photo_url,
	size
FROM video
ORDER BY size DESC LIMIT 10;

-- Найти решение с использованием временной таблицы.

CREATE TEMPORARY TABLE large_video_file (
	id INT,
	url VARCHAR(250),
	size INT,
	owner_id INT
);

INSERT INTO large_video_file
	SELECT id, url, size, owner_id
		FROM video
	ORDER BY size DESC
	LIMIT 10;
	
SELECT large_video_file.id,
	first_name,
	last_name,
	photo.url AS main_photo_url,
	large_video_file.url AS video_url,
	large_video_file.size
FROM users
	JOIN large_video_file ON large_video_file.owner_id = users.id
	LEFT JOIN photo ON photo.id = users.main_photo_id;

-- Найти решение с использованием общего табличного выражения.

WITH large_video_file AS
	(SELECT id, url, size, owner_id FROM video
	ORDER BY size DESC LIMIT 10)
SELECT large_video_file.id,
	first_name,
	last_name,
	photo.url AS main_photo_url,
	large_video_file.url AS video_url,
	large_video_file.size
FROM users
	JOIN large_video_file ON large_video_file.owner_id = users.id
	LEFT JOIN photo ON photo.id = users.main_photo_id
ORDER BY size DESC;

-- Найти решение с помощью обЪединения JOIN

SELECT video.id,
	first_name,
	last_name,
	photo.url AS main_photo_url,
	video.url AS video_url,
	video.size
FROM users
	JOIN video ON video.owner_id = users.id
	LEFT JOIN photo ON photo.id = users.main_photo_id
ORDER BY size DESC
LIMIT 10;