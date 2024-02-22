CREATE TABLE author__book_article (
    id SERIAL PRIMARY KEY,
    author_id INT NOT NULL REFERENCES author(id),
    article_id INT NOT NULL REFERENCES book_article(id)
);

CREATE UNIQUE INDEX "index@author__book_article" ON author__book_article(
    author_id,
    article_id
);
