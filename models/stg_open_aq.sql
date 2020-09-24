{{ config(materialized='table') }}

select cast(timestamp as date) date, city, country, pollutant, value, unit
from `bigquery-public-data.openaq.global_air_quality`