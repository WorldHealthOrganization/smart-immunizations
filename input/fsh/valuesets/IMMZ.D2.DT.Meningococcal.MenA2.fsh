ValueSet: IMMZ.D2.DT.Meningococcal.MenA2
Title: "IMMZ.D2.DT.Meningococcal.MenA2 ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Meningococcal.MenA2 for IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses.
Business rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: MenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Meningococcal_MenA_conjugate_vaccine_2_doses"
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmpsdwa-53.130, [[No meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ompsdwa-54.130, [[One meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt3m-34.43, [[Client's age is less than 3 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet3m-46.43, [[Client's age is more than or equal to 3 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwalt8wa-68.111, [[The latest meningococcal dose was administered less than 8 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwamt8wa-68.111, [[The latest meningococcal dose was administered more than 8 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tmpsdwa-56.130, [[Two meningococcal primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfmv-47.52, [[Client is not due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfmv-43.48, [[Client is due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #misic-47.53, [[Meningococcal immunization schedule is complete]] )
