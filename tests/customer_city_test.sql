SELECT * FROM 
{{ ref('dim_customer') }}
WHERE CITY='M'