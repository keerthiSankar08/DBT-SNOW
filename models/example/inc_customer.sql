{{ config(
    materialized='incremental'
) }}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    EMAIL,
    CITY

FROM {{ source('raw_source','CUSTOMER_RAW') }}

{% if is_incremental() %}

WHERE CUSTOMER_ID >
(
    SELECT max(CUSTOMER_ID)
    FROM {{this}}
)

{% endif %}