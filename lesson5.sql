-- Задание 1.

CREATE ROLE testers;
CREATE ROLE analysts;

CREATE USER fedor_serov;
CREATE USER roman_belov;

ALTER ROLE fedor_serov WITH PASSWORD '1';
ALTER ROLE roman_belov WITH PASSWORD '1';

GRANT testers TO roman_belov;
GRANT analysts TO fedor_serov;

GRANT ALL ON ALL TABLES IN SCHEMA public TO testers;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO analysts;

-U roman_belov -d vk -h 127.0.0.1 -W
-U fedor_serov -d vk -h 127.0.0.1 -W



-- Задание 2. Установить любое расширение PostgreSQL на ваш выбор.

CREATE EXTENSION "uuid-ossp";

-- Задание 3.

CREATE TABLE profiles (
    user_id INT NOT NULL,
    main_photo_id INT NOT NULL,
    user_contacts contacts,
    created_at TIMESTAMP,
    PRIMARY KEY (user_id)
);

ALTER TABLE profiles
    ADD CONSTRAINT profiles_user_id_fk
    FOREIGN KEY (user_id)
    REFERENCES users (id);

ALTER TABLE profiles
    ADD CONSTRAINT profiles_main_photo_id_fk
    FOREIGN KEY (main_photo_id)
    REFERENCES photo (id);

INSERT INTO profiles (user_id, main_photo_id, user_contacts, created_at)
    SELECT id, main_photo_id, user_contacts, created_at FROM users;

ALTER TABLE users
    DROP COLUMN main_photo_id,
    DROP COLUMN user_contacts,
    DROP COLUMN created_at;


