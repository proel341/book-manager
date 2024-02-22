CREATE TABLE category_type(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    creater_id INT NOT NULL REFERENCES booklover(id),
    created_at TIMESTAMP NOT NULL
);
