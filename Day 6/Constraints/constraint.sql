use sales;
drop table customer;

create table customer
(
	customer_id int,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
    primary key (customer_id)
);

create table items
(
	item_code varchar(255),
    item varchar(255),
    unit_price numeric(10,2),
    company­_id varchar(255),
    primary key (item_code)
);

create table companies
(
    company_id varchar(255),
    company_name varchar(255),
    headquarters_phone_number int(12),
    primary key (company_id)
);

drop table sales_data;
drop table customer;
drop table items;
drop table companies;

create table customers
(
	customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
	PRIMARY KEY (customer_id)
);

alter table customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;
INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);