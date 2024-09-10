--create a new database
create database bank;

--for enter in bank database
use bank;

--Create a new table in bank database
CREATE TABLE SBI (
    bank_holder_name VARCHAR(100),
	account_no BIGINT PRIMARY KEY,
	address_a VARCHAR(255),
	account_type VARCHAR(50),
	phone_no BIGINT,
	tran_date DATE);

--Display the table.
select * from SBI;

--Insert the values in table.
INSERT INTO SBI (bank_holder_name, account_no, address_a, account_type, phone_no, tran_date) VALUES
('Amit Sharma', 100000001, 'Delhi, India', 'Savings', 9876543210, '2024-01-01'),
('Sunita Gupta', 100000002, 'Mumbai, India', 'Savings', 9876543211, '2024-02-02'),
('Rahul Verma', 100000003, 'Bangalore, India', 'Current', 9876543212, '2024-03-03'),
('Priya Singh', 100000004, 'Chennai, India', 'Savings', 9876543213, '2024-04-04'),
('Ravi Kumar', 100000005, 'Kolkata, India', 'Current', 9876543214, '2024-05-05'),
('Neha Mehra', 100000006, 'Hyderabad, India', 'Savings', 9876543215, '2024-06-06'),
('Karan Joshi', 100000007, 'Pune, India', 'Current', 9876543216, '2024-07-07'),
('Anjali Desai', 100000008, 'Ahmedabad, India', 'Savings', 9876543217, '2024-08-08'),
('Vikram Patel', 100000009, 'Surat, India', 'Current', 9876543218, '2024-09-09'),
('Ritu Sharma', 100000010, 'Noida, India', 'Savings', 9876543219, '2024-10-10'),
('Arjun Rao', 100000011, 'Gurgaon, India', 'Current', 9876543220, '2024-11-11'),
('Sakshi Kapoor', 100000012, 'Jaipur, India', 'Savings', 9876543221, '2024-12-12'),
('Pooja Reddy', 100000013, 'Lucknow, India', 'Savings', 9876543222, '2024-01-13'),
('Deepak Chawla', 100000014, 'Nagpur, India', 'Current', 9876543223, '2024-02-14'),
('Vishal Jain', 100000015, 'Indore, India', 'Savings', 9876543224, '2024-03-15'),
('Sneha Iyer', 100000016, 'Bhopal, India', 'Current', 9876543225, '2024-04-16'),
('Mohit Aggarwal', 100000017, 'Patna, India', 'Savings', 9876543226, '2024-05-17'),
('Shivani Kohli', 100000018, 'Agra, India', 'Savings', 9876543227, '2024-06-18'),
('Rohit Sinha', 100000019, 'Varanasi, India', 'Current', 9876543228, '2024-07-19'),
('Nisha Agarwal', 100000020, 'Kanpur, India', 'Savings', 9876543229, '2024-08-20'),
('Ajay Thakur', 100000021, 'Dehradun, India', 'Current', 9876543230, '2024-09-21'),
('Swati Bhatnagar', 100000022, 'Ludhiana, India', 'Savings', 9876543231, '2024-10-22'),
('Siddharth Mehta', 100000023, 'Chandigarh, India', 'Current', 9876543232, '2024-11-23'),
('Preeti Nair', 100000024, 'Kochi, India', 'Savings', 9876543233, '2024-12-24'),
('Anand Dubey', 100000025, 'Coimbatore, India', 'Current', 9876543234, '2024-01-25'),
('Rakesh Yadav', 100000026, 'Trivandrum, India', 'Savings', 9876543235, '2024-02-26'),
('Komal Saxena', 100000027, 'Madurai, India', 'Savings', 9876543236, '2024-03-27'),
('Abhinav Bhatt', 100000028, 'Rajkot, India', 'Current', 9876543237, '2024-04-28'),
('Ankita Goel', 100000029, 'Mysore, India', 'Savings', 9876543238, '2024-05-29'),
('Rajeev Malhotra', 100000030, 'Vadodara, India', 'Current', 9876543239, '2024-06-30');

--Display the all Savings account in the SBI table.
Select * from SBI
where account_type = 'Savings';

--Display the all data before 2024-04-28
select * from SBI
where tran_date <= '2024-04-28';

--Display only address column
select address_a from SBI;

--display the table in assending and dessending order
select * from SBI
order by bank_holder_name;

select * from SBI
order by tran_date DESC;

--filter the table according address and account type using "AND" query.
select * from SBI
where address_a ='Noida, India' AND account_type ='Savings';

