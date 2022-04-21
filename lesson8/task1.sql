-- Users
DROP TABLE IF EXISTS "users";

CREATE TABLE "users" (
  id SERIAL PRIMARY KEY,
  first_name varchar(255) default NULL,
  last_name varchar(255) default NULL,
  email varchar(255) default NULL,
  phone varchar(100) default NULL,
  main_photo_id integer NULL,
  created_at varchar(255)
);

-- Messages
DROP TABLE IF EXISTS "messages";

CREATE TABLE "messages" (
  id SERIAL PRIMARY KEY,
  from_user_id integer NULL,
  to_user_id integer NULL,
  body TEXT default NULL,
  is_important varchar(255) default NULL,
  is_delivered varchar(255) default NULL,
  created_at varchar(255)
);

-- Subscribes
DROP TABLE IF EXISTS "subscribes";

CREATE TABLE "subscribes" (
  id SERIAL PRIMARY KEY,
  requested_by_user_id integer NULL,
  requested_to_user_id integer NULL,
  status_id integer NULL,
  requested_at varchar(255),
  confirmed_at varchar(255)
);

-- Subscribes_status
DROP TABLE IF EXISTS "subscribes_status";

CREATE TABLE "subscribes_status" (
  id SERIAL PRIMARY KEY,
  name varchar(255) default NULL
);

-- Communities
DROP TABLE IF EXISTS "communities";

CREATE TABLE "communities" (
  id SERIAL PRIMARY KEY,
  name TEXT default NULL,
  creator_id integer NULL,
  created_at varchar(255)
);

-- Communities_users
DROP TABLE IF EXISTS "communities_users";

CREATE TABLE "communities_users" (
  id SERIAL PRIMARY KEY,
  community_id integer NULL,
  user_id integer NULL,
  created_at varchar(255)
);

-- Goods
DROP TABLE IF EXISTS "goods";

CREATE TABLE "goods" (
  id SERIAL PRIMARY KEY,
  name TEXT default NULL,
  description TEXT default NULL,
  amount integer NULL,
  owner_id integer NULL,
  added_at varchar(255)
);

-- Goods_users
DROP TABLE IF EXISTS "goods_users";

CREATE TABLE "goods_users" (
  id SERIAL PRIMARY KEY,
  goods_id integer NULL,
  user_id integer NULL
);

-- Photo
DROP TABLE IF EXISTS "photo";

CREATE TABLE "photo" (
  id SERIAL PRIMARY KEY,
  url TEXT default NULL,
  owner_id integer NULL,
  description TEXT default NULL,
  uploaded_at varchar(255),
  size integer NULL
);

-- Video
DROP TABLE IF EXISTS "video";

CREATE TABLE "video" (
  id SERIAL PRIMARY KEY,
  url TEXT default NULL,
  owner_id integer NULL,
  description TEXT default NULL,
  uploaded_at varchar(255),
  size integer NULL
);

-- Music
DROP TABLE IF EXISTS "music";

CREATE TABLE "music" (
  id SERIAL PRIMARY KEY,
  url TEXT default NULL,
  owner_id integer NULL,
  description TEXT default NULL,
  uploaded_at varchar(255),
  size integer NULL
);

-- Games
DROP TABLE IF EXISTS "games";

CREATE TABLE "games" (
  id SERIAL PRIMARY KEY,
  name TEXT default NULL,
  user_id integer NULL,
  description TEXT default NULL,
  start_palying varchar(255),
  size integer NULL
);