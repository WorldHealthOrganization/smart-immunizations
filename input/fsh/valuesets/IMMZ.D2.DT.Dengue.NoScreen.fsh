ValueSet: IMMZ.D2.DT.Dengue.NoScreen
Title: "IMMZ.D2.DT.Dengue.NoScreen ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Dengue.NoScreen for IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening.
Business rule: Determine if the client is due for a dengue vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Dengue_3_doses_without_pre_vaccination_screening"

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt9y-33.43, [[Client's age is less than 9 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimt45y-34.43, [[Client's age is more than 45 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ndpsdwa-48.123, [[No dengue primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaib9ya45y-44.54, [[Client's age is between 9 years and 45 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #odpsdwa-47.123, [[One dengue primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlddwalt6ma-62.112, [[The latest dengue dose was administered less than 6 months ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlddwamt6ma-62.112, [[The latest dengue dose was administered more than 6 months ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tdpsdwa-49.123, [[Two dengue primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tdpsdwa-51.123, [[Three dengue primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfdv-40.52, [[Client is not due for dengue vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfdv-36.48, [[Client is due for dengue vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #disic-40.53, [[Dengue immunization schedule is complete]] )
