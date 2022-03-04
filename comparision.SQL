--Comparision between Average birth weight and average pre pregnancy BMI
SELECT Ave_Birth_Weight_gms
, Ave_Pre_pregnancy_BMI  
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_maternal_morbidity`
group by Ave_Birth_Weight_gms
, Ave_Pre_pregnancy_BMI
