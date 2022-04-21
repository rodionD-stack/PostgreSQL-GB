-- users
ALTER TABLE users
 ADD CONSTRAINT users_main_photo_id_fk
 FOREIGN KEY (main_photo_id)
 REFERENCES photo (id);

-- messages
ALTER TABLE messages
 ADD CONSTRAINT messages_from_user_id_fk
 FOREIGN KEY (from_user_id)
 REFERENCES users (id);

ALTER TABLE messages
 ADD CONSTRAINT messages_to_user_id_fk
 FOREIGN KEY (to_user_id)
 REFERENCES users (id);

-- subscribes
ALTER TABLE subscribes
 ADD CONSTRAINT subscribes_status_id_fk
 FOREIGN KEY (status_id)
 REFERENCES subscribes_status (id);

ALTER TABLE subscribes
 ADD CONSTRAINT subscribes_requested_to_user_id_fk
 FOREIGN KEY (requested_to_user_id)
 REFERENCES users (id);

ALTER TABLE subscribes
 ADD CONSTRAINT subscribes_requested_by_user_id_fk
 FOREIGN KEY (requested_by_user_id)
 REFERENCES users (id);

-- communities
ALTER TABLE communities
 ADD CONSTRAINT communities_creator_id_fk
 FOREIGN KEY (creator_id)
 REFERENCES users (id);

ALTER TABLE communities_users
 ADD CONSTRAINT communities_users_user_id_fk
 FOREIGN KEY (user_id)
 REFERENCES users (id);

ALTER TABLE communities_users
 ADD CONSTRAINT communities_users_community_id_fk
 FOREIGN KEY (community_id)
 REFERENCES communities (id);

-- goods
ALTER TABLE goods
 ADD CONSTRAINT goods_owner_id_fk
 FOREIGN KEY (owner_id)
 REFERENCES users (id);

ALTER TABLE goods_users
 ADD CONSTRAINT goods_users_user_id_fk
 FOREIGN KEY (user_id)
 REFERENCES users (id);

ALTER TABLE goods_users
 ADD CONSTRAINT goods_users_goods_id_fk
 FOREIGN KEY (goods_id)
 REFERENCES goods (id);

-- photo
ALTER TABLE photo
 ADD CONSTRAINT photo_owner_id_fk
 FOREIGN KEY (owner_id)
 REFERENCES users (id);

-- video
ALTER TABLE video
 ADD CONSTRAINT video_owner_id_fk
 FOREIGN KEY (owner_id)
 REFERENCES users (id);

-- music
ALTER TABLE music
 ADD CONSTRAINT music_owner_id_fk
 FOREIGN KEY (owner_id)
 REFERENCES users (id);

-- games
ALTER TABLE games
 ADD CONSTRAINT games_user_id_fk
 FOREIGN KEY (user_id)
 REFERENCES users (id);