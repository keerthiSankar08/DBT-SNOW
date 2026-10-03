SELECT CUSTOMER_ID,
{{ clean_text('CUSTOMER_NAME') }} AS CUSTOMER_NAME,
EMAIL,
{{ clean_text('CITY') }} AS CITY
 FROM 
{{ source('raw_source','CUSTOMER_RAW') }}