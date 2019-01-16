DROP DATABASE IF EXISTS express_users;
CREATE DATABASE express_users;

\c express_users;

CREATE TABLE users(
  id serial primary key,
  name varchar NOT NULL,
  email varchar UNIQUE NOT NULL,
  password_digest varchar NOT NULL,
  is_admin boolean DEFAULT 'f'
);