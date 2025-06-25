ValueSet: IMMZ.D2.DT.Seasonalinfluenza.2Dose
Title: "IMMZ.D2.DT.Seasonalinfluenza.2Dose ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Seasonalinfluenza.2Dose for IMMZ.D2.DT.Seasonal influenza.
Business rule: Determine if the client is due for a seasonal influenza vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: Inactivated trivalent and quadrivalent vaccines, 2-dose schedule
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Seasonal_influenza"
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt6m-34.41, [[Client's age is less than 6 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nsipsdwa-60.127, [[No seasonal influenza primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet6m-46.41, [[Client's age is more than or equal to 6 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #osipsdwa-61.127, [[One seasonal influenza primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt9y-33.40, [[Client's age is less than 9 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlsidwalt4wa-73.110, [[The latest seasonal influenza dose was administered less than 4 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlsidwamt4wa-73.110, [[The latest seasonal influenza dose was administered more than 4 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet9y-45.40, [[Client's age is more than or equal to 9 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlsidwalt1ya-73.109, [[The latest seasonal influenza dose was  administered less than 1 year ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlsidwamt1ya-72.109, [[The latest seasonal influenza dose was administered more than 1 year ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tsipsdwa-61.127, [[Two seasonal influenza primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfsiv-52.48, [[Client is not due for seasonal influenza vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfsiv-48.44, [[Client is due for seasonal influenza vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #tpsiccindfsiad-84.48, [[The primary series is complete. Client is not due for seasonal influenza annual dose]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #tpsiccidfsiad-80.44, [[The primary series is complete. Client is due for seasonal influenza annual dose]] )
