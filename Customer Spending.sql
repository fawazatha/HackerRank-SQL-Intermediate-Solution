select c.customer_name, ROUND(AVG(i.total_price), 6) as average_amount
from customer as c
join invoice as i
    on c.id = i.customer_id
group by c.customer_name
having sum(i.total_price)<0.25*(select avg(total_price) from invoice)
order by average_amount desc;
