-- Total births according to different Counties in the US 
SELECT County_of_Residence
, sum(Births) as Total_Births  
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_maternal_morbidity`
group by County_of_Residence
order by Total_Births  desc 
