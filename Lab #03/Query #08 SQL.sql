-- 8. List all data for orders in February more than USD$200.
select *
from orders
where mon = 'feb'
and dollars > 200