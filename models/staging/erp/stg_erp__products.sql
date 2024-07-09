with
    products as (
        select
            cast(PRODUCTID as int) as pk_product,
            cast(NAME as varchar) as nm_product,
            --cast(PRODUCTNUMBER as varchar) as pk_product,
            --cast(MAKEFLAG as varchar) as pk_product,
            --cast(FINISHEDGOODSFLAG as varchar) as pk_product,
            --cast(COLOR as varchar) as pk_product,
            --cast(SAFETYSTOCKLEVEL as varchar) as pk_product,
            --cast(REORDERPOINT as varchar) as pk_product,
            --cast(STANDARDCOST as varchar) as pk_product,
            --cast(LISTPRICE as varchar) as pk_product,
            --cast(SIZE as varchar) as pk_product,
            --cast(SIZEUNITMEASURECODE as varchar) as pk_product,
            --cast(WEIGHTUNITMEASURECODE as varchar) as pk_product,
            --cast(WEIGHT as varchar) as pk_product,
            --cast(DAYSTOMANUFACTURE as varchar) as pk_product,
            --cast(PRODUCTLINE as varchar) as pk_product,
            --cast(CLASS as varchar) as pk_product,
            --cast(STYLE as varchar) as pk_product,
            --cast(PRODUCTSUBCATEGORYID as varchar) as pk_product,
            --cast(PRODUCTMODELID as varchar) as pk_product,
            --cast(SELLSTARTDATE as varchar) as pk_product,
            --cast(SELLENDDATE as varchar) as pk_product,
            --cast(DISCONTINUEDDATE as varchar) as pk_product,
            --cast(ROWGUID as varchar) as pk_product,
            --cast(MODIFIEDDATE as varchar) as pk_product,
        from {{ source('erp', 'Product') }}
    )

select *
from products