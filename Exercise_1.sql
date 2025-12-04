-- Завдання №1 :Створення схеми та подальше її використання
---------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LibraryManagement`;
USE `LibraryManagement`;
----- Завдання №1.1
---------------------------------------------------
CREATE TABLE IF NOT EXISTS `authors`
(
	author_id INT PRIMARY KEY AUTO_INCREMENT,
	author_name VARCHAR(50) NOT NULL
);
----- Завдання №1.2
---------------------------------------------------
CREATE TABLE IF NOT EXISTS `genres`
(
	genre_id INT PRIMARY KEY AUTO_INCREMENT,
	genre_name VARCHAR(50) NOT NULL
);
----- Завдання №1.3
---------------------------------------------------
CREATE TABLE IF NOT EXISTS `books`
(
	book_id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
	publication_year YEAR NOT NULL,
	author_id INT NOT NULL,
	genre_id INT NOT NULL,
FOREIGN KEY (author_id) REFERENCES authors(author_id),
FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);
----- Завдання №1.4
---------------------------------------------------
CREATE TABLE IF NOT EXISTS `users`
(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL
);
----- Завдання №1.5
---------------------------------------------------
CREATE TABLE IF NOT EXISTS `borrowed_books`
(
	borrow_id INT PRIMARY KEY AUTO_INCREMENT,
	book_id INT NOT NULL,
	user_id INT NOT NULL,
	borrow_date DATE NOT NULL,
	return_date DATE NOT NULL,
FOREIGN KEY (book_id) REFERENCES books(book_id),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);
