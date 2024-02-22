CREATE TABLE author(
    id SERIAL PRIMARY KEY,
    firstname TEXT,
    surname TEXT,
    patronymic TEXT,
    nickname TEXT,
    like_count INT NOT NULL DEFAULT 0
)
CREATE TABLE author__book_article (
    id SERIAL PRIMARY KEY,
    author_id INT NOT NULL REFERENCES author(id),
    article_id INT NOT NULL REFERENCES book_article(id)
);

CREATE UNIQUE INDEX "index@author__book_article" ON author__book_article(
    author_id,
    article_id
);
CREATE TABLE book(
    id SERIAL PRIMARY KEY,
    article_id INT NOT NULL REFERENCES book_article(id),
    owner_id INT NOT NULL REFERENCES booklover(id)
);
CREATE TABLE book_article(
    id SERIAL PRIMARY KEY,
    title TEXT,
    verifyer_id INT NOT NULL REFERENCES booklover(id),
    creater_id INT NOT NULL REFERENCES booklover(id),
    like_count INT NOT NULL DEFAULT 0,
    category_id INT NOT NULL REFERENCES book_category(id),
    temp_fields JSON,
    created_at TIMESTAMP NOT NULL,
    verified_at TIMESTAMP
);
CREATE TABLE book_category(
    id SERIAL PRIMARY KEY,
    parent_id INT REFERENCES book_category(id),
    creater_id INT NOT NULL REFERENCES booklover(id),
    title TEXT NOT NULL UNIQUE,
    category_type_id INT NOT NULL UNIQUE REFERENCES category_type(id),
    created_at TIMESTAMP NOT NULL
);
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
CREATE TABLE booklover__booklover_role(
    id SERIAL PRIMARY KEY,
    booklover_id INT REFERENCES booklover(id),
    role_id INT REFERENCES booklover_role(id),
    created_at TIMESTAMP
);
CREATE TABLE booklover_role(
    id SERIAL PRIMARY KEY,
    role_name TEXT NOT NULL UNIQUE
);
CREATE TABLE borrow_history(
    id SERIAL PRIMARY KEY,
    booklover_id INT NOT NULL REFERENCES booklover(id),
    status_id INT NOT NULL borrow_status(id),
    book_id INT NOT NULL book(id),
    start_date TIMESTAMP NOT NULL,
    finish_date TIMESTAMP NOT NULL
);
CREATE TABLE borrow_status(
    id SERIAL PRIMARY KEY,
    status TEXT UNIQUE NOT NULL
);
CREATE TABLE category_type(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    creater_id INT NOT NULL REFERENCES booklover(id),
    created_at TIMESTAMP NOT NULL
);
CREATE TABLE publisher(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL UNIQUE,
    like_count INT NOT NULL DEFAULT 0
);
CREATE TABLE publisher__book_article(
    id SERIAL PRIMARY KEY,
    publisher_id INT NOT NULL REFERENCES publisher(id),
    article_id INT NOT NULL REFERENCES book_article(id)
);

CREATE UNIQUE INDEX "index@publisher__book_article" ON publisher__book_article(
    publisher_id,
    article_id
);
