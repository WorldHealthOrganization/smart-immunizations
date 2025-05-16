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

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt9m, [[Client's age is less than 9 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmpsdwa, [[No meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ompsdwa, [[One meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tmpsdwa, [[Two meningococcal primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet9m, [[Client's age is more than or equal to 9 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csawltoet23mwtpsws, [[Client's age was less than or equal to 23 months when the primary series was started]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwalt3ma, [[The latest meningococcal dose was administered less than 3 months ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwamt3ma, [[The latest meningococcal dose was administered more than 3 months ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csawmt23mwtpsws, [[Client's age was more than 23 months when the primary series was started]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfmv, [[Client is not due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfmv, [[Client is due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #misic, [[Meningococcal immunization schedule is complete]] )
