CREATE DATABASE IF NOT EXISTS CSD430;

USE CSD430;

CREATE TABLE tevyah_movies_data (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    release_year INT,
    rating DECIMAL(2,1)
);

INSERT INTO tevyah_movies_data (title, genre, release_year, rating) VALUES
('Wreck-It Ralph', 'Animation', 2012, 7.7),
('Napoleon Dynamite', 'Comedy', 2004, 7.0),
('Jumanji', 'Adventure', 1995, 7.0),
('Jumanji: The Next Level', 'Adventure', 2019, 6.7),
('Pirates of the Caribbean: The Curse of the Black Pearl', 'Adventure', 2003, 8.1),
('A Christmas Story', 'Comedy', 1983, 8.0),
('Elf', 'Comedy', 2003, 7.1),
('Toy Story', 'Animation', 1995, 8.3),
('Back to the Future', 'Sci-Fi', 1985, 8.5),
('Home Alone', 'Comedy', 1990, 7.7);
