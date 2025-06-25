ValueSet: IMMZ.D2.DT.Malaria.4Dose
Title: "IMMZ.D2.DT.Malaria.4Dose ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Malaria.4Dose for IMMZ.D2.DT.Malaria.
Business rule: Determine if the client is due for a malaria vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)									
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Malaria"
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt5m-34.43, [[Client's age is less than 5 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmpsdwa-49.124, [[No malaria primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet5m-46.43, [[Client's age is more than or equal to 5 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ompsdwa-48.124, [[One malaria primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwalt4wa-62.105, [[The latest malaria dose was administered less than 4 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwamt4wa-62.112, [[The latest malaria dose was administered more than 4 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tmpsdwa-50.124, [[Two malaria primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tmpsdwa-52.124, [[Three malaria primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #fmpsdwa-51.124, [[Four malaria primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt5m-34.41, [[Client's age is less than 5 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmpsdwa-49.116, [[No malaria primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet5m-46.41, [[Client's age is more than or equal to 5 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ompsdwa-48.116, [[One malaria primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwalt4wa-62.99, [[The latest malaria dose was administered less than 4 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwamt4wa-62.106, [[The latest malaria dose was administered more than 4 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tmpsdwa-50.116, [[Two malaria primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tmpsdwa-52.116, [[Three malaria primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #fmpsdwa-51.116, [[Four malaria primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfmv-41.52, [[Client is not due for malaria vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfmv-37.48, [[Client is due for malaria vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #misic-41.53, [[Malaria immunization schedule is complete]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfmv-41.48, [[Client is not due for malaria vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfmv-37.44, [[Client is due for malaria vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #misic-41.49, [[Malaria immunization schedule is complete]] )
