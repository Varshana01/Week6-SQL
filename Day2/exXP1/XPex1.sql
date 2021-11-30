-- SELECT * FROM items ORDER BY item_value ASC
-- SELECT * FROM items where item_value >=80 ORDER BY item_value ASC 
-- SELECT first_name,last_name FROM customers ORDER BY id ASC LIMIT 3
-- SELECT last_name FROM customers ORDER BY last_name DESC

-- CREATE TABLE purchases(
-- purchase_id SERIAL,
-- customer_id INTEGER,
-- item_id INTEGER,
-- PRIMARY KEY (purchase_id),
-- FOREIGN KEY (customer_id) REFERENCES customers (id),
-- FOREIGN KEY (item_id) REFERENCES items (id_item)
-- );
-- insert into purchases(id, id_item)
-- values (1,)
-- insert into purchases(customer_id,item_id)
-- values (4,1), (5,2),(3,3),(2,2),(1,3);

-- select * from items
-- inner join purchases
-- on items.id_item = purchases.purchase_id

-- select customers.id from customers
-- inner join purchases
-- on customers.id = purchases.purchase_id

-- select item_id from purchases where customer_id =4

-- SELECT customer_id from purchases where item_id = 1 or item_id = 2

-- insert into items(item) values
-- ('hard drive')
-- insert into purchases(customer_id,item_id) values
-- (3,4);

-- select customers.first_name, customers.last_name, items.item, items.item_value from customers
-- inner join purchases on purchases.customer_id = customers.id
-- inner join items on purchases.item_id = items.id_item





