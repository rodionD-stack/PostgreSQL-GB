-- Задание 1.

CREATE FUNCTION wrote_most_messages_to_user_id(user_id INTEGER)
RETURNS INTEGER AS
$$
    SELECT from_user_id
    FROM messages
    WHERE to_user_id = user_id
    GROUP BY from_user_id
    ORDER BY COUNT(*) DESC
    LIMIT 1;
$$
LANGUAGE SQL;

SELECT wrote_most_messages_to_user_id(12);

-- Задание 2.

CREATE OR REPLACE PROCEDURE photo_owner_verification ()
LANGUAGE plpgsql AS
$$
    DECLARE real_owner RECORD;
    BEGIN
        FOR real_owner IN
        SELECT profiles.user_id
            FROM profiles
                JOIN photo
                    ON profiles.main_photo_id = photo.id
        WHERE photo.owner_id != profiles.user_id
        LOOP
            UPDATE profiles SET main_photo_id = NULL WHERE user_id = real_owner.user_id;
        END LOOP;
    COMMIT;
END;
$$;

CALL photo_owner_verification();

-- Задание 3.

CREATE OR REPLACE FUNCTION update_profiles_main_photo_id_trigger()
RETURN TRIGGER AS
$$
    DECLARE real_owner_id INTEGER;
    BEGIN
        real_owner_id := (SELECT owner_id FROM photo WHERE id = NEW.main_photo_id);
        IF NEW.user_id != real_owner_id THEN
            RAISE EXCEPTION 'User with ID: % has no photo with ID: %', NEW.user_id, NEW.main_photo_id;
        END IF;
        RETURN NEW;
    END;
$$
LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS profiles_on_update_verification ON profiles;
CREATE TRIGGER profiles_on_update_verification BEFORE UPDATE ON profiles
    FOR EACH ROW
EXECUTE FUNCTION update_profiles_main_photo_id_trigger();

-- Задание 4.

-- Не изменяемое представление

CREATE VIEW users_videosize_more_than_fifty AS
SELECT users.id, first_name, last_name, v.url FROM users
	left join video v
		on users.id = v.owner_id
WHERE v.size > 50;

-- Изменяемое представление

CREATE users_video_uploaded_last_month AS
SELECT * FROM video
    WHERE uploaded_at > (current_timestamp - interval '1 month');

UPDATE users_video_uploaded_last_month SET last_name = 'Smith' WHERE id = 1;






