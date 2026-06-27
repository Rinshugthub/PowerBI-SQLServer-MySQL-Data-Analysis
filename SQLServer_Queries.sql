

create database test_env

use test_env

select * from [dbo].[Products]

select * from [dbo].[Test+Environment+Inventory+Dataset]

select distinct demand from 
[dbo].[Test+Environment+Inventory+Dataset]

-------------------------------------------------

select a.[Order_Date_DD_MM_YYYY],
a.product_id,a.availability,a.demand,b.product_name,b.unit_price

from [dbo].[Test+Environment+Inventory+Dataset] as a
left join products as b on a.product_id=b.product_id
---------------------------------------------------------

 select * into new_table from 
(select a.[Order_Date_DD_MM_YYYY],
a.product_id,a.availability,a.demand,b.product_name,b.unit_price

from [dbo].[Test+Environment+Inventory+Dataset] as a
left join products as b on a.product_id=b.product_id) x


-----------------------------------


select * from new_table
 
create database PROD

USE PROD

SELECT * FROM [dbo].[Prod+Env+Inventory+Dataset]

SELECT distinct Order_Date_DD_MM_YYYY
FROM [dbo].[Prod+Env+Inventory+Dataset]
where Order_Date_DD_MM_YYYY is null or Order_Date_DD_MM_YYYY = ''

--21 ---> 7
--22 ---> 11


SELECT distinct Product_ID
FROM [dbo].[Prod+Env+Inventory+Dataset] order by Product_ID
--where Order_Date_DD_MM_YYYY is null or Order_Date_DD_MM_YYYY = ''

update [dbo].[Prod+Env+Inventory+Dataset]
set Product_ID = 7 where Product_ID =21

update [dbo].[Prod+Env+Inventory+Dataset]
set Product_ID = 11 where Product_ID =22

select distinct Demand from [dbo].[Prod+Env+Inventory+Dataset]


--------------------------------

select * into new_table from 
(select a.[Order_Date_DD_MM_YYYY],
a.product_id,a.availability,a.demand,b.product_name,b.unit_price

from [dbo].[Prod+Env+Inventory+Dataset] as a
left join [dbo].[Products+(1)] as b on a.product_id=b.product_id) x


