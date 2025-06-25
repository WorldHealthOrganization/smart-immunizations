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
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nhapsdwa-51.139, [[No hepatitis A primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt18m-35.44, [[Client's age is less than 18 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet18m-47.44, [[Client's age is more than or equal to 18 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #lvwaitl4w-49.96, [[Live vaccine was administered in the last 4 weeks]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nlvwaitl4w-52.96, [[No live vaccine was administered in the last 4 weeks]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ohapsdwa-52.139, [[One Hepatitis A primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfhav-45.52, [[Client is not due for Hepatitis A vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfhav-41.48, [[Client is due for Hepatitis A vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #haisic-45.53, [[Hepatitis A immunization schedule is complete]] )
