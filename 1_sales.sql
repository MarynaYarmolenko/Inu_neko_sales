-- Sales by year: 2021

SELECT 
    EXTRACT(YEAR from date) as year,
    --product_line,
    --product_category,
    product_name,
    sum(sales) as total_sales
FROM inu_neko_sales
WHERE EXTRACT(YEAR from date) = 2021
group by year, product_line, product_category, product_name
ORDER BY year DESC, total_sales DESC
;