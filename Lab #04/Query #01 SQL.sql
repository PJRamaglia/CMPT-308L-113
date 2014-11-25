-- 1. Get the cities of agents booking an order for customer "TipTop."
select distinct a.city
from agents a
where a.aid in (select o.aid
                from orders o
                where o.cid = (select c.cid
                               from customers c
                               where c.name = 'Tiptop'
                               )
                )
order by a.city ASC
