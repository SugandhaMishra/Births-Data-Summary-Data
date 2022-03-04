--Maximum average birth weight of infants whose fathers are Asians with congenital abnormalities not checked 
select X.Congenital_Abnormality_Checked_Desc , Y.Fathers_Single_Race , max (X.Ave_Birth_Weight_gms)
FROM bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_congenital_abnormalities X 
LEFT JOIN  bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_father_race  Y
ON X.County_of_Residence = Y.County_of_Residence 
WHERE X.Congenital_Abnormality_Checked_Desc = 'None checked' 
AND Y.Fathers_Single_Race = 'Asian'
GROUP BY Y.Fathers_Single_Race, X.Congenital_Abnormality_Checked_Desc
