-- 1. Get the cities of agents booking an order for customer “TipTop”.  This time use joins; no sub-queries.
select distinct a.aid, a.name, a.city, c.name
from agents a, customers c
inner join orders o
on c.cid = o.cid
where c.name = 'Tiptop'
and a.aid = o.aid
order by a.aid asc
