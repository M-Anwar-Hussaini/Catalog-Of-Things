CREATE DATABASE catalog.

CREATE TABLE labels (
	id SERIAL PRIMARY KEY,
	title VARCHAR(50),
	color VARCHAR(50)
);

CREATE TABLE sources (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE authors (
	id	SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

CREATE TABLE books (
	id SERIAL PRIMARY KEY,
	publisher VARCHAR(100),
	cover_state VARCHAR(50),
	publish_date DATE,
	archieved BOOL,
	genre_id INTEGER REFERENCES genres(id),
	author_id INTEGER REFERENCES authors(id),
	source_id INTEGER REFERENCES sources(id),
	label_id INTEGER REFERENCES labels(id)
);

CREATE TABLE music_albums (
	id SERIAL PRIMARY KEY,
	on_spotify BOOL,
	publish_date DATE,
	archieved BOOL,
	genre_id INTEGER REFERENCES genres(id),
	author_id INTEGER REFERENCES authors(id),
	source_id INTEGER REFERENCES sources(id),
	label_id INTEGER REFERENCES labels(id)
);

CREATE TABLE movies (
	id SERIAL PRIMARY KEY,
	silent BOOL,
	publish_date DATE,
	archieved BOOL,
	genre_id INTEGER REFERENCES genres(id),
	author_id INTEGER REFERENCES authors(id),
	source_id INTEGER REFERENCES sources(id),
	label_id INTEGER REFERENCES labels(id)
);

CREATE TABLE games (
	id SERIAL PRIMARY KEY,
	multiplayer BOOL,
  last_played_at DATE,
	publish_date DATE,
	archieved BOOL,
	genre_id INTEGER REFERENCES genres(id),
	author_id INTEGER REFERENCES authors(id),
	source_id INTEGER REFERENCES sources(id),
	label_id INTEGER REFERENCES labels(id)
);