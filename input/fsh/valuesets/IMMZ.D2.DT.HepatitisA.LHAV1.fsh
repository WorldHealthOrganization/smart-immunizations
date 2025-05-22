ValueSet: IMMZ.D2.DT.HepatitisA.LHAV1
Title: "IMMZ.D2.DT.HepatitisA.LHAV1 ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.HepatitisA.LHAV1 for IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose.
Business rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Hepatitis_A_Live_attenuated_HAV_1_dose"

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nhapsdwa, [[No hepatitis A primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt18m, [[Client's age is less than 18 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet18m, [[Client's age is more than or equal to 18 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #lvwaitl4w, [[Live vaccine was administered in the last 4 weeks]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nlvwaitl4w, [[No live vaccine was administered in the last 4 weeks]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ohapsdwa, [[One Hepatitis A primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfhav, [[Client is not due for Hepatitis A vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfhav, [[Client is due for Hepatitis A vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #haisic, [[Hepatitis A immunization schedule is complete]] )
