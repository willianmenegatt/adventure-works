
with 
    orders_detail as (
        select *
        from {{ ref('stg_erp__orders_detail') }}
    ),

    orders as (
        select *
        from {{ ref('stg_erp__orders') }}
    ),

    joined as (
        select
            FK_ORDER,
            PRODUCT_UNIT_PRICE,
            ORDER_QUANTITY,
            UNIT_PRICE_DISCOUNT,
            DT_ORDER,
        from orders_detail
        left join orders on orders_detail.FK_ORDER = orders.PK_ORDER
    ),

    calculate_2011_sales as (
        select SUM(PRODUCT_UNIT_PRICE * ORDER_QUANTITY) as SALES_2011
        from joined
        where YEAR(DT_ORDER)=2011
    )

select *
from calculate_2011_sales
where SALES_2011 between 12646104 and 12646105    -- 12646104.41  
