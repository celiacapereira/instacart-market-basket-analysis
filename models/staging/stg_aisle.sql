-- with source as (

--     select * from {{ source('market_basket', 'AISLE') }}

-- ),
-- renamed as (

--     select
--     AISLE_ID,
--     AISLE
--     from source

-- )

-- select * from renamed

with source as (

    select AISLE_ID,
    AISLE from {{ source('market_basket', 'AISLE') }}

),
renamed as (

    select
    *
    from source

)

select * from renamed