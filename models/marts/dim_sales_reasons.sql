with
    sales_reason as (
        select
            *
        from {{ ref('stg_erp__sales_reason') }}
    ),

    sales_reason_detail as (
        select 
            *
        from {{ ref('stg_erp__sales_reason_detail') }}
    ),

    joined as (
        select 
            sales_reason.FK_ORDER,
            sales_reason_detail.NM_SALES_REASON,
        from sales_reason
        left join sales_reason_detail on sales_reason.FK_SALES_REASON = sales_reason_detail.PK_SALES_REASON
    )

select *
from joined