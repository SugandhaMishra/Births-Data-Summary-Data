--Average of OE Gestational age Wks of Asian mothers whose source of payment is Medicaid
select X.Source_of_Payment , Y.Mothers_Single_Race , AVG (X.Ave_OE_Gestational_Age_Wks)
FROM bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_payment  X 
LEFT JOIN   bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_mother_race  Y
ON X.County_of_Residence = Y.County_of_Residence 
WHERE X.Source_of_Payment = 'Medicaid' 
AND Y.Mothers_Single_Race = 'Asian'
GROUP BY Y.Mothers_Single_Race, X.Source_of_Payment
