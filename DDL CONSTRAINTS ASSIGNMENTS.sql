-- MYSQL ASSIGNMENT 2

create database Sales;
use sales;
create table Orders (
Order_id  int primary key , 
Customer_id int unique  ,
Product_Category varchar (10),
Ordered_Item varchar (20), 
Contact_No int not null);

desc orders;

alter table orders add column order_quantity int ;

rename table orders to sales_orders;
alter table sales_orders modify column Product_Category varchar (20);

desc sales_orders;

insert into  sales_orders values
(1,100, "Furniture", "chair",906121,10);
insert into  sales_orders values
(2,101, "scrap", "iron",909056,22);
insert into  sales_orders values
(3,13, "electronics", "watch",956221,76);
insert into  sales_orders values
(4,104, "apparels", "shoes",956851,12);
insert into  sales_orders values
(5,105, "fashion", "sweaters",978569,23);
insert into  sales_orders values
(6,106, "electronics", "smartphone",9778821,24);
insert into  sales_orders values
(7,107, "perfumery", "oud",9007821,90);
insert into  sales_orders values
(8,108, "Raw materials", "steel",896321,44);
insert into  sales_orders values
(9,109, "fashion", "leggins",989701,23);
insert into  sales_orders values
(10,110, "Spare parts", "neck guard",785693,71);

select * from sales_orders;
update sales_orders set customer_id=103 where order_id=3;

select customer_id  from sales_orders; 
select ordered_item  from  sales_orders; 

update sales_orders set ordered_item ="backpack" where order_id=4 ;

drop table sales_orders;
