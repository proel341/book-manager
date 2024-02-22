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
