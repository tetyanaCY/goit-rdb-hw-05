SELECT 
    subquery.order_id, 
    AVG(subquery.quantity) AS avg_quantity
FROM 
    (SELECT * FROM order_details WHERE quantity > 10) AS subquery
GROUP BY 
    subquery.order_id;
-- 3. SQL запит з вкладеним запитом в операторі FROM для пошуку середнього значення quantity, згрупованого за order_id