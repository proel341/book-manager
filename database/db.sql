BEGIN;
\i ~/book-manager/database/publisher.sql
\i ~/book-manager/database/booklover_role.sql
\i ~/book-manager/database/booklover.sql
\i ~/book-manager/database/category_type.sql
\i ~/book-manager/database/book_category.sql
\i ~/book-manager/database/book_article.sql
\i ~/book-manager/database/publisher__book_article.sql
\i ~/book-manager/database/author.sql
\i ~/book-manager/database/author__book_article.sql
\i ~/book-manager/database/book.sql
\i ~/book-manager/database/booklover__booklover_role.sql
\i ~/book-manager/database/borrow_status.sql
\i ~/book-manager/database/borrow_history.sql
commit;
