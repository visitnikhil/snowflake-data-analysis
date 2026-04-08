-- Total Revenue
SELECT SUM(amount) AS total_revenue FROM orders;

-- Top Customers
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Monthly Sales
SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

-- Top Products
SELECT product_name, COUNT(*) AS total_orders
FROM orders
GROUP BY product_name
ORDER BY total_orders DESC;
