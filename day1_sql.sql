create database sql7challenge ;
use sql7challenge;
--1.customers
 create table customers
(customer_id int primary key,
full_name varchar(100) not null,
email varchar(100) not null,
city varchar(50) not null,
signup_date date not null,
segment varchar(20) not null);

--2. product tabel
create table products (
product_id int primary key,
product_name varchar(40),
category varchar(40),
price decimal(10,2),
cost decimal(10,2));

--3. orders
create table orders(
order_id int primary key,
customer_id int not null,
order_date date not null,
status varchar(20),
channel varchar(20),
foreign key (customer_id) references customers(customer_id));

--4. orders_items
create table order_items(
orderitem_id int primary key,
order_id int,
product_id int,
foreign key(order_id) references orders(order_id),
foreign key(product_id) references products(product_id),
Quantity int );

---5. payments
create table payments(
payment_id int primary key,
p_date date ,
type varchar(20),
order_id int,
customer_id int,
total int ,
foreign key(order_id) references orders(order_id),
foreign key(customer_id) references customers(customer_id));

--6. delivery
customerscreate table delivery(
delivery_id int primary key,
order_id int,
type int,
departure_date date,
foreign key(order_id) references orders(order_id),
arrival varchar(20)
);