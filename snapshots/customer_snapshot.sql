{% snapshot customer_snapshot %}

{{
    config(
        target_database='PC_DBT_DB',
        target_schema='DBT_KS',
        unique_key='CUSTOMER_ID',

        strategy='check',

        check_cols=['CUSTOMER_NAME','EMAIL','CITY']
    )
}}

SELECT CUSTOMER_ID,CUSTOMER_NAME,EMAIL,CITY
FROM {{ source('raw_source','CUSTOMER_RAW') }}

{% endsnapshot %}