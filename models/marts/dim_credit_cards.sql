with
    credit_cards as (
        select *
        from {{ ref('stg_erp__credit_cards') }}
    ),
    
    person_credit_cards as (
        select *
        from {{ ref('stg_erp__person_credit_cards') }}
    ),

    persons as (
        select *
        from {{ ref('stg_erp__persons') }}
    ),

    joined as (
        select
            PK_CREDIT_CARD,
            FK_BUSINESS_ENTITY,
            CREDIT_CARD_TYPE,
            NM_PERSON,
        from credit_cards
        left join person_credit_cards on credit_cards.PK_CREDIT_CARD = person_credit_cards.FK_CREDIT_CARD
        left join persons on persons.PK_BUSINESS_ENTITY = person_credit_cards.FK_BUSINESS_ENTITY
    )

select *
from joined