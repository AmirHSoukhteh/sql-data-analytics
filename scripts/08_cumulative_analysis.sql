/*
===============================================================================
Cumulative Analysis
===============================================================================
Purpose:
    - To calculate running totals or moving averages for key metrics.
    - To track performance over time cumulatively.
    - Useful for growth analysis or identifying long-term trends.

SQL Functions Used:
    - Window Functions: SUM() OVER(), AVG() OVER()
===============================================================================
*/

USE Datawarehouse

-- Calculate the total sales per year
-- and the running total of sales over time 
SELECT
	order_date,
	total_sales,
	SUM(total_sales) OVER (ORDER BY order_date) AS running_total_sales,
	AVG(avg_price) OVER (ORDER BY order_date) AS moving_average_price
FROM
(
    SELECT 
        DATETRUNC(year, order_date) AS order_date,
        SUM(sales_amount) AS total_sales,
        AVG(price) AS avg_price
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY DATETRUNC(year, order_date)
) t

-- Calculate the total orders in year for each country
-- and the running total of orders over time 
SELECT 
country,
order_date,
total_orders,
SUM(total_orders) OVER(PARTITION BY country ORDER BY order_date) running_total_orders
FROM
(
	SELECT 
		c.country,
		DATETRUNC(YEAR, order_date) AS order_date,
		COUNT(order_number) total_orders
	FROM gold.fact_sales s
	LEFT JOIN gold.dim_customers c
		ON s.customer_key = c.customer_key
	WHERE order_date IS NOT NULL
	GROUP BY c.country, DATETRUNC(YEAR, order_date)
) t
ORDER BY country
