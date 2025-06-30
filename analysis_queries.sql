USE book_sales;

select * from books;
select * from orders;
select * from customers;

                 --  Total sales Revenue by Genre.
SELECT b.Genre,
       ROUND(SUM(o.Total_Amount),2)AS total_revenue
FROM orders AS o 
JOIN books AS b  
ON b.Book_ID = o.Book_ID
GROUP BY b.Genre
ORDER BY total_revenue DESC;      

                  --  Top 5 Best-Selling Books by Quantity
                  
SELECT b.Title,
	   b.Genre,
       SUM(o.Quantity)AS total_sold_books
FROM books AS b
JOIN orders As o
ON b.Book_ID = o.Book_ID
GROUP BY b.Title,b.Genre
ORDER BY  total_sold_books DESC
LIMIT 5;                 

                  --  Monthly Sales Trend
SELECT 
DATE_FORMAT(Order_Date, '%Y - %M')AS Month,
Round(SUM(Total_Amount),2)AS Monthly_revenue
FROM ORDERS
GROUP BY order_date;

                    --  Average Order Value per Customer

SELECT c.Customer_ID, 
       c.Name,
       COUNT(Order_ID)AS total_orders,
       SUM(Total_Amount)AS total_spent,
       ROUND(SUM(Total_Amount) /COUNT(Order_ID),2)AS AVG_ORD_VALUE
FROM orders AS o
JOIN customers AS c
ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_ID, c.Name
ORDER BY customer_Id;

             --   Top 5 Cities by Total Orders

SELECT c.City,
COUNT(o.Order_ID)AS Total_Orders
FROM orders AS o
JOIN customers AS c
ON o.Customer_ID = o.Customer_ID
GROUP BY c.City
ORDER BY Total_Orders DESC
LIMIT 5;

            --   Low-Stock Alert (Books that Need Restocking)
            
SELECT Book_ID, 
       Title, 
       Stock
FROM Books
WHERE Stock <=10
ORDER BY Stock ASC;

               --  Customers Who Ordered More Than 3 Times
SELECT c.Customer_ID, 
	   c.Name,
	   COUNT(o.Order_ID)AS Total_Orders 
FROM customers AS c
JOIN orders AS o
ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID,c.Name
HAVING Total_Orders >3
ORDER BY Total_Orders ASC;

                    --  Total number of books sold for each Genre
SELECT b.Genre, 
       sum(o.Quantity)
FROM books AS b
JOIN orders AS o
ON b.Book_ID = o.Book_ID 
GROUP BY b.Genre;   
                    
             --  Most frequently ordered book       
SELECT  o.Book_ID,
        b.Title,
        B.Genre,
       COUNT(Order_ID)AS Order_count
FROM orders AS o
JOIN books AS b
ON o.Book_ID = b.Book_ID
GROUP BY o.Book_ID, b.Title, b.Genre
ORDER BY Order_count DESC
LIMIT 1;
   
            -- Top  Customers by Total Spend
SELECT c.Name,
       c.City,
      ROUND(SUM(O.Total_Amount),2)AS Total_spent
FROM customers AS c
JOIN orders AS O
ON c.customer_ID = o.customer_ID
GROUP BY  c.Name, c.City
ORDER BY Total_spent DESC
LIMIT 3;
        
                    --  Most Recent Orders
        
SELECT 
    o.Order_id,
    c.name AS Customer_name,
    b.title AS Book_title,
    o.Order_Date,
    o.Total_Amount
FROM orders AS o
JOIN customers c 
ON o.Customer_id = c.Customer_id
JOIN books b 
ON o.Book_id = b.Book_id
ORDER BY o.order_date DESC
LIMIT 5;
                  
                     -- Books That Were Never Ordered
SELECT 
    b.Book_id,
    b.Title,
    b.Stock
FROM books AS b
LEFT JOIN orders AS o 
ON b.Book_id = o.Book_id
WHERE o.Order_ID IS NULL;

							

   