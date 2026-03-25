with source as (
    select * from {{ source('toys_and_co', 'raw_orders') }}
),
renamed as (
    select
        id          as order_id,
        customer    as customer_id,
        ordered_at  as order_date,
        store_id    as store_id,
        subtotal    as subtotal,
        tax_paid    as tax_paid,
        amount      as amount
    from source
)
select * from renamed