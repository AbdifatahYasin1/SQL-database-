CREATE TABLE sales (
id INT PRIMARY KEY,
product VARCHAR(50),
quantity INT,
price DECIMAL(10,2),
sale_date DATE
);

INSERT INTO sales (id, product, quantity, price, sale_date)
VALUES
(1, 'Product A', 10, 15.99, '2023-01-01'),
(2, 'Product B', 8, 25.50, '2023-01-02'),
(3, 'Product A', 12, 15.99, '2023-01-03'),
(4, 'Product C', 6, 35.75, '2023-01-04'),
(5, 'Product B', 15, 25.50, '2023-01-05'),
(6, 'Product A', 8, 15.99, '2023-01-06');

-- Aggregate Functions
SELECT 
  COUNT(*) AS total_sales,
  SUM(quantity) AS total_quantity,
  AVG(price) AS average_price,
  MAX(price) AS highest_price,
  MIN(price) AS lowest_price
FROM sales;

-- Scalar Functions
SELECT 
  UPPER(product) AS uppercase_product,
  LOWER(product) AS lowercase_product,
  LEN(product) AS product_name_length,
  ROUND(price, 1) AS rounded_price
FROM sales;

