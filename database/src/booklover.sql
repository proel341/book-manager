CREATE TABLE booklover(
    id SERIAL PRIMARY KEY,
    login TEXT NOT NULL UNIQUE,
    password TEXT,
    nickname TEXT,
    firstname TEXT,
    surname TEXT,
    patronymic TEXT,
    like_count INT NOT NULL DEFAULT 0,
    access_token TEXT,
    refresh_token TEXT,
    session_ttl TIMESTAMP
);
