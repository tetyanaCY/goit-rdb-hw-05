SELECT 
    od.*, 
    (SELECT o.customer_id FROM orders o WHERE o.order_id = od.order_id) AS customer_id
FROM 
    order_details od;
-- 1. Напишіть SQL запит, який буде відображати таблицю order_details та поле customer_id з таблиці orders відповідно для кожного поля запису з таблиці order_details.

-- Це має бути зроблено за допомогою вкладеного запиту в операторі SELECT.