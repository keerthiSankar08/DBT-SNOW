{% snapshot customer_snapshot %}
{{
    config(
        target_schema='DBT_KS',
        unique_key='CUSTOMER_ID',
        strategy='timestamp',
        updated_at='START_DATE'
    )
}}
SELECT CUSTOMER_ID,CUSTOMER_NAME,EMAIL,CITY,START_DATE FROM 
{{ source('insurance_curated','DIM_CUSTOMER') }}
WHERE IS_CURRENT='Y'
{% endsnapshot %}