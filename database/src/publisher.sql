CREATE TABLE publisher(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL UNIQUE,
    like_count INT NOT NULL DEFAULT 0
);
