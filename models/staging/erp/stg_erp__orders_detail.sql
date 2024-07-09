with
    source_orders_detail as (
        select
            cast(SALESORDERDETAILID as int) as pk_order_detail,
            cast(SALESORDERID as int) as fk_order,
            cast(PRODUCTID as int) as fk_product,
            cast(UNITPRICE as numeric(18,2)) as product_unit_price,
            cast(ORDERQTY as int) as order_quantity,
            cast(UNITPRICEDISCOUNT as varchar) as unit_price_discount,
            --cast(CARRIERTRACKINGNUMBER as varchar) as fk_order,
            --cast(SPECIALOFFERID as varchar) as fk_order,
            --cast(ROWGUID as varchar) as fk_order,
            --cast(MODIFIEDDATE as varchar) as fk_order,
        from {{ source('erp', 'SalesOrderDetail') }}
    )

select *
from source_orders_detail