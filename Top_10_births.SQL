Details about the top 10 births
-- Top 10 Births
  SELECT County_of_Residence
  , sum(Births) as Total_birth
  , Ave_Age_of_Mother
  , year
  FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_maternal_morbidity` 
 group by County_of_Residence, Ave_Age_of_Mother, year
 order by Total_birth desc 
 limit 10
 
