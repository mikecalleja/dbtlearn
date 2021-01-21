select
orderid as order_id,
created AS created_at,
amount/100 AS order_value_usd,
id AS payment_id,
status AS payment_status,
paymentmethod AS payment_method

from 
    raw.stripe.payment
WHERE 
    payment_status = 'success'