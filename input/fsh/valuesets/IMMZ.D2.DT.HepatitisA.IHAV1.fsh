ValueSet: IMMZ.D2.DT.HepatitisA.IHAV1
Title: "IMMZ.D2.DT.HepatitisA.IHAV1 ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.HepatitisA.IHAV1 for IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose.
Business rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: Inactivated hepatitis A virus (HAV), 1-dose schedule
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Hepatitis_A_Inactivated_HAV_1_dose"
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt12m-35.44, [[Client's age is less than 12 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet12m-47.44, [[Client's age is more than or equal to 12 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ohapsdwa-52.139, [[One hepatitis A primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nhapsdwa-51.139, [[No hepatitis A primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfhav-45.52, [[Client is not due for Hepatitis A vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfhav-41.48, [[Client is due for Hepatitis A vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #haisic-45.53, [[Hepatitis A immunization schedule is complete]] )
