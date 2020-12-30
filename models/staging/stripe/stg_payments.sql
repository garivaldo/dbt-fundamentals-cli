with payments as (
 select
  id as payment_id,
  orderid as order_id,
  paymentmethod,
  status as payment_status,
  {{ cents_to_dollars('payment_amount') }} as payment_amount,
  created as created_at
    from {{source('stripe','payment')}}
  )

  select * from payments
  
