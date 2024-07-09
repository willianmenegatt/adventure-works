with
    persons as (
        select
            cast(BUSINESSENTITYID as int) as pk_business_entity,
            cast(FIRSTNAME as varchar) || ' ' || cast(LASTNAME as varchar) as NM_PERSON,
            --cast(PERSONTYPE as int) as fk_business_entity,
            --cast(NAMESTYLE as int) as fk_business_entity,
            --cast(TITLE as int) as fk_business_entity,
            --cast(MIDDLENAME as int) as fk_business_entity,
            --cast(SUFFIX as int) as fk_business_entity,
            --cast(EMAILPROMOTION as int) as fk_business_entity,
            --cast(ADDITIONALCONTACTINFO as int) as fk_business_entity,
            --cast(DEMOGRAPHICS as int) as fk_business_entity,
            --cast(ROWGUID as int) as fk_business_entity,
            --cast(MODIFIEDDATE as int) as fk_business_entity,
        from {{ source('erp', 'Person') }}
    )

select *
from persons