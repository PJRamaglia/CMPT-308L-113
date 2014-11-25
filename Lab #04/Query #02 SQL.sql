-- 2. Get the pids of products ordered through any agent who makes at least one order for a customer in Kyoto.  (This is not the same as asking for pids of products ordered by a customer in Kyoto.)
select distinct o.pid
from orders o
where o.aid in (select o.aid
                from orders o
                where o.cid in (select c.cid
                                from customers c
                                where c.city = 'Kyoto'
                                )
                )
order by o.pid asc