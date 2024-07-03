with
    person_credit_card as (
        select
            cast(BUSINESSENTITYID as int) as fk_business_entity,
            cast(CREDITCARDID as int) as fk_credit_card,
            --cast(MODIFIEDDATE as int) as pk_business_entity
        from {{ source('erp', 'PersonCreditCard') }}
    )

select *
from person_credit_card