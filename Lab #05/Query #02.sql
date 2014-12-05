-- 2. Get the pids of products ordered through any agent who makes at least one order for a customer in Kyoto.  Use joins this time; no sub-queries.
select distinct p.pid
from products p, customers c, agents a
inner join orders o
on a.aid = o.aid
where c.city = 'Kyoto'
and p.pid = o.pid
and (o.aid = 'a01' or o.aid = 'a03' or o.aid = 'a06')
order by p.pid asc
