{{
config(
    materialized='incremental',
    unique_key='PREMIUM_ID',
    incremental_strategy='merge'
)
}}

SELECT PREMIUM_ID, CUSTOMER_ID,PREMIUM_AMOUNT,PREMIUM_DATE
FROM {{ ref('stg_premium') }}