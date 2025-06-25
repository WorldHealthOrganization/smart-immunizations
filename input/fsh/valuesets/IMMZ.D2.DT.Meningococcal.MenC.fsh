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
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmpsdwa-53.130, [[No meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ompsdwa-54.130, [[One meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tmpsdwa-56.130, [[Two meningococcal primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt2m-34.43, [[Client's age is less than 2 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet2m-46.43, [[Client's age is more than or equal to 2 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csawltoet1mwtpsws-84.118, [[Client's age was less than or equal to 11 months when the primary series was started]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwalt2ma-69.112, [[The latest meningococcal dose was administered less than 2 months ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwamt2ma-69.112, [[The latest meningococcal dose was administered more than 2 months ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csawmt1mwtpsws-72.118, [[Client's age was more than 11 months when the primary series was started]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwalt1ya-67.117, [[The latest meningococcal dose was administered less than 1 year ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmbdwa-46.128, [[No meningococcal booster dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwamt1ya-67.117, [[The latest meningococcal dose was administered more than 1 year ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #mbdwa-43.128, [[Meningococcal booster dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfmv-47.52, [[Client is not due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfmv-43.48, [[Client is due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #misic-47.53, [[Meningococcal immunization schedule is complete]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #tpsiccidfmbd-76.48, [[The primary series is complete. Client is due for meningococcal booster dose]] )
