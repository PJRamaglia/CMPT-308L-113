-- 7. List all data for orders in January or April.
select *
from orders
where mon = 'jan'
or mon = 'apr'