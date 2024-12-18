-- Regular customers (with a purchase frequency of more than 3 times a year):

SELECT 
    customer_id,
    COUNT(DISTINCT order_number) as repeat_purchases,
    SUM(sales) as total_sales,
    ROUND(AVG(sales), 2) as avg_order_value
FROM inu_neko_sales
--WHERE EXTRACT(YEAR from date) = 2021
GROUP BY customer_id
HAVING COUNT(DISTINCT order_number) >= 3
ORDER BY COUNT(DISTINCT order_number) DESC
LIMIT 100
;