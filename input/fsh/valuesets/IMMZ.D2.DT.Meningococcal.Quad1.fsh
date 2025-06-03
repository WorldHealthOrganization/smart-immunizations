ValueSet: IMMZ.D2.DT.Meningococcal.Quad1
Title: "IMMZ.D2.DT.Meningococcal.Quad1 ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Meningococcal.Quad1 for IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose.
Business rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: Quadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Meningococcal_Quadrivalent_conjugate_vaccines_1_dose"

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmpsdwa-53.130, [[No meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ompsdwa-54.130, [[One meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt2y-33.42, [[Client's age is less than 2 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet2y-45.42, [[Client's age is more than or equal to 2 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfmv-47.52, [[Client is not due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfmv-43.48, [[Client is due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #misic-47.53, [[Meningococcal immunization schedule is complete]] )
