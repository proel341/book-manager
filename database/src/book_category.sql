CREATE TABLE book_category(
    id SERIAL PRIMARY KEY,
    parent_id INT REFERENCES book_category(id),
    creater_id INT NOT NULL REFERENCES booklover(id),
    title TEXT NOT NULL UNIQUE,
    category_type_id INT NOT NULL UNIQUE REFERENCES category_type(id),
    created_at TIMESTAMP NOT NULL
);
