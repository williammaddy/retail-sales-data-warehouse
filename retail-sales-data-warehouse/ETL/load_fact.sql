INSERT INTO fact_sales
(customer_id, product_id, order_date, quantity, total_amount)
SELECT
customer_id,
product_id,
order_date,
quantity,
quantity * price
FROM orders;
