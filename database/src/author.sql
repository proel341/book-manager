CREATE TABLE author(
    id SERIAL PRIMARY KEY,
    firstname TEXT,
    surname TEXT,
    patronymic TEXT,
    nickname TEXT,
    like_count INT NOT NULL DEFAULT 0
)
