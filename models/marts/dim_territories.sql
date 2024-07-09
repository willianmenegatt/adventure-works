with
    addresses as (
        select *
        from {{ ref('stg_erp__addresses') }}
    ),

    business_entity_addresses as (
        select *
        from {{ ref('stg_erp__business_entity_addresses') }}
    ),

    states as (
        select *
        from {{ ref('stg_erp__states') }}
    ),

    countries as (
        select *
        from {{ ref('stg_erp__countries') }}
    ),

    joined as (
        select
            addresses.PK_ADDRESS,
            business_entity_addresses.FK_BUSINESS_ENTITY,
            addresses.CITY,
            states.STATE,
            countries.COUNTRY,
        from addresses
        left join business_entity_addresses on addresses.PK_ADDRESS = business_entity_addresses.FK_ADDRESS
        left join states on addresses.FK_STATE = states.PK_STATE
        left join countries on states.FK_COUNTRY = countries.PK_COUNTRY
    )

select *
from joined    