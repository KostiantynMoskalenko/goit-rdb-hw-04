SELECT *
FROM products
         INNER JOIN categories ON products.category_id = categories.id
         INNER JOIN suppliers ON products.supplier_id = suppliers.id
         INNER JOIN order_details ON order_details.product_id = products.id
         INNER JOIN orders ON order_details.order_id = orders.id
         INNER JOIN customers ON orders.customer_id = customers.id
         INNER JOIN employees ON orders.employee_id = employees.employee_id
         INNER JOIN shippers ON orders.shipper_id = shippers.id;

SELECT COUNT(*)
FROM products
         INNER JOIN categories ON products.category_id = categories.id
         INNER JOIN suppliers ON products.supplier_id = suppliers.id
         INNER JOIN order_details ON order_details.product_id = products.id
         INNER JOIN orders ON order_details.order_id = orders.id
         INNER JOIN customers ON orders.customer_id = customers.id
         INNER JOIN employees ON orders.employee_id = employees.employee_id
         INNER JOIN shippers ON orders.shipper_id = shippers.id;

SELECT COUNT(*)
FROM products
         INNER JOIN categories ON products.category_id = categories.id
         LEFT JOIN suppliers ON products.supplier_id = suppliers.id
         INNER JOIN order_details ON order_details.product_id = products.id
         RIGHT JOIN orders ON order_details.order_id = orders.id
         RIGHT JOIN customers ON orders.customer_id = customers.id
         LEFT JOIN employees ON orders.employee_id = employees.employee_id
         LEFT JOIN shippers ON orders.shipper_id = shippers.id;

-- Збільшилась кількість строк до 525 через те, що додались нульові значення (NULL), які з'явилися через відсутність відповідностей у правій/лівій таблиці.
-- Але при іншому виборі строк для зміні INNER на LEFT/RIGHT кількість строк може зберігатись на рівні 518

SELECT COUNT(*)
FROM products
         INNER JOIN categories ON products.category_id = categories.id
         INNER JOIN suppliers ON products.supplier_id = suppliers.id
         INNER JOIN order_details ON order_details.product_id = products.id
         INNER JOIN orders ON order_details.order_id = orders.id
         INNER JOIN customers ON orders.customer_id = customers.id
         INNER JOIN employees ON orders.employee_id = employees.employee_id
         INNER JOIN shippers ON orders.shipper_id = shippers.id
WHERE employees.employee_id > 3 AND employees.employee_id <= 10;

SELECT categories.name, COUNT(categories.name) as cat_name_count, AVG(order_details.quantity) as avg_orders_quantity
FROM products
         INNER JOIN categories ON products.category_id = categories.id
         INNER JOIN suppliers ON products.supplier_id = suppliers.id
         INNER JOIN order_details ON order_details.product_id = products.id
         INNER JOIN orders ON order_details.order_id = orders.id
         INNER JOIN customers ON orders.customer_id = customers.id
         INNER JOIN employees ON orders.employee_id = employees.employee_id
         INNER JOIN shippers ON orders.shipper_id = shippers.id
GROUP BY categories.name;

SELECT categories.name, COUNT(categories.name) as cat_name_count, AVG(order_details.quantity) as avg_orders_quantity
FROM products
         INNER JOIN categories ON products.category_id = categories.id
         INNER JOIN suppliers ON products.supplier_id = suppliers.id
         INNER JOIN order_details ON order_details.product_id = products.id
         INNER JOIN orders ON order_details.order_id = orders.id
         INNER JOIN customers ON orders.customer_id = customers.id
         INNER JOIN employees ON orders.employee_id = employees.employee_id
         INNER JOIN shippers ON orders.shipper_id = shippers.id
GROUP BY categories.name HAVING avg_orders_quantity > 21;

SELECT categories.name, COUNT(categories.name) as cat_name_count, AVG(order_details.quantity) as avg_orders_quantity
FROM products
         INNER JOIN categories ON products.category_id = categories.id
         INNER JOIN suppliers ON products.supplier_id = suppliers.id
         INNER JOIN order_details ON order_details.product_id = products.id
         INNER JOIN orders ON order_details.order_id = orders.id
         INNER JOIN customers ON orders.customer_id = customers.id
         INNER JOIN employees ON orders.employee_id = employees.employee_id
         INNER JOIN shippers ON orders.shipper_id = shippers.id
GROUP BY categories.name HAVING avg_orders_quantity > 21 ORDER BY cat_name_count desc;

SELECT categories.name, COUNT(categories.name) as cat_name_count, AVG(order_details.quantity) as avg_orders_quantity
FROM products
         INNER JOIN categories ON products.category_id = categories.id
         INNER JOIN suppliers ON products.supplier_id = suppliers.id
         INNER JOIN order_details ON order_details.product_id = products.id
         INNER JOIN orders ON order_details.order_id = orders.id
         INNER JOIN customers ON orders.customer_id = customers.id
         INNER JOIN employees ON orders.employee_id = employees.employee_id
         INNER JOIN shippers ON orders.shipper_id = shippers.id
GROUP BY categories.name HAVING avg_orders_quantity > 21 ORDER BY cat_name_count desc LIMIT 4 OFFSET 1;