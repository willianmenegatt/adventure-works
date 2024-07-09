with
    source_orders as (
        select
        cast(SALESORDERID as int) as pk_order,
        cast(CREDITCARDID as int) as fk_credit_card,
        cast(STATUS as varchar) as status_order,
        cast(ORDERDATE as date) as dt_order,
        --cast(SUBTOTAL as varchar) as ORDER_SUB_TOTAL,
        --cast(ACCOUNTNUMBER as varchar) as account_number,
        --cast(TERRITORYID as int) as fk_territory,
        --cast(CUSTOMERID as varchar) as fk_customer,
        --cast(REVISIONNUMBER as varchar) as pk_sales_order,
        --cast(DUEDATE as varchar) as pk_sales_order,
        --cast(SHIPDATE as varchar) as pk_sales_order,
        --cast(ONLINEORDERFLAG as varchar) as pk_sales_order,
        --cast(PURCHASEORDERNUMBER as varchar) as pk_sales_order,
        --cast(SALESPERSONID as varchar) as pk_sales_order,
        --cast(BILLTOADDRESSID as varchar) as pk_sales_order,
        --cast(SHIPTOADDRESSID as varchar) as pk_sales_order,
        --cast(SHIPMETHODID as varchar) as pk_sales_order,
        --cast(CREDITCARDAPPROVALCODE as varchar) as pk_sales_order,
        --cast(CURRENCYRATEID as varchar) as pk_sales_order,
        --cast(TAXAMT as varchar) as pk_sales_order,
        --cast(FREIGHT as varchar) as pk_sales_order,
        --cast(TOTALDUE as varchar) as pk_sales_order,
        --cast(COMMENT as varchar) as pk_sales_order,
        --cast(ROWGUID as varchar) as pk_sales_order,
        --cast(MODIFIEDDATE as varchar) as pk_sales_order,
        from {{ source('erp', 'SalesOrderHeader') }}
    )

select *
from source_orders