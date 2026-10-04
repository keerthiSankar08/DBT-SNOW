{{ config(materialized='ephemeral') }}

SELECT A.CUSTOMER_ID,A.CUSTOMER_NAME,A.EMAIL,A.CITY,B.PREMIUM_ID,B.PREMIUM_AMOUNT,B.PREMIUM_DATE FROM 
{{ ref("stg_customer") }} A
INNER JOIN
{{ ref("stg_premium") }} B
ON 
A.CUSTOMER_ID=B.CUSTOMER_ID