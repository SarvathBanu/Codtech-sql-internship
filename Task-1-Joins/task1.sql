-- Creating sample tables
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount INT
);

-- Inner Join
SELECT Customers.customer_name, Orders.product, Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- Left Join
SELECT Customers.customer_name, Orders.product
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- Right Join
SELECT Customers.customer_name, Orders.product
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- Full Join
SELECT Customers.customer_name, Orders.product
FROM Customers
FULL OUTER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- Cross Join
SELECT Customers.customer_name, Orders.product
FROM Customers
CROSS JOIN Orders;