--filter the table according address and account type using "OR" query.
select * from SBI
where account_type ='Savings' or address_a ='Noida, India';

--filter the table according address and account type using "IN" query.
select * from SBI
where address_a IN ('Delhi, India', 'Noida, India');

--filter the table according address and account type using "NOT IN" query.
select * from SBI
where address_a NOT IN ('Delhi, India', 'Noida, India');

--filter the table according address and account type using "Between" query.
select * from SBI
where tran_date BETWEEN '2024-06-30' AND '2024-10-22';

--filter the table according address and account type using "LIKE" query.
select * from SBI
where address_a LIKE 'M%';

select * from SBI
where address_a LIKE '%M%';

select * from SBI
where address_a LIKE 'N%A';

--filter the table according address and account type using "NOT LIKE" query.
select * from SBI
where address_a NOT LIKE 'B%';

--for add a new column in a table
alter table SBI
add emp_salary decimal;

--for fill the all data in new emp_salary column
UPDATE SBI
SET emp_salary = CASE
    WHEN account_no = 100000001 THEN 50000.00
    WHEN account_no = 100000002 THEN 55000.00
    WHEN account_no = 100000003 THEN 60000.00
    WHEN account_no = 100000004 THEN 45000.00
    WHEN account_no = 100000005 THEN 65000.00
	WHEN account_no = 100000006 THEN 21000.00
    WHEN account_no = 100000007 THEN 89000.00
    WHEN account_no = 100000008 THEN 90000.00
    WHEN account_no = 100000009 THEN 75000.00
    WHEN account_no = 100000010 THEN 25000.00
	WHEN account_no = 100000011 THEN 90000.00
    WHEN account_no = 100000012 THEN 15000.00
    WHEN account_no = 100000013 THEN 60000.00
    WHEN account_no = 100000014 THEN 45000.00
    WHEN account_no = 100000015 THEN 65000.00
	WHEN account_no = 100000016 THEN 50000.00
    WHEN account_no = 100000017 THEN 55000.00
    WHEN account_no = 100000018 THEN 60000.00
    WHEN account_no = 100000019 THEN 45000.00
    WHEN account_no = 100000020 THEN 65000.00
	WHEN account_no = 100000021 THEN 50000.00
    WHEN account_no = 100000022 THEN 55000.00
    WHEN account_no = 100000023 THEN 60000.00
    WHEN account_no = 100000024 THEN 45000.00
    WHEN account_no = 100000025 THEN 65000.00
    WHEN account_no = 100000026 THEN 50000.00
    WHEN account_no = 100000027 THEN 55000.00
    WHEN account_no = 100000028 THEN 60000.00
    WHEN account_no = 100000029 THEN 45000.00
    WHEN account_no = 100000030 THEN 65000.00

   
END
WHERE account_no IN (100000001, 100000002, 100000003, 100000004, 100000005,100000006,100000007,100000008,100000009,100000010,100000011,
100000012,100000013,100000014,100000015,100000016,100000017,100000018,100000019,100000020,100000021,100000022,100000023,100000024,100000025,
100000026,100000027,100000028,100000029,100000030);

Select * from SBI;

--filter maximum salary using MAX query
select max (emp_salary) as maximum_salary
from SBI;

--filter minimum salary using MIN query
select min(emp_salary)as minimum_salary
from SBI;

--find total all salary using SUM query
select sum(emp_salary) as total_salary
from SBI;

--find total all salary using SUM query with condition
select sum(emp_salary)
from SBI
where emp_salary<=40000;

--find the Avrage salary using avg query
select avg(emp_salary) as avg_salary
from SBI;

--find the Avrage salary using avg query with condition
select avg(emp_salary) as avrage
from SBI
where emp_salary <= 20000;

--using count query for counting
select count (bank_holder_name)
from SBI
where emp_salary <= 49000;

--delete specific row or column by delete query
delete from SBI where account_no =100000002;

--Index query for fast fetching
--1
create index myindex
on SBI(bank_holder_name);
--2
select * from SBI;
where bank_holder_name='Priya Singh';

--fillter the table using TOP query
--1
select top 2 * from SBI;
--2
Select top 50 percent * from SBI;
--3
select top 25 percent * from SBI
where emp_salary > 10000;

--VIEW query
create view [vicky_bank] as
select bank_holder_name, address_a, tran_date
from SBI
where account_type = 'Current';

select * from [vicky_bank];
