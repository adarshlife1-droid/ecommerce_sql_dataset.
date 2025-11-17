show tables;

select* from customers;
select *from products;
select* from orders;
select*from order_items;

select * from orders
where total_amount>2000;

select * from customers
order by customer_name;

select customer_id,sum(total_amount)as
total_spent from orders
group by customer_id;


select o.order_id, c.customer_name,o.total_amount from orders o
inner join customers c on o.customer_id = c.customer_id;

select c.customer_name,o.order_id from customers c
left join orders o on c.customer_id = o.customer_id;


select avg(total_amount) as avg_order_value from orders;

select customer_name from customers where customer_id in (select customer_id from orders where total_amount >5000);


create view customer_sales as select
c.customer_name,sum(o.total_amount) as total_spent
from customers c join orders o on c.customer_id = o.customer_id group by c.customer_name;

create index idx_customer_id on orders(customer_id);



