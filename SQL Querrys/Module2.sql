 -- DAY - 2

-- Retreiving data from multiple table
  
-- JOINS

-- SELECT order_id,orders.customer_id,first_name,last_name
-- FROM orders
-- JOIN customers ON orders.customer_id = customers.customer_id

-- 1
-- SELECT order_id, order_items.product_id,quantity,order_items.unit_price, products.name
--  FROM order_items
--  JOIN products ON order_items.product_id = products.product_id 
  
-- 2
USE sql_inventory;
 SELECT * 
FROM sql_store.order_items oi
 JOIN sql_inventory.products p ON oi.product_id = p.product_id

-- 3
