-- Триггер на модерацию запрещенных слов.

CREATE TABLE banned_words (
word VARCHAR (255)
);

INSERT INTO banned_words VALUES ('loser');

CREATE OR REPLACE FUNCTION update_message_body_trigger()
RETURNS TRIGGER AS
$$
DECLARE is_found BOOLEAN;
BEGIN
is_found := EXISTS(SELECT * FROM banned_words WHERE NEW.body LIKE '%' || word
|| '%' );
IF is_found THEN
NEW.body := '_MODERATED_';
END IF;
RETURN NEW;
END
$$
LANGUAGE PLPGSQL;

CREATE TRIGGER check_message_on_update BEFORE UPDATE ON messages
FOR EACH ROW
EXECUTE FUNCTION update_message_body_trigger();

