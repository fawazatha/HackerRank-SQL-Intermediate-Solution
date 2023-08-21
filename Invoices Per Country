select
    co.country_name,
    count(*) as total_invoices,
    round(avg(i.total_price), 6) as average_amount
from country as co
join city as ci 
    on co.id = ci.country_id
join customer as cu 
    on ci.id = cu.city_id
join invoice as i 
    on cu.id = i.customer_id
group by co.country_name
having avg(i.total_price) > (select avg(total_price) from invoice);
