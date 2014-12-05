-- 4. Get the names of customers who have never placed an order.  Use an outer join.
select c.cid, c.name
from customers c
left join orders o
on c.cid = o.cid
where ordno is null
order by c.cid asc
