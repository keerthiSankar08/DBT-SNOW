SELECT CUSTOMER_ID,
       CUSTOMER_NAME,
       EMAIL,
       CITY
FROM {{ ref('int_customer') }}
WHERE CUSTOMER_ID = 1