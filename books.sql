CREATE DATABASE IF NOT EXISTS Book_Sales;
USE Book_Sales;
SELECT * FROM BOOKS;
SELECT * FROM CUSTOMERS;
SELECT * FROM ORDERS;

      -- Create Table
      
      CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(100),
    genre VARCHAR(50),
    year_published INT,
    price DECIMAL(6,2),
    stock INT
                       );
                       
  INSERT INTO books 
  values
(1,'Configurable modular throughput','Joseph Crane','Biography', 1949, 21.34, 100),
(2,'Persevering reciprocal knowledge user','Mario Moore','Fantasy',	1971, 35.8, 19),
(3,'Streamlined coherent initiative','Derrick Howard','Non-Fiction', 1913, 15.75, 27),
(4,'Customizable 24hour product','Christopher Andrews','Fiction', 2020, 43.52, 8),
(5,'Adaptive 5thgeneration encoding','Juan Miller','Fantasy',1956, 10.95,16),
(6,'Advanced encompassing implementation','Bryan Morgan','Biography', 1985,	6.56,	2),
(7,'Open-architected exuding structure','Jacqueline Young','Romance', 1927,	43.63,	95),
(8,'Persistent local encoding',	'Troy Cox','Science Fiction',	2019, 48.99,84),
(9,'Optimized interactive challenge','Colin Buckley','Fantasy',	1987,	14.33,	70),
(10,'Ergonomic national hub	Samantha Ruiz','Mystery',2015,	24.63,	25);
	