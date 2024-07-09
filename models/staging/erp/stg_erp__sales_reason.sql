with
    sales_reason as (
        select
            cast(SALESORDERID as int) as fk_order,
            cast(SALESREASONID as int) as fk_sales_reason,
            --cast(MODIFIEDDATE as int) as pk_sales_reason,
        from {{ source('erp', 'SalesOrderHeaderSalesreason') }}
    )

select *
from sales_reason