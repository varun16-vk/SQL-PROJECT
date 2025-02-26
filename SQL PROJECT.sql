create database sql_project01;
use sql_project01;
create table retail_sales
(
transactions_id	int PRIMARY KEY,
sale_date date,
sale_time time,
customer_id	int,
gender varchar(15),
age	int,
category varchar(15),
quantiy	int,
price_per_unit float,
cogs float,	
total_sale float );

SELECT* FROM retail_sales;






















SELECT * FROM sql_project01.retail_sales;
  
select count(*) from retail_sales;

select* from retail_sales
where 
   transactions_id is null
   or 
   sale_date is null
   or
     sale_time is null
     or 
     gender is null
     or 
     category is null
     or 
     quantiy is null
     or 
     cogs is null
     or 
     total_sale is null;
     
-- how many do we have
select count(*) as total_sale from retail_sales;

-- how many unique customer we have 
select count(distinct customer_id) as total_sale from retail_sales;

-- how many product category 

select distinct category from retail_sales;

-- write a SQL query to retreve all columns for sales made on 2022-11-05

select * from  retail_sales
where sale_date ='2022-11-05';
  
-- WRITE A SQL QURERY TO CALCULATE THE TOTAL SALES FOR EACH CATEGORY

select 
     category,
     sum(total_sale)as net_sale,
     count(*) as total_sales
from retail_sales
group by 1;

-- write a sql query to find the average age of coustomer who purchased items from the "beauty category"

select
round(AVG(age),2) AS AVG_AGE
from retail_sales
where category ="beauty";

-- write a sql qurery to find all transaction where the total_sale is greater than 1000

select* from retail_sales
where total_sale > 1000 ;

-- write an sql query to find the total number of transaction (transaction_id ) made by each gender in each catagory.

select 
     category,
     gender,
     count(*)as total_trans
from retail_sales
group by category,gender
order by 1;
















