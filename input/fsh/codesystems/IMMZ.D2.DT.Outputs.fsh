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

* #cindfmv "Client is not due for meningococcal vaccination" "\"Immunization recommendation status\" = \"Not due\""
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
* #cidfmv "Client is due for meningococcal vaccination" "\"Immunization recommendation status\" = \"Due\""
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
* #misic "Meningococcal immunization schedule is complete" "\"Immunization recommendation status\" = \"Complete\""
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
* #tpsiccidfmbd "The primary series is complete. Client is due for meningococcal booster dose" "\"Immunization recommendation status\" = \"Due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine "
* #tpsiccindfmbd "The primary series is complete. Client is not due for meningococcal booster dose." "\"Immunization recommendation status\" = \"Not due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #tpsiccjirfmbdcacn "The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note" "\"Immunization recommendation status\" = \"Further evaluation needed\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines"
* #cindfhav "Client is not due for Hepatitis A vaccination" "\"Immunization recommendation status\" = \"Not due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #cidfhav "Client is due for Hepatitis A vaccination" "\"Immunization recommendation status\" = \"Due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #haisic "Hepatitis A immunization schedule is complete" "\"Immunization recommendation status\" = \"Complete\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose"
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose"
* #cidfrv "Client is due for rabies vaccination" "\"Immunization recommendation status\" = \"Due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Rabies"
* #cindfrv "Client is not due for rabies vaccination" "\"Immunization recommendation status\" = \"Not due\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Rabies"
* #risic "Rabies immunization schedule is complete" "\"Immunization recommendation status\" = \"Complete\""
  * ^property[+].code = #table
  * ^property[=].valueString = "IMMZ.D2.DT.Rabies"

