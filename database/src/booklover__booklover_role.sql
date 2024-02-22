CREATE TABLE booklover__booklover_role(
    id SERIAL PRIMARY KEY,
    booklover_id INT REFERENCES booklover(id),
    role_id INT REFERENCES booklover_role(id),
    created_at TIMESTAMP
);
