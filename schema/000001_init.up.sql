CREATE TABLE users (
  id serial NOT NULL UNIQUE,
  name VARCHAR(255) NOT NULL,
  username VARCHAR(255) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL
);

CREATE TABLE todo_lists (
  id serial NOT NULL UNIQUE,
  title VARCHAR(255) NOT NULL,
  description VARCHAR(255)
);

CREATE TABLE users_lists (
  id serial NOT NULL UNIQUE,
  user_id INT REFERENCES users (id) ON DELETE cascade NOT NULL,
  list_id INT REFERENCES todo_lists (id) ON DELETE cascade NOT NULL
);

CREATE TABLE todo_items (
  id serial NOT NULL UNIQUE,
  title VARCHAR(255) NOT NULL,
  description VARCHAR(255),
  done BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE lists_items (
  id serial NOT NULL UNIQUE,
  item_id INT REFERENCES todo_items (id) ON DELETE cascade NOT NULL,
  list_id INT REFERENCES todo_lists (id) ON DELETE cascade NOT NULL
);