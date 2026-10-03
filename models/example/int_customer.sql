SELECT CUSTOMER_ID,CUSTOMER_NAME,CITY,EMAIL, current_timestamp() AS LOAD_TS FROM 
{{ ref('new_stg_customer') }}