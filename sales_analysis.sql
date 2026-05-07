-- Sales Data Analysis Project
-- Author: Krishna Raj
-- Tools: SQL

CREATE TABLE sales (
  order_id INT,
  product TEXT,
  category TEXT,
  city TEXT,
  quantity INT,
  price INT
);

INSERT INTO sales VALUES (1, 'Laptop', 'Electronics', 'Delhi', 2, 45000);
INSERT INTO sales VALUES (2, 'Phone', 'Electronics', 'Mumbai', 5, 15000);
INSERT INTO sales VALUES (3, 'Chair', 'Furniture', 'Noida', 3, 8000);
INSERT INTO sales VALUES (4, 'Laptop', 'Electronics', 'Bangalore', 1, 45000);
INSERT INTO sales VALUES (5, 'Table', 'Furniture', 'Delhi', 2, 12000);
INSERT INTO sales VALUES (6, 'Phone', 'Electronics', 'Noida', 4, 15000);
INSERT INTO sales VALUES (7, 'Headphones', 'Electronics', 'Mumbai', 6, 3000);
INSERT INTO sales VALUES (8, 'Chair', 'Furniture', 'Delhi', 5, 8000);

-- Query 1: Total revenue by city
SELECT city, SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY city
ORDER BY total_revenue DESC;

-- Query 2: Best selling category
SELECT category, SUM(quantity) AS total_sold
FROM sales
GROUP BY category
ORDER BY total_sold DESC;

-- Query 3: Top products by revenue
SELECT product, SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;
