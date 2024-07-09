with
    countries as (
        select
            cast(COUNTRYREGIONCODE as varchar) as pk_country,
            cast(NAME as varchar) as country,
            --cast(MODIFIEDDATE as varchar) as pk_country,
        from {{ source('erp', 'CountryRegion') }}
    )

select *
from countries