-- Найти 5 пользователей с наибольлим количеством выставленных товаров. Выводим id товара, количесвто товара, название товара, ФИ пользователя.

SELECT
	goods.id,
	goods.name,
	goods.amount,
	users.first_name AS user_name,
	users.last_name AS user_surname
FROM goods
	JOIN users
		ON users.id = goods.owner_id
ORDER BY goods.amount DESC LIMIT 5;

-- Найти пользователей кому принадлежат 15 самых маленьких видеофалов. Вывести id видео, ФИ пользователя, url фото, url видео, размер видео.
SELECT  video.id,
  first_name,
  last_name,
  photo.url AS main_photo_url,
  video.url AS video_url, 
  video.size
FROM users
  JOIN video
    ON video.owner_id = users.id
  LEFT JOIN photo
    ON photo.id = users.main_photo_id
ORDER BY size ASC
LIMIT 15;

