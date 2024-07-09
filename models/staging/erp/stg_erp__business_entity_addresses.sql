with
    business_entity_addresses as (
        select
            cast(BUSINESSENTITYID as int) as fk_business_entity,
            cast(ADDRESSID as int) as fk_address,
            --cast(ADDRESSTYPEID as int) as fk_business_entity,
            --cast(ROWGUID as int) as fk_business_entity,
            --cast(MODIFIEDDATE as int) as fk_business_entity,
        from {{ source('erp', 'BusinessEntityAddress') }}
    )

select *
from business_entity_addresses