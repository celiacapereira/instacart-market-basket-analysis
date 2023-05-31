with source as (

    select * from {{ source('market_basket', 'DEPARTMENT') }}

),
renamed as (

    select
    DEPARTMENT_ID,
    DEPARTMENT
    from source

)

select * from renamed