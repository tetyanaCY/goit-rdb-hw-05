WITH temp AS (
    SELECT * FROM order_details WHERE quantity > 10
)
SELECT 
    temp.order_id, 
    AVG(temp.quantity) AS avg_quantity
FROM 
    temp
GROUP BY 
    temp.order_id;
-- 4. SQL запит з використанням оператора WITH для створення тимчасової таблиці temp