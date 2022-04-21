-- Представление для вывода пользователей без сообщений. Выборка на 10 пользователей.
CREATE VIEW users_without_messages AS
SELECT users.id, users.first_name, users.last_name
FROM users
LEFT JOIN messages
ON users.id = messages.from_user_id
WHERE messages.id IS NULL;

SELECT * FROM users_without_messages LIMIt 10;


-- Представление для вывода названия игр, в которые играют пользователи, с размером более 1000. Выборка на 10 пользователей.
CREATE VIEW users_gamesize_more_than_thousand AS
SELECT users.id, first_name, last_name, g.name FROM users
	left join games g
		on users.id = g.user_id
WHERE g.size > 1000;

SELECT * FROM users_gamesize_more_than_thousand LIMIT 10;