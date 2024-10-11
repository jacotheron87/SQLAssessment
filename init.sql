CREATE DATABASE if NOT EXISTS mysql_db;
USE mysql_db;

CREATE TABLE if NOT EXISTS customers (
    id int auto_increment PRIMARY KEY,
    name varchar(255) NOT NULL,
    email varchar(255) NOT NULL
);

CREATE TABLE if NOT EXISTS orders (
    id int auto_increment PRIMARY KEY,
    customer_id int NOT NULL,
    order_date date NOT NULL,
    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(id)
        ON DELETE cascade
);

CREATE TABLE if NOT EXISTS order_items (
    id int auto_increment PRIMARY KEY,
    order_id int NOT NULL,
    product_name varchar(255) NOT NULL,
    quantity int NOT NULL,
    price decimal(10, 2) NOT NULL,
    CONSTRAINT fk_order
        FOREIGN KEY (order_id)
        REFERENCES orders(id)
        ON DELETE cascade
);
