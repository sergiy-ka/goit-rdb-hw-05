/*2. Заповніть таблиці простими видуманими тестовими даними.*/

-- Додавання авторів
INSERT INTO authors (author_name) VALUES
('Джон Сміт'),
('Марія Гришко');

-- Додавання жанрів
INSERT INTO genres (genre_name) VALUES
('Фантастика'),
('Детектив');

-- Додавання книг
INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
('Космічні пригоди Наполеона', 2017, 1, 1),
('Таємниця старого сараю', 2020, 2, 2);

-- Додавання користувачів
INSERT INTO users (username, email) VALUES
('Ам Ням', 'reader@gmail.com'),
('Мак Квін', 'bookworm@gmail.com');

-- Додавання записів про позичені книги
INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
(1, 1, '2024-11-04', '2024-11-15'),
(2, 2, '2024-11-11', NULL);  