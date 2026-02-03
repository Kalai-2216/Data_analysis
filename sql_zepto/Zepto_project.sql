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
select * from zep_data where mrp=0 or discountedSellingPrice=0; -- This is to check if there is any 0's in mrp or discountedSellingPrice.
delete from zep_data where mrp=0; -- By executing the above code we found that only mrp column has 0's and we are deleting it.

-- initially the mrp is in paise, we should convert it to rupee.
update zep_data
set mrp=mrp/100.0;

-- Similarly DiscountedSellingPrice is also to be converted to rupee.
update zep_data
set discountedSellingPrice=discountedSellingPrice/100.0;

-- Analysis
-- Top 10 Highly ordered category
select category,count(*) as No_of_orders 
from zep_data 
group by 1 
order by 2 desc,1 asc limit 10;

-- OutPut :
-- category             | No_of_orders
-- Cooking Essentials	| 510
-- Munchies	            | 510
-- Chocolates & Candies	| 388
-- Ice Cream & Desserts	| 388
-- Packaged Food	    | 388
-- Paan Corner	        | 344
-- Personal Care	    | 344
-- Home & Cleaning	    | 193
-- Biscuits	            | 147
-- Beverages	        | 129

-- Top 3 highly ordered products in each category
select category,name from(select category,name,
count(*) as No_of_orders,
row_number() over(partition by category order by count(*) desc) as rnk 
from zep_data 
group by 1,2) as t where rnk <=3;

-- This query will return the top 3 highly ordered product from each category.
-- Sample Output:
-- Category   | Name 
-- Beverages  | Britannia Burger Bun with Sesame Seed
-- Beverages  | Amul Fresh Cream
-- Beverages  | Amul Delicious Fat Spread - Cholesterol Free
-- Biscuits	  | Britannia Good Day Cashew Cookies
-- Biscuits	  | Lotte Choco Pie 
-- Biscuits	  | Britannia Toastea Premium Bake Rusk

-- total inventry value and Stock
select sum(mrp) as Total_value, sum(availableQuantity) as Total_Quantity 
from zep_data;

-- output:
-- Total_value | Total_Quantity
-- 583222.00   | 14921

-- Top 5 ordered product
select name,sum(Quantity) as Totally_ordered 
from zep_data 
group by 1 
order by 2 desc limit 5;

-- Name												Totally_Ordered
-- Kellogg's Original Corn Flakes				   	4050
-- MTR Roasted Vermicelli 							3750
-- Pedigree Puppy Dry Dog Food Food Chicken & Milk	3609
-- Kellogg's Special K Original Corn Flakes			3570
-- Ching's Secret Green Chilli Sauce				3315

-- Highest Discount given to each Category  
select category,max(discountPercent) as Max_discount_given 
from zep_data 
group by 1 
order by 2 desc;

-- Majorly 50% Discount has given.

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

-- Output
-- outofstock  Cnt_of_stocks
-- FALSE	   3270
-- TRUE		   453

-- Category with more outofstock = True 
select category,sum(case when outofstock="true" then 1 end) outofstock
from zep_data group by 1 
order by 2 desc;

-- Insght : These are the two Cooking Essentials, Munchies categories with more outofstock. 
-- So next time we should include extra quantity for those kind of categories

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

-- So, Oils are more in Price with less discount.

