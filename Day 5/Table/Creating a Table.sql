create database sales;
use sales;

create table sales_data
(
	purchase_no int primary key auto_increment,
	date_of_purchase date not null,
	customer_id int,
	item_code varchar(10) not null
);

select * from sales_data;

create table customer
(
	customer_id int primary key,
    first_name varchar(255) not null,
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int
);

select * from customer;

select * from sales.customer;
