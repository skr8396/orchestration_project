{{ config(
    materialized='table'
) }}

-- This query will FAIL because 'invalid_column' doesn't exist
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.CUSTOMER  where c_customer_sk = '28437730'
