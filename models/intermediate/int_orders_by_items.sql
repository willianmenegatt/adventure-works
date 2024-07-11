with
    orders_detail as (
        select *
        from {{ ref('stg_erp__orders_detail') }}
    ),

    orders as (
        select *
        from {{ ref('stg_erp__orders') }}
    ),

    joined as(
        select
            orders_detail.FK_ORDER,
            orders_detail.FK_PRODUCT,
            orders.FK_CREDIT_CARD,
            orders.STATUS_ORDER,
            orders_detail.PRODUCT_UNIT_PRICE,
            orders_detail.UNIT_PRICE_DISCOUNT,
            orders_detail.ORDER_QUANTITY,
            orders.DT_ORDER,
        from orders_detail
        left join orders on orders.PK_ORDER = orders_detail.FK_ORDER
    ),

    created_surrogate_key as (
        select
            cast(FK_ORDER as varchar) || '-' || cast(FK_PRODUCT as varchar) as SK_ORDER_ITEM, 
            *
        from joined
    )

select *
from created_surrogate_key