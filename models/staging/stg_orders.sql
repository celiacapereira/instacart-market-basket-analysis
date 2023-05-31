with source as (

    select * from {{ source('market_basket', 'ORDERS') }}

),
renamed as (

    select
    ORDER_ID,
    USER_ID,
    EVAL_SET,
    ORDER_NUMBER,
    ORDER_DOW,
    ORDER_HOUR_OF_DAY,
    DAYS_SINCE_PRIOR_ORDER
    from source

)

select * from renamed