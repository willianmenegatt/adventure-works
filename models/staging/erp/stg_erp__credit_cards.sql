with
    credit_cards as (
        select
            cast(CREDITCARDID as varchar) as pk_credit_card,
            cast(CARDTYPE as varchar) as credit_card_type,
            --cast(CARDNUMBER as varchar) as pk_credit_card,
            --cast(EXPMONTH as varchar) as pk_credit_card,
            --cast(EXPYEAR as varchar) as pk_credit_card,
            --cast(MODIFIEDDATE as varchar) as pk_credit_card,
        from {{ source('erp', 'CreditCard') }}
    )

select *
from credit_cards