-- 1. Get the cities of agents booking an order for customer "TipTop."
select city
from agents
where aid = (select aid
             from orders
             where cid = (select cid
                          from customers
                          where name = 'Tiptop'
                          )
             )

select *
from orders
where cid = (select cid
             from customers
             where name = 'Tiptop'
             )

select distinct aid
from orders
where cid = (select cid
             from customers
             where name = 'Tiptop'
             )

