-- 6. Get the names of customers and agents in the same city, along with the name of the city, regardless of whether or not the customer has ever placed an order with that agent.
select distinct c.name "Customer Name", c.city "Customer City", a.name "Agent Name", a.city "Agent City"
from customers c, agents a
inner join orders o
on a.aid = o.aid
where c.city = a.city
order by c.city asc
