create database zepto;
use zepto;
select * from zepto_v2;

#--Checking Category--
select distinct Category
from zepto_v2
order by Category;



#--Checking null values--
select * from zepto_v2
where Category is null
or
name is null
or
mrp is null
or
discountPercent is null
or
availableQuantity is null
or
discountedSellingPrice is null
or
weightInGms is null
or
outOfStock is null
or
quantity is null;

#--Adding a column name id
alter table zepto_v2 add column id int auto_increment primary key;
alter table zepto_v2 modify column id int  first;


#--Checking the stock availability------------
select outOfStock, count(id) as noOfAvailability from zepto_v2
group by outOfStock;

#--Checking the maximum discounted selling price of order
select Category, max(discountedSellingPrice) as maximum_discount from zepto_v2
group by Category;

#--Most selling product
select Category , count(id) 
from zepto_v2
group by Category
order by count(id) desc;

#-- maximum discount% in every category
select Category, max(discountPercent) as maxDiscount
from
zepto_v2
group by Category
order by max(discountPercent) desc;

# checing the product having the 0 price
select name 
from
zepto_v2
where
mrp=0 ;

#--Delete the row where mrp is 0--#
delete from zepto_v2
where mrp=0;

#--safe mode off
set sql_safe_updates=0;

#--Convert mrp and discountedSellingPrice from paise to rupee
update zepto_v2
set mrp=mrp/100.0,
discountedSellingPrice=discountedSellingPrice/100.0;

#--safe mode onn
set sql_safe_updates=1;

#--What are the high mrp product but it is out of stock
select distinct  name, mrp
from zepto_v2
where outOfStock= 'True' and mrp>300
order by mrp desc;

#--Total revenue of each category product
select category, sum(discountedSellingPrice*availableQuantity) as total_revenue
from zepto_v2
group by category
order by total_revenue desc;

#----All the product having mrp>500 and discount price is less than 10% ------
select  distinct name, mrp, discountPercent
from zepto_v2
where mrp>500 and discountPercent<10
order by mrp desc;

#--find price per gram of product having weight greater than 100gm
select name ,weightInGms, discountedSellingPrice,
round(discountedSellingPrice/weightInGms,2) as pricePerGms
from zepto_v2
where weightInGms>=100
order by pricePerGms ;


#--Group the product into bulk like low , median, Bulk------------------
select max(availableQuantity)as max_quant, min(availableQuantity) as min_quant
from zepto_v2;

select distinct name, weightInGms,
case when weightInGms<1000 then 'low'
	when weightInGms<5000 then 'medium'
    else 'bulk'
    end as weight_category
from zepto_v2   ; 

#--What is the total inventory weight per category-----
select Category, sum(availableQuantity*weightInGms) as total_weight
from zepto_v2
group by Category
order by total_weight