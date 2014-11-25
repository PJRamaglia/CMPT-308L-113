-- 6. Get the names and discounts of all customers who place orders through agents in Dallas or Newark.
select distinct c.name, c.discount
from customers c
where c.cid in (select o.cid
                from orders o
                where o.aid in (select a.aid
                                from agents a
                                where a.city = 'Dallas'
                                or    a.city = 'Newark'
                                )
                )
order by c.discount DESC
