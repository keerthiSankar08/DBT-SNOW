{% macro clean_text(col) %}

UPPER(TRIM({{ col }}))

{% endmacro %}