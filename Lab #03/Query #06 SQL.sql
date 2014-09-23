-- 6. List all data for products not in Dallas or Duluth that cost US$1 or less.
select *
from products
where city != 'Dallas'
and city != 'Duluth'
and priceusd <= 1