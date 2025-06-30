# Bookstore_Store_Analysis
Bookstore_Store_Analysis

# 📚 Bookstore Sales Analysis using MySQL

This project simulates an online bookstore's database and demonstrates practical SQL skills by analyzing customer behavior, book performance, and sales trends.

---

## 📦 Project Structure

```
bookstore-sales-analysis/
bookstore-sales-analysis/
├── README.md                ✅ Project explanation
├── books.sql                ✅ Table + insert data
├── customers.sql            ✅ Table + insert data
├── orders.sql               ✅ Table + insert data
├── analysis_queries.sql
---

## 🗃️ Database Tables

### 1. `books`
Contains book catalog with details like genre, price, and stock.

| Column       | Type          |
|--------------|---------------|
| book_id      | INT           |
| title        | VARCHAR(255)  |
| author       | VARCHAR(100)  |
| genre        | VARCHAR(50)   |
| year         | INT           |
| price        | DECIMAL(6,2)  |
| stock        | INT           |

---

### 2. `customers`
Stores customer contact and location details.

| Column       | Type          |
|--------------|---------------|
| customer_id  | INT           |
| name         | VARCHAR(100)  |
| email        | VARCHAR(100)  |
| phone        | VARCHAR(15)   |
| city         | VARCHAR(100)  |
| country      | VARCHAR(100)  |

---

### 3. `orders`
Stores transactional sales data.

| Column       | Type          |
|--------------|---------------|
| order_id     | INT           |
| customer_id  | INT (FK)      |
| book_id      | INT (FK)      |
| order_date   | DATE          |
| quantity     | INT           |
| total_amount | DECIMAL(8,2)  |

---

## 🔍 Sample SQL Queries (You Should Add to analysis_queries.sql)

1.	Total Revenue by Genre
2.	Top 5 Best-Selling Books
3.	Monthly Revenue Trend
4.	Average Order Value per Customer
5.	Top Cities by Order Count
6.	Low-Stock Book Alert
7.	Customers with More Than 3 Orders
8.	Total number of books sold for each Genre
9.	Most frequently ordered book       
10.Top 3 Customers by Total Spend
11.Most Recent Orders
12.Books That Were Never Ordered

---

## 💡 Business Insights Extracted

- Identified most profitable genres and products  
- Tracked monthly revenue for trend forecasting  
- Segmented top customers by average spend  
- Flagged low inventory books for restocking  
- Recognized loyal/repeat customers  

---

## 🛠️ Tools Used

- **MySQL** (queries, joins, aggregation)
- **Faker (Python)** to generate realistic dummy data
- **Excel/CSV** (optional export)

---


---

## 📌 How to Run

1. Import `books.sql`, `customers.sql`, and `orders.sql` into MySQL.
2. Write or import SQL queries into your editor or GUI (e.g., MySQL Workbench).
3. (Optional) Add visual dashboards using Power BI / Tableau.

---

