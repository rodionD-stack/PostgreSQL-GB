-- Найти 5 пользователей с наибольлим количеством выставленных товаров. Выводим id товара, количесвто товара, название товара, ФИ пользователя.

SELECT
	id,
	name,
	amount,
	(SELECT first_name FROM users WHERE users.id = goods.owner_id) AS user_name,
	(SELECT last_name FROM users WHERE users.id = goods.owner_id) AS user_surname
FROM goods
ORDER BY amount DESC LIMIT 5;

-- Найти пользователей кому принадлежат 15 самых маленьких видеофалов. Вывести id видео, ФИ пользователя, url фото, url видео, размер видео.
SELECT 
  id, 
  url, 
  (SELECT first_name FROM users WHERE users.id=video.owner_id) AS first_name, 
  (SELECT last_name FROM users WHERE users.id=video.owner_id) AS last_name,
  (SELECT 
     (SELECT url FROM photo WHERE photo.id=users.main_photo_id) 
       FROM users WHERE users.id=video.owner_id) AS main_photo_url,
  size 
FROM video 
ORDER BY size ASC LIMIT 15;
