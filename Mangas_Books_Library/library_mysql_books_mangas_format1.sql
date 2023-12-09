#SHOW DATABASES;

# Create a manga library database if this database doesn't exist
CREATE DATABASE IF NOT EXISTS mangas_books_library;

USE mangas_books_library;

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
#Manga_Genre ENUM ('Shojo', 'Josei', 'Shonen', 'Yaoi', 'Yuri', 'Seinen', 'Horror', 'Ecchi', 'Hentai', 'Slice of Life'),
Manga_Genre text,
Manga_Language varchar(50),
Manga_Volume int,
Number_of_Copies int,
Number_of_Copies_Available int

);

DROP TABLE IF EXISTS books;

CREATE TABLE books (

id_book int auto_increment PRIMARY KEY,

Title text,
Author text,
Publisher text,
Publishing_Year year,
Pages int,
#Book_Genre ENUM ('Classic','Mystery','Fantasy','Romance','Infant','Horror', 'Biography', 
#'Self-Help', 'Religious', 'Adventure', 'Erotic', 'Textbook', 'Science', 'Business Management', 'Sports'),
Book_Genre text,
Book_Language varchar(50),
Book_Edition int,
Number_of_Copies int,
Number_of_Copies_Available int

);

# Inserting mangas
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Black Paradox', 'Junji Ito', 'Viz Media', 2022, 208, 'Horror', 'English', 1, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('The Liminal Zone', 'Junji Ito', 'Viz Media', 2022, 216, 'Horror', 'English', 1, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Dementia 21', 'Shintaro Kago', 'Todavia', 2020, 280, 'Horror', 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Gyo', 'Junji Ito', 'Devir', 2021, 408, 'Horror', 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Vênus Invisível', 'Junji Ito', 'Devir', 2022, 276, 'Horror', 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Calafrios', 'Junji Ito', 'Pipoca e Nanquim', 2022, 412, 'Horror', 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Contos de Horror da Mimi', 'Junji Ito', 'Darkside', 2022, 248, 'Horror', 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Contos Macabros de Kanako Inuki', 'Kanako Inuki', 'JBC', 2023, 168, 'Horror', 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Rosário + Vampire', 'Akihisa Ikeda', 'JBC', 2010, 190, 'Shonen, Ecchi', 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Rosário + Vampire', 'Akihisa Ikeda', 'JBC', 2010, 183, 'Shonen, Ecchi', 'Portuguese', 2, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Rosário + Vampire', 'Akihisa Ikeda', 'JBC', 2010, 184, 'Shonen, Ecchi', 'Portuguese', 3, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Spy x Family', 'Tatsuya Endo', 'Planet Manga', 2020, 216, 'Shonen', 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Chi´s Sweet Home', 'Kanata Konami', 'JBC', 2021, 168, 'Slice of Life', 'Portuguese', 1, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Nana', 'Ai Yazawa', 'JBC', 2008, 192, 'Josei', 'Portuguese', 2, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Nana', 'Ai Yazawa', 'JBC', 2008, 192, 'Josei', 'Portuguese', 3, 1, 1);
INSERT IGNORE INTO mangas (Title, Author, Publisher, Publishing_Year, Pages, Manga_Genre, Manga_Language,
Manga_Volume, Number_of_Copies, Number_of_Copies_Available) VALUES ('Nana', 'Ai Yazawa', 'JBC', 2008, 192, 'Josei', 'Portuguese', 4, 1, 1);

# Inserting books
INSERT INTO books (Title, Author, Publisher, Publishing_Year, Pages, Book_Genre, Book_Language, 
Book_Edition, Number_of_Copies, Number_of_Copies_Available) VALUES ('Palavra do Dia', 'Cici Navarro and Céci Portugal', 'Apascentar', 2023, 200, 'Religious', 'Portuguese', 1, 1, 1);
INSERT INTO books (Title, Author, Publisher, Publishing_Year, Pages, Book_Genre, Book_Language,
Book_Edition, Number_of_Copies, Number_of_Copies_Available) VALUES ('Transformando Suor em Ouro', 'Bernardinho', 'Sextante', 2011, 224, 'Biography, Sports', 'Portuguese', 1, 1, 1);
INSERT INTO books (Title, Author, Publisher, Publishing_Year, Pages, Book_Genre, Book_Language,
Book_Edition, Number_of_Copies, Number_of_Copies_Available) VALUES ('Crepúsculo Graphic Novel', 'Stephenie Meyer and Young Kim', 'Intrínseca', 2010, 224, 'Romance, Fantasy', 'Portuguese', 1, 1, 1);
INSERT INTO books (Title, Author, Publisher, Publishing_Year, Pages, Book_Genre, Book_Language,
Book_Edition, Number_of_Copies, Number_of_Copies_Available) VALUES ('Orgulho e Preconceito e Zumbis', 'Jane Austen and Seth Grahame-Smith', 'Intrínseca', 2010, 320, 'Romance, Fantasy', 'Portuguese', 1, 1, 1);

# Inserting duplicate books
INSERT INTO books (Title, Author, Publisher, Publishing_Year, Pages, Book_Genre, Book_Language, 
Book_Edition, Number_of_Copies, Number_of_Copies_Available) VALUES ('Palavra do Dia', 'Cici Navarro and Céci Portugal', 'Apascentar', 2023, 200, 'Religious', 'Portuguese', 1, 1, 1);
INSERT INTO books (Title, Author, Publisher, Publishing_Year, Pages, Book_Genre, Book_Language,
Book_Edition, Number_of_Copies, Number_of_Copies_Available) VALUES ('Orgulho e Preconceito e Zumbis', 'Jane Austen and Seth Grahame-Smith', 'Intrínseca', 2010, 320, 'Romance, Fantasy', 'Portuguese', 1, 1, 1);

SELECT 
    Title, COUNT(Title)
FROM
    books
GROUP BY 
    Title
HAVING 
    COUNT(Title) > 1;
    
# Remove duplicate rows
DELETE b1 FROM books b1
INNER JOIN books b2 # join = inner join
WHERE 
    b1.id_book < b2.id_book AND 
    b1.Title = b2.Title;
    
# Show the entire books table
SELECT * FROM books
# Order by the alphabetic order of the books Titles
ORDER BY Title;

# Update mangas table because I lent Dementia 21
UPDATE mangas SET Number_of_Copies_Available=0 WHERE Title='Dementia 21';
# or
#UPDATE mangas SET Number_of_Copies_Available=0 WHERE id_manga=3;

# Update the Publisher of Spy x Family cause I made a mistake about the Publisher
UPDATE mangas SET Publisher='Panini' WHERE id_manga=12;

# Show the entire mangas table
SELECT * FROM mangas
# Order by the alphabetic order of the mangas Titles
ORDER BY Title;

# Show only horror mangas that are available to be lent
SELECT * from mangas WHERE manga_genre = 'Horror' and Number_of_Copies_Available>0;