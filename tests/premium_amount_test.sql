SELECT * FROM {{ ref('stg_premium') }}
WHERE PREMIUM_AMOUNT <= 0