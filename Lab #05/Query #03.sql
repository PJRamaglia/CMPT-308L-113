-- 3. Get the names of customers who have never placed an order.  Use a subquery.
select c.cid, c.name
from customers c
where c.cid not in (select o.cid
                    from orders o)
order by c.cid asc
