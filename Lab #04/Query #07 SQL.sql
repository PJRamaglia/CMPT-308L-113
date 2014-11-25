-- 7. Find all customers who have the same discount as that of any customers in Dallas or Kyoto.
select *
from customers c
where c.discount in (select c.discount
                     from customers c
                     where c.cid in (select c.cid
                                     from customers c
                                     where c.city = 'Dallas'
                                     or    c.city = 'Kyoto'
                                     )
                     )
order by c.cid asc
