with source as (

    select * from {{ source('market_basket', 'ORDER_PRODUCTS_PRIOR') }}

),
renamed as (

    select
    ORDER_ID,
    PRODUCT_ID,
    ADD_TO_CART_ORDER,
    REORDERED
    from source

)

select * from renamed