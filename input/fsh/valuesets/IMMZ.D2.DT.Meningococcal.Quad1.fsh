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

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmpsdwa, [[No meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ompsdwa, [[One meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt2y, [[Client's age is less than 2 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet2y, [[Client's age is more than or equal to 2 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfmv, [[Client is not due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfmv, [[Client is due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #misic, [[Meningococcal immunization schedule is complete]] )
