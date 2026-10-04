{{ config(materialized='view') }}

SELECT PREMIUM_ID,CUSTOMER_ID,PREMIUM_AMOUNT,PREMIUM_DATE FROM 
{{ source('insurance_curated','FACT_PREMIUM') }}