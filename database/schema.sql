CREATE DATABASE catalog

CREATE TABLE authors (
    id	SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
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
