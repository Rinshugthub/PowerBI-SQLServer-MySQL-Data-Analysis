-- --Query1 :Create Production Database 
create database PROD;
use PROD;

-- --Query2 : Import Data
SELECT * FROM prod.`prod+env+inventory+dataset+(1)`;
SELECT * FROM prod.`products+(2)`;
update prod.`prod+env+inventory+dataset+(1)`
set `ProductID` = 7 where `ProductID` =21;
update prod.`prod+env+inventory+dataset+(1)`
set `ProductID` = 11 where `ProductID` =22;

-- --Query3 : Create New Table & Left Join 
use PROD;

Create table new_table as 
select 
a.`Order Date (DD/MM/YYYY)` as `Order_Date_DD_MM_YYYY`,
a.`Product ID` as `product_id`,
a.availability,
a.demand,
b.`Product Name` as `product_name`,
b.`Unit Price ($)` as `unit_price`
from
prod.`prod+env+inventory+dataset+(1)` as a left join prod.`products+(2)`as b
on a.`Product ID` = b.`Product ID`