ValueSet: IMMZ.D2.DT.Varicella.1Dose
Title: "IMMZ.D2.DT.Varicella.1Dose ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Varicella.1Dose for IMMZ.D2.DT.Varicella.1 dose.
Business rule: Determine if the client is due for a varicella vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: 1-dose schedule
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Varicella_1_dose"
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt12m-35.42, [[Client's age is less than 12 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #lvwaitp4w-49.92, [[Live vaccine was administered in the past 4 weeks]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nlvwaitp4w-52.92, [[No live vaccine was administered in the past 4 weeks]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nvpsdwa-49.129, [[No varicella primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet12m-46.42, [[Cient's age is more than or equal to 12 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ovpsdwa-50.129, [[One varicella primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfvv-43.48, [[Client is not due for varicella vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfvv-39.44, [[Client is due for varicella vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #visic-43.49, [[Varicella immunization schedule is complete]] )
