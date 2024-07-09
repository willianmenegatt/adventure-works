with
    states as (
        select
            cast(STATEPROVINCEID as int) as pk_state,
            cast(COUNTRYREGIONCODE as varchar) as fk_country,
            cast(NAME as varchar) as state,
            --cast(STATEPROVINCECODE as int) as pk_state,
            --cast(ISONLYSTATEPROVINCEFLAG as int) as pk_state,
            --cast(TERRITORYID as int) as pk_state,
            --cast(ROWGUID as int) as pk_state,
            --cast(MODIFIEDDATE as int) as pk_state,
        from {{ source('erp', 'StateProvince') }}
    )

select *
from states