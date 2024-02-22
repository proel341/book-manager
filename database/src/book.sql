CREATE TABLE book(
    id SERIAL PRIMARY KEY,
    article_id INT NOT NULL REFERENCES book_article(id),
    owner_id INT NOT NULL REFERENCES booklover(id)
);
