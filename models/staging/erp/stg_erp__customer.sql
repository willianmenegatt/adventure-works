with
    customer as (
        select
            cast(CUSTOMERID as int) as ID_CUSTOMER,
            cast(PERSONID as int) as ID_PERSON,
            cast(STOREID as int) as ID_STORE,
            --cast(TERRITORYID as int) as PK_CUSTOMER,
            --cast(ACCOUNTNUMBER as int) as PK_CUSTOMER,
            --cast(ROWGUID as int) as PK_CUSTOMER,
            --cast(MODIFIEDDATE as int) as PK_CUSTOMER,
        from {{ source('erp', 'Customer') }}
    )

select *
from customer