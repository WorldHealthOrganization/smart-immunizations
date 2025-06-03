ValueSet: IMMZ.D2.DT.Meningococcal.Quad2
Title: "IMMZ.D2.DT.Meningococcal.Quad2 ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Meningococcal.Quad2 for IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses.
Business rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D), 2-dose schedule
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Meningococcal_Quadrivalent_conjugate_vaccines_2_doses"

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt9m-34.43, [[Client's age is less than 9 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmpsdwa-53.130, [[No meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ompsdwa-54.130, [[One meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tmpsdwa-56.130, [[Two meningococcal primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet9m-46.43, [[Client's age is more than or equal to 9 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csawltoet23mwtpsws-84.118, [[Client's age was less than or equal to 23 months when the primary series was started]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwalt3ma-69.112, [[The latest meningococcal dose was administered less than 3 months ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwamt3ma-69.112, [[The latest meningococcal dose was administered more than 3 months ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csawmt23mwtpsws-72.118, [[Client's age was more than 23 months when the primary series was started]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfmv-47.52, [[Client is not due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfmv-43.48, [[Client is due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #misic-47.53, [[Meningococcal immunization schedule is complete]] )
