with 
    orders_by_item as (
        select *
        from {{ ref('int_orders_by_items') }}
    ),

    dim_products as (
        select *
        from {{ ref('dim_products') }}
    ),

    dim_credit_cards as (
        select *
        from {{ ref('dim_credit_cards') }}
    ),

    dim_territories as (
        select *
        from {{ ref('dim_territories') }}
    ),

    dim_sales_reasons as (
        select *
        from {{ ref('dim_sales_reasons') }}
    ),

    joined as (
        select
            orders_by_item.SK_ORDER_ITEM,
            orders_by_item.FK_ORDER,
            orders_by_item.STATUS_ORDER,
            orders_by_item.ORDER_QUANTITY,
            orders_by_item.PRODUCT_UNIT_PRICE,
            orders_by_item.UNIT_PRICE_DISCOUNT,
            dim_sales_reasons.NM_SALES_REASON,
            dim_products.NM_PRODUCT,
            dim_credit_cards.NM_PERSON,
            dim_credit_cards.CREDIT_CARD_TYPE,
            dim_territories.CITY,
            dim_territories.STATE,
            dim_territories.COUNTRY,
            orders_by_item.DT_ORDER,
        from orders_by_item
        left join dim_products on dim_products.PK_PRODUCT = orders_by_item.FK_PRODUCT
        left join dim_credit_cards on dim_credit_cards.PK_CREDIT_CARD = orders_by_item.FK_CREDIT_CARD
        left join dim_sales_reasons on dim_sales_reasons.FK_ORDER = orders_by_item.FK_ORDER
        --left join dim_territories on dim_territories.FK_BUSINESS_ENTITY = dim_credit_cards.FK_BUSINESS_ENTITY
    ),

    metrics as (
        select
            *,
            ORDER_QUANTITY * (1 - UNIT_PRICE_DISCOUNT) * PRODUCT_UNIT_PRICE as SUB_TOTAL,
            (ORDER_QUANTITY * (1 - UNIT_PRICE_DISCOUNT) * PRODUCT_UNIT_PRICE) / ORDER_QUANTITY as TICKET,
        from joined
    )

select *
from metrics

