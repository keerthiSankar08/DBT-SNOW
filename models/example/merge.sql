{{
config(
    materialized='incremental',
    unique_key='CUSTOMER_ID',
    incremental_strategy='merge'
)
}}


SELECT CUSTOMER_ID,CUSTOMER_NAME,EMAIL,CITY FROM 
{{ source('raw_source','CUSTOMER_RAW')}}