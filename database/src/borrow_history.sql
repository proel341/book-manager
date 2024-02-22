CREATE TABLE borrow_history(
    id SERIAL PRIMARY KEY,
    booklover_id INT NOT NULL REFERENCES booklover(id),
    status_id INT NOT NULL REFERENCES borrow_status(id),
    book_id INT NOT NULL REFERENCES book(id),
    start_date TIMESTAMP NOT NULL,
    finish_date TIMESTAMP NOT NULL
);
