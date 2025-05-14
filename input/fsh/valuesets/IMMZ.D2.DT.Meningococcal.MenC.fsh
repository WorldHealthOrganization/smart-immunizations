ValueSet: IMMZ.D2.DT.Meningococcal.MenC
Title: "IMMZ.D2.DT.Meningococcal.MenC ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Meningococcal.MenC for IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine .
Business rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: Monovalent MenC conjugate vaccine schedule
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Meningococcal_Monovalent_MenC_conjugate_vaccine_"

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt9m, [[Client's age is less than 9 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmpsdwa, [[No meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimt9m, [[Client's age is more than 9 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ompsdwa, [[One meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt3m, [[Client's age is less than 3 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet3m, [[Client's age is more than or equal to 3 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwalt8wa, [[The latest meningococcal dose was administered less than 8 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwamt8wa, [[The latest meningococcal dose was administered more than 8 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tmpsdwa, [[Two meningococcal primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt2m, [[Client's age is less than 2 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet2m, [[Client's age is more than or equal to 2 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csawltoet1mwtpsws, [[Client's age was less than or equal to 11 months when the primary series was started]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwalt2ma, [[The latest meningococcal dose was administered less than 2 months ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwamt2ma, [[The latest meningococcal dose was administered more than 2 months ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csawmt1mwtpsws, [[Client's age was more than 11 months when the primary series was started]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwalt1ya, [[The latest meningococcal dose was administered less than 1 year ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmbdwa, [[No meningococcal booster dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwamt1ya, [[The latest meningococcal dose was administered more than 1 year ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #mbdwa, [[Meningococcal booster dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfmv, [[Client is not due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfmv, [[Client is due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #misic, [[Meningococcal immunization schedule is complete]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #tpsiccidfmbd, [[The primary series is complete. Client is due for meningococcal booster dose]] )
