with
    sales_reason_detail as (
        select
            cast(SALESREASONID as int) as pk_sales_reason, 
            cast(NAME as varchar) as nm_sales_reason, 
            --cast(REASONTYPE as int) as pk_sales_reason, 
            --cast(MODIFIEDDATE as int) as pk_sales_reason, 
        from {{ source('erp', 'SalesReason') }}
    )

select *
from sales_reason_detail