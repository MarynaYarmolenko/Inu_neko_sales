-- The most popular products over the past year: 2021

SELECT 
    product_name, 
    product_category,
    SUM(quantity) as total_quantity_sold,
    SUM(sales) as total_sales,
    COUNT(DISTINCT customer_id) as customers
FROM inu_neko_sales
WHERE EXTRACT(YEAR from date) = 2021
GROUP BY product_name, product_category
ORDER BY total_quantity_sold DESC
LIMIT 10
;