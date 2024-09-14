-- DML Data Manipulation Language (DML)
----- - SELECT… FROM… - INSERT INTO… VALUES… - UPDATE… SET… WHERE… - DELETE FROM… WHERE…

-- 1. the SELECT statement
SELECT * FROM SALES_DATA;

-- 2. the INSERT statement
INSERT INTO SALES_DATA VALUES (1,'2024-02-13'); -- For 1st row insert
insert into sales_data (purchase_number,date_of_purchase) values (2,'2024-02-14'); -- for all row insert

-- Addding a new column in sales data table
alter table sales_data 
add column item_name varchar(100); 

-- 3. the UPDATE statement
update sales_data
set item_name = 'ball'
where purchase_number = 1;

-- 4. the delete statement
insert into sales_data (purchase_number,date_of_purchase,item_name) values (2,'2024-02-14','bat'); -- This will add new row in table (use update instead)
delete from sales_data where purchase_number = 2 and item_name = 'bat';

-- TRUNCATE vs. DELETE: 
-- TRUNCATE allows us to remove all the records contained in a table
-- with DELETE, you can specify precisely what you would like to be removed




