-- Exercise 1: Database Development for a Music Library
CREATE TABLE Artists (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
age INT
);

CREATE TABLE Genres (
id INT AUTO_INCREMENT PRIMARY KEY,
genre VARCHAR(100) NOT NULL
);

CREATE TABLE Albumns (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
artist_id INT,
FOREIGN KEY (artist_id) REFERENCES Artists(id),
genre_id INT,
FOREIGN KEY (genre_id) REFERENCES Genres(id),
release_year YEAR,
total_tracks INT NOT NULL
);

ALTER TABLE Albumns
ADD duration INT;