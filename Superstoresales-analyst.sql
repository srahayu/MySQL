create database superstore;
use superstore;
select * from superstore2 
desc superstore2 

select SUM(Sales)
from superstore2 

select SUM(Profit)
from superstore2

select sum(Quantity)
from superstore2 

select AVG(Profit)
from superstore2

select COUNT(Sales)
from superstore2

select MAX(Profit)
from superstore2

select MIN(Profit)
from superstore2

select Segment, AVG(Profit)
from superstore2 
group by Segment

select Segment, min(Profit)
from superstore2 
group by Segment;

select Segment, max(Profit)
from superstore2 
group by Segment;

select Segment, count(Quantity) as total
from superstore2 
group by Segment;

select City,AVG(Profit) tal_AVG
from superstore2
group by City
order by tal_AVG ASC
limit 10 

#30 Agustus 2023
select Category, SUM(Quantity)as total
from superstore2 
group by Category

select Category, SUM(Sales)as total_sales
from superstore2 
group by Category

select Category, SUM(Profit) as total_profit
from superstore2 
group by Category

#rata rata keuntungan penjualan 
select AVG(Profit) as rata_profit
from superstore2

#rata-rata profit per category
select Category, avg(Profit) as rata_category
from superstore2 
group by Category

#rata-rata keuntungan dari office supplies
select avg(Profit) as avg_OS
from superstore2 
where Category = 'Office Supplies' 

#negara dengan category office supplies yang memiliki rata keuntungan lebih besar terbanyak
select State, SUM(Profit) as top_state
from superstore2 
where Category = 'Office Supplies' 
group by State 
order by top_state desc 

#negara mana yang banyak melakukan penjualan dengan category Technology
select State, SUM(Sales) as total_sales_category_Tech
from superstore2 
where Category ='Technology'
group by State 
order by total_sales_category_Tech desc
limit 5

select State, SUM(Sales) as total_sales_category_Furniture
from superstore2 
where Category ='Furniture'
group by State 
order by total_sales_category_Furniture desc
limit 5

select State, SUM(Sales) as total_sales_category_Office_Supplies
from superstore2 
where Category ='Office Supplies'
group by State 
order by total_sales_category_Office_Supplies desc
limit 5

select State, AVG(Profit) avg_profit
from superstore2 
group by State 
having avg_profit >= 458047
order by avg_profit desc
limit 5

select State, AVG(Profit) avg_profit
from superstore2 
group by State 
having avg_profit <= 458047
order by avg_profit desc
limit 5 