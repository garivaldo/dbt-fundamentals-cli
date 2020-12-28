with payments as (
 select
  id as payment_id,
  orderid as order_id,
  paymentmethod,
  status as payment_status,
  amount/100 as payment_amount,
  created as created_at
FROM
  `dbt-tutorial`.stripe.payment)

  select * from payments
