-- 3. Find the cids and names of customers who never placed an order through agent a04.
select distinct c.cid, c.name
from customers c
where c.cid in (select o.cid
                from orders o
                where o.aid not in (select a.aid
                                    from agents a
                                    where a.name = 'Gray'
                                    )
                )
order by c.cid asc
