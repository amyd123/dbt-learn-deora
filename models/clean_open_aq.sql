select city, country, value, date, unit, pollutant,
case 
    when pollutant= 'pm25' then 'Small Particulates'
    when pollutant= 'no2' then 'Nitrogen Dioxide'
    when pollutant= 'o3' then 'Ozone'
    when pollutant= 'co' then 'Carbon Monoxide'
    when pollutant= 'so2' then 'Sulphur Oxides'
    when pollutant= 'bc' then 'Black Carbon'
else 'Other'
end as pollutant_desc

from {{ ref('stg_open_aq') }}



