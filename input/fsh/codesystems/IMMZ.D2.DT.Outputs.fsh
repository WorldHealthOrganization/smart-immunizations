CodeSystem: IMMZ.D2.DT.Outputs
Title:        "IMMZ.D2.DT.Outputs CodeSystem for Decision Table Outputs"
Description:  "CodeSystem for Decision Table Outputs"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_D2_DT_Outputs"
* ^status = #active
* ^property[+].code = #table
* ^property[=].description = "Decision Table ID"
* ^property[=].type = #string

* #cindfmv-47.52 "Client is not due for meningococcal vaccination" "\"Immunization recommendation status\" = \"Not due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #cidfmv-43.48 "Client is due for meningococcal vaccination" "\"Immunization recommendation status\" = \"Due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #misic-47.53 "Meningococcal immunization schedule is complete" "\"Immunization recommendation status\" = \"Complete\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #tpsiccidfmbd-76.48 "The primary series is complete. Client is due for meningococcal booster dose" "\"Immunization recommendation status\" = \"Due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
* #tpsiccindfmbd-81.52 "The primary series is complete. Client is not due for meningococcal booster dose." "\"Immunization recommendation status\" = \"Not due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #tpsiccjirfmbdcacn-117.70 "The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note" "\"Immunization recommendation status\" = \"Further evaluation needed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #cindfhav-45.52 "Client is not due for Hepatitis A vaccination" "\"Immunization recommendation status\" = \"Not due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #cidfhav-41.48 "Client is due for Hepatitis A vaccination" "\"Immunization recommendation status\" = \"Due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #haisic-45.53 "Hepatitis A immunization schedule is complete" "\"Immunization recommendation status\" = \"Complete\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #cidfrv-36.48 "Client is due for rabies vaccination" "\"Immunization recommendation status\" = \"Due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Rabies"
* #cindfrv-40.52 "Client is not due for rabies vaccination" "\"Immunization recommendation status\" = \"Not due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Rabies"
* #risic-40.53 "Rabies immunization schedule is complete" "\"Immunization recommendation status\" = \"Complete\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Rabies"
* #cindfdv-40.52 "Client is not due for dengue vaccination" "\"Immunization recommendation status\" = \"Not due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
* #cidfdv-36.48 "Client is due for dengue vaccination" "\"Immunization recommendation status\" = \"Due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
* #disic-40.53 "Dengue immunization schedule is complete" "\"Immunization recommendation status\" = \"Complete\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening"
* #cindfmv-41.52 "Client is not due for malaria vaccination" "\"Immunization recommendation status\" = \"Not due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #cidfmv-37.48 "Client is due for malaria vaccination" "\"Immunization recommendation status\" = \"Due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #misic-41.53 "Malaria immunization schedule is complete" "\"Immunization recommendation status\" = \"Complete\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #cindfmv-41.48 "Client is not due for malaria vaccination" "\"Immunization recommendation status\" = \"Not due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #cidfmv-37.44 "Client is due for malaria vaccination" "\"Immunization recommendation status\" = \"Due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"
* #misic-41.49 "Malaria immunization schedule is complete" "\"Immunization recommendation status\" = \"Complete\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Malaria"


