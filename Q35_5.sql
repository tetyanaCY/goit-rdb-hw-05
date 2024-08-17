DROP FUNCTION IF EXISTS divide_values;

DELIMITER //

CREATE FUNCTION divide_values(val1 FLOAT, val2 FLOAT) 
RETURNS FLOAT
DETERMINISTIC
BEGIN
    RETURN val1 / val2;
END //

DELIMITER ;
SELECT 
    order_id, 
    quantity, 
    divide_values(quantity, 2) AS divided_value
FROM 
    order_details;
-- 5. Створіть функцію з двома параметрами, яка буде ділити перший параметр на другий. Обидва параметри та значення, що повертається, повинні мати тип FLOAT.
-- Використайте конструкцію DROP FUNCTION IF EXISTS. Застосуйте функцію до атрибута quantity таблиці order_details . Другим параметром може бути довільне число на ваш розсуд.