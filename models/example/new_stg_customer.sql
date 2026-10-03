{{ config(materialized='view') }}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    EMAIL,
    CITY

FROM {{ source('raw_source','CUSTOMER_RAW') }}