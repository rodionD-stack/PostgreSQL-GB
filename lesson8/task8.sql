-- Функция выводящая количество отправлленных и полученных сообщений пользователем.
DROP FUNCTION messages_total_by_user_id;
 CREATE TYPE messages_total AS (sent BIGINT, received BIGINT);
 CREATE FUNCTION messages_total_by_user_id(user_id INTEGER)
 RETURNS messages_total AS
 $$
	 SELECT
	 COUNT(DISTINCT sm.id),
	 COUNT(DISTINCT rm.id)
	 FROM users
	 LEFT JOIN messages sm
		ON sm.from_user_id = users.id
	 LEFT JOIN messages rm
		 ON rm.to_user_id = users.id
 	WHERE users.id = user_id;
 $$
LANGUAGE SQL;

SELECT messages_total_by_user_id(9);