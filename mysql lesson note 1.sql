SHOW DATABASES;
USE book_shop;
SELECT DATABASE();

SELECT * FROM books;

SELECT CONCAT (author_fname,'  ', author_lname) FROM books;

SELECT author_fname AS first, author_lname AS last,

CONCAT_WS (' - ',title,author_fname,author_lname) AS 'full name' FROM books;

SELECT title FROM books;

SELECT SUBSTRING(title,1,10)  AS 'short title' FROM books;

SELECT CONCAT (SUBSTRING(title,1,10),'....') AS 'short title' FROM books;

SELECT REPLACE('cheese coffee milk bread',' ',' and ') AS REP;

-- SELECT SUBSTRING(REPLACE(title,'e','3'),1,10);
SELECT REVERSE('me');

SELECT CHAR_LENGTH('HELLO WORLD');

SELECT CONCAT(author_lname,' is ',CHAR_LENGTH(author_lname), ' character long')  AS XTER FROM books;

SELECT CONCAT('MY FAVORITE BOOK IS ',UPPER(title)) AS FAVORITES FROM books;

SELECT REVERSE(UPPER('why those my cat look at me with such hatred'));

SELECT REPLACE(CONCAT('I','  ','LIKE','  ','CATS'),'  ',' - ');

SELECT REPLACE(title,' ',' -> ') AS title FROM books;

SELECT author_lname AS 'forward',
REVERSE(author_lname) AS 'backward' FROM books;

SELECT UPPER(CONCAT(author_fname,'  ',author_lname)) AS 'full name in caps' FROM books;

SELECT * FROM books;

SELECT CONCAT(title,' was released in ', released_year ) AS blurb FROM books;

SELECT title, CHAR_LENGTH(title)AS 'character count' FROM books;

SELECT CONCAT(SUBSTRING(title,1,9),'....') AS 'short title',
CONCAT(author_lname,',',author_fname) AS 'author',
CONCAT(stock_quantity,' in stock ') AS 'quantity'
FROM books;

INSERT INTO books (title,author_fname,author_lname,released_year,stock_quantity,pages)
VALUES ('10% Happier','Dan','Harris',2014,29,256),
	   ('fake book','Freida','Harris',2001,287,428),
       ('Lincoln in the Bardo','George','Saunders','2017','1000',367);
       
SELECT DISTINCT author_lname FROM books;

SELECT DISTINCT author_lname FROM books ORDER BY author_lname;

SELECT DISTINCT author_lname FROM books ORDER BY author_lname DESC;

SELECT title,released_year FROM books ORDER BY released_year DESC;

SELECT title,author_fname,author_lname FROM books ORDER BY 2,3;

SELECT * FROM books LIMIT 3;

SELECT title,released_year FROM books ORDER BY 2 DESC LIMIT 3,5;
SELECT released_year,title FROM books ORDER BY 1 DESC;
SELECT * FROM books WHERE released_year = 2001;

SELECT title,author_fname FROM books 
WHERE author_fname LIKE '%DA%';

SELECT title,stock_quantity FROM books 
WHERE stock_quantity LIKE '____';

SELECT title FROM books 
WHERE title LIKE '%\%%';

SELECT title FROM books 
WHERE title LIKE '%\_%';

SELECT title FROM books 
WHERE title LIKE '%stories%';

SEL





