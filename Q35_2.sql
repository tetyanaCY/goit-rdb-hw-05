SELECT 
    *
FROM 
    order_details od
WHERE 
    od.order_id IN (SELECT o.order_id FROM orders o WHERE o.shipper_id = 3);
-- 2. SQL запит для відображення order_details, відфільтрованих по shipper_id = 3 за допомогою вкладеного запиту в операторі WHERE: