#SHOW DATABASES;

#https://www.sqlines.com/sql-server/drop_references
#https://stackoverflow.com/questions/36690142/mysql-query-for-movies-with-multiple-genres-using-an-intermediary-table
#https://stackoverflow.com/questions/2300396/force-drop-mysql-bypassing-foreign-key-constraint

# Create a manga library database if this database doesn't exist
CREATE DATABASE IF NOT EXISTS mangas_books_library;

USE mangas_books_library;

SET foreign_key_checks = 0;

DROP TABLE IF EXISTS mangas;
CREATE TABLE mangas (

# Create an "id" column that would be auto-incremented with the auto_increment 
# command and it will be a primary key, which is a column that has a unique value in each row, 
# which identifies them
id_manga int auto_increment PRIMARY KEY,

Title text,
Author text,
Publisher text,
Publishing_Year year,
Pages int,
Manga_Language varchar(50),
Manga_Volume int,
Number_of_Copies int,
Number_of_Copies_Available int

);

DROP TABLE IF EXISTS genre_mangas;
CREATE TABLE genre_mangas (

fk_id_manga int,
Manga_Genre text,

id_genre_manga int auto_increment PRIMARY KEY,
FOREIGN KEY(fk_id_manga) REFERENCES mangas(id_manga)

);

DROP TABLE IF EXISTS books;
CREATE TABLE books (

id_book int auto_increment PRIMARY KEY,

Title text,
Author text,
Publisher text,
Publishing_Year year,
Pages int,
Book_Language varchar(50),
Book_Edition int,
Number_of_Copies int,
Number_of_Copies_Available int

);

DROP TABLE IF EXISTS genre_books;
CREATE TABLE genre_books (

fk_id_book int,
Book_Genre text,

id_genre_book int auto_increment PRIMARY KEY,
FOREIGN KEY(fk_id_book) REFERENCES books(id_book)

);

SET foreign_key_checks = 1;

