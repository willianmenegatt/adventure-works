with
    customer as (
        select
            *
        from {{ ref('stg_erp__customer') }}
    ),

    business_entity_contact as (
        select
            *
        from {{ ref('stg_erp__business_entity_contact') }}
    ),

    joined as (
        select
            customer.ID_CUSTOMER as PK_CUSTOMER,
            business_entity_contact.ID_BUSINESS_ENTITY as FK_BUSINESS_ENTITY,
            customer.ID_STORE,
        from customer
        left join business_entity_contact on business_entity_contact.ID_PERSON = customer.ID_PERSON
    )

select *
from joined