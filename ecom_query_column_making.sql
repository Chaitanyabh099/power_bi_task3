select * from sales

select * from customer

select * from product


------dim-customer
create table "dim_customer" as 
select customer_id,customer_name,segment,age,postal_code 
from customer;

select * from dim_customer;

----sub_dim_region
create table "sub_dim_region" as 
select distinct(postal_code),city, state, region from customer 

select * from sub_dim_region

---age_category
create table  "sub_dim_age_category" as 
select customer_id, age,
	case
	when age <= 18 then 'Teenage'
	when age <= 30 then 'Young'
	when age <= 45 then 'Adult'
	when age <= 60 then 'Senior'
	else 'Elder'
	end as "age_category"
	from customer 

select * from sub_dim_age_category
























