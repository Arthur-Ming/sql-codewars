select
  customer_id
from
  orders
group by
  customer_id
having
  count(delivery_date) = 0
order by
  customer_id desc