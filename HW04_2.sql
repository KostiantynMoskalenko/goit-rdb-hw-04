INSERT INTO authors (author_name) VALUES
('Isaac Asimov'),
('Eliezer Shlomo Yudkowsky'),
('Stephen William Hawking');

INSERT INTO genres (genre_name) VALUES
('Science Fiction'),
('Fantasy'),
('Popular Science');

INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
('Foundation', 1951, 1, 1),
('Harry Potter and the Methods of Rationality', 2015, 2, 2),
('A Brief History of Time', 1988, 3, 3);

INSERT INTO users (username, email) VALUES
('Grygoriy Petrenko', 'g_petrenko@gmail.com'),
('Ganna Grygorovych', 'ganna_1975@gmail.com'),
('Taras Shulga', 'ya_taras@gmail.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
(1, 1, '2022-02-01', '2022-06-08'),
(2, 2, '2022-02-05', '2022-05-07'),
(3, 3, '2022-02-10', '2022-08-12');