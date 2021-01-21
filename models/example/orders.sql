with order_totals AS (
select order_id,
SUM(order_value_usd) as total_basket_value from {{ref('stg_payment')}}
group by 1
),
orders AS (
    select * from {{ref('stg_orders')}})
,
customers AS(
    select * from {{ref('customers')}}
)

select 
order_totals.order_id,
order_totals.total_basket_value
from order_totals
order by 1