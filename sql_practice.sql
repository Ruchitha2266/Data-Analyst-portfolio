-- Total number of customers
SELECT COUNT(DISTINCT customer_id)
FROM customers;

-- Total sales by region
SELECT region, SUM(sales)
FROM orders
GROUP BY region;

-- Top 5 highest sales
SELECT *
FROM orders
ORDER BY sales DESC
LIMIT 5;

-- Window Function
SELECT employee_name,
       salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;