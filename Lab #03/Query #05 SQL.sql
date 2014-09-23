-- 5. List the name of agents not in New York and not in London.
select name
from agents
where city != 'New York'
and city != 'London'