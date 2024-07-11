
with 
    intermediate as (
        select *
        from {{ ref('int_orders_by_items') }}
    ),

    calculate_2011_sales as (
        select SUM(PRODUCT_UNIT_PRICE * ORDER_QUANTITY) as SALES_2011
        from intermediate
        where YEAR(DT_ORDER)=2011
    )

select *
from calculate_2011_sales
where SALES_2011 = 12646104.41
