 USE Book_Sales;

      -- Create Table

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    book_id INT,
    order_date DATE,
    quantity INT,
    total_amount DECIMAL(8,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO orders
VALUES
(1,	84,	169,	2023-05-26,	8,	188.56),
(2,	137, 301,	2023-01-23,	10,	216.6),
(3,	216, 261,	2024-05-27,	6,	85.5),
(4,	433, 343,	2023-11-25,	7,	301.21),
(5,	14,	 431,   2023-07-26,	7,	136.36),
(6,	439, 119,   2024-10-11, 5,	249.4),
(7,	195,467,	2023-10-23,	6,	82.92),
(8,	32,	159,	2024-05-07,	4,	144.84),
(9,	109,407,	2024-01-04,	9,	379.71),
(10,94,	122,	2024-07-09,	4,	123);