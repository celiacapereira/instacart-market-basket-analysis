WITH ORDERS AS (
SELECT * FROM {{ ref('stg_orders') }}
),
FINAL AS (
    SELECT
    ORDER_ID,
    USER_ID,
    EVAL_SET,
    ORDER_NUMBER,
    ORDER_HOUR_OF_DAY,
    DAYS_SINCE_PRIOR_ORDER
    FROM ORDERS
)
select * from final