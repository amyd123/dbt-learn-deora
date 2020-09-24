
select
  pollutant_desc,
  city,
  country,
  value,
  date
from {{ ref('clean_open_aq') }}
where
  pollutant = "pm10" and country="US"
order by value 
