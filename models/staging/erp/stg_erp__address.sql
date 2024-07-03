with
    address as (
        select
            cast(ADDRESSID as int) as pk_address,
            cast(STATEPROVINCEID as int) as fk_state,
            cast(CITY as varchar) as city,
            --cast(ADDRESSLINE1 as int) as pk_address,
            --cast(ADDRESSLINE2 as int) as pk_address,
            --cast(POSTALCODE as int) as pk_address,
            --cast(SPATIALLOCATION as int) as pk_address,
            --cast(ROWGUID as int) as pk_address,
            --cast(MODIFIEDDATE as int) as pk_address,
        from {{ source('erp', 'Address') }}
    )

select *
from address