# Inserting mangas
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Black Paradox', 'Junji Ito', 'Viz Media', 2022, 208, 'English', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Horror', 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('The Liminal Zone', 'Junji Ito', 'Viz Media', 2022, 216, 'English', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Horror', 2);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Dementia 21', 'Shintaro Kago', 'Todavia', 2020, 280, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Horror', 3);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Gyo', 'Junji Ito', 'Devir', 2021, 408, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Horror', 4);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Vênus Invisível', 'Junji Ito', 'Devir', 2022, 276, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Horror', 5);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Calafrios', 'Junji Ito', 'Pipoca e Nanquim', 2022, 412, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Horror', 6);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Contos de Horror da Mimi', 'Junji Ito', 'Darkside', 2022, 248, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Horror', 7);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Contos Macabros de Kanako Inuki', 'Kanako Inuki', 'JBC', 2023, 168, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Horror', 8);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Rosário + Vampire', 'Akihisa Ikeda', 'JBC', 2010, 190, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shonen', 9);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Ecchi', 9);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 9);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Rosário + Vampire', 'Akihisa Ikeda', 'JBC', 2010, 183, 'Portuguese', 2, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shonen', 10);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Ecchi', 10);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 10);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Rosário + Vampire', 'Akihisa Ikeda', 'JBC', 2010, 184, 'Portuguese', 3, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shonen', 11);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Ecchi', 11);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 11);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Spy x Family', 'Tatsuya Endo', 'Planet Manga', 2020, 216, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shonen', 12);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Chi´s Sweet Home', 'Kanata Konami', 'JBC', 2021, 168, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Slice of Life', 12);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Nana', 'Ai Yazawa', 'JBC', 2008, 192, 'Portuguese', 2, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Josei', 13);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Nana', 'Ai Yazawa', 'JBC', 2008, 192, 'Portuguese', 3, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Josei', 14);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Nana', 'Ai Yazawa', 'JBC', 2008, 192, 'Portuguese', 4, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Josei', 15);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Maid Sama!', 'Hiro Fujiwara', 'Panini', 2011, 192, 'Portuguese', 2, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 16);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 16);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Sakura Card Captors', 'Clamp', 'JBC', 2011, 200, 'Portuguese', 5, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 17);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 17);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('PxP', 'Wataru Yoshizumi', 'Panini', 2010, 192, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Josei', 18);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Miyuki-chan no País das Maravilhas', 'Clamp', 'JBC', 2010, 116, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Ecchi', 19);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 19);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Summer Wars', 'Mamoru Hosoda', 'JBC', 2011, 200, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 20);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 20);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Adventure', 20);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Summer Wars', 'Mamoru Hosoda', 'JBC', 2011, 200, 'Portuguese', 2, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 21);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 21);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Adventure', 21);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Summer Wars', 'Mamoru Hosoda', 'JBC', 2011, 200, 'Portuguese', 3, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 22);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 22);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Adventure', 22);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Rockin Heaven', 'Mayu Sakai', 'Panini', 2010, 192, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 23);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 23);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Rockin Heaven', 'Mayu Sakai', 'Panini', 2010, 192, 'Portuguese', 2, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 24);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 24);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Rockin Heaven', 'Mayu Sakai', 'Panini', 2010, 192, 'Portuguese', 3, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 25);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 25);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Full Moon o Sagashite', 'Arina Tanemura', 'JBC', 2009, 200, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 26);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 26);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Full Moon o Sagashite', 'Arina Tanemura', 'JBC', 2009, 200, 'Portuguese', 2, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 27);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 27);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Full Moon o Sagashite', 'Arina Tanemura', 'JBC', 2009, 200, 'Portuguese', 3, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 28);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 28);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Full Moon o Sagashite', 'Arina Tanemura', 'JBC', 2009, 200, 'Portuguese', 4, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 29);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 29);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Full Moon o Sagashite', 'Arina Tanemura', 'JBC', 2009, 200, 'Portuguese', 5, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 30);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 30);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Full Moon o Sagashite', 'Arina Tanemura', 'JBC', 2009, 200, 'Portuguese', 6, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 31);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 31);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Full Moon o Sagashite', 'Arina Tanemura', 'JBC', 2009, 200, 'Portuguese', 7, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 32);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 32);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Nana', 'Ai Yazawa', 'JBC', 2008, 192, 'Portuguese', 5, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Josei', 33);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Nana', 'Ai Yazawa', 'JBC', 2008, 192, 'Portuguese', 6, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Josei', 34);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Nana', 'Ai Yazawa', 'JBC', 2008, 192, 'Portuguese', 7, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Josei', 35);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Bijojuku: Cursinho de Sedução', 'Mayumi Yokoyama', 'Panini', 2010, 192, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 36);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 36);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Bijojuku: Cursinho de Sedução', 'Mayumi Yokoyama', 'Panini', 2010, 194, 'Portuguese', 2, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 36);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 36);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Spicy Pink', 'Wataru Yoshizumi', 'Panini', 2011, 178, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Josei', 37);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Spicy Pink', 'Wataru Yoshizumi', 'Panini', 2011, 178, 'Portuguese', 2, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Josei', 38);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Kyou, Koi Wo Hajimemasu Official Fan Book Japanese Manga Comic', 'Kanan Minami', 'Flower Comics', 2011, 130, 'Japanese', 1, 1, 1);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Shojo', 39);
INSERT IGNORE INTO genre_mangas (Manga_Genre, fk_id_manga) VALUES ('Scholar', 39);

# Inserting books
INSERT INTO books (Title, Author, Publisher, Publishing_Year, Pages, Book_Language, 
Book_Edition, Number_of_Copies, Number_of_Copies_Available) VALUES ('Palavra do Dia', 'Cici Navarro and Céci Portugal', 'Apascentar', 2023, 200, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_books (Book_Genre, fk_id_book) VALUES ( 'Religious', 1);
INSERT INTO books (Title, Author, Publisher, Publishing_Year, Pages, Book_Language,
Book_Edition, Number_of_Copies, Number_of_Copies_Available) VALUES ('Transformando Suor em Ouro', 'Bernardinho', 'Sextante', 2011, 224, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_books (Book_Genre, fk_id_book) VALUES ( 'Sports', 2);
INSERT IGNORE INTO genre_books (Book_Genre, fk_id_book) VALUES ( 'Biography', 2);
INSERT INTO books (Title, Author, Publisher, Publishing_Year, Pages, Book_Language,
Book_Edition, Number_of_Copies, Number_of_Copies_Available) VALUES ('Crepúsculo Graphic Novel', 'Stephenie Meyer and Young Kim', 'Intrínseca', 2010, 224, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_books (Book_Genre, fk_id_book) VALUES ( 'Romance', 3);
INSERT IGNORE INTO genre_books (Book_Genre, fk_id_book) VALUES ( 'Fantasy', 3);
INSERT INTO books (Title, Author, Publisher, Publishing_Year, Pages, Book_Language,
Book_Edition, Number_of_Copies, Number_of_Copies_Available) VALUES ('Orgulho e Preconceito e Zumbis', 'Jane Austen and Seth Grahame-Smith', 'Intrínseca', 2010, 320, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_books (Book_Genre, fk_id_book) VALUES ( 'Fantasy', 4);
INSERT IGNORE INTO genre_books (Book_Genre, fk_id_book) VALUES ( 'Romance', 4);



# Inserting duplicate books
INSERT INTO books (Title, Author, Publisher, Publishing_Year, Pages, Book_Language, 
Book_Edition, Number_of_Copies, Number_of_Copies_Available) VALUES ('Palavra do Dia', 'Cici Navarro and Céci Portugal', 'Apascentar', 2023, 200, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_books (Book_Genre, fk_id_book) VALUES ( 'Religious', 1);
INSERT INTO books (Title, Author, Publisher, Publishing_Year, Pages, Book_Language,
Book_Edition, Number_of_Copies, Number_of_Copies_Available) VALUES ('Orgulho e Preconceito e Zumbis', 'Jane Austen and Seth Grahame-Smith', 'Intrínseca', 2010, 320, 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO genre_books (Book_Genre, fk_id_book) VALUES ( 'Fantasy', 4);
INSERT IGNORE INTO genre_books (Book_Genre, fk_id_book) VALUES ( 'Romancce', 4);

SELECT 
    Title, COUNT(Title)
FROM
    books
GROUP BY 
    Title
HAVING 
    COUNT(Title) > 1;
    
SET foreign_key_checks = 0;

# Remove duplicate rows
START TRANSACTION;
	DELETE b1 FROM books b1
	INNER JOIN books b2 # join = inner join
	WHERE 
		b1.id_book < b2.id_book AND 
		b1.Title = b2.Title;
    
    DELETE g1 FROM genre_books g1
	INNER JOIN genre_books g2 
	WHERE 
		g1.id_genre_book < g2.id_genre_book AND 
		g1.Book_Genre = g2.Book_Genre;
	
COMMIT;

SET foreign_key_checks = 1;
	
# Show the entire books table
SELECT * FROM books
# Order by the alphabetic order of the books Titles
ORDER BY Title;

# Update mangas table because I lent two volumes of Rosario + Vampire
UPDATE mangas SET Number_of_Copies_Available=0 WHERE id_manga=9;
UPDATE mangas SET Number_of_Copies_Available=0 WHERE id_manga=10;

# Update the Publisher of Spy x Family cause I made a mistake about the Publisher
UPDATE mangas SET Publisher='Panini' WHERE id_manga=12;

# Show the entire mangas table
SELECT * FROM mangas
# Order by the alphabetic order of the mangas Titles
ORDER BY Title, Manga_Volume;

# Show the entire mangas genre table
SELECT * FROM genre_mangas
# Order by the alphabetic order of the manga genre
ORDER BY Manga_Genre;

# Show the entire books genre table
SELECT * FROM genre_books
# Order by the alphabetic order of the manga genre
ORDER BY Book_Genre;