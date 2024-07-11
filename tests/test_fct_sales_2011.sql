
with 
    fct_sales as (
        select *
        from {{ ref('fct_sales') }}
    ),

    calculate_2011_sales as (
        select SUM(PRODUCT_UNIT_PRICE * ORDER_QUANTITY) as SALES_2011
        from fct_sales
        where YEAR(DT_ORDER)=2011
    )

select *
from calculate_2011_sales
where SALES_2011 = 12646104.41
