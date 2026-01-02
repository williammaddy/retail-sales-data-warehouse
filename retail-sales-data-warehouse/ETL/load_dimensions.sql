INSERT INTO dim_customers
SELECT * FROM customers;

INSERT INTO dim_prodects
SELECT * FROM products;

INSERT INTO dim_date
SELECT DISTINCT order_date,
DAY(order_date),
MONTH(order_date),
YEAR(order_date)
FROM orders;
