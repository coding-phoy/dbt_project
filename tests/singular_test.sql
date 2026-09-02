select customer_id,
    order_date,
    count(distinct order_id) count
from {{ ref('stg_jaffle_shop__orders') }}
group by 1, 2
having count(distinct order_id) > 1