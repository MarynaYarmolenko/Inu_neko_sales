--Products with the highest frequency of repeat purchases:

SELECT 
    product_name,
    COUNT(DISTINCT customer_id) as total_customers,
    SUM(quantity) as total_quantity,
    ROUND(SUM(quantity) * 1.0 / COUNT(DISTINCT customer_id), 2) as avg_quantity_per_customer
FROM inu_neko_sales
WHERE EXTRACT(YEAR from date) = 2021
GROUP BY product_name
ORDER BY avg_quantity_per_customer DESC
LIMIT 10
;

/* Цей SQL-запит дозволяє виявити 10 найпопулярніших продуктів з найвищою середньою кількістю на клієнта, 
що опосередковано вказує на частоту повторних покупок.
Ключові критерії аналізу:

Продукти, які клієнти купують частіше
Середня кількість одиниць на клієнта як індикатор популярності
Період аналізу - 2021 рік

Для Карлоса це означає:

Ці 10 продуктів мають найвищий потенціал для підписки
Клієнти демонструють стабільний інтерес до цих товарів
Висока ймовірність, що клієнти захочуть купувати їх на регулярній основі */