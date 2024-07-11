with
    business_entity_contact as (
        select
            cast(BUSINESSENTITYID as int) as ID_BUSINESS_ENTITY,
            cast(PERSONID as int) as ID_PERSON,
            --cast(CONTACTTYPEID as int) as FK_BUSINESS_ENTITY,
            --cast(ROWGUID as int) as FK_BUSINESS_ENTITY,
            --cast(MODIFIEDDATE as int) as FK_BUSINESS_ENTITY,
        from {{ source('erp', 'BusinessEntityContact') }}
    )

select *
from business_entity_contact