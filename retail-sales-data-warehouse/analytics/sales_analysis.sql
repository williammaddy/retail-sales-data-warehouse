SELECT
    d.year,
    d.month,
    SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_date d ON f.order_date = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;


SELECT
    dc.customer_name,
    SUM(f.total_amount) AS total_spent
FROM fact_sales f
JOIN dim_customers dc
    ON f.customer_id = dc.customer_id
GROUP BY dc.customer_name
ORDER BY total_spent DESC
LIMIT 3;


SELECT
    dp.product_name,
    SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_prodects dp
    ON f.product_id = dp.product_id
GROUP BY dp.product_name
ORDER BY revenue DESC;


SELECT
    dp.catrgory,
    SUM(f.total_amount) AS category_sales
FROM fact_sales f
JOIN dim_prodects dp
    ON f.product_id = dp.product_id
GROUP BY dp.catrgory;


SELECT
    dc.city,
    d.month,
    SUM(f.total_amount) AS monthly_sales
FROM fact_sales f
JOIN dim_customers dc ON f.customer_id = dc.customer_id
JOIN dim_date d ON f.order_date = d.date_id
GROUP BY dc.city, d.month
ORDER BY dc.city, d.month;
