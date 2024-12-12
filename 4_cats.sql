-- Analysis of products for cats:

SELECT 
    product_name,
    product_line,
    SUM(quantity) as cat_product_quantity,
    SUM(sales) as cat_product_sales,
    COUNT(DISTINCT customer_id) as cat_unique_customers
FROM inu_neko_sales
WHERE EXTRACT(YEAR from date) = 2021
    AND product_line = 'cat'
GROUP BY product_name, product_line
ORDER BY cat_product_quantity DESC
LIMIT 10
;
