CREATE TABLE publisher__book_article(
    id SERIAL PRIMARY KEY,
    publisher_id INT NOT NULL REFERENCES publisher(id),
    article_id INT NOT NULL REFERENCES book_article(id)
);

CREATE UNIQUE INDEX "index@publisher__book_article" ON publisher__book_article(
    publisher_id,
    article_id
);
