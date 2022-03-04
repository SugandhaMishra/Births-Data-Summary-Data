-- Total births by mothers between ages 26.7 and 31.61
SELECT County_of_Residence
, sum(Births) as Total_Births  
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_maternal_morbidity`
where Ave_Age_of_Mother Between 26.7 and  31.61
group by County_of_Residence
order by Total_Births  desc 
