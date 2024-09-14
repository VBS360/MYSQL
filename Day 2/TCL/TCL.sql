-- Transaction Control Language (TCL)
-- not every change you make to a database is saved automatically

-- the COMMIT statement: related to INSERT, DELETE, UPDATE
-- UPDATE customers
-- SET last_name = ‘Johnson’
-- WHERE customer_id = 4
-- COMMIT;

-- ROLLBACK clause: the clause that will let you make a step back
----- Syntax
----- UPDATE customers
-- SET last_name = ‘Johnson’
-- WHERE customer_id = 4
-- COMMIT;
-- ROLLBACK;

----- Summary: 
-- 1. DDL Data Definition Language
-- creation of data
-- 2. DML Data Manipulation Language
-- manipulation of data
-- 3. DCL Data Control Language
-- assignment and removal of permissions to use this data
-- 4. TCL Transaction Control Language
-- saving and restoring changes to a database