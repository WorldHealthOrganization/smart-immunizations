ValueSet: IMMZ.D2.DT.Meningococcal.MenA1
Title: "IMMZ.D2.DT.Meningococcal.MenA1 ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Meningococcal.MenA1 for IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose.
Business rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: MenA conjugate vaccine, 1-dose schedule
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Meningococcal_MenA_conjugate_vaccine_1_dose"

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt9m-34.43, [[Client's age is less than 9 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmpsdwa-53.130, [[No meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimt9m-34.43, [[Client's age is more than 9 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ompsdwa-54.130, [[One meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfmv-47.52, [[Client is not due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfmv-43.48, [[Client is due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #misic-47.53, [[Meningococcal immunization schedule is complete]] )
