-- 5. Get the pids of products ordered by any customers who ever placed an order through agent a04.
select distinct o.pid
from orders o
where o.cid in (select o.cid
                from orders o
                where o.aid in (Select a.aid
                                from agents a
                                where a.name = 'Gray'
                                )
                )
and o.aid in (Select a.aid
              from agents a
              where a.name = 'Gray'
              )
order by o.pid asc
