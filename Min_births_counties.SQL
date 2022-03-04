--Minimum births according to different counties in the US
SELECT County_of_Residence
, MIN(Births) as Min_births
FROM bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_maternal_morbidity
group by County_of_Residence
order by Min_births desc
