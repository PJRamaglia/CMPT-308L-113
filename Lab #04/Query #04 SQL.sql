-- 4. Get the cids and names of customers who ordered both product p01 and p07.
select distinct c.cid, c.name
from customers c
where c.cid in ((select o.cid
                 from orders o
                 where o.pid in (select p.pid
                                 from products p
                                 where p.name = 'comb'
                                 )
                 )
                intersect
                (select o.cid
                 from orders o
                 where o.pid in (select p.pid
                                 from products p
                                 where p.name = 'case'
                                 )
                 )
                )
order by c.cid asc
