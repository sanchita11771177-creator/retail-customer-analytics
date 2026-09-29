-- Retail Customer Analytics SQL
SELECT SUM(revenue) AS total_revenue FROM retail_sales;
SELECT DATE_FORMAT(order_date,'%Y-%m') AS month,SUM(revenue) AS revenue FROM retail_sales GROUP BY month ORDER BY month;
SELECT category,SUM(revenue) AS revenue,SUM(quantity) AS units_sold,COUNT(DISTINCT order_id) AS orders FROM retail_sales GROUP BY category ORDER BY revenue DESC;
SELECT product,SUM(revenue) AS revenue FROM retail_sales GROUP BY product ORDER BY revenue DESC LIMIT 10;
SELECT city,SUM(revenue) AS revenue FROM retail_sales GROUP BY city ORDER BY revenue DESC;
SELECT customer_id,COUNT(DISTINCT order_id) AS orders,SUM(revenue) AS revenue FROM retail_sales GROUP BY customer_id HAVING orders>1 ORDER BY revenue DESC;
