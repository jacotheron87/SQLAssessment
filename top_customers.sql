-- @donovan not sure why but my ide autocompletes in lower case
use mysql_db;

select
customers.id,
customers.name,
sum(order_items.quantity * order_items.price) as total_spent
from customers

join orders
on customers.id = orders.customer_id

join order_items
on orders.id = order_items.order_id

where datediff(curdate(), orders.order_date) <= 365 -- I would look at a better way to do this
group by customers.id
order by total_spent desc
limit 3
