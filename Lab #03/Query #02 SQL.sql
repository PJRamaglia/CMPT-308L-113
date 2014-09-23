-- 2. List pid, name, and quantity of products costing more than US$0.99.
select pid, name, quantity
from products
where priceusd > 0.99