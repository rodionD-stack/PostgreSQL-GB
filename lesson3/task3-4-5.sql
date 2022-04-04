-- Задание 3

ALTER TABLE photo ADD COLUMN metadata JSON;
UPDATE photo SET metadata = json_build_object(
 ‘id’, id,
 ‘url’, url,
 ‘size’, size
);

-- Задание 4

ALTER TABLE communities ADD COLUMN members INT [];
UPDATE communities
 SET members =
  (SELECT array_agg(user_id) FROM communities_users
   WHERE community_id = communities.id)
 WHERE id = 3;

-- Заданаие 5

CREATE TYPE contacts AS (phone VARCHAR(15), email VARCHAR(120));
ALTER TABLE users ADD COLUMN user_contacts contacts;
UPDATE users SET user_contacts = (users.phone, users.email);
UPDATE users SET user_contacts.email = 'test@somemail.ru' WHERE id = 21;


