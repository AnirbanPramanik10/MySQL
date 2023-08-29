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
-- USE sql_inventory;
-- SELECT * 
-- FROM sql_store.order_items oi
-- JOIN sql_inventory.products p ON oi.product_id = p.product_id

-- 3

-- USE sql_hr;
-- SELECT e.employee_id, e.first_name, m.first_name AS manager
-- FROM employees e
-- JOIN employees m ON e.reports_to = m.employee_id


-- 4
-- USE sql_store;
-- SELECT o.order_id, o.order_date, c.first_name, c.last_name, os.name AS status
-- FROM orders o
-- JOIN customers c ON c.customer_id = o.customer_id
-- JOIN order_statuses os ON o.status = os.order_status_id

 -- USE sql_invoicing;
-- SELECT p.date,p.invoice_id,p.amount,p.payment_id,p.payment_method,c.name,pm.name AS payment_process
-- FROM payments p JOIN clients c ON c.client_id = p.client_id
-- JOIN payment_methods pm ON p.payment_method = pm.payment_method_id


-- 5
  /* USE sql_store;
  SELECT * 
  FROM order_items oi 
  JOIN order_item_notes oin 
  ON oi.order_id = oin.order_id 
  AND oi.product_id = oin.product_id */
  
  -- 6 Implicit Join Syntax
  
--  SELECT *
--  FROM orders o, customers c
--  WHERE c.customer_id = o.customer_id

-- 7 
-- SELECT c.customer_id, c.first_name, o.order_id
-- FROM orders o
-- RIGHT JOIN customers c  ON c.customer_id = o.customer_id
-- ORDER BY c.customer_id
 
-- SELECT p.product_id,p.name,oi.quantity
-- FROM products p
-- LEFT JOIN order_items oi  ON p.product_id = oi.product_id


-- 8

-- SELECT c.customer_id, c.first_name, o.order_id , sh.name AS shipper
-- FROM customers c
-- LEFT JOIN orders o  ON c.customer_id = o.customer_id
-- LEFT JOIN shippers sh ON o.shipper_id = sh.shipper_id
-- ORDER BY c.customer_id


-- 9

-- USE sql_hr;
-- SELECT e.employee_id, e.first_name, m.first_name AS manager
--    FROM employees e
 --   LEFT JOIN employees m
 --   ON e.reports_to = m.employee_id


-- 10
--    USE sql_store;
--    SELECT *
--    FROM orders o
--    JOIN customers c
--    USING (customer_id)
--    LEFT JOIN shippers sh
--    USING (shipper_id)


--    USE sql_invoicing;
-- 	SELECT p.date, c.name AS clients, p.amount, pm.name AS payment_method
--    FROM payments p
--    JOIN clients c
--    USING (client_id)
 --   JOIN payment_methods pm
 --   ON p.payment_method = pm.payment_method_id


-- 11
-- 	USE sql_store;
 --  SELECT o.order_id, c.first_name
 --  FROM orders o
 --  NATURAL JOIN customers c
   
   
-- 12

-- SELECT sh.name AS shipper, p.name AS product
-- FROM shippers sh
-- CROSS JOIN products p
--  ORDER BY sh.name


-- 13
 SELECT customer_id, first_name,points,'BRONZE' AS type
 FROM customers
 WHERE points < 2000
 
 UNION
 
 SELECT customer_id, first_name,points,'SILVER' AS type
 FROM customers
 WHERE points BETWEEN 2000 AND 3000
 
 UNION
 
 SELECT customer_id, first_name,points,'GOLD' AS type
 FROM customers
 WHERE points > 3000
 
 ORDER BY first_name








