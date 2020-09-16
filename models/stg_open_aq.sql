{{ config(materialized='table') }}

select * from `bigquery-public-data.openaq.global_air_quality`