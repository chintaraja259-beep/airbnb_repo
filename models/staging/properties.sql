
{{ config(
    materialized='table',
    
) }}

with result_raw as (

select * from 
{{ref('scd_raw_listings')}}

)

select * from result_raw where dbt_valid_to is NOT NULL



