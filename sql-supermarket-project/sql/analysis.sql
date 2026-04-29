-- Total revenue
SELECT SUM(total) AS total_revenue
FROM sales;

-- Top customers
SELECT customer_name, SUM(total) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC;

-- Best orders
SELECT order_no, total
FROM sales
ORDER BY total DESC
LIMIT 10;

-- Daily sales trend
SELECT order_date, SUM(total) AS daily_sales
FROM sales
GROUP BY order_date
ORDER BY order_date;

-- Shipping time analysis
SELECT order_no,
       DATEDIFF(ship_date, order_date) AS shipping_days
FROM sales;

-- Number of orders per customer
SELECT customer_name, COUNT(*) AS total_orders
FROM sales
GROUP BY customer_name
ORDER BY total_orders DESC;