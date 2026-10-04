{{ config(materialized='table') }}

SELECT CUSTOMER_ID, {{ clean_text('CUSTOMER_NAME') }} AS CUSTOMER_NAME,EMAIL,CITY 
FROM {{ ref('stg_customer') }}