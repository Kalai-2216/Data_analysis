create database zepto; -- creating a database for this dataset
use zepto; -- using the databas

-- creating a table
create table zep_data(
Category varchar(100),
name varchar(200),
mrp decimal(10,2),
discountPercent decimal(5,2),
availableQuantity int,	
discountedSellingPrice decimal(10,2),
weightInGms decimal(6,2),
outOfStock varchar(10),
quantity int);

set sql_safe_updates=0;

select * from zep_data;

-- Data Cleaning
select * from zep_data where mrp=0 or discountedSellingPrice=0;
delete from zep_data where mrp=0;

-- initially the mrp is in paise we should convert it to rupee
update zep_data
set mrp=mrp/100.0;

update zep_data
set discountedSellingPrice=discountedSellingPrice/100.0;

-- Analysis
-- Top 10 Highly ordered category
select category,count(*) as No_of_orders 
from zep_data 
group by 1 
order by 2 desc,1 asc limit 10;

-- Top 3 highly ordered products in each category
select * from(select category,name,
count(*) as No_of_orders,
row_number() over(partition by category order by count(*) desc) as rnk 
from zep_data 
group by 1,2) as t where rnk <=3;

-- total inventry value and Stock
select sum(mrp) as Total_value, sum(availableQuantity) as Total_Quantity 
from zep_data;

-- Top 5 ordered product
select name,sum(Quantity) as Totally_ordered 
from zep_data 
group by 1 
order by 2 desc limit 5;

-- Highest Discount given to each Category  
select category,max(discountPercent) as Max_discount_given 
from zep_data 
group by 1 
order by 2 desc;

-- Average Discount given to each Category  
select category,round(avg(discountPercent),2) as Avg_discount_given 
from zep_data 
group by 1 
order by 2 desc;


-- Total stocks available and out of stock(False = available, True = Outofstock)
select outofstock,count(*) as Cnt_of_stocks 
from zep_data 
group by 1 
order by 2 desc;

-- Category with more outofstock = True 
select category,sum(case when outofstock="true" then 1 end) outofstock
from zep_data group by 1 
order by 2 desc;

-- Estimated revenue for each Category
select category,sum(discountedsellingprice*availableQuantity) as Total_revenue
from zep_data
group by 1
order by 2 desc; 


-- High Mrp product with less discount
select distinct name,mrp,discountpercent 
from zep_data
where mrp > 500 and discountpercent<10
order by 2 desc,3 desc;

