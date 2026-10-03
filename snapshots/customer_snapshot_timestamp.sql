{% snapshot customer_snapshot_ts %}

{{
    config(
        target_database='PC_DBT_DB',
        target_schema='DBT_KS',
        unique_key='CUSTOMER_ID',

        strategy='timestamp',

        updated_at='UPDATED_DATE'
    )
}}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    CITY,
    UPDATED_DATE
FROM PC_DBT_DB.DBT_PRACT.CUSTOMER_SNAPSHOT_SRC

{% endsnapshot %